-- 基础信息
local base_info = {
	group_id = 155006024
}

-- Trigger变量
local defs = {
	group_ID = 155006024,
	gadget_01 = 24002,
	gadget_02 = 24003,
	gadget_03 = 24004,
	gadget_mask_01 = 24005,
	gadget_mask_02 = 24006,
	gadget_mask_03 = 24007,
	gadget_seal = 24001
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {}
local Worktops = {}
local DayAppearGadgets = {defs.gadget_mask_01,defs.gadget_mask_02,defs.gadget_mask_03}
local NightAppearGadgets = {defs.gadget_01,defs.gadget_02,defs.gadget_03}

gadgetinfo = 
{
	{defs.gadget_01,defs.gadget_mask_01,"active_01"},
	{defs.gadget_02,defs.gadget_mask_02,"active_02"},
	{defs.gadget_03,defs.gadget_mask_03,"active_03"}
	
}

local gameplayStateFuncitons = 
{
	["0"] = function(context)
		
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
	end,
	["1"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",0)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)
	end,
	["2"] = function(context)
		
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)
		ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_seal })
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_01, GadgetState.GearStart)
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_02, GadgetState.GearStart)
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_03, GadgetState.GearStart)

	end

}


function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 

	gameplayStateFuncitons[tostring(state)](context)

end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 24001, gadget_id = 70690032, pos = { x = 180.518, y = 192.424, z = -318.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, isOneoff = true, area_id = 200 },
	{ config_id = 24002, gadget_id = 70900049, pos = { x = 181.751, y = 192.760, z = -331.733 }, rot = { x = 0.000, y = 293.052, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 24003, gadget_id = 70900049, pos = { x = 170.632, y = 192.160, z = -315.840 }, rot = { x = 0.000, y = 64.164, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 24004, gadget_id = 70900049, pos = { x = 190.208, y = 192.760, z = -311.955 }, rot = { x = 0.000, y = 159.184, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 24005, gadget_id = 70290229, pos = { x = 181.835, y = 193.614, z = -331.321 }, rot = { x = 84.814, y = 354.436, z = 353.909 }, level = 36, area_id = 200 },
	{ config_id = 24006, gadget_id = 70290229, pos = { x = 170.957, y = 193.608, z = -315.575 }, rot = { x = 48.077, y = 317.432, z = 277.731 }, level = 36, area_id = 200 },
	{ config_id = 24007, gadget_id = 70290229, pos = { x = 190.551, y = 194.365, z = -312.036 }, rot = { x = 358.323, y = 1.532, z = 275.159 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 状态检测
	{ config_id = 1024008, name = "GADGET_STATE_CHANGE_24008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_24008", action = "action_EVENT_GADGET_STATE_CHANGE_24008", trigger_count = 0 },
	{ config_id = 1024009, name = "GADGET_CREATE_24009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_24009", action = "action_EVENT_GADGET_CREATE_24009", trigger_count = 0 },
	{ config_id = 1024011, name = "GROUP_LOAD_24011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_24011", trigger_count = 0 },
	{ config_id = 1024012, name = "VARIABLE_CHANGE_24012", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_24012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 1, no_refresh = true },
	{ config_id = 2, name = "active_01", value = 0, no_refresh = true },
	{ config_id = 3, name = "active_02", value = 0, no_refresh = true },
	{ config_id = 4, name = "active_03", value = 0, no_refresh = true },
	{ config_id = 5, name = "activecount", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_24011", "VARIABLE_CHANGE_24012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 24001, 24002, 24003, 24004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_24008", "GADGET_CREATE_24009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 24002, 24003, 24004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_24008(context, evt)
		for i=1,#gadgetinfo do
			if evt.param2 == gadgetinfo[i][1] then 
				return true
			end
		end
	
		return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_24008(context, evt)
		if evt.param1 ~= 201 or evt.param3 ~= 0 then
			return -1
		end
	
		for i=1,#gadgetinfo do
			if evt.param2 == gadgetinfo[i][1] then
				ScriptLib.SetGroupVariableValue(context, gadgetinfo[i][3], 1) 
				ScriptLib.ChangeGroupVariableValue(context, "activecount", 1) 
				
			end
		end
	
		if ScriptLib.GetGroupVariableValue(context, "activecount") == 3 then
			ScriptLib.SetGroupVariableValue(context, "gameplayState", 2)
		end
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_24009(context, evt)
	if 24002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_24009(context, evt)
	-- 将本组内变量名为 "activecount" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "activecount", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_24011(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_24012(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

require "V2_4/EnvState"
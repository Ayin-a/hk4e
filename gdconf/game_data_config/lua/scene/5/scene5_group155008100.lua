-- 基础信息
local base_info = {
	group_id = 155008100
}

-- Trigger变量
local defs = {
	group_ID = 155008100,
	gadget_sealday = 100001,
	gadget_sealnight = 100002,
	totalcount = 4,
	gadget_chest = 100014
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {}
local Worktops = {}
local DayAppearGadgets = {defs.gadget_sealday}
local NightAppearGadgets = {defs.gadget_sealnight}



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
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_chest, 0)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_sealday, 202)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_sealnight, 202)
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
	{ config_id = 100001, gadget_id = 70360314, pos = { x = -137.939, y = 214.825, z = 430.710 }, rot = { x = 0.000, y = 337.776, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 100002, gadget_id = 70360315, pos = { x = -137.939, y = 204.828, z = 430.710 }, rot = { x = 359.244, y = 337.766, z = 1.580 }, level = 36, area_id = 200 },
	{ config_id = 100014, gadget_id = 70211122, pos = { x = -137.436, y = 204.806, z = 430.043 }, rot = { x = 0.566, y = 293.373, z = 1.658 }, level = 16, drop_tag = "解谜高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1100003, name = "GROUP_LOAD_100003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_100003", trigger_count = 0 },
	{ config_id = 1100004, name = "VARIABLE_CHANGE_100004", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_100004", trigger_count = 0 },
	{ config_id = 1100013, name = "VARIABLE_CHANGE_100013", event = EventType.EVENT_VARIABLE_CHANGE, source = "activecount", condition = "condition_EVENT_VARIABLE_CHANGE_100013", action = "action_EVENT_VARIABLE_CHANGE_100013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 1, no_refresh = true },
	{ config_id = 2, name = "activecount", value = 0, no_refresh = true }
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
		gadgets = { 100014 },
		regions = { },
		triggers = { "GROUP_LOAD_100003", "VARIABLE_CHANGE_100004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_100013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
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

-- 触发操作
function action_EVENT_GROUP_LOAD_100003(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_100004(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_100013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"activecount"为4
	if ScriptLib.GetGroupVariableValue(context, "activecount") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_100013(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_4/EnvState"
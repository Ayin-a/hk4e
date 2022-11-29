-- 基础信息
local base_info = {
	group_id = 155005271
}

-- Trigger变量
local defs = {
	group_ID = 155005271,
	gadget_01 = 271001,
	gadget_02 = 271002,
	gadget_03 = 271003,
	gadget_04 = 271004,
	gadget_mask_01 = 271006,
	gadget_mask_02 = 271005,
	gadget_mask_03 = 271007,
	gadget_mask_04 = 271008,
	gadget_chest = 271009
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {}
local Worktops = {}
local DayAppearGadgets = {defs.gadget_mask_01,defs.gadget_mask_02}
local NightAppearGadgets = {defs.gadget_01,defs.gadget_02}


--[[
	Variable:
	ScriptLib.GetGroupVariableValue(context, name)
	ScriptLib.GetGroupVariableValueByGroup(context, name, group_id)
	ScriptLib.SetGroupVariableValue(context, name, value)
	ScriptLib.SetGroupVariableValueByGroup(context, name, value, group_id)

	GadgetState:
	ScriptLib.GetGadgetStateByConfigId(context, group_id, config_id)
	ScriptLib.SetGroupGadgetStateByConfigId(context, group_id, config_id, gadget_state)

	Option:
	ScriptLib.SetWorktopOptionsByGroupId(context, group_id, config_id, {option_table})
	ScriptLib.DelWorktopOptionByGroupId(context, group_id, config_id, option_id)

	SuiteControll:
	ScriptLib.GoToGroupSuite(context, group_id, suite_index)
	ScriptLib.AddExtraGroupSuite(context, group_id, suite_index)

	TimeAxis:
	ScriptLib.InitTimeAxis(context, key, timer, is_loop)
	ScriptLib.EndTimeAxis(context, key)
	ScriptLib.PauseTimeAxis(context, key)
	ScriptLib.ContinueTimeAxis(context, key)

	ScriptLib.SetPlatformPointArray(context, gadget_id, pointarray_id, {pointarrayindexlist}, { route_type = 0 })
]]
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
		
		ScriptLib.KillEntityByConfigId(context, { config_id = 271009})

		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_01, 201)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_02, 201)


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
	{ config_id = 271001, gadget_id = 70310011, pos = { x = 278.585, y = 336.901, z = 275.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 271002, gadget_id = 70310011, pos = { x = 274.540, y = 336.895, z = 275.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 271005, gadget_id = 70290216, pos = { x = 278.495, y = 337.557, z = 275.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 271006, gadget_id = 70290216, pos = { x = 274.453, y = 337.584, z = 276.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 271009, gadget_id = 70290279, pos = { x = 276.175, y = 341.816, z = 273.483 }, rot = { x = 0.000, y = 6.252, z = 0.000 }, level = 36, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1271010, name = "GADGET_STATE_CHANGE_271010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_271010", action = "action_EVENT_GADGET_STATE_CHANGE_271010", trigger_count = 0 },
	-- 初始化
	{ config_id = 1271011, name = "GROUP_LOAD_271011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_271011", trigger_count = 0 },
	-- 监听gameplayState变化
	{ config_id = 1271012, name = "VARIABLE_CHANGE_271012", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_271012", action = "action_EVENT_VARIABLE_CHANGE_271012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 271003, gadget_id = 70310011, pos = { x = 286.573, y = 337.528, z = 284.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 271004, gadget_id = 70310011, pos = { x = 268.702, y = 336.643, z = 285.926 }, rot = { x = 0.000, y = 40.595, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 271007, gadget_id = 70290216, pos = { x = 286.553, y = 338.061, z = 284.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 271008, gadget_id = 70290216, pos = { x = 268.800, y = 337.299, z = 286.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
	}
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
		-- description = 静态逻辑,
		monsters = { },
		gadgets = { 271009 },
		regions = { },
		triggers = { "GROUP_LOAD_271011", "VARIABLE_CHANGE_271012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 玩法开启,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_271010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 玩法完成,
		monsters = { },
		gadgets = { 271001, 271002 },
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
function condition_EVENT_GADGET_STATE_CHANGE_271010(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 155005271, 271001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 155005271, 271002) then
		return false
	end
	
	-- 判断变量"gameplayState"为1
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_271010(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_271011(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_271012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
		-- 判断变量"gameplayState"为0
		if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
				return false
		end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_271012(context, evt)
	UpdateGamePlayState(context)
	return 0
end

require "V2_4/EnvState"
require "V2_4/EnvStateWorktop"
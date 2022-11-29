-- 基础信息
local base_info = {
	group_id = 155008201
}

-- Trigger变量
local defs = {
	group_ID = 155008201,
	gadget_controller_01 = 201003,
	gadget_controller_02 = 201005,
	active_state_01 = 312,
	active_state_02 = 312,
	managerGroup = 155008187,
	uniqeID = 1
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {defs.gadget_controller_01,defs.gadget_controller_02}
local Worktops = {defs.gadget_controller_01,defs.gadget_controller_02}
local DayAppearGadgets = {}
local NightAppearGadgets = {}


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
		DayNight_Gadget_Unlock(context,defs.gadget_controller_01)
		DayNight_Gadget_Unlock(context,defs.gadget_controller_02)
		
	end,
	["2"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)
		DayNight_Gadget_Finish(context,defs.gadget_controller_01)
		DayNight_Gadget_Finish(context,defs.gadget_controller_02)
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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 1, no_refresh = true },
	{ config_id = 2, name = "CallOnFunction", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 201003, gadget_id = 70360312, pos = { x = -206.898, y = 185.147, z = 408.252 }, rot = { x = 0.000, y = 109.938, z = 0.000 }, level = 36, area_id = 200 },
		{ config_id = 201005, gadget_id = 70360312, pos = { x = -193.401, y = 185.131, z = 404.414 }, rot = { x = 0.000, y = 295.662, z = 0.000 }, level = 36, area_id = 200 }
	},
	triggers = {
		{ config_id = 1201001, name = "GROUP_LOAD_201001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_201001", trigger_count = 0 },
		{ config_id = 1201002, name = "VARIABLE_CHANGE_201002", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_201002", trigger_count = 0 },
		{ config_id = 1201004, name = "GADGET_STATE_CHANGE_201004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_201004", trigger_count = 0 },
		{ config_id = 1201006, name = "VARIABLE_CHANGE_201006", event = EventType.EVENT_VARIABLE_CHANGE, source = "CallOnFunction", condition = "condition_EVENT_VARIABLE_CHANGE_201006", action = "action_EVENT_VARIABLE_CHANGE_201006", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 玩法开启,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 玩法完成,
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
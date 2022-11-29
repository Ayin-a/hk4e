-- 基础信息
local base_info = {
	group_id = 155005275
}

-- Trigger变量
local defs = {
	group_ID = 155005275
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {275004}

local DayAppearGadgets = {}
local NightAppearGadgets = {275003}


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
		DayNight_Gadget_Unlock(context,275004)
		
	end,
	["2"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)
		ScriptLib.SetGroupGadgetStateByConfigId(context, 155005275, 275005, GadgetState.GearStart)
		ScriptLib.SetGroupGadgetStateByConfigId(context, 155005275, 275003, 202)
		DayNight_Gadget_Finish(context,275004)
		
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
	{ config_id = 275003, gadget_id = 70360315, pos = { x = 333.652, y = 118.383, z = 860.941 }, rot = { x = 0.000, y = 15.377, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 275004, gadget_id = 70360309, pos = { x = 333.668, y = 118.801, z = 861.244 }, rot = { x = 0.000, y = 283.206, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 275005, gadget_id = 70350006, pos = { x = 340.050, y = 120.277, z = 859.783 }, rot = { x = 0.000, y = 285.595, z = 2.704 }, level = 36, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初始化
	{ config_id = 1275001, name = "GROUP_LOAD_275001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_275001", trigger_count = 0 },
	-- 监听gameplayState变化
	{ config_id = 1275002, name = "VARIABLE_CHANGE_275002", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_275002", action = "action_EVENT_VARIABLE_CHANGE_275002", trigger_count = 0 },
	{ config_id = 1275006, name = "GADGET_STATE_CHANGE_275006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_275006", action = "action_EVENT_GADGET_STATE_CHANGE_275006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 1, no_refresh = true }
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
		triggers = { "GROUP_LOAD_275001", "VARIABLE_CHANGE_275002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 玩法开启,
		monsters = { },
		gadgets = { 275004, 275005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_275006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 玩法完成,
		monsters = { },
		gadgets = { 275004, 275005 },
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
function action_EVENT_GROUP_LOAD_275001(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_275002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
		-- 判断变量"gameplayState"为0
		if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
				return false
		end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_275002(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_275006(context, evt)
	if 322~= ScriptLib.GetGadgetStateByConfigId(context, 155005275, 275004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_275006(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_4/EnvState"
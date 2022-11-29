-- 基础信息
local base_info = {
	group_id = 155005259
}

-- Trigger变量
local defs = {
	group_ID = 155005259,
	pointarray_move = 500500009
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {259005,259006}
local Worktops = {}
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
		DayNight_Gadget_Unlock(context,259005)
		DayNight_Gadget_Unlock(context,259006)
		
		
	end,
	["2"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)
		
	end

}


function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 

	gameplayStateFuncitons[tostring(state)](context)

end

function GadgetStateSwitcher(context,gadget_id,state)

	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, gadget_id)  == state[1] then 
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, gadget_id, state[2])
	elseif ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, gadget_id)  == state[2] then 
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, gadget_id, state[1])
	end 

end

function Initial(context)
	local pos = ScriptLib.GetGroupVariableValue(context, "wallpos") 
	if pos == 1 then 
		ScriptLib.SetPlatformPointArray(context, 259003, defs.pointarray_move, {1}, {route_type = 0, turn_mode = false})
	elseif pos == 2 then 
		ScriptLib.SetPlatformPointArray(context, 259003, defs.pointarray_move, {2}, {route_type = 0, turn_mode = false})
	end
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
	{ config_id = 259003, gadget_id = 70290170, pos = { x = 232.245, y = 313.329, z = 289.062 }, rot = { x = 0.000, y = 307.001, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 200 },
	{ config_id = 259004, gadget_id = 70290281, pos = { x = 224.212, y = 319.442, z = 294.925 }, rot = { x = 0.000, y = 305.371, z = 180.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 259005, gadget_id = 70360305, pos = { x = 233.165, y = 313.876, z = 299.254 }, rot = { x = 0.000, y = 40.024, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 259006, gadget_id = 70360309, pos = { x = 220.573, y = 313.937, z = 299.082 }, rot = { x = 0.000, y = 308.813, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初始化
	{ config_id = 1259001, name = "GROUP_LOAD_259001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_259001", trigger_count = 0 },
	-- 监听gameplayState变化
	{ config_id = 1259002, name = "VARIABLE_CHANGE_259002", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_259002", action = "action_EVENT_VARIABLE_CHANGE_259002", trigger_count = 0 },
	-- 监听259005
	{ config_id = 1259007, name = "GADGET_STATE_CHANGE_259007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_259007", action = "action_EVENT_GADGET_STATE_CHANGE_259007", trigger_count = 0 },
	-- 监听259006
	{ config_id = 1259008, name = "GADGET_STATE_CHANGE_259008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_259008", action = "action_EVENT_GADGET_STATE_CHANGE_259008", trigger_count = 0 },
	-- 到达2点
	{ config_id = 1259009, name = "TIME_AXIS_PASS_259009", event = EventType.EVENT_TIME_AXIS_PASS, source = "ReachPoint_02", condition = "", action = "action_EVENT_TIME_AXIS_PASS_259009", trigger_count = 0 },
	-- 到达1点
	{ config_id = 1259010, name = "TIME_AXIS_PASS_259010", event = EventType.EVENT_TIME_AXIS_PASS, source = "ReachPoint_01", condition = "", action = "action_EVENT_TIME_AXIS_PASS_259010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 1, no_refresh = true },
	{ config_id = 2, name = "wallpos", value = 1, no_refresh = true }
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
		triggers = { "GROUP_LOAD_259001", "VARIABLE_CHANGE_259002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 玩法开启,
		monsters = { },
		gadgets = { 259003, 259004, 259005, 259006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_259007", "GADGET_STATE_CHANGE_259008", "TIME_AXIS_PASS_259009", "TIME_AXIS_PASS_259010" },
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

-- 触发操作
function action_EVENT_GROUP_LOAD_259001(context, evt)
	UpdateGamePlayState(context)
	Initial(context)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_259002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
		-- 判断变量"gameplayState"为0
		if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
				return false
		end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_259002(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_259007(context, evt)
		if evt.param2 ~= 259005 then 
			return false
		end
	if 222~= ScriptLib.GetGadgetStateByConfigId(context, 155005259, 259005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_259007(context, evt)
		local state = ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, 259004)
		local pos = ScriptLib.GetGroupVariableValue(context, "wallpos") 
		if state == 201 then 
			if pos == 1 then 
				ScriptLib.SetPlatformPointArray(context, 259003, defs.pointarray_move, {1,2}, {route_type = 0, turn_mode = false})
				ScriptLib.InitTimeAxis(context, "ReachPoint_02", {1}, false)
			elseif pos == 2 then 
				ScriptLib.SetPlatformPointArray(context, 259003, defs.pointarray_move, {2,1}, {route_type = 0, turn_mode = false})
				ScriptLib.InitTimeAxis(context, "ReachPoint_01", {1}, false)
			end
		
		elseif state == 0 then 
			ScriptLib.ShowReminder(context, 50050101)
	
		end
	
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_259008(context, evt)
		if evt.param2 ~= 259006 then 
			return false
		end	
	if 322~= ScriptLib.GetGadgetStateByConfigId(context, 155005259, 259006) then
			return false
		end
		
	
		return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_259008(context, evt)
		local temppos = ScriptLib.GetGroupVariableValue(context, "wallpos")
		if temppos == 1 then 
			GadgetStateSwitcher(context,259004,{0,201})
		elseif temppos ==2 then 
			ScriptLib.ShowReminder(context, 50050101)
		end
		return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_259009(context, evt)
	-- 将本组内变量名为 "wallpos" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wallpos", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_259010(context, evt)
	-- 将本组内变量名为 "wallpos" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wallpos", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_4/EnvState"
require "V2_4/EnvStateWorktop"
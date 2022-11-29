-- 基础信息
local base_info = {
	group_id = 155008071
}

-- Trigger变量
local defs = {
	groupid = 155008071,
	gadget_wall_1 = 71006,
	gadget_wall_2 = 71007,
	gadget_wall_3 = 71008,
	gadget_wall_4 = 0,
	gadget_wall_5 = 0,
	gadget_wall_6 = 0,
	gadget_controller_1 = 71013,
	gadget_controller_2 = 71014,
	gadget_controller_3 = 0,
	gadget_controller_4 = 0,
	pointarray_route = 500800009,
	gadget_blocker_1 = 71012,
	gadget_blocker_2 = 71009,
	gadget_blocker_3 = 0,
	gadget_blocker_controller_1 = 71019,
	gadget_blocker_controller_2 = 71002,
	gadget_blocker_controller_3 = 0
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {71001,71003,71013,71014}
local Worktops = {}
local DayAppearGadgets = {}
local NightAppearGadgets = {}

MaxSize = 17

ControllerWallMap = 
{
	{defs.gadget_controller_1,
		{
			{defs.gadget_wall_1,{3,4,5}},
			{defs.gadget_wall_2,{8,9,10}},
			{defs.gadget_wall_3,{13,14,15}}
	
		}
	},
	{defs.gadget_controller_2,
		{
			{defs.gadget_wall_1,{5,4,3}},
			{defs.gadget_wall_2,{10,9,8}},
			{defs.gadget_wall_3,{15,14,13}}
		}
	}
}

StartWallMap = 
{
	{defs.gadget_wall_1,5},
	{defs.gadget_wall_2,10},
	{defs.gadget_wall_3,13}

}


StartBlockerMap = 
{
	{defs.gadget_blocker_1,4,0},
	{defs.gadget_blocker_2,14,0}
}

TargetSolution = 
{
	3,9,15
}

local gameplayStateFuncitons = 
{
	["0"] = function(context)

	end,
	["1"] = function(context)
		DayNight_Gadget_Unlock(context,defs.gadget_controller_1)
		DayNight_Gadget_Unlock(context,defs.gadget_controller_2)



		ScriptLib.SetWorktopOptionsByGroupId(context, defs.groupid, 71019, {7})
		ScriptLib.SetWorktopOptionsByGroupId(context, defs.groupid, 71002, {7})
	

	end,
	["2"] = function(context)
		DayNight_Gadget_Finish(context,defs.gadget_controller_1)
		DayNight_Gadget_Finish(context,defs.gadget_controller_2)
		ScriptLib.SetGroupVariableValue(context,"hasFinished", 1)
		ScriptLib.SetPlatformPointArray(context, defs.gadget_wall_1, defs.pointarray_route, {3}, {route_type = 0, turn_mode = false}) 
		ScriptLib.SetPlatformPointArray(context, defs.gadget_wall_2, defs.pointarray_route, {9}, {route_type = 0, turn_mode = false}) 
		ScriptLib.SetPlatformPointArray(context, defs.gadget_wall_3, defs.pointarray_route, {15}, {route_type = 0, turn_mode = false}) 


		



	end
}
function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 

	gameplayStateFuncitons[tostring(state)](context)

end
--state = {}
function GadgetStateSwitcher(context,groupid,gadget_id,state)

	if ScriptLib.GetGadgetStateByConfigId(context, groupid, gadget_id)  == state[1] then 
		ScriptLib.SetGroupGadgetStateByConfigId(context, groupid, gadget_id, state[2])
	elseif ScriptLib.GetGadgetStateByConfigId(context, groupid, gadget_id)  == state[2] then 
		ScriptLib.SetGroupGadgetStateByConfigId(context, groupid, gadget_id, state[1])
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
	{ config_id = 71001, gadget_id = 70290169, pos = { x = -131.552, y = 215.342, z = 174.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 71002, gadget_id = 70360170, pos = { x = -157.596, y = 211.927, z = 184.589 }, rot = { x = 270.000, y = 90.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 71003, gadget_id = 70290169, pos = { x = -151.552, y = 215.342, z = 194.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 71006, gadget_id = 70290170, pos = { x = -131.552, y = 209.342, z = 174.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 200 },
	{ config_id = 71007, gadget_id = 70290170, pos = { x = -141.552, y = 209.342, z = 174.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 200 },
	{ config_id = 71008, gadget_id = 70290170, pos = { x = -151.552, y = 209.342, z = 194.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 200 },
	{ config_id = 71009, gadget_id = 70290281, pos = { x = -151.461, y = 214.291, z = 184.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, is_use_point_array = true, area_id = 200 },
	{ config_id = 71012, gadget_id = 70290281, pos = { x = -131.535, y = 213.736, z = 185.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 71013, gadget_id = 70360305, pos = { x = -141.692, y = 210.266, z = 164.767 }, rot = { x = 0.000, y = 179.698, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 71014, gadget_id = 70360305, pos = { x = -141.723, y = 210.266, z = 204.664 }, rot = { x = 0.000, y = 180.599, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 71019, gadget_id = 70360170, pos = { x = -125.524, y = 211.913, z = 184.557 }, rot = { x = 270.020, y = 270.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 选择开关71002
	{ config_id = 1071004, name = "SELECT_OPTION_71004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_71004", action = "action_EVENT_SELECT_OPTION_71004", trigger_count = 0 },
	-- 重置开关71002
	{ config_id = 1071010, name = "TIME_AXIS_PASS_71010", event = EventType.EVENT_TIME_AXIS_PASS, source = "Wait_71002", condition = "", action = "action_EVENT_TIME_AXIS_PASS_71010", trigger_count = 0 },
	{ config_id = 1071021, name = "GROUP_LOAD_71021", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_71021", trigger_count = 0 },
	{ config_id = 1071022, name = "VARIABLE_CHANGE_71022", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_71022", trigger_count = 0 },
	-- 选择开关71019
	{ config_id = 1071023, name = "SELECT_OPTION_71023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_71023", action = "action_EVENT_SELECT_OPTION_71023", trigger_count = 0 },
	-- 重置开关71019
	{ config_id = 1071025, name = "TIME_AXIS_PASS_71025", event = EventType.EVENT_TIME_AXIS_PASS, source = "Wait_71019", condition = "", action = "action_EVENT_TIME_AXIS_PASS_71025", trigger_count = 0 },
	-- 玩法完成
	{ config_id = 1071026, name = "VARIABLE_CHANGE_71026", event = EventType.EVENT_VARIABLE_CHANGE, source = "has_succeeded", condition = "condition_EVENT_VARIABLE_CHANGE_71026", action = "action_EVENT_VARIABLE_CHANGE_71026", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 0, no_refresh = true },
	{ config_id = 2, name = "hasFinished", value = 0, no_refresh = true }
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
		gadgets = { 71001, 71002, 71003, 71006, 71007, 71008, 71009, 71012, 71013, 71014, 71019 },
		regions = { },
		triggers = { "SELECT_OPTION_71004", "TIME_AXIS_PASS_71010", "GROUP_LOAD_71021", "VARIABLE_CHANGE_71022", "SELECT_OPTION_71023", "TIME_AXIS_PASS_71025", "VARIABLE_CHANGE_71026" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_71004(context, evt)
	if defs.gadget_blocker_controller_2 ~= evt.param1 then
			return false	
		end
		
		if 7 ~= evt.param2 then
			return false
		end
		
		
		return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_71004(context, evt)
	ScriptLib.PrintContextLog(context, "SelectOption : GadgetID = "..evt.param1..", OptionID = "..evt.param2)
				local eventMsg = "Wait_"..evt.param1
				ScriptLib.DelWorktopOptionByGroupId(context, defs.groupid, evt.param1, 7)
				
				local state = ScriptLib.GetGadgetStateByConfigId(context, 0, defs.gadget_blocker_2)
				if (LF_Can_Block_State_Change(context,defs.gadget_blocker_2,201-state)) then
					GadgetStateSwitcher(context,defs.groupid,defs.gadget_blocker_2,{0,201})
					GadgetStateSwitcher(context,defs.groupid,defs.gadget_blocker_controller_2,{0,201})
					LF_Set_Block_After_State_Change(context,defs.gadget_blocker_2,201-state)
				end
				
				ScriptLib.InitTimeAxis(context, eventMsg, {1}, false)
				return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_71010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155008071, 71002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_71021(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_71022(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_71023(context, evt)
	if defs.gadget_blocker_controller_1 ~= evt.param1 then
			return false	
		end
		
		if 7 ~= evt.param2 then
			return false
		end
		
		
		return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_71023(context, evt)
	ScriptLib.PrintContextLog(context, "SelectOption : GadgetID = "..evt.param1..", OptionID = "..evt.param2)
				local eventMsg = "Wait_"..evt.param1
				ScriptLib.DelWorktopOptionByGroupId(context, defs.groupid, evt.param1, 7)
	
	
				local state = ScriptLib.GetGadgetStateByConfigId(context, 0, defs.gadget_blocker_1)
				if (LF_Can_Block_State_Change(context,defs.gadget_blocker_1,201-state)) then
					GadgetStateSwitcher(context,defs.groupid,defs.gadget_blocker_1,{0,201})
					GadgetStateSwitcher(context,defs.groupid,defs.gadget_blocker_controller_1,{0,201})
					LF_Set_Block_After_State_Change(context,defs.gadget_blocker_1,201-state)
				end
				
				ScriptLib.InitTimeAxis(context, eventMsg, {1}, false)
				return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_71025(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155008071, 71019, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_71026(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"gameplayState"为1
	if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_71026(context, evt)
		if ScriptLib.GetGroupVariableValue(context, "has_succeeded") == 1 then 
	
			ScriptLib.SetGroupVariableValueByGroup(context, "iswallmatch", 1, 155008070)
	
		elseif ScriptLib.GetGroupVariableValue(context, "has_succeeded") == 0 then 
	
			ScriptLib.SetGroupVariableValueByGroup(context, "iswallmatch", 0, 155008070)
		end
	
		return 0
end

require "V2_4/EnvState"
require "V2_4/WallMaze"
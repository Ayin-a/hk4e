-- 基础信息
local base_info = {
	group_id = 155005336
}

-- Trigger变量
local defs = {
	group_ID = 155005336,
	gadget_pattern = 336001,
	gadget_mark_01 = 336002,
	gadget_mark_02 = 336003,
	gadget_mark_03 = 336004,
	gadget_mark_04 = 336005,
	gadget_mark_05 = 336006,
	solution = {4,5,1,3,2},
	solutionListIndex = 5,
	altarGroupID = 155008010,
	gadget_worktop = 336007,
	gadget_mask = 336008
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {}
local Worktops = {}
local DayAppearGadgets = {defs.gadget_mask}
local NightAppearGadgets = {defs.gadget_worktop,defs.gadget_pattern,defs.gadget_mark_01,defs.gadget_mark_02,defs.gadget_mark_03,defs.gadget_mark_04,defs.gadget_mark_05}


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

marklist = {defs.gadget_mark_01,defs.gadget_mark_02,defs.gadget_mark_03,defs.gadget_mark_04,defs.gadget_mark_05}


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
		
		local solutionvarname = "solution_state_"..defs.solutionListIndex
		if ScriptLib.GetGroupVariableValueByGroup(context, solutionvarname, defs.altarGroupID) == 0 then 
			ScriptLib.SetGroupVariableValueByGroup(context, solutionvarname, 1, defs.altarGroupID)
		end
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_pattern, 201)
		for i=1, #marklist do 
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, marklist[i], 201)
		end
		
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
	{ config_id = 336001, gadget_id = 70230074, pos = { x = 342.497, y = 123.855, z = 870.031 }, rot = { x = 359.154, y = 106.680, z = 359.654 }, level = 36, area_id = 200 },
	{ config_id = 336002, gadget_id = 70230075, pos = { x = 342.750, y = 123.717, z = 870.870 }, rot = { x = 359.156, y = 106.681, z = 103.521 }, level = 36, area_id = 200 },
	{ config_id = 336003, gadget_id = 70230076, pos = { x = 342.644, y = 124.767, z = 870.568 }, rot = { x = 359.157, y = 106.681, z = 40.984 }, level = 36, area_id = 200 },
	{ config_id = 336004, gadget_id = 70230077, pos = { x = 342.318, y = 124.733, z = 869.481 }, rot = { x = 359.155, y = 106.680, z = 320.021 }, level = 36, area_id = 200 },
	{ config_id = 336005, gadget_id = 70230078, pos = { x = 342.518, y = 123.072, z = 870.060 }, rot = { x = 359.155, y = 106.680, z = 178.757 }, level = 36, area_id = 200 },
	{ config_id = 336006, gadget_id = 70230079, pos = { x = 342.247, y = 123.826, z = 869.195 }, rot = { x = 359.155, y = 106.680, z = 259.570 }, level = 36, area_id = 200 },
	{ config_id = 336007, gadget_id = 70360001, pos = { x = 342.713, y = 124.077, z = 870.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 336008, gadget_id = 70290229, pos = { x = 343.144, y = 124.175, z = 869.858 }, rot = { x = 351.417, y = 211.947, z = 81.839 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初始化
	{ config_id = 1336009, name = "GROUP_LOAD_336009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_336009", trigger_count = 0 },
	-- 监听gameplayState变化
	{ config_id = 1336010, name = "VARIABLE_CHANGE_336010", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_336010", action = "action_EVENT_VARIABLE_CHANGE_336010", trigger_count = 0 },
	-- 激活
	{ config_id = 1336011, name = "SELECT_OPTION_336011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_336011", action = "action_EVENT_SELECT_OPTION_336011", trigger_count = 0 },
	-- 顺序显示
	{ config_id = 1336012, name = "TIME_AXIS_PASS_336012", event = EventType.EVENT_TIME_AXIS_PASS, source = "activeSolution", condition = "", action = "action_EVENT_TIME_AXIS_PASS_336012", trigger_count = 0 },
	-- 给操作台上Option
	{ config_id = 1336013, name = "GADGET_CREATE_336013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_336013", action = "action_EVENT_GADGET_CREATE_336013", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_336009", "VARIABLE_CHANGE_336010", "GADGET_CREATE_336013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 玩法开启,
		monsters = { },
		gadgets = { 336001, 336002, 336003, 336004, 336005, 336006 },
		regions = { },
		triggers = { "SELECT_OPTION_336011", "TIME_AXIS_PASS_336012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 玩法完成,
		monsters = { },
		gadgets = { 336001, 336002, 336003, 336004, 336005, 336006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
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
function action_EVENT_GROUP_LOAD_336009(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_336010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
		-- 判断变量"gameplayState"为0
		if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
				return false
		end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_336010(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_336011(context, evt)
			-- 判断是gadgetid 109011 option_id 65
			ScriptLib.PrintContextLog(context,"evt.param1 = "..evt.param1.. " | evt.param2 = "..evt.param2.." | evt.param3 = "..evt.param3)
			if 336007 ~= evt.param1 then
				ScriptLib.PrintContextLog(context,"option gadget id ~= 109011")
				return false	
			end
			
			if 65 ~= evt.param2 then
				ScriptLib.PrintContextLog(context,"option index ~= 65")
				return false
			end
			
			
			-- 判断变量"gameplayState"为1
			if ScriptLib.GetGroupVariableValue(context, "gameplayState") ~= 1 then
				ScriptLib.PrintContextLog(context,"gameplayState ~= 1")
					return false
			end
			
			return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_336011(context, evt)
		ScriptLib.DelWorktopOptionByGroupId(context, defs.group_ID, defs.gadget_worktop, 65)
			ScriptLib.PrintContextLog(context, "---Initial Time Axis---")
			-- 创建标识为"activeSolution"，时间节点为{1,2,3,4,5,6}的时间轴，false用于控制该时间轴是否循环
			ScriptLib.InitTimeAxis(context, "activeSolution", {1,2,3,4,5,6}, false)
			
			return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_336012(context, evt)
		ScriptLib.PrintContextLog(context, "---Start Time Axis---")
		if evt.param1 == 6 then 
			ScriptLib.PrintContextLog(context,"Show pattern["..evt.param1.."] : "..defs.gadget_pattern)
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_pattern, 201)
			ScriptLib.SetGroupVariableValue(context, "gameplayState", 2)
		else
			ScriptLib.PrintContextLog(context,"Show mark["..evt.param1.."] : "..marklist[evt.param1])
			ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, marklist[evt.param1], 201)
		end
		
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_336013(context, evt)
	if 336007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_336013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155005336, 336007, {65}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

require "V2_4/EnvState"
require "V2_4/EnvStateWorktop"
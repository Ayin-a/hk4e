-- 基础信息
local base_info = {
	group_id = 155005283
}

-- Trigger变量
local defs = {
	group_ID = 155005283,
	gadget_pattern = 283001,
	gadget_mark_01 = 283002,
	gadget_mark_02 = 283003,
	gadget_mark_03 = 283004,
	gadget_mark_04 = 283005,
	gadget_mark_05 = 283006,
	solution = {3,1,2,4,5},
	solutionListIndex = 2,
	altarGroupID = 155008010,
	gadget_worktop = 283007,
	gadget_mask = 283008
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
	{ config_id = 283001, gadget_id = 70230074, pos = { x = 244.081, y = 319.072, z = 280.306 }, rot = { x = 0.165, y = 304.244, z = 0.099 }, level = 36, area_id = 200 },
	{ config_id = 283002, gadget_id = 70230075, pos = { x = 243.922, y = 318.286, z = 280.403 }, rot = { x = 0.166, y = 304.244, z = 179.928 }, level = 36, area_id = 200 },
	{ config_id = 283003, gadget_id = 70230076, pos = { x = 244.408, y = 319.883, z = 280.791 }, rot = { x = 0.167, y = 304.245, z = 316.824 }, level = 36, area_id = 200 },
	{ config_id = 283004, gadget_id = 70230077, pos = { x = 244.584, y = 318.943, z = 281.045 }, rot = { x = 0.166, y = 304.244, z = 256.165 }, level = 36, area_id = 200 },
	{ config_id = 283005, gadget_id = 70230078, pos = { x = 243.603, y = 318.729, z = 279.603 }, rot = { x = 0.165, y = 304.244, z = 108.201 }, level = 36, area_id = 200 },
	{ config_id = 283006, gadget_id = 70230079, pos = { x = 243.682, y = 319.851, z = 279.725 }, rot = { x = 0.165, y = 304.245, z = 49.583 }, level = 36, area_id = 200 },
	{ config_id = 283007, gadget_id = 70360001, pos = { x = 243.184, y = 319.288, z = 280.938 }, rot = { x = 358.585, y = 41.255, z = 357.989 }, level = 36, area_id = 200 },
	{ config_id = 283008, gadget_id = 70290229, pos = { x = 243.365, y = 319.277, z = 280.846 }, rot = { x = 357.267, y = 41.233, z = 0.256 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初始化
	{ config_id = 1283009, name = "GROUP_LOAD_283009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_283009", trigger_count = 0 },
	-- 监听gameplayState变化
	{ config_id = 1283010, name = "VARIABLE_CHANGE_283010", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_283010", action = "action_EVENT_VARIABLE_CHANGE_283010", trigger_count = 0 },
	-- 激活
	{ config_id = 1283011, name = "SELECT_OPTION_283011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_283011", action = "action_EVENT_SELECT_OPTION_283011", trigger_count = 0 },
	-- 顺序显示
	{ config_id = 1283012, name = "TIME_AXIS_PASS_283012", event = EventType.EVENT_TIME_AXIS_PASS, source = "activeSolution", condition = "", action = "action_EVENT_TIME_AXIS_PASS_283012", trigger_count = 0 },
	-- 给操作台上Option
	{ config_id = 1283013, name = "GADGET_CREATE_283013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_283013", action = "action_EVENT_GADGET_CREATE_283013", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_283009", "VARIABLE_CHANGE_283010", "GADGET_CREATE_283013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 玩法开启,
		monsters = { },
		gadgets = { 283001, 283002, 283003, 283004, 283005, 283006 },
		regions = { },
		triggers = { "SELECT_OPTION_283011", "TIME_AXIS_PASS_283012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 玩法完成,
		monsters = { },
		gadgets = { 283001, 283002, 283003, 283004, 283005, 283006 },
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
function action_EVENT_GROUP_LOAD_283009(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_283010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
		-- 判断变量"gameplayState"为0
		if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
				return false
		end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_283010(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_283011(context, evt)
			-- 判断是gadgetid 109011 option_id 65
			ScriptLib.PrintContextLog(context,"evt.param1 = "..evt.param1.. " | evt.param2 = "..evt.param2.." | evt.param3 = "..evt.param3)
			if 283007 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_283011(context, evt)
		ScriptLib.DelWorktopOptionByGroupId(context, defs.group_ID, defs.gadget_worktop, 65)
			ScriptLib.PrintContextLog(context, "---Initial Time Axis---")
			-- 创建标识为"activeSolution"，时间节点为{1,2,3,4,5,6}的时间轴，false用于控制该时间轴是否循环
			ScriptLib.InitTimeAxis(context, "activeSolution", {1,2,3,4,5,6}, false)
			
			return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_283012(context, evt)
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
function condition_EVENT_GADGET_CREATE_283013(context, evt)
	if 283007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_283013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155005283, 283007, {65}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

require "V2_4/EnvState"
require "V2_4/EnvStateWorktop"
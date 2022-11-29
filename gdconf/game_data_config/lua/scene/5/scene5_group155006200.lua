-- 基础信息
local base_info = {
	group_id = 155006200
}

-- Trigger变量
local defs = {
	group_ID = 155006200,
	gadget_pattern = 200001,
	gadget_mark_01 = 200002,
	gadget_mark_02 = 200003,
	gadget_mark_03 = 200004,
	gadget_mark_04 = 200005,
	gadget_mark_05 = 200006,
	solution = {2,1,3,4,5},
	solutionListIndex = 4,
	altarGroupID = 155008010,
	gadget_worktop = 200007,
	gadget_mask = 200008
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
	{ config_id = 200001, gadget_id = 70230074, pos = { x = 460.444, y = 170.996, z = -226.117 }, rot = { x = 356.880, y = 51.742, z = 2.774 }, level = 36, area_id = 200 },
	{ config_id = 200002, gadget_id = 70230075, pos = { x = 461.017, y = 171.036, z = -226.847 }, rot = { x = 356.881, y = 51.742, z = 260.953 }, level = 36, area_id = 200 },
	{ config_id = 200003, gadget_id = 70230076, pos = { x = 460.753, y = 171.798, z = -226.627 }, rot = { x = 8.174, y = 59.459, z = 322.540 }, level = 36, area_id = 200 },
	{ config_id = 200004, gadget_id = 70230077, pos = { x = 460.530, y = 170.150, z = -226.152 }, rot = { x = 356.880, y = 51.742, z = 189.207 }, level = 36, area_id = 200 },
	{ config_id = 200005, gadget_id = 70230078, pos = { x = 459.941, y = 170.757, z = -225.457 }, rot = { x = 356.880, y = 51.742, z = 110.877 }, level = 36, area_id = 200 },
	{ config_id = 200006, gadget_id = 70230079, pos = { x = 459.916, y = 171.769, z = -225.657 }, rot = { x = 356.880, y = 51.742, z = 43.898 }, level = 36, area_id = 200 },
	{ config_id = 200007, gadget_id = 70360001, pos = { x = 460.326, y = 171.134, z = -226.179 }, rot = { x = 359.000, y = 0.017, z = 358.040 }, level = 36, area_id = 200 },
	{ config_id = 200008, gadget_id = 70290229, pos = { x = 460.496, y = 171.116, z = -226.139 }, rot = { x = 357.682, y = 359.994, z = 0.307 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初始化
	{ config_id = 1200009, name = "GROUP_LOAD_200009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_200009", trigger_count = 0 },
	-- 监听gameplayState变化
	{ config_id = 1200010, name = "VARIABLE_CHANGE_200010", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_200010", action = "action_EVENT_VARIABLE_CHANGE_200010", trigger_count = 0 },
	-- 激活
	{ config_id = 1200011, name = "SELECT_OPTION_200011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_200011", action = "action_EVENT_SELECT_OPTION_200011", trigger_count = 0 },
	-- 顺序显示
	{ config_id = 1200012, name = "TIME_AXIS_PASS_200012", event = EventType.EVENT_TIME_AXIS_PASS, source = "activeSolution", condition = "", action = "action_EVENT_TIME_AXIS_PASS_200012", trigger_count = 0 },
	-- 给操作台上Option
	{ config_id = 1200013, name = "GADGET_CREATE_200013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_200013", action = "action_EVENT_GADGET_CREATE_200013", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_200009", "VARIABLE_CHANGE_200010", "GADGET_CREATE_200013" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 玩法开启,
		monsters = { },
		gadgets = { 200001, 200002, 200003, 200004, 200005, 200006 },
		regions = { },
		triggers = { "SELECT_OPTION_200011", "TIME_AXIS_PASS_200012" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 玩法完成,
		monsters = { },
		gadgets = { 200001, 200002, 200003, 200004, 200005, 200006 },
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
function action_EVENT_GROUP_LOAD_200009(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_200010(context, evt)
	if evt.param1 == evt.param2 then return false end
	
		-- 判断变量"gameplayState"为0
		if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
				return false
		end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_200010(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_200011(context, evt)
			-- 判断是gadgetid 109011 option_id 65
			ScriptLib.PrintContextLog(context,"evt.param1 = "..evt.param1.. " | evt.param2 = "..evt.param2.." | evt.param3 = "..evt.param3)
			if 200007 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_200011(context, evt)
		ScriptLib.DelWorktopOptionByGroupId(context, defs.group_ID, defs.gadget_worktop, 65)
			ScriptLib.PrintContextLog(context, "---Initial Time Axis---")
			-- 创建标识为"activeSolution"，时间节点为{1,2,3,4,5,6}的时间轴，false用于控制该时间轴是否循环
			ScriptLib.InitTimeAxis(context, "activeSolution", {1,2,3,4,5,6}, false)
			
			return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_200012(context, evt)
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
function condition_EVENT_GADGET_CREATE_200013(context, evt)
	if 200007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_200013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155006200, 200007, {65}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

require "V2_4/EnvState"
require "V2_4/EnvStateWorktop"
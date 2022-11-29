-- 基础信息
local base_info = {
	group_id = 155005109
}

-- Trigger变量
local defs = {
	group_ID = 155005109,
	gadget_pattern = 109003,
	gadget_mark_01 = 109004,
	gadget_mark_02 = 109005,
	gadget_mark_03 = 109006,
	gadget_mark_04 = 109007,
	gadget_mark_05 = 109008,
	solution = {1,3,5,4,2},
	solutionListIndex = 1,
	altarGroupID = 155008010,
	gadget_worktop = 109011,
	gadget_mask = 109013
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
		ScriptLib.AddQuestProgress(context,"72191_activePattern")
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
	{ config_id = 109003, gadget_id = 70230074, pos = { x = -145.237, y = 264.130, z = 430.442 }, rot = { x = 274.978, y = 185.535, z = 77.420 }, level = 36, area_id = 200 },
	{ config_id = 109004, gadget_id = 70230075, pos = { x = -144.498, y = 264.185, z = 431.008 }, rot = { x = 274.978, y = 185.549, z = 39.855 }, level = 36, area_id = 200 },
	{ config_id = 109005, gadget_id = 70230076, pos = { x = -145.992, y = 264.111, z = 430.290 }, rot = { x = 274.978, y = 185.563, z = 258.128 }, level = 36, area_id = 200 },
	{ config_id = 109006, gadget_id = 70230077, pos = { x = -144.388, y = 264.097, z = 429.975 }, rot = { x = 274.978, y = 185.538, z = 106.928 }, level = 36, area_id = 200 },
	{ config_id = 109007, gadget_id = 70230078, pos = { x = -145.331, y = 264.055, z = 429.587 }, rot = { x = 274.978, y = 185.534, z = 185.524 }, level = 36, area_id = 200 },
	{ config_id = 109008, gadget_id = 70230079, pos = { x = -145.368, y = 264.204, z = 431.302 }, rot = { x = 274.978, y = 185.541, z = 337.331 }, level = 36, area_id = 200 },
	{ config_id = 109011, gadget_id = 70360001, pos = { x = -145.204, y = 264.296, z = 430.448 }, rot = { x = 359.000, y = 0.017, z = 358.040 }, level = 36, area_id = 200 },
	{ config_id = 109013, gadget_id = 70290216, pos = { x = -145.007, y = 265.098, z = 430.498 }, rot = { x = 357.682, y = 359.994, z = 0.307 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初始化
	{ config_id = 1109001, name = "GROUP_LOAD_109001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_109001", trigger_count = 0 },
	-- 监听gameplayState变化
	{ config_id = 1109002, name = "VARIABLE_CHANGE_109002", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "condition_EVENT_VARIABLE_CHANGE_109002", action = "action_EVENT_VARIABLE_CHANGE_109002", trigger_count = 0 },
	-- 激活
	{ config_id = 1109009, name = "SELECT_OPTION_109009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_109009", action = "action_EVENT_SELECT_OPTION_109009", trigger_count = 0 },
	-- 顺序显示
	{ config_id = 1109010, name = "TIME_AXIS_PASS_109010", event = EventType.EVENT_TIME_AXIS_PASS, source = "activeSolution", condition = "", action = "action_EVENT_TIME_AXIS_PASS_109010", trigger_count = 0 },
	-- 给操作台上Option
	{ config_id = 1109012, name = "GADGET_CREATE_109012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_109012", action = "action_EVENT_GADGET_CREATE_109012", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_109001", "VARIABLE_CHANGE_109002", "GADGET_CREATE_109012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 玩法开启,
		monsters = { },
		gadgets = { 109003, 109004, 109005, 109006, 109007, 109008 },
		regions = { },
		triggers = { "SELECT_OPTION_109009", "TIME_AXIS_PASS_109010" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 玩法完成,
		monsters = { },
		gadgets = { 109003, 109004, 109005, 109006, 109007, 109008 },
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
function action_EVENT_GROUP_LOAD_109001(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_109002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
		-- 判断变量"gameplayState"为0
		if ScriptLib.GetGroupVariableValue(context, "gameplayState") == 0 then
				return false
		end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_109002(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_109009(context, evt)
			-- 判断是gadgetid 109011 option_id 65
			ScriptLib.PrintContextLog(context,"evt.param1 = "..evt.param1.. " | evt.param2 = "..evt.param2.." | evt.param3 = "..evt.param3)
			if 109011 ~= evt.param1 then
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
function action_EVENT_SELECT_OPTION_109009(context, evt)
		ScriptLib.DelWorktopOptionByGroupId(context, defs.group_ID, defs.gadget_worktop, 65)
				ScriptLib.PrintContextLog(context, "---Initial Time Axis---")
				-- 创建标识为"activeSolution"，时间节点为{1,2,3,4,5,6}的时间轴，false用于控制该时间轴是否循环
				ScriptLib.InitTimeAxis(context, "activeSolution", {1,2,3,4,5,6}, false)
				ScriptLib.PlayCutScene(context, 52, 0)
				return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_109010(context, evt)
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
function condition_EVENT_GADGET_CREATE_109012(context, evt)
	if 109011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_109012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155005109, 109011, {65}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

require "V2_4/EnvState"
require "V2_4/EnvStateWorktop"
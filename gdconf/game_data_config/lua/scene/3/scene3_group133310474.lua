-- 基础信息
local base_info = {
	group_id = 133310474
}

-- Trigger变量
local defs = {
	pointarray_normal = 331000020,
	pointarray_hard = 331000021
}

-- DEFS_MISCS
local pointStateList = {474001, 474002, 474003, 474005, 0, 0, 0, 0}
local challengeOptionConfigID = 474006
local challengeOptionID = 188

local holeConfigID = {474001, 474002, 474003, 474005}
local checkOptionID = 916

local arrayID = {331000020, 331000021}

local randomVez = {min = 3, max = 5}

local successCount = 2

local unmovenum = 0

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
	{ config_id = 474001, gadget_id = 70330301, pos = { x = -2268.211, y = 339.710, z = 4199.146 }, rot = { x = 5.969, y = 0.776, z = 358.039 }, level = 32, is_use_point_array = true, area_id = 26 },
	{ config_id = 474002, gadget_id = 70330301, pos = { x = -2273.707, y = 339.913, z = 4197.377 }, rot = { x = 5.754, y = 0.821, z = 1.506 }, level = 32, is_use_point_array = true, area_id = 26 },
	{ config_id = 474003, gadget_id = 70330301, pos = { x = -2264.554, y = 340.099, z = 4193.431 }, rot = { x = 4.074, y = 1.826, z = 358.396 }, level = 32, is_use_point_array = true, area_id = 26 },
	{ config_id = 474004, gadget_id = 70300203, pos = { x = -2272.805, y = 340.350, z = 4186.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 474005, gadget_id = 70330295, pos = { x = -2269.167, y = 340.231, z = 4193.129 }, rot = { x = 355.719, y = 202.788, z = 359.506 }, level = 32, is_use_point_array = true, area_id = 26 },
	{ config_id = 474006, gadget_id = 70360001, pos = { x = -2272.874, y = 340.349, z = 4186.112 }, rot = { x = 359.396, y = 359.651, z = 0.868 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1474007, name = "SELECT_OPTION_474007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_474007", action = "action_EVENT_SELECT_OPTION_474007", trigger_count = 0 },
	{ config_id = 1474008, name = "GADGET_CREATE_474008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_474008", action = "action_EVENT_GADGET_CREATE_474008", trigger_count = 0 },
	{ config_id = 1474009, name = "VARIABLE_CHANGE_474009", event = EventType.EVENT_VARIABLE_CHANGE, source = "hamster_success_num", condition = "condition_EVENT_VARIABLE_CHANGE_474009", action = "", trigger_count = 0, tag = "666" },
	{ config_id = 1474010, name = "CHALLENGE_FAIL_474010", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_474010", trigger_count = 0 },
	{ config_id = 1474011, name = "CHALLENGE_SUCCESS_474011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_474011", trigger_count = 0 },
	{ config_id = 1474012, name = "TIME_AXIS_PASS_474012", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_474012", action = "action_EVENT_TIME_AXIS_PASS_474012" }
}

-- 变量
variables = {
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
		gadgets = { 474001, 474002, 474003, 474005, 474006 },
		regions = { },
		triggers = { "SELECT_OPTION_474007", "GADGET_CREATE_474008", "VARIABLE_CHANGE_474009", "CHALLENGE_FAIL_474010", "CHALLENGE_SUCCESS_474011", "TIME_AXIS_PASS_474012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 474004 },
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
function condition_EVENT_SELECT_OPTION_474007(context, evt)
	-- 判断是gadgetid 474006 option_id 188
	if 474006 ~= evt.param1 then
		return false	
	end
	
	if 188 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_474007(context, evt)
	
	ScriptLib.RemoveExtraGroupSuite(context, 133310474, 2)
	
	
	ScriptLib.StartChallenge(context, 666, 85, {3, 666, 2}) 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_474008(context, evt)
	if 474006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_474008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310474, 2)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133310474, 474006, {188}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_474009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 0 > evt.param1 or 5 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_474010(context, evt)
	-- 将本组内变量名为 "hamster_success_num" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "hamster_success_num", 0, 133310474) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133310474, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_474011(context, evt)
	-- 创建标识为"timer"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_474012(context, evt)
	if "timer" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_474012(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133310474, monsters = {}, gadgets = {474001,474002,474003,474005,474006,474004} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

require "V3_1/HamsterGambling"
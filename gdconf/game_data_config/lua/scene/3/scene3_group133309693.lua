-- 基础信息
local base_info = {
	group_id = 133309693
}

-- Trigger变量
local defs = {
	pointarray_normal = 330900069,
	pointarray_hard = 330900070
}

-- DEFS_MISCS
local pointStateList = {693001, 693002, 693003, 693005, 0, 0, 0, 0}
local challengeOptionConfigID = 693006
local challengeOptionID = 188

local holeConfigID = {693001, 693002, 693003, 693005}
local checkOptionID = 916

local arrayID = {330900069, 330900070}

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
	{ config_id = 693001, gadget_id = 70330301, pos = { x = -2614.062, y = 209.649, z = 5701.895 }, rot = { x = 359.977, y = 359.865, z = 350.247 }, level = 32, is_use_point_array = true, area_id = 27 },
	{ config_id = 693002, gadget_id = 70330301, pos = { x = -2619.064, y = 210.565, z = 5707.658 }, rot = { x = 359.223, y = 0.688, z = 350.238 }, level = 32, is_use_point_array = true, area_id = 27 },
	{ config_id = 693003, gadget_id = 70330301, pos = { x = -2618.227, y = 210.361, z = 5696.920 }, rot = { x = 0.252, y = 1.616, z = 351.122 }, level = 32, is_use_point_array = true, area_id = 27 },
	{ config_id = 693004, gadget_id = 70300203, pos = { x = -2629.469, y = 212.714, z = 5705.253 }, rot = { x = 357.682, y = 0.008, z = 359.135 }, level = 32, area_id = 27 },
	{ config_id = 693005, gadget_id = 70330295, pos = { x = -2622.331, y = 211.110, z = 5704.548 }, rot = { x = 350.344, y = 265.542, z = 1.634 }, level = 32, is_use_point_array = true, area_id = 27 },
	{ config_id = 693006, gadget_id = 70360001, pos = { x = -2629.539, y = 212.730, z = 5705.225 }, rot = { x = 357.746, y = 0.266, z = 346.201 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1693007, name = "SELECT_OPTION_693007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_693007", action = "action_EVENT_SELECT_OPTION_693007", trigger_count = 0 },
	{ config_id = 1693008, name = "GADGET_CREATE_693008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_693008", action = "action_EVENT_GADGET_CREATE_693008", trigger_count = 0 },
	{ config_id = 1693009, name = "VARIABLE_CHANGE_693009", event = EventType.EVENT_VARIABLE_CHANGE, source = "hamster_success_num", condition = "condition_EVENT_VARIABLE_CHANGE_693009", action = "", trigger_count = 0, tag = "666" },
	{ config_id = 1693010, name = "CHALLENGE_FAIL_693010", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_693010", trigger_count = 0 },
	{ config_id = 1693011, name = "CHALLENGE_SUCCESS_693011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_693011", trigger_count = 0 },
	{ config_id = 1693012, name = "TIME_AXIS_PASS_693012", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_693012", action = "action_EVENT_TIME_AXIS_PASS_693012" }
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
		gadgets = { 693001, 693002, 693003, 693005, 693006 },
		regions = { },
		triggers = { "SELECT_OPTION_693007", "GADGET_CREATE_693008", "VARIABLE_CHANGE_693009", "CHALLENGE_FAIL_693010", "CHALLENGE_SUCCESS_693011", "TIME_AXIS_PASS_693012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 693004 },
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
function condition_EVENT_SELECT_OPTION_693007(context, evt)
	-- 判断是gadgetid 693006 option_id 188
	if 693006 ~= evt.param1 then
		return false	
	end
	
	if 188 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_693007(context, evt)
	
	ScriptLib.RemoveExtraGroupSuite(context, 133309693, 2)
	
	
	ScriptLib.StartChallenge(context, 666, 85, {3, 666, 2}) 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_693008(context, evt)
	if 693006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_693008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309693, 2)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309693, 693006, {188}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_693009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 0 > evt.param1 or 5 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_693010(context, evt)
	-- 将本组内变量名为 "hamster_success_num" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "hamster_success_num", 0, 133309693) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133309693, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_693011(context, evt)
	-- 创建标识为"timer"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_693012(context, evt)
	if "timer" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_693012(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133309693, monsters = {}, gadgets = {693001,693002,693003,693005,693006,693004} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

require "V3_1/HamsterGambling"
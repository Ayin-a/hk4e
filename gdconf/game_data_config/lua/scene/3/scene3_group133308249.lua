-- 基础信息
local base_info = {
	group_id = 133308249
}

-- Trigger变量
local defs = {
	pointarray_normal = 330800023,
	pointarray_hard = 330800024
}

-- DEFS_MISCS
local pointStateList = {249001, 249002, 249003, 249005, 0, 0, 0, 0}
local challengeOptionConfigID = 249006
local challengeOptionID = 188

local holeConfigID = {249001, 249002, 249003, 249005}
local checkOptionID = 916

local arrayID = {330800023, 330800024}

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
	{ config_id = 249001, gadget_id = 70330301, pos = { x = -1581.002, y = 146.988, z = 4815.275 }, rot = { x = 6.316, y = 0.519, z = 1.035 }, level = 32, is_use_point_array = true, area_id = 26 },
	{ config_id = 249002, gadget_id = 70330301, pos = { x = -1585.514, y = 146.044, z = 4820.740 }, rot = { x = 9.634, y = 0.609, z = 1.003 }, level = 32, is_use_point_array = true, area_id = 26 },
	{ config_id = 249003, gadget_id = 70330301, pos = { x = -1575.581, y = 146.617, z = 4817.167 }, rot = { x = 8.358, y = 2.025, z = 356.865 }, level = 32, is_use_point_array = true, area_id = 26 },
	{ config_id = 249004, gadget_id = 70300203, pos = { x = -1586.561, y = 147.017, z = 4814.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 249005, gadget_id = 70330295, pos = { x = -1579.903, y = 145.912, z = 4821.737 }, rot = { x = 351.803, y = 221.269, z = 352.205 }, level = 32, is_use_point_array = true, area_id = 26 },
	{ config_id = 249006, gadget_id = 70360001, pos = { x = -1586.631, y = 147.022, z = 4814.439 }, rot = { x = 8.093, y = 359.830, z = 0.107 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1249007, name = "SELECT_OPTION_249007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_249007", action = "action_EVENT_SELECT_OPTION_249007", trigger_count = 0 },
	{ config_id = 1249008, name = "GADGET_CREATE_249008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_249008", action = "action_EVENT_GADGET_CREATE_249008", trigger_count = 0 },
	{ config_id = 1249009, name = "VARIABLE_CHANGE_249009", event = EventType.EVENT_VARIABLE_CHANGE, source = "hamster_success_num", condition = "condition_EVENT_VARIABLE_CHANGE_249009", action = "", trigger_count = 0, tag = "666" },
	{ config_id = 1249010, name = "CHALLENGE_FAIL_249010", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_249010", trigger_count = 0 },
	{ config_id = 1249011, name = "CHALLENGE_SUCCESS_249011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_249011", trigger_count = 0 },
	{ config_id = 1249012, name = "TIME_AXIS_PASS_249012", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_249012", action = "action_EVENT_TIME_AXIS_PASS_249012" }
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
		gadgets = { 249001, 249002, 249003, 249005, 249006 },
		regions = { },
		triggers = { "SELECT_OPTION_249007", "GADGET_CREATE_249008", "VARIABLE_CHANGE_249009", "CHALLENGE_FAIL_249010", "CHALLENGE_SUCCESS_249011", "TIME_AXIS_PASS_249012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 249004 },
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
function condition_EVENT_SELECT_OPTION_249007(context, evt)
	-- 判断是gadgetid 249006 option_id 188
	if 249006 ~= evt.param1 then
		return false	
	end
	
	if 188 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_249007(context, evt)
	
	ScriptLib.RemoveExtraGroupSuite(context, 133308249, 2)
	
	
	ScriptLib.StartChallenge(context, 666, 85, {3, 666, 2}) 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_249008(context, evt)
	if 249006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_249008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133308249, 2)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133308249, 249006, {188}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_249009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 0 > evt.param1 or 5 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_249010(context, evt)
	-- 将本组内变量名为 "hamster_success_num" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "hamster_success_num", 0, 133308249) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133308249, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_249011(context, evt)
	-- 创建标识为"timer"，时间节点为{3}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "timer", {3}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_249012(context, evt)
	if "timer" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_249012(context, evt)
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133308249, monsters = {}, gadgets = {249001,249002,249003,249005,249006,249004} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end

require "V3_1/HamsterGambling"
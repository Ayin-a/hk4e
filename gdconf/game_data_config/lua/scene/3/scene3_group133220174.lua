-- 基础信息
local base_info = {
	group_id = 133220174
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 第一拦截点怪物
	{ config_id = 174001, monster_id = 21011001, pos = { x = -2678.408, y = 213.695, z = -4118.164 }, rot = { x = 0.000, y = 265.169, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 32, area_id = 11 },
	-- 第一拦截点怪物
	{ config_id = 174002, monster_id = 21010901, pos = { x = -2681.925, y = 213.992, z = -4134.551 }, rot = { x = 0.000, y = 319.044, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 32, area_id = 11 },
	{ config_id = 174021, monster_id = 21010301, pos = { x = -2693.888, y = 208.546, z = -4126.819 }, rot = { x = 0.000, y = 64.148, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 174022, monster_id = 21010301, pos = { x = -2694.979, y = 208.529, z = -4124.495 }, rot = { x = 0.000, y = 69.508, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 174030, monster_id = 21010901, pos = { x = -2678.410, y = 210.461, z = -4180.627 }, rot = { x = 0.000, y = 72.411, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, isElite = true, pose_id = 32, area_id = 11 },
	{ config_id = 174031, monster_id = 21011001, pos = { x = -2669.881, y = 212.778, z = -4201.070 }, rot = { x = 0.000, y = 20.113, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 32, area_id = 11 },
	-- 第二拦截点怪物
	{ config_id = 174032, monster_id = 21010601, pos = { x = -2663.200, y = 210.138, z = -4179.317 }, rot = { x = 0.000, y = 89.765, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 11 },
	-- 第二拦截点怪物
	{ config_id = 174033, monster_id = 21011601, pos = { x = -2659.349, y = 209.998, z = -4188.445 }, rot = { x = 0.000, y = 55.028, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 11 },
	{ config_id = 174035, monster_id = 21010701, pos = { x = -2668.672, y = 210.296, z = -4189.040 }, rot = { x = 0.000, y = 68.231, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 174036, monster_id = 21010601, pos = { x = -2673.073, y = 210.043, z = -4188.393 }, rot = { x = 0.000, y = 68.231, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 11 },
	-- 第三拦截点怪物
	{ config_id = 174049, monster_id = 21010501, pos = { x = -2723.056, y = 222.184, z = -4231.110 }, rot = { x = 0.000, y = 28.358, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 32, area_id = 11 },
	{ config_id = 174052, monster_id = 21020201, pos = { x = -2739.616, y = 216.473, z = -4251.022 }, rot = { x = 0.000, y = 68.874, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	-- 第三拦截点怪物
	{ config_id = 174053, monster_id = 22010401, pos = { x = -2719.428, y = 216.494, z = -4228.826 }, rot = { x = 0.000, y = 22.542, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, area_id = 11 },
	-- 第三拦截点怪物
	{ config_id = 174054, monster_id = 21030101, pos = { x = -2707.118, y = 217.453, z = -4229.966 }, rot = { x = 0.000, y = 308.228, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 174055, monster_id = 21011001, pos = { x = -2741.857, y = 218.989, z = -4255.665 }, rot = { x = 0.000, y = 44.107, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 11 },
	{ config_id = 174061, monster_id = 21010501, pos = { x = -2730.735, y = 218.978, z = -4252.017 }, rot = { x = 0.000, y = 352.429, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 174004, gadget_id = 70380019, pos = { x = -2722.873, y = 207.220, z = -4135.952 }, rot = { x = 0.000, y = 90.286, z = 0.000 }, level = 12, route_id = 322000074, start_route = false, persistent = true, area_id = 11 },
	{ config_id = 174005, gadget_id = 70360001, pos = { x = -2722.873, y = 207.220, z = -4135.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	-- 第一拦截点路障
	{ config_id = 174006, gadget_id = 70300205, pos = { x = -2679.612, y = 207.557, z = -4124.700 }, rot = { x = 0.000, y = 203.799, z = 0.000 }, level = 1, area_id = 11 },
	-- 第三拦截点路障
	{ config_id = 174007, gadget_id = 70300205, pos = { x = -2716.911, y = 216.489, z = -4233.487 }, rot = { x = 0.000, y = 274.542, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 174008, gadget_id = 70710126, pos = { x = -2801.827, y = 210.155, z = -4299.039 }, rot = { x = 0.000, y = 267.010, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 174017, gadget_id = 70300090, pos = { x = -2678.220, y = 208.107, z = -4118.118 }, rot = { x = 0.000, y = 5.340, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 174020, gadget_id = 70300090, pos = { x = -2681.724, y = 208.317, z = -4134.762 }, rot = { x = 0.000, y = 324.174, z = 0.000 }, level = 27, area_id = 11 },
	-- 第二拦截点路障
	{ config_id = 174023, gadget_id = 70300205, pos = { x = -2675.177, y = 210.188, z = -4189.410 }, rot = { x = 0.000, y = 335.959, z = 0.000 }, level = 1, area_id = 11 },
	-- 第二拦截点路障
	{ config_id = 174024, gadget_id = 70300205, pos = { x = -2662.237, y = 210.133, z = -4185.934 }, rot = { x = 356.180, y = 335.959, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 174025, gadget_id = 70220005, pos = { x = -2660.092, y = 209.938, z = -4189.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 174026, gadget_id = 70220005, pos = { x = -2664.507, y = 210.067, z = -4181.501 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 174027, gadget_id = 70220005, pos = { x = -2672.350, y = 210.139, z = -4192.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 174028, gadget_id = 70220005, pos = { x = -2675.162, y = 209.911, z = -4184.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 174029, gadget_id = 70220005, pos = { x = -2675.503, y = 209.980, z = -4185.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 174040, gadget_id = 70310006, pos = { x = -2800.497, y = 211.257, z = -4304.736 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 174043, gadget_id = 70300092, pos = { x = -2806.384, y = 212.919, z = -4313.582 }, rot = { x = 0.000, y = 171.341, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 174045, gadget_id = 70300104, pos = { x = -2803.739, y = 212.406, z = -4310.738 }, rot = { x = 0.000, y = 267.010, z = 350.630 }, level = 27, area_id = 11 },
	{ config_id = 174051, gadget_id = 70300090, pos = { x = -2722.932, y = 216.530, z = -4230.890 }, rot = { x = 0.000, y = 21.979, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 174057, gadget_id = 70220004, pos = { x = -2717.063, y = 216.591, z = -4234.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 174058, gadget_id = 70900388, pos = { x = -2717.816, y = 216.087, z = -4224.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 174059, gadget_id = 70900388, pos = { x = -2714.888, y = 216.379, z = -4226.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 174060, gadget_id = 70900388, pos = { x = -2717.602, y = 216.505, z = -4229.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 174062, gadget_id = 70220004, pos = { x = -2714.516, y = 215.975, z = -4222.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 174063, gadget_id = 70220004, pos = { x = -2731.263, y = 217.276, z = -4247.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 174064, gadget_id = 70220004, pos = { x = -2743.929, y = 216.400, z = -4252.191 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 174065, gadget_id = 70220004, pos = { x = -2735.915, y = 216.817, z = -4248.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1174009, name = "GADGET_CREATE_174009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_174009", action = "action_EVENT_GADGET_CREATE_174009", trigger_count = 0 },
	{ config_id = 1174010, name = "SELECT_OPTION_174010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_174010", action = "action_EVENT_SELECT_OPTION_174010" },
	{ config_id = 1174011, name = "CHALLENGE_SUCCESS_174011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_174011", trigger_count = 0 },
	{ config_id = 1174012, name = "PLATFORM_REACH_POINT_174012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_174012", action = "action_EVENT_PLATFORM_REACH_POINT_174012", trigger_count = 0, tag = "888" },
	{ config_id = 1174013, name = "CHALLENGE_FAIL_174013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_174013", trigger_count = 0 },
	{ config_id = 1174014, name = "ANY_GADGET_DIE_174014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_174014", action = "action_EVENT_ANY_GADGET_DIE_174014" },
	-- 第一拦截点停车
	{ config_id = 1174015, name = "PLATFORM_REACH_POINT_174015", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_174015", action = "action_EVENT_PLATFORM_REACH_POINT_174015", trigger_count = 0 },
	-- 第一拦截点路障
	{ config_id = 1174016, name = "ANY_GADGET_DIE_174016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_174016", action = "action_EVENT_ANY_GADGET_DIE_174016" },
	-- 第二拦截点路障1
	{ config_id = 1174018, name = "ANY_GADGET_DIE_174018", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_174018", action = "action_EVENT_ANY_GADGET_DIE_174018", trigger_count = 0 },
	-- 第二拦截点停车
	{ config_id = 1174019, name = "PLATFORM_REACH_POINT_174019", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_174019", action = "action_EVENT_PLATFORM_REACH_POINT_174019", trigger_count = 0 },
	-- 第二拦截点路障2
	{ config_id = 1174037, name = "ANY_GADGET_DIE_174037", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_174037", action = "action_EVENT_ANY_GADGET_DIE_174037", trigger_count = 0 },
	-- 第一拦截点开车
	{ config_id = 1174038, name = "VARIABLE_CHANGE_174038", event = EventType.EVENT_VARIABLE_CHANGE, source = "isObstacle1Available", condition = "condition_EVENT_VARIABLE_CHANGE_174038", action = "action_EVENT_VARIABLE_CHANGE_174038" },
	-- 第二拦截点开车
	{ config_id = 1174039, name = "VARIABLE_CHANGE_174039", event = EventType.EVENT_VARIABLE_CHANGE, source = "isObstacle2Available", condition = "condition_EVENT_VARIABLE_CHANGE_174039", action = "action_EVENT_VARIABLE_CHANGE_174039" },
	-- 第三拦截点开车
	{ config_id = 1174048, name = "VARIABLE_CHANGE_174048", event = EventType.EVENT_VARIABLE_CHANGE, source = "isObstacle3Available", condition = "condition_EVENT_VARIABLE_CHANGE_174048", action = "action_EVENT_VARIABLE_CHANGE_174048" },
	-- 第三拦截点路障
	{ config_id = 1174050, name = "ANY_GADGET_DIE_174050", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_174050", action = "action_EVENT_ANY_GADGET_DIE_174050" },
	-- 第三拦截点停车
	{ config_id = 1174056, name = "PLATFORM_REACH_POINT_174056", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_174056", action = "action_EVENT_PLATFORM_REACH_POINT_174056", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isObstacle1Available", value = 1, no_refresh = false },
	{ config_id = 2, name = "isObstacle2Available", value = 2, no_refresh = false },
	{ config_id = 3, name = "isObstacle3Available", value = 1, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 174041, gadget_id = 70300094, pos = { x = -2805.319, y = 211.604, z = -4306.182 }, rot = { x = 0.000, y = 283.142, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 174042, gadget_id = 70300094, pos = { x = -2805.086, y = 211.947, z = -4308.104 }, rot = { x = 0.000, y = 278.996, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 174044, gadget_id = 70220048, pos = { x = -2806.768, y = 210.628, z = -4301.255 }, rot = { x = 0.000, y = 258.907, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 174046, gadget_id = 70220048, pos = { x = -2807.498, y = 211.167, z = -4304.192 }, rot = { x = 0.000, y = 280.564, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 174047, gadget_id = 70300094, pos = { x = -2806.863, y = 211.832, z = -4307.384 }, rot = { x = 0.000, y = 319.768, z = 0.000 }, level = 27, area_id = 11 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		gadgets = { 174004, 174005, 174017, 174020, 174043, 174045, 174051 },
		regions = { },
		triggers = { "GADGET_CREATE_174009", "SELECT_OPTION_174010", "CHALLENGE_SUCCESS_174011", "PLATFORM_REACH_POINT_174012", "CHALLENGE_FAIL_174013", "ANY_GADGET_DIE_174014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 174001, 174002, 174032, 174033, 174049, 174053, 174054 },
		gadgets = { 174006, 174007, 174008, 174023, 174024, 174025, 174026, 174027, 174028, 174029, 174040, 174057, 174058, 174059, 174060, 174062, 174063, 174064, 174065 },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_174015", "ANY_GADGET_DIE_174016", "ANY_GADGET_DIE_174018", "PLATFORM_REACH_POINT_174019", "ANY_GADGET_DIE_174037", "VARIABLE_CHANGE_174038", "VARIABLE_CHANGE_174039", "VARIABLE_CHANGE_174048", "ANY_GADGET_DIE_174050", "PLATFORM_REACH_POINT_174056" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = end_suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第一拦截点埋伏怪,
		monsters = { 174021, 174022 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二拦截点埋伏怪,
		monsters = { 174030, 174031, 174035, 174036 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三拦截点埋伏怪,
		monsters = { 174052, 174055, 174061 },
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

-- 触发条件
function condition_EVENT_GADGET_CREATE_174009(context, evt)
	if 174005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_174009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220174, 174005, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_174010(context, evt)
	-- 判断是gadgetid 174005 option_id 7
	if 174005 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_174010(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为15的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 15, 300, 26, 888, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 174004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 174005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220174, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_174011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220174, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220174, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220174, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220174, 6)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220174, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_174012(context, evt)
	-- 判断是gadgetid 为 174004的移动平台，是否到达了322000074 的路线中的 42 点
	
	if 174004 ~= evt.param1 then
	  return false
	end
	
	if 322000074 ~= evt.param2 then
	  return false
	end
	
	if 42 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_174012(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	-- 将configid为 174004 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 174004, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_174013(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220174, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220174, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_174014(context, evt)
	if 174004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_174014(context, evt)
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_174015(context, evt)
	-- 判断是gadgetid 为 174004的移动平台，是否到达了322000074 的路线中的 6 点
	
	if 174004 ~= evt.param1 then
	  return false
	end
	
	if 322000074 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle1Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle1Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_174015(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 174004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220174, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_174016(context, evt)
	if 174006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_174016(context, evt)
	-- 针对当前group内变量名为 "isObstacle1Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle1Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_174018(context, evt)
	if 174024 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_174018(context, evt)
	-- 针对当前group内变量名为 "isObstacle2Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle2Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220174, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_174019(context, evt)
	-- 判断是gadgetid 为 174004的移动平台，是否到达了322000074 的路线中的 16 点
	
	if 174004 ~= evt.param1 then
	  return false
	end
	
	if 322000074 ~= evt.param2 then
	  return false
	end
	
	if 16 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle2Available"为2
	if ScriptLib.GetGroupVariableValue(context, "isObstacle2Available") < 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_174019(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 174004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_174037(context, evt)
	if 174023 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_174037(context, evt)
	-- 针对当前group内变量名为 "isObstacle2Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle2Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_174038(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isObstacle1Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle1Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_174038(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 174004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_174039(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isObstacle2Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle2Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_174039(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 174004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_174048(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isObstacle3Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle3Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_174048(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 174004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220174, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_174050(context, evt)
	if 174007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_174050(context, evt)
	-- 针对当前group内变量名为 "isObstacle3Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle3Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_174056(context, evt)
	-- 判断是gadgetid 为 174004的移动平台，是否到达了322000074 的路线中的 28 点
	
	if 174004 ~= evt.param1 then
	  return false
	end
	
	if 322000074 ~= evt.param2 then
	  return false
	end
	
	if 28 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle3Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle3Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_174056(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 174004) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end
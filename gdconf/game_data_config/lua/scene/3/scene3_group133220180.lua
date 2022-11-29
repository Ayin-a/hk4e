-- 基础信息
local base_info = {
	group_id = 133220180
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 第一拦截点
	{ config_id = 180001, monster_id = 21011001, pos = { x = -2569.478, y = 212.850, z = -4107.430 }, rot = { x = 0.000, y = 102.603, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 32, area_id = 11 },
	-- 第一拦截点
	{ config_id = 180002, monster_id = 21010601, pos = { x = -2564.207, y = 208.800, z = -4108.556 }, rot = { x = 0.000, y = 108.400, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 11 },
	-- 第二拦截点
	{ config_id = 180004, monster_id = 25010601, pos = { x = -2608.269, y = 200.783, z = -4097.859 }, rot = { x = 0.000, y = 37.441, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031, 1408 }, area_id = 11 },
	-- 第二拦截点
	{ config_id = 180005, monster_id = 25010401, pos = { x = -2593.165, y = 200.442, z = -4091.470 }, rot = { x = 0.000, y = 248.710, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031, 1408 }, area_id = 11 },
	-- 第二拦截点
	{ config_id = 180006, monster_id = 25010501, pos = { x = -2611.294, y = 200.060, z = -4062.349 }, rot = { x = 0.000, y = 224.101, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 11 },
	-- 第二拦截点
	{ config_id = 180007, monster_id = 25010301, pos = { x = -2619.924, y = 200.551, z = -4068.432 }, rot = { x = 0.000, y = 93.968, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 11 },
	-- 第一拦截点
	{ config_id = 180008, monster_id = 21011601, pos = { x = -2564.745, y = 209.457, z = -4120.960 }, rot = { x = 0.000, y = 38.390, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	-- 第一拦截点
	{ config_id = 180009, monster_id = 21010501, pos = { x = -2554.609, y = 209.984, z = -4122.738 }, rot = { x = 0.000, y = 355.011, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 32, area_id = 11 },
	-- 第二拦截点
	{ config_id = 180011, monster_id = 25010501, pos = { x = -2600.042, y = 200.167, z = -4080.067 }, rot = { x = 0.000, y = 167.617, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 11 },
	-- 第二拦截点
	{ config_id = 180012, monster_id = 25010301, pos = { x = -2612.889, y = 200.659, z = -4082.422 }, rot = { x = 0.000, y = 124.762, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 11 },
	-- 第三拦截点
	{ config_id = 180013, monster_id = 21011001, pos = { x = -2614.763, y = 204.249, z = -3975.495 }, rot = { x = 0.000, y = 143.493, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, area_id = 11 },
	-- 第三拦截点
	{ config_id = 180015, monster_id = 22010401, pos = { x = -2608.934, y = 200.036, z = -3976.556 }, rot = { x = 0.000, y = 155.898, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1031 }, area_id = 11 },
	-- 第三拦截点
	{ config_id = 180017, monster_id = 21020201, pos = { x = -2607.731, y = 200.452, z = -3996.959 }, rot = { x = 0.000, y = 2.985, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	-- 第三拦截点
	{ config_id = 180026, monster_id = 21010901, pos = { x = -2604.427, y = 204.494, z = -3971.381 }, rot = { x = 0.000, y = 166.513, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1408 }, pose_id = 32, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 180018, gadget_id = 70380019, pos = { x = -2511.162, y = 201.144, z = -4114.474 }, rot = { x = 0.000, y = 285.506, z = 0.000 }, level = 12, route_id = 322000075, start_route = false, persistent = true, area_id = 11 },
	{ config_id = 180019, gadget_id = 70360001, pos = { x = -2511.162, y = 201.698, z = -4114.473 }, rot = { x = 0.000, y = 47.510, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 180022, gadget_id = 70710126, pos = { x = -2585.312, y = 201.094, z = -3897.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 180023, gadget_id = 70300090, pos = { x = -2604.483, y = 199.067, z = -3971.265 }, rot = { x = 0.000, y = 342.948, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 180024, gadget_id = 70300090, pos = { x = -2614.931, y = 198.798, z = -3975.167 }, rot = { x = 0.000, y = 341.955, z = 0.000 }, level = 27, area_id = 11 },
	-- 第三拦截点路障
	{ config_id = 180025, gadget_id = 70300205, pos = { x = -2609.879, y = 199.945, z = -3973.389 }, rot = { x = 0.000, y = 66.717, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 180027, gadget_id = 70220005, pos = { x = -2569.776, y = 210.169, z = -4109.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 180028, gadget_id = 70220005, pos = { x = -2566.771, y = 210.185, z = -4123.727 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 180029, gadget_id = 70220005, pos = { x = -2569.327, y = 210.031, z = -4110.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 180030, gadget_id = 70300092, pos = { x = -2586.499, y = 201.401, z = -3885.366 }, rot = { x = 0.000, y = 303.398, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 180032, gadget_id = 70300094, pos = { x = -2582.958, y = 201.746, z = -3888.917 }, rot = { x = 0.000, y = 324.036, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 180033, gadget_id = 70300094, pos = { x = -2585.211, y = 201.596, z = -3888.997 }, rot = { x = 0.000, y = 50.033, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 180034, gadget_id = 70300092, pos = { x = -2581.661, y = 201.656, z = -3893.715 }, rot = { x = 0.000, y = 61.503, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 180036, gadget_id = 70300104, pos = { x = -2585.257, y = 201.593, z = -3888.903 }, rot = { x = 0.000, y = 52.687, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 180038, gadget_id = 70300094, pos = { x = -2584.107, y = 201.632, z = -3887.462 }, rot = { x = 0.000, y = 24.359, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 180039, gadget_id = 70310006, pos = { x = -2590.399, y = 201.470, z = -3880.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	-- 第一拦截点路障
	{ config_id = 180068, gadget_id = 70300083, pos = { x = -2570.501, y = 209.932, z = -4113.778 }, rot = { x = 359.322, y = 79.179, z = 356.458 }, level = 1, area_id = 11 },
	-- 第一拦截点路障
	{ config_id = 180071, gadget_id = 70300083, pos = { x = -2569.064, y = 209.712, z = -4121.021 }, rot = { x = 0.000, y = 79.158, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 第三拦截点发车
	{ config_id = 1180003, name = "VARIABLE_CHANGE_180003", event = EventType.EVENT_VARIABLE_CHANGE, source = "isObstacle3Available", condition = "condition_EVENT_VARIABLE_CHANGE_180003", action = "action_EVENT_VARIABLE_CHANGE_180003" },
	{ config_id = 1180054, name = "GADGET_CREATE_180054", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_180054", action = "action_EVENT_GADGET_CREATE_180054", trigger_count = 0 },
	{ config_id = 1180055, name = "SELECT_OPTION_180055", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_180055", action = "action_EVENT_SELECT_OPTION_180055" },
	{ config_id = 1180056, name = "CHALLENGE_SUCCESS_180056", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_180056", trigger_count = 0 },
	{ config_id = 1180057, name = "PLATFORM_REACH_POINT_180057", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_180057", action = "action_EVENT_PLATFORM_REACH_POINT_180057", trigger_count = 0, tag = "888" },
	{ config_id = 1180058, name = "CHALLENGE_FAIL_180058", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_180058", trigger_count = 0 },
	{ config_id = 1180059, name = "ANY_GADGET_DIE_180059", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_180059", action = "action_EVENT_ANY_GADGET_DIE_180059" },
	-- 第一拦截点停车
	{ config_id = 1180060, name = "PLATFORM_REACH_POINT_180060", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_180060", action = "action_EVENT_PLATFORM_REACH_POINT_180060", trigger_count = 0 },
	-- 第一拦截点
	{ config_id = 1180061, name = "ANY_GADGET_DIE_180061", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_180061", action = "action_EVENT_ANY_GADGET_DIE_180061" },
	-- 第一拦截点
	{ config_id = 1180062, name = "ANY_GADGET_DIE_180062", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_180062", action = "action_EVENT_ANY_GADGET_DIE_180062", trigger_count = 0 },
	-- 第一拦截点发车
	{ config_id = 1180063, name = "VARIABLE_CHANGE_180063", event = EventType.EVENT_VARIABLE_CHANGE, source = "isObstacle1Available", condition = "condition_EVENT_VARIABLE_CHANGE_180063", action = "action_EVENT_VARIABLE_CHANGE_180063" },
	-- 第三拦截点
	{ config_id = 1180064, name = "ANY_GADGET_DIE_180064", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_180064", action = "action_EVENT_ANY_GADGET_DIE_180064", trigger_count = 0 },
	-- 第二拦截点不停车
	{ config_id = 1180065, name = "PLATFORM_REACH_POINT_180065", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_180065", action = "action_EVENT_PLATFORM_REACH_POINT_180065", trigger_count = 0 },
	-- 第三拦截点停车
	{ config_id = 1180067, name = "PLATFORM_REACH_POINT_180067", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_180067", action = "action_EVENT_PLATFORM_REACH_POINT_180067", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "isObstacle1Available", value = 2, no_refresh = false },
	{ config_id = 2, name = "isObstacle2Available", value = 0, no_refresh = false },
	{ config_id = 3, name = "isObstacle3Available", value = 1, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 180035, gadget_id = 70220048, pos = { x = -2585.671, y = 202.207, z = -3879.299 }, rot = { x = 0.000, y = 258.907, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 180037, gadget_id = 70220048, pos = { x = -2584.754, y = 201.976, z = -3881.378 }, rot = { x = 0.000, y = 280.564, z = 0.000 }, level = 27, area_id = 11 }
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
		gadgets = { 180018, 180019, 180023, 180024, 180030, 180032, 180033, 180034, 180036, 180038, 180039 },
		regions = { },
		triggers = { "GADGET_CREATE_180054", "SELECT_OPTION_180055", "CHALLENGE_SUCCESS_180056", "PLATFORM_REACH_POINT_180057", "CHALLENGE_FAIL_180058", "ANY_GADGET_DIE_180059" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 180001, 180002, 180004, 180005, 180008, 180009, 180011, 180012, 180013, 180015, 180026 },
		gadgets = { 180022, 180025, 180027, 180028, 180029, 180068, 180071 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_180003", "PLATFORM_REACH_POINT_180060", "ANY_GADGET_DIE_180061", "ANY_GADGET_DIE_180062", "VARIABLE_CHANGE_180063", "ANY_GADGET_DIE_180064", "PLATFORM_REACH_POINT_180065", "PLATFORM_REACH_POINT_180067" },
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
		-- description = 第二拦截点埋伏怪,
		monsters = { 180006, 180007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第三拦截点埋伏怪,
		monsters = { 180017 },
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
function condition_EVENT_VARIABLE_CHANGE_180003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isObstacle3Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle3Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_180003(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 180018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_180054(context, evt)
	if 180019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_180054(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133220180, 180019, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_180055(context, evt)
	-- 判断是gadgetid 180019 option_id 7
	if 180019 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_180055(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为15的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 15, 300, 26, 888, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 180018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 180019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220180, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_180056(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220180, 2)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220180, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220180, 5)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220180, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_180057(context, evt)
	-- 判断是gadgetid 为 180018的移动平台，是否到达了322000075 的路线中的 44 点
	
	if 180018 ~= evt.param1 then
	  return false
	end
	
	if 322000075 ~= evt.param2 then
	  return false
	end
	
	if 44 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_180057(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	-- 将configid为 180018 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 180018, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_180058(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220180, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220180, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_180059(context, evt)
	if 180018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_180059(context, evt)
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_180060(context, evt)
	-- 判断是gadgetid 为 180018的移动平台，是否到达了322000075 的路线中的 8 点
	
	if 180018 ~= evt.param1 then
	  return false
	end
	
	if 322000075 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle1Available"为2
	if ScriptLib.GetGroupVariableValue(context, "isObstacle1Available") < 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_180060(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 180018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_180061(context, evt)
	if 180068 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_180061(context, evt)
	-- 针对当前group内变量名为 "isObstacle1Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle1Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_180062(context, evt)
	if 180071 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_180062(context, evt)
	-- 针对当前group内变量名为 "isObstacle1Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle1Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_180063(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isObstacle1Available"为0
	if ScriptLib.GetGroupVariableValue(context, "isObstacle1Available") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_180063(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 180018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_180064(context, evt)
	if 180025 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_180064(context, evt)
	-- 针对当前group内变量名为 "isObstacle3Available" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "isObstacle3Available", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_180065(context, evt)
	-- 判断是gadgetid 为 180018的移动平台，是否到达了322000075 的路线中的 16 点
	
	if 180018 ~= evt.param1 then
	  return false
	end
	
	if 322000075 ~= evt.param2 then
	  return false
	end
	
	if 16 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_180065(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220180, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_180067(context, evt)
	-- 判断是gadgetid 为 180018的移动平台，是否到达了322000075 的路线中的 34 点
	
	if 180018 ~= evt.param1 then
	  return false
	end
	
	if 322000075 ~= evt.param2 then
	  return false
	end
	
	if 34 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isObstacle3Available"为1
	if ScriptLib.GetGroupVariableValue(context, "isObstacle3Available") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_180067(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 180018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220180, 5)
	
	return 0
end
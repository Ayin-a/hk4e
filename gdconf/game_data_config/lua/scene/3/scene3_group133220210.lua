-- 基础信息
local base_info = {
	group_id = 133220210
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 210001, monster_id = 21030201, pos = { x = -2461.213, y = 252.555, z = -4544.990 }, rot = { x = 0.000, y = 247.262, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 210002, monster_id = 21011001, pos = { x = -2391.100, y = 246.042, z = -4454.778 }, rot = { x = 0.000, y = 249.416, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 210003, monster_id = 21011601, pos = { x = -2319.548, y = 200.946, z = -4360.171 }, rot = { x = 0.000, y = 194.570, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 11 },
	{ config_id = 210004, monster_id = 21010501, pos = { x = -2424.091, y = 250.245, z = -4469.751 }, rot = { x = 0.000, y = 185.946, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 210035, monster_id = 21010501, pos = { x = -2463.323, y = 256.850, z = -4529.701 }, rot = { x = 0.000, y = 175.411, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 210036, monster_id = 21010601, pos = { x = -2442.352, y = 246.696, z = -4508.744 }, rot = { x = 0.000, y = 189.841, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 210037, monster_id = 21011601, pos = { x = -2437.645, y = 245.996, z = -4513.294 }, rot = { x = 0.000, y = 225.512, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 210038, monster_id = 21010701, pos = { x = -2450.777, y = 248.397, z = -4518.254 }, rot = { x = 0.000, y = 151.138, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 210041, monster_id = 21010601, pos = { x = -2357.089, y = 230.000, z = -4426.947 }, rot = { x = 0.000, y = 290.589, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 210042, monster_id = 21030601, pos = { x = -2366.614, y = 233.902, z = -4437.898 }, rot = { x = 0.000, y = 290.589, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 210043, monster_id = 21010701, pos = { x = -2350.699, y = 215.751, z = -4405.161 }, rot = { x = 0.000, y = 145.564, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 210044, monster_id = 21010701, pos = { x = -2343.136, y = 215.601, z = -4412.534 }, rot = { x = 0.000, y = 303.444, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 210047, monster_id = 21010501, pos = { x = -2332.649, y = 200.000, z = -4370.909 }, rot = { x = 0.000, y = 144.789, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 210006, gadget_id = 70300090, pos = { x = -2391.103, y = 240.582, z = -4454.762 }, rot = { x = 0.000, y = 226.538, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 210008, gadget_id = 70710116, pos = { x = -2474.542, y = 254.792, z = -4559.208 }, rot = { x = 0.000, y = 13.707, z = 0.000 }, level = 1, route_id = 322000101, start_route = false, persistent = true, area_id = 11 },
	-- 第一检查点
	{ config_id = 210009, gadget_id = 70710126, pos = { x = -2447.431, y = 247.872, z = -4520.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	-- 第二检查点
	{ config_id = 210010, gadget_id = 70710126, pos = { x = -2421.415, y = 248.421, z = -4478.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	-- 第三检查点
	{ config_id = 210011, gadget_id = 70710126, pos = { x = -2394.996, y = 243.237, z = -4445.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 11 },
	-- 第四检查点
	{ config_id = 210012, gadget_id = 70710126, pos = { x = -2368.122, y = 228.385, z = -4429.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 11 },
	-- 第五检查点
	{ config_id = 210013, gadget_id = 70710126, pos = { x = -2344.346, y = 213.105, z = -4401.591 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 11 },
	-- 第六检查点
	{ config_id = 210014, gadget_id = 70710126, pos = { x = -2322.767, y = 200.419, z = -4363.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 11 },
	-- 第七检查点
	{ config_id = 210015, gadget_id = 70710126, pos = { x = -2311.973, y = 200.963, z = -4359.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 11 },
	{ config_id = 210016, gadget_id = 70300084, pos = { x = -2475.286, y = 255.157, z = -4562.010 }, rot = { x = 0.000, y = 105.696, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 210034, gadget_id = 70300084, pos = { x = -2312.485, y = 201.109, z = -4356.941 }, rot = { x = 0.000, y = 256.088, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 210039, gadget_id = 70900380, pos = { x = -2406.438, y = 250.754, z = -4457.066 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 210040, gadget_id = 70330064, pos = { x = -2412.235, y = 245.715, z = -4473.086 }, rot = { x = 0.000, y = 28.182, z = 0.000 }, level = 27, interact_id = 35, area_id = 11 },
	{ config_id = 210049, gadget_id = 70900380, pos = { x = -2336.753, y = 214.645, z = -4385.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 210050, gadget_id = 70900380, pos = { x = -2330.624, y = 209.592, z = -4373.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 210019, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2474.542, y = 254.539, z = -4559.207 }, area_id = 11 }
}

-- 触发器
triggers = {
	-- 保底用重置group
	{ config_id = 1210007, name = "GROUP_LOAD_210007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_210007", action = "action_EVENT_GROUP_LOAD_210007", trigger_count = 0 },
	{ config_id = 1210017, name = "VARIABLE_CHANGE_210017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_210017", action = "action_EVENT_VARIABLE_CHANGE_210017" },
	{ config_id = 1210019, name = "ENTER_REGION_210019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_210019", action = "action_EVENT_ENTER_REGION_210019" },
	{ config_id = 1210020, name = "CHALLENGE_SUCCESS_210020", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_210020", trigger_count = 0 },
	{ config_id = 1210022, name = "CHALLENGE_FAIL_210022", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_210022", trigger_count = 0 },
	{ config_id = 1210023, name = "ANY_GADGET_DIE_210023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_210023", action = "action_EVENT_ANY_GADGET_DIE_210023", tag = "999" },
	{ config_id = 1210024, name = "PLATFORM_REACH_POINT_210024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_210024", action = "action_EVENT_PLATFORM_REACH_POINT_210024", trigger_count = 0, tag = "888" },
	{ config_id = 1210025, name = "PLATFORM_REACH_POINT_210025", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_210025", action = "action_EVENT_PLATFORM_REACH_POINT_210025", trigger_count = 0 },
	{ config_id = 1210026, name = "PLATFORM_REACH_POINT_210026", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_210026", action = "action_EVENT_PLATFORM_REACH_POINT_210026", trigger_count = 0 },
	{ config_id = 1210027, name = "PLATFORM_REACH_POINT_210027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_210027", action = "action_EVENT_PLATFORM_REACH_POINT_210027", trigger_count = 0, tag = "888" },
	{ config_id = 1210028, name = "PLATFORM_REACH_POINT_210028", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_210028", action = "action_EVENT_PLATFORM_REACH_POINT_210028", trigger_count = 0, tag = "888" },
	{ config_id = 1210029, name = "PLATFORM_REACH_POINT_210029", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_210029", action = "action_EVENT_PLATFORM_REACH_POINT_210029", trigger_count = 0, tag = "888" },
	{ config_id = 1210030, name = "PLATFORM_REACH_POINT_210030", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_210030", action = "action_EVENT_PLATFORM_REACH_POINT_210030", trigger_count = 0, tag = "888" },
	{ config_id = 1210031, name = "PLATFORM_REACH_POINT_210031", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_210031", action = "action_EVENT_PLATFORM_REACH_POINT_210031", trigger_count = 0, tag = "888" },
	-- 7挑战失败的条件，到达终点挑战失败。
	{ config_id = 1210032, name = "PLATFORM_REACH_POINT_210032", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_210032", action = "action_EVENT_PLATFORM_REACH_POINT_210032", trigger_count = 0, tag = "888" }
}

-- 变量
variables = {
	{ config_id = 1, name = "challengeSuccess", value = 0, no_refresh = false },
	{ config_id = 2, name = "challengeStart", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 210005, monster_id = 22010101, pos = { x = -2318.022, y = 200.576, z = -4361.991 }, rot = { x = 0.000, y = 198.912, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 }
	},
	gadgets = {
		{ config_id = 210048, gadget_id = 70330064, pos = { x = -2342.705, y = 209.463, z = -4388.768 }, rot = { x = 0.000, y = 28.182, z = 0.000 }, level = 27, interact_id = 35, area_id = 11 }
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
	end_suite = 7,
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
		-- description = 总体逻辑控制,
		monsters = { },
		gadgets = { 210008, 210016, 210034 },
		regions = { 210019 },
		triggers = { "GROUP_LOAD_210007", "VARIABLE_CHANGE_210017", "ENTER_REGION_210019", "CHALLENGE_SUCCESS_210020", "CHALLENGE_FAIL_210022", "ANY_GADGET_DIE_210023", "PLATFORM_REACH_POINT_210024", "PLATFORM_REACH_POINT_210025", "PLATFORM_REACH_POINT_210026", "PLATFORM_REACH_POINT_210027", "PLATFORM_REACH_POINT_210028", "PLATFORM_REACH_POINT_210029", "PLATFORM_REACH_POINT_210030", "PLATFORM_REACH_POINT_210031", "PLATFORM_REACH_POINT_210032" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 检查点光柱,
		monsters = { },
		gadgets = { 210006, 210009, 210010, 210011, 210012, 210013, 210014, 210015, 210039, 210040, 210049, 210050 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一批怪物与物件,
		monsters = { 210001, 210035, 210036, 210037, 210038 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二批怪物与物件,
		monsters = { 210002, 210004, 210041, 210042, 210043, 210044 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第三批怪物与物件,
		monsters = { 210003, 210047 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第四批怪物与物件,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 空的end suite,
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

-- 触发条件
function condition_EVENT_GROUP_LOAD_210007(context, evt)
	-- 判断变量"challengeStart"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeStart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_210007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220210, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_210017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"challengeStart"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeStart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_210017(context, evt)
	-- 将configid为 210008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 210008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220210, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220210, 3)
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 210008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_210019(context, evt)
	if evt.param1 ~= 210019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_210019(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为203的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.StartChallenge(context, 666, 203, {26, 888, 8, 2,999,1}) then
		return -1
	end
	
		-- 
	
	-- 将本组内变量名为 "challengeStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 1) then
	  return -1
	end
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_210020(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220210, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220210, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220210, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220210, 5)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220210, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133220210, EntityType.MONSTER, 210005)
	
		
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_210022(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220210, EntityType.GADGET, 210008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220210, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220210, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220210, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220210, 5)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220210, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133220210, EntityType.MONSTER, 210005)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_210023(context, evt)
	if 210008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_210023(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_210024(context, evt)
	-- 判断是gadgetid 为 210008的移动平台，是否到达了322000101 的路线中的 12 点
	
	if 210008 ~= evt.param1 then
	  return false
	end
	
	if 322000101 ~= evt.param2 then
	  return false
	end
	
	if 12 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_210024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 210010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220210, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_210025(context, evt)
	-- 判断是gadgetid 为 210008的移动平台，是否到达了322000101 的路线中的 9 点
	
	if 210008 ~= evt.param1 then
	  return false
	end
	
	if 322000101 ~= evt.param2 then
	  return false
	end
	
	if 9 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_210025(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220210, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_210026(context, evt)
	-- 判断是gadgetid 为 210008的移动平台，是否到达了322000101 的路线中的 19 点
	
	if 210008 ~= evt.param1 then
	  return false
	end
	
	if 322000101 ~= evt.param2 then
	  return false
	end
	
	if 19 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_210026(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220210, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220210, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_210027(context, evt)
	-- 判断是gadgetid 为 210008的移动平台，是否到达了322000101 的路线中的 4 点
	
	if 210008 ~= evt.param1 then
	  return false
	end
	
	if 322000101 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_210027(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 210009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_210028(context, evt)
	-- 判断是gadgetid 为 210008的移动平台，是否到达了322000101 的路线中的 18 点
	
	if 210008 ~= evt.param1 then
	  return false
	end
	
	if 322000101 ~= evt.param2 then
	  return false
	end
	
	if 18 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_210028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 210011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_210029(context, evt)
	-- 判断是gadgetid 为 210008的移动平台，是否到达了322000101 的路线中的 22 点
	
	if 210008 ~= evt.param1 then
	  return false
	end
	
	if 322000101 ~= evt.param2 then
	  return false
	end
	
	if 22 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_210029(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 210012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220210, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220210, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_210030(context, evt)
	-- 判断是gadgetid 为 210008的移动平台，是否到达了322000101 的路线中的 28 点
	
	if 210008 ~= evt.param1 then
	  return false
	end
	
	if 322000101 ~= evt.param2 then
	  return false
	end
	
	if 28 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_210030(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 210013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_210031(context, evt)
	-- 判断是gadgetid 为 210008的移动平台，是否到达了322000101 的路线中的 32 点
	
	if 210008 ~= evt.param1 then
	  return false
	end
	
	if 322000101 ~= evt.param2 then
	  return false
	end
	
	if 32 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_210031(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 210014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_210032(context, evt)
	-- 判断是gadgetid 为 210008的移动平台，是否到达了322000101 的路线中的 36 点
	
	if 210008 ~= evt.param1 then
	  return false
	end
	
	if 322000101 ~= evt.param2 then
	  return false
	end
	
	if 36 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_210032(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 210015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
	return 0
end

require "V2_0/ElectricCore"
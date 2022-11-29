-- 基础信息
local base_info = {
	group_id = 133220019
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 19001, monster_id = 21011001, pos = { x = -2805.156, y = 202.868, z = -4235.449 }, rot = { x = 0.000, y = 320.769, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 19002, monster_id = 21030601, pos = { x = -2835.916, y = 200.708, z = -4245.089 }, rot = { x = 0.000, y = 182.119, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 19003, monster_id = 21010501, pos = { x = -2759.570, y = 205.811, z = -4191.595 }, rot = { x = 0.000, y = 283.565, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 19036, monster_id = 21010901, pos = { x = -2812.492, y = 200.978, z = -4219.579 }, rot = { x = 0.000, y = 125.495, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 19038, monster_id = 21010701, pos = { x = -2832.925, y = 200.473, z = -4255.211 }, rot = { x = 0.000, y = 266.522, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 11 },
	{ config_id = 19039, monster_id = 21011001, pos = { x = -2739.660, y = 204.769, z = -4170.008 }, rot = { x = 0.000, y = 320.769, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 19040, monster_id = 21010901, pos = { x = -2741.902, y = 208.125, z = -4156.713 }, rot = { x = 0.000, y = 203.992, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 19041, monster_id = 20010801, pos = { x = -2743.456, y = 204.478, z = -4162.422 }, rot = { x = 0.000, y = 229.339, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 19042, monster_id = 20010801, pos = { x = -2746.841, y = 205.038, z = -4170.067 }, rot = { x = 0.000, y = 48.804, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 19043, monster_id = 21010501, pos = { x = -2688.941, y = 207.748, z = -4174.619 }, rot = { x = 0.000, y = 344.875, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 19044, monster_id = 21011001, pos = { x = -2699.483, y = 207.878, z = -4170.137 }, rot = { x = 0.000, y = 8.704, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 19045, monster_id = 21010901, pos = { x = -2694.748, y = 208.980, z = -4160.322 }, rot = { x = 0.000, y = 203.992, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 19046, monster_id = 21030103, pos = { x = -2678.640, y = 208.066, z = -4162.765 }, rot = { x = 0.000, y = 247.568, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 19047, monster_id = 21010601, pos = { x = -2624.808, y = 211.375, z = -4160.791 }, rot = { x = 0.000, y = 286.359, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 19049, monster_id = 21011601, pos = { x = -2633.002, y = 211.696, z = -4157.663 }, rot = { x = 0.000, y = 176.402, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 19060, monster_id = 21020701, pos = { x = -2619.404, y = 211.796, z = -4146.382 }, rot = { x = 0.000, y = 200.072, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 11 },
	{ config_id = 19064, monster_id = 21010501, pos = { x = -2613.617, y = 217.251, z = -4137.165 }, rot = { x = 0.000, y = 165.809, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 19068, monster_id = 21010901, pos = { x = -2621.500, y = 217.197, z = -4144.182 }, rot = { x = 0.000, y = 131.887, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 19006, gadget_id = 70300090, pos = { x = -2613.659, y = 211.856, z = -4137.134 }, rot = { x = 0.000, y = 28.623, z = 0.000 }, level = 30, area_id = 11 },
	{ config_id = 19008, gadget_id = 70710116, pos = { x = -2838.870, y = 200.665, z = -4262.161 }, rot = { x = 0.000, y = 2.347, z = 0.000 }, level = 1, route_id = 322000073, start_route = false, persistent = true, area_id = 11 },
	-- 第一检查点
	{ config_id = 19009, gadget_id = 70710126, pos = { x = -2811.161, y = 200.000, z = -4228.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	-- 第二检查点
	{ config_id = 19010, gadget_id = 70710126, pos = { x = -2782.074, y = 204.594, z = -4185.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
	-- 第三检查点
	{ config_id = 19011, gadget_id = 70710126, pos = { x = -2744.959, y = 204.410, z = -4167.224 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 11 },
	-- 第四检查点
	{ config_id = 19012, gadget_id = 70710126, pos = { x = -2691.326, y = 207.200, z = -4164.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 11 },
	-- 第五检查点
	{ config_id = 19013, gadget_id = 70710126, pos = { x = -2645.191, y = 210.425, z = -4174.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 11 },
	-- 第六检查点
	{ config_id = 19014, gadget_id = 70710126, pos = { x = -2608.964, y = 212.101, z = -4151.727 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 11 },
	-- 第七检查点
	{ config_id = 19015, gadget_id = 70710126, pos = { x = -2621.895, y = 211.887, z = -4135.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 11 },
	{ config_id = 19034, gadget_id = 70300084, pos = { x = -2835.061, y = 200.610, z = -4264.196 }, rot = { x = 0.000, y = 40.294, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 19035, gadget_id = 70300084, pos = { x = -2842.647, y = 200.000, z = -4264.134 }, rot = { x = 0.000, y = 141.739, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 19050, gadget_id = 70220020, pos = { x = -2630.585, y = 211.254, z = -4160.407 }, rot = { x = 0.000, y = 222.551, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 19051, gadget_id = 70900388, pos = { x = -2632.563, y = 211.496, z = -4160.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 19052, gadget_id = 70220004, pos = { x = -2623.666, y = 211.760, z = -4152.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 19053, gadget_id = 70220004, pos = { x = -2625.551, y = 211.484, z = -4154.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 19054, gadget_id = 70900388, pos = { x = -2629.220, y = 211.647, z = -4158.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 19055, gadget_id = 70220004, pos = { x = -2627.294, y = 211.541, z = -4162.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 19056, gadget_id = 70220004, pos = { x = -2631.889, y = 211.288, z = -4163.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 19057, gadget_id = 70900388, pos = { x = -2624.754, y = 211.531, z = -4157.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 19058, gadget_id = 70220020, pos = { x = -2627.270, y = 211.436, z = -4157.495 }, rot = { x = 0.000, y = 221.318, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 19059, gadget_id = 70220020, pos = { x = -2622.598, y = 211.186, z = -4154.901 }, rot = { x = 0.000, y = 227.211, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 19067, gadget_id = 70300090, pos = { x = -2621.445, y = 211.685, z = -4144.078 }, rot = { x = 0.000, y = 323.099, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 19019, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2839.037, y = 200.321, z = -4262.197 }, area_id = 11 }
}

-- 触发器
triggers = {
	-- 保底用重置group
	{ config_id = 1019004, name = "GROUP_LOAD_19004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_19004", action = "action_EVENT_GROUP_LOAD_19004", trigger_count = 0 },
	{ config_id = 1019017, name = "VARIABLE_CHANGE_19017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_19017", action = "action_EVENT_VARIABLE_CHANGE_19017" },
	{ config_id = 1019019, name = "ENTER_REGION_19019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_19019", action = "action_EVENT_ENTER_REGION_19019" },
	{ config_id = 1019020, name = "CHALLENGE_SUCCESS_19020", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_19020", trigger_count = 0 },
	-- 7挑战失败的条件，到达终点挑战失败。
	{ config_id = 1019021, name = "PLATFORM_REACH_POINT_19021", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_19021", action = "action_EVENT_PLATFORM_REACH_POINT_19021", trigger_count = 0, tag = "888" },
	{ config_id = 1019022, name = "CHALLENGE_FAIL_19022", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_19022", trigger_count = 0 },
	{ config_id = 1019023, name = "ANY_GADGET_DIE_19023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_19023", action = "action_EVENT_ANY_GADGET_DIE_19023", tag = "999" },
	{ config_id = 1019024, name = "PLATFORM_REACH_POINT_19024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_19024", action = "action_EVENT_PLATFORM_REACH_POINT_19024", trigger_count = 0, tag = "888" },
	{ config_id = 1019025, name = "PLATFORM_REACH_POINT_19025", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_19025", action = "action_EVENT_PLATFORM_REACH_POINT_19025", trigger_count = 0 },
	{ config_id = 1019026, name = "PLATFORM_REACH_POINT_19026", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_19026", action = "action_EVENT_PLATFORM_REACH_POINT_19026", trigger_count = 0 },
	{ config_id = 1019027, name = "PLATFORM_REACH_POINT_19027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_19027", action = "action_EVENT_PLATFORM_REACH_POINT_19027", trigger_count = 0, tag = "888" },
	{ config_id = 1019028, name = "PLATFORM_REACH_POINT_19028", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_19028", action = "action_EVENT_PLATFORM_REACH_POINT_19028", trigger_count = 0, tag = "888" },
	{ config_id = 1019029, name = "PLATFORM_REACH_POINT_19029", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_19029", action = "action_EVENT_PLATFORM_REACH_POINT_19029", trigger_count = 0, tag = "888" },
	{ config_id = 1019030, name = "PLATFORM_REACH_POINT_19030", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_19030", action = "action_EVENT_PLATFORM_REACH_POINT_19030", trigger_count = 0, tag = "888" },
	{ config_id = 1019031, name = "PLATFORM_REACH_POINT_19031", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_19031", action = "action_EVENT_PLATFORM_REACH_POINT_19031", trigger_count = 0, tag = "888" }
}

-- 变量
variables = {
	{ config_id = 1, name = "challengeSuccess", value = 0, no_refresh = false },
	{ config_id = 2, name = "challengeStart", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 19037, monster_id = 21030301, pos = { x = -2796.066, y = 208.356, z = -4196.276 }, rot = { x = 0.000, y = 114.423, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
		{ config_id = 19048, monster_id = 21010501, pos = { x = -2618.869, y = 216.696, z = -4165.079 }, rot = { x = 0.000, y = 304.243, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 }
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
		gadgets = { 19008, 19034, 19035 },
		regions = { 19019 },
		triggers = { "GROUP_LOAD_19004", "VARIABLE_CHANGE_19017", "ENTER_REGION_19019", "CHALLENGE_SUCCESS_19020", "PLATFORM_REACH_POINT_19021", "CHALLENGE_FAIL_19022", "ANY_GADGET_DIE_19023", "PLATFORM_REACH_POINT_19024", "PLATFORM_REACH_POINT_19025", "PLATFORM_REACH_POINT_19026", "PLATFORM_REACH_POINT_19027", "PLATFORM_REACH_POINT_19028", "PLATFORM_REACH_POINT_19029", "PLATFORM_REACH_POINT_19030", "PLATFORM_REACH_POINT_19031" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 检查点光柱和初始物件,
		monsters = { },
		gadgets = { 19006, 19009, 19010, 19011, 19012, 19013, 19014, 19015, 19050, 19051, 19052, 19053, 19054, 19055, 19056, 19057, 19058, 19059, 19067 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 检查点1创建怪物与物件,
		monsters = { 19001, 19002, 19003, 19036, 19038 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 检查点2创建怪物与物件,
		monsters = { 19039, 19040, 19041, 19042 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 检查点3创建怪物与物件,
		monsters = { 19043, 19044, 19045, 19046 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 检查点4创建怪物与物件,
		monsters = { 19047, 19049, 19060, 19064, 19068 },
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
function condition_EVENT_GROUP_LOAD_19004(context, evt)
	-- 判断变量"challengeStart"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeStart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_19004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220019, suite = 1 }) then
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
function condition_EVENT_VARIABLE_CHANGE_19017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"challengeStart"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeStart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_19017(context, evt)
	-- 将configid为 19008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 19008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220019, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220019, 3)
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 19008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_19019(context, evt)
	if evt.param1 ~= 19019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_19019(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为203的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.StartChallenge(context, 666, 203, {26, 888, 7, 2,999,1}) then
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
function action_EVENT_CHALLENGE_SUCCESS_19020(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220019, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220019, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220019, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220019, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220019, 6)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133220019, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
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
function condition_EVENT_PLATFORM_REACH_POINT_19021(context, evt)
	-- 判断是gadgetid 为 19008的移动平台，是否到达了322000073 的路线中的 30 点
	
	if 19008 ~= evt.param1 then
	  return false
	end
	
	if 322000073 ~= evt.param2 then
	  return false
	end
	
	if 30 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_19021(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 19015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_19022(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133220019, EntityType.GADGET, 19008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220019, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220019, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220019, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220019, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220019, 6)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220019, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_19023(context, evt)
	if 19008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_19023(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_19024(context, evt)
	-- 判断是gadgetid 为 19008的移动平台，是否到达了322000073 的路线中的 8 点
	
	if 19008 ~= evt.param1 then
	  return false
	end
	
	if 322000073 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_19024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 19010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220019, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_19025(context, evt)
	-- 判断是gadgetid 为 19008的移动平台，是否到达了322000073 的路线中的 9 点
	
	if 19008 ~= evt.param1 then
	  return false
	end
	
	if 322000073 ~= evt.param2 then
	  return false
	end
	
	if 9 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_19025(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220019, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_19026(context, evt)
	-- 判断是gadgetid 为 19008的移动平台，是否到达了322000073 的路线中的 16 点
	
	if 19008 ~= evt.param1 then
	  return false
	end
	
	if 322000073 ~= evt.param2 then
	  return false
	end
	
	if 16 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_19026(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220019, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133220019, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_19027(context, evt)
	-- 判断是gadgetid 为 19008的移动平台，是否到达了322000073 的路线中的 4 点
	
	if 19008 ~= evt.param1 then
	  return false
	end
	
	if 322000073 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_19027(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 19009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_19028(context, evt)
	-- 判断是gadgetid 为 19008的移动平台，是否到达了322000073 的路线中的 12 点
	
	if 19008 ~= evt.param1 then
	  return false
	end
	
	if 322000073 ~= evt.param2 then
	  return false
	end
	
	if 12 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_19028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 19011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220019, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_19029(context, evt)
	-- 判断是gadgetid 为 19008的移动平台，是否到达了322000073 的路线中的 16 点
	
	if 19008 ~= evt.param1 then
	  return false
	end
	
	if 322000073 ~= evt.param2 then
	  return false
	end
	
	if 16 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_19029(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 19012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220019, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_19030(context, evt)
	-- 判断是gadgetid 为 19008的移动平台，是否到达了322000073 的路线中的 22 点
	
	if 19008 ~= evt.param1 then
	  return false
	end
	
	if 322000073 ~= evt.param2 then
	  return false
	end
	
	if 22 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_19030(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 19013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_19031(context, evt)
	-- 判断是gadgetid 为 19008的移动平台，是否到达了322000073 的路线中的 28 点
	
	if 19008 ~= evt.param1 then
	  return false
	end
	
	if 322000073 ~= evt.param2 then
	  return false
	end
	
	if 28 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_19031(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 19014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end
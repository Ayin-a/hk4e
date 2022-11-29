-- 基础信息
local base_info = {
	group_id = 133003521
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 521001, monster_id = 21010701, pos = { x = 2657.088, y = 237.363, z = -1181.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 521004, monster_id = 21010701, pos = { x = 2649.889, y = 231.956, z = -1155.902 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	-- 封印圈陷阱怪物
	{ config_id = 521006, monster_id = 22010201, pos = { x = 2708.712, y = 244.198, z = -1248.955 }, rot = { x = 0.000, y = 266.172, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1410 }, area_id = 1 },
	{ config_id = 521010, monster_id = 21010501, pos = { x = 2681.852, y = 248.513, z = -1229.433 }, rot = { x = 0.000, y = 358.364, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 1 },
	{ config_id = 521011, monster_id = 21011001, pos = { x = 2689.233, y = 248.337, z = -1214.907 }, rot = { x = 0.000, y = 336.101, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 1 },
	{ config_id = 521013, monster_id = 21010701, pos = { x = 2660.325, y = 231.252, z = -1145.245 }, rot = { x = 0.000, y = 166.055, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 521029, monster_id = 21011001, pos = { x = 2678.001, y = 239.279, z = -1191.024 }, rot = { x = 0.000, y = 299.664, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 1 },
	{ config_id = 521030, monster_id = 21010601, pos = { x = 2668.605, y = 239.004, z = -1194.991 }, rot = { x = 0.000, y = 17.279, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 1 },
	{ config_id = 521036, monster_id = 21030201, pos = { x = 2678.376, y = 241.048, z = -1222.479 }, rot = { x = 0.000, y = 16.217, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 521047, monster_id = 21020101, pos = { x = 2739.750, y = 250.709, z = -1247.804 }, rot = { x = 0.000, y = 260.806, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 521053, monster_id = 21010501, pos = { x = 2773.552, y = 265.535, z = -1226.519 }, rot = { x = 0.000, y = 220.897, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 1 },
	{ config_id = 521054, monster_id = 21010501, pos = { x = 2764.651, y = 267.404, z = -1207.793 }, rot = { x = 0.000, y = 159.839, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 1 },
	{ config_id = 521055, monster_id = 21011001, pos = { x = 2764.871, y = 271.660, z = -1183.074 }, rot = { x = 0.000, y = 159.839, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 1 },
	{ config_id = 521056, monster_id = 21011001, pos = { x = 2751.398, y = 268.150, z = -1196.621 }, rot = { x = 0.000, y = 141.450, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 1 },
	{ config_id = 521057, monster_id = 21011001, pos = { x = 2785.236, y = 270.145, z = -1210.048 }, rot = { x = 0.000, y = 223.602, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 521002, gadget_id = 70300090, pos = { x = 2689.457, y = 241.979, z = -1215.472 }, rot = { x = 0.000, y = 333.594, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 521003, gadget_id = 70300090, pos = { x = 2681.855, y = 241.979, z = -1229.693 }, rot = { x = 0.000, y = 334.100, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 521005, gadget_id = 70220035, pos = { x = 2673.309, y = 239.135, z = -1198.260 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	-- 封印圈陷阱
	{ config_id = 521007, gadget_id = 70300114, pos = { x = 2708.684, y = 244.225, z = -1248.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 521009, gadget_id = 70300084, pos = { x = 2692.469, y = 243.198, z = -1263.413 }, rot = { x = 0.000, y = 100.670, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 521014, gadget_id = 70220004, pos = { x = 2661.655, y = 235.816, z = -1176.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 521015, gadget_id = 70710116, pos = { x = 2649.975, y = 230.719, z = -1134.317 }, rot = { x = 0.000, y = 174.562, z = 0.000 }, level = 1, route_id = 300300302, start_route = false, persistent = true, area_id = 1 },
	{ config_id = 521016, gadget_id = 70300084, pos = { x = 2652.710, y = 229.335, z = -1129.552 }, rot = { x = 9.278, y = 275.371, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 521017, gadget_id = 70220004, pos = { x = 2666.720, y = 238.084, z = -1187.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 521018, gadget_id = 70220004, pos = { x = 2655.799, y = 232.925, z = -1162.297 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 521019, gadget_id = 70300084, pos = { x = 2646.673, y = 228.854, z = -1134.094 }, rot = { x = 0.000, y = 191.609, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 521020, gadget_id = 70300083, pos = { x = 2679.135, y = 239.065, z = -1196.916 }, rot = { x = 0.000, y = 323.614, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 521021, gadget_id = 70300083, pos = { x = 2676.218, y = 239.066, z = -1199.065 }, rot = { x = 0.000, y = 323.614, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 521022, gadget_id = 70220035, pos = { x = 2687.427, y = 242.029, z = -1236.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	-- 第一检查点
	{ config_id = 521023, gadget_id = 70710126, pos = { x = 2658.283, y = 234.518, z = -1169.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 521024, gadget_id = 70220035, pos = { x = 2699.499, y = 242.561, z = -1243.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	-- 第二检查点
	{ config_id = 521026, gadget_id = 70710126, pos = { x = 2672.846, y = 238.818, z = -1193.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 521035, gadget_id = 70220014, pos = { x = 2696.838, y = 243.366, z = -1262.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 1 },
	{ config_id = 521046, gadget_id = 70690008, pos = { x = 2742.420, y = 250.647, z = -1246.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 521048, gadget_id = 70300090, pos = { x = 2773.596, y = 259.766, z = -1226.469 }, rot = { x = 0.000, y = 327.867, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 521049, gadget_id = 70300090, pos = { x = 2785.398, y = 263.958, z = -1209.848 }, rot = { x = 0.000, y = 70.430, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 521050, gadget_id = 70300090, pos = { x = 2764.674, y = 261.468, z = -1207.609 }, rot = { x = 0.000, y = 325.361, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 521051, gadget_id = 70300090, pos = { x = 2751.093, y = 262.269, z = -1196.128 }, rot = { x = 0.000, y = 321.768, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 521052, gadget_id = 70300090, pos = { x = 2764.711, y = 266.100, z = -1182.765 }, rot = { x = 0.000, y = 327.699, z = 0.000 }, level = 1, area_id = 1 },
	-- 第三检查点
	{ config_id = 521062, gadget_id = 70710126, pos = { x = 2688.692, y = 241.818, z = -1232.529 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	-- 第四检查点
	{ config_id = 521063, gadget_id = 70710126, pos = { x = 2708.722, y = 244.219, z = -1248.728 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	-- 第五检查点
	{ config_id = 521064, gadget_id = 70710126, pos = { x = 2729.411, y = 247.998, z = -1249.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	-- 第六检查点
	{ config_id = 521065, gadget_id = 70710126, pos = { x = 2754.681, y = 258.120, z = -1244.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	-- 第七检查点
	{ config_id = 521066, gadget_id = 70710126, pos = { x = 2771.016, y = 261.460, z = -1217.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	-- 第八检查点
	{ config_id = 521067, gadget_id = 70710126, pos = { x = 2754.390, y = 265.158, z = -1188.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 521008, shape = RegionShape.SPHERE, radius = 6.3, pos = { x = 2708.988, y = 244.215, z = -1249.125 }, area_id = 1 },
	{ config_id = 521077, shape = RegionShape.SPHERE, radius = 14.2, pos = { x = 2650.085, y = 229.923, z = -1140.890 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1521008, name = "ENTER_REGION_521008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_521008", action = "action_EVENT_ENTER_REGION_521008" },
	{ config_id = 1521012, name = "ANY_MONSTER_DIE_521012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_521012", action = "action_EVENT_ANY_MONSTER_DIE_521012", trigger_count = 0 },
	{ config_id = 1521077, name = "ENTER_REGION_521077", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_521077", action = "action_EVENT_ENTER_REGION_521077" },
	{ config_id = 1521078, name = "CHALLENGE_SUCCESS_521078", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_521078", trigger_count = 0 },
	{ config_id = 1521079, name = "PLATFORM_REACH_POINT_521079", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_521079", action = "action_EVENT_PLATFORM_REACH_POINT_521079", trigger_count = 0, tag = "888" },
	{ config_id = 1521080, name = "CHALLENGE_FAIL_521080", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_521080", trigger_count = 0 },
	{ config_id = 1521081, name = "ANY_GADGET_DIE_521081", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_521081", action = "action_EVENT_ANY_GADGET_DIE_521081", tag = "999" },
	{ config_id = 1521082, name = "PLATFORM_REACH_POINT_521082", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_521082", action = "action_EVENT_PLATFORM_REACH_POINT_521082", trigger_count = 0, tag = "888" },
	{ config_id = 1521085, name = "PLATFORM_REACH_POINT_521085", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_521085", action = "action_EVENT_PLATFORM_REACH_POINT_521085", trigger_count = 0, tag = "888" },
	{ config_id = 1521086, name = "PLATFORM_REACH_POINT_521086", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_521086", action = "action_EVENT_PLATFORM_REACH_POINT_521086", trigger_count = 0, tag = "888" },
	{ config_id = 1521087, name = "PLATFORM_REACH_POINT_521087", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_521087", action = "action_EVENT_PLATFORM_REACH_POINT_521087", trigger_count = 0, tag = "888" },
	{ config_id = 1521088, name = "PLATFORM_REACH_POINT_521088", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_521088", action = "action_EVENT_PLATFORM_REACH_POINT_521088", trigger_count = 0, tag = "888" },
	{ config_id = 1521089, name = "PLATFORM_REACH_POINT_521089", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_521089", action = "action_EVENT_PLATFORM_REACH_POINT_521089", trigger_count = 0, tag = "888" },
	{ config_id = 1521090, name = "PLATFORM_REACH_POINT_521090", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_521090", action = "action_EVENT_PLATFORM_REACH_POINT_521090", trigger_count = 0, tag = "888" }
}

-- 变量
variables = {
	{ config_id = 1, name = "challengeSuccess", value = 0, no_refresh = false }
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
		gadgets = { 521015, 521016, 521019 },
		regions = { 521077 },
		triggers = { "ENTER_REGION_521077", "CHALLENGE_SUCCESS_521078", "PLATFORM_REACH_POINT_521079", "CHALLENGE_FAIL_521080", "ANY_GADGET_DIE_521081", "PLATFORM_REACH_POINT_521082", "PLATFORM_REACH_POINT_521085", "PLATFORM_REACH_POINT_521086", "PLATFORM_REACH_POINT_521087", "PLATFORM_REACH_POINT_521088", "PLATFORM_REACH_POINT_521089", "PLATFORM_REACH_POINT_521090" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 检查点光柱,
		monsters = { },
		gadgets = { 521023, 521026, 521062, 521063, 521064, 521065, 521066, 521067 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一批怪物与物件,
		monsters = { 521001, 521004, 521013, 521029, 521030 },
		gadgets = { 521005, 521014, 521017, 521018, 521020, 521021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二批怪物与物件,
		monsters = { 521010, 521011, 521036 },
		gadgets = { 521002, 521003, 521022, 521024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第三批怪物与物件,
		monsters = { },
		gadgets = { 521007, 521009, 521035 },
		regions = { 521008 },
		triggers = { "ENTER_REGION_521008", "ANY_MONSTER_DIE_521012" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第四批怪物与物件,
		monsters = { 521047, 521053, 521054, 521055, 521056, 521057 },
		gadgets = { 521046, 521048, 521049, 521050, 521051, 521052 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 空suite作为end suite,
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
function condition_EVENT_ENTER_REGION_521008(context, evt)
	if evt.param1 ~= 521008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_521008(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 521006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 将configid为 521007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 521007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=2682,y=240,z=-1217}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1109007, pos, 9) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_521012(context, evt)
	if 521006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_521012(context, evt)
	-- 将configid为 521007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 521007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003521, EntityType.GADGET, 521007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_521077(context, evt)
	if evt.param1 ~= 521077 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_521077(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为203的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.StartChallenge(context, 666, 203, {26, 888, 8, 2,999,1}) then
		return -1
	end
	
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003521, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003521, 3)
	
	
	-- 将configid为 521015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 521015, GadgetState.GearStart) then
		return -1
	end 
	
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 521015) then
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_521078(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003521, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003521, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003521, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003521, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003521, 6)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 521016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 521019 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133003521, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133003521, EntityType.MONSTER, 521006)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_521079(context, evt)
	-- 判断是gadgetid 为 521015的移动平台，是否到达了300300302 的路线中的 46 点
	
	if 521015 ~= evt.param1 then
	  return false
	end
	
	if 300300302 ~= evt.param2 then
	  return false
	end
	
	if 46 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_521079(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 521067 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_521080(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003521, EntityType.GADGET, 521015 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003521, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003521, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003521, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003521, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003521, 6)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003521, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133003521, EntityType.MONSTER, 521006)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_521081(context, evt)
	if 521015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_521081(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_521082(context, evt)
	-- 判断是gadgetid 为 521015的移动平台，是否到达了300300302 的路线中的 8 点
	
	if 521015 ~= evt.param1 then
	  return false
	end
	
	if 300300302 ~= evt.param2 then
	  return false
	end
	
	if 8 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_521082(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 521026 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_521085(context, evt)
	-- 判断是gadgetid 为 521015的移动平台，是否到达了300300302 的路线中的 4 点
	
	if 521015 ~= evt.param1 then
	  return false
	end
	
	if 300300302 ~= evt.param2 then
	  return false
	end
	
	if 4 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_521085(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 521023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003521, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_521086(context, evt)
	-- 判断是gadgetid 为 521015的移动平台，是否到达了300300302 的路线中的 18 点
	
	if 521015 ~= evt.param1 then
	  return false
	end
	
	if 300300302 ~= evt.param2 then
	  return false
	end
	
	if 18 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_521086(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 521062 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003521, 3)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003521, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_521087(context, evt)
	-- 判断是gadgetid 为 521015的移动平台，是否到达了300300302 的路线中的 24 点
	
	if 521015 ~= evt.param1 then
	  return false
	end
	
	if 300300302 ~= evt.param2 then
	  return false
	end
	
	if 24 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_521087(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 521063 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003521, 4)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003521, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_521088(context, evt)
	-- 判断是gadgetid 为 521015的移动平台，是否到达了300300302 的路线中的 28 点
	
	if 521015 ~= evt.param1 then
	  return false
	end
	
	if 300300302 ~= evt.param2 then
	  return false
	end
	
	if 28 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_521088(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 521064 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_521089(context, evt)
	-- 判断是gadgetid 为 521015的移动平台，是否到达了300300302 的路线中的 34 点
	
	if 521015 ~= evt.param1 then
	  return false
	end
	
	if 300300302 ~= evt.param2 then
	  return false
	end
	
	if 34 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_521089(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 521065 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_521090(context, evt)
	-- 判断是gadgetid 为 521015的移动平台，是否到达了300300302 的路线中的 40 点
	
	if 521015 ~= evt.param1 then
	  return false
	end
	
	if 300300302 ~= evt.param2 then
	  return false
	end
	
	if 40 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_521090(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 521066 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133003597
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 597004, monster_id = 21010901, pos = { x = 2724.661, y = 259.384, z = -1336.499 }, rot = { x = 352.634, y = 123.090, z = 11.137 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 1 },
	-- 封印圈陷阱怪物
	{ config_id = 597005, monster_id = 21030301, pos = { x = 2707.170, y = 284.528, z = -1415.278 }, rot = { x = 0.000, y = 189.576, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1410 }, area_id = 1 },
	{ config_id = 597034, monster_id = 21010201, pos = { x = 2792.809, y = 297.233, z = -1587.938 }, rot = { x = 0.000, y = 249.928, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9003, area_id = 1 },
	{ config_id = 597035, monster_id = 21010501, pos = { x = 2800.488, y = 305.182, z = -1596.645 }, rot = { x = 0.000, y = 283.704, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 597036, monster_id = 21010701, pos = { x = 2793.836, y = 297.690, z = -1599.397 }, rot = { x = 0.000, y = 285.083, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 597037, monster_id = 21010701, pos = { x = 2753.872, y = 285.837, z = -1578.031 }, rot = { x = 0.000, y = 126.231, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 597038, monster_id = 21010701, pos = { x = 2752.586, y = 285.657, z = -1590.484 }, rot = { x = 0.000, y = 86.005, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 597039, monster_id = 21030301, pos = { x = 2725.364, y = 286.125, z = -1573.912 }, rot = { x = 0.000, y = 106.004, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 597040, monster_id = 21011001, pos = { x = 2710.697, y = 277.623, z = -1558.900 }, rot = { x = 0.000, y = 104.723, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 1 },
	{ config_id = 597041, monster_id = 21010501, pos = { x = 2695.635, y = 277.623, z = -1546.324 }, rot = { x = 0.000, y = 104.723, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 1 },
	{ config_id = 597042, monster_id = 21010501, pos = { x = 2700.150, y = 279.495, z = -1518.691 }, rot = { x = 0.000, y = 207.522, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 1 },
	{ config_id = 597048, monster_id = 21030201, pos = { x = 2688.299, y = 273.935, z = -1531.379 }, rot = { x = 0.000, y = 92.685, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 597053, monster_id = 21010601, pos = { x = 2697.990, y = 278.180, z = -1491.953 }, rot = { x = 0.000, y = 272.874, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 1 },
	{ config_id = 597054, monster_id = 21010601, pos = { x = 2677.033, y = 278.180, z = -1483.051 }, rot = { x = 0.000, y = 120.696, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 1 },
	{ config_id = 597066, monster_id = 21010501, pos = { x = 2690.836, y = 283.745, z = -1440.758 }, rot = { x = 0.000, y = 175.693, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 597068, monster_id = 21011001, pos = { x = 2684.807, y = 280.538, z = -1461.430 }, rot = { x = 0.000, y = 143.295, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 597070, monster_id = 21030101, pos = { x = 2731.028, y = 258.216, z = -1333.584 }, rot = { x = 0.000, y = 199.798, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 597071, monster_id = 21010901, pos = { x = 2729.969, y = 257.093, z = -1325.793 }, rot = { x = 0.000, y = 173.497, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 1 },
	{ config_id = 597074, monster_id = 22010201, pos = { x = 2794.176, y = 256.200, z = -1326.455 }, rot = { x = 0.000, y = 273.789, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 597001, gadget_id = 70300090, pos = { x = 2695.651, y = 271.705, z = -1546.581 }, rot = { x = 0.000, y = 55.316, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 597002, gadget_id = 70690006, pos = { x = 2846.034, y = 270.414, z = -1592.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 597003, gadget_id = 70220020, pos = { x = 2681.187, y = 276.126, z = -1507.251 }, rot = { x = 0.000, y = 341.418, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 597006, gadget_id = 70300090, pos = { x = 2700.435, y = 273.342, z = -1518.477 }, rot = { x = 0.000, y = 335.489, z = 0.000 }, level = 1, area_id = 1 },
	-- 封印圈陷阱
	{ config_id = 597007, gadget_id = 70300114, pos = { x = 2706.786, y = 284.497, z = -1414.509 }, rot = { x = 0.000, y = 359.913, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 597008, gadget_id = 70710116, pos = { x = 2800.592, y = 305.811, z = -1593.421 }, rot = { x = 0.000, y = 269.940, z = 0.000 }, level = 1, route_id = 300300326, start_route = false, persistent = true, area_id = 1 },
	-- 第一检查点
	{ config_id = 597009, gadget_id = 70710126, pos = { x = 2757.012, y = 286.239, z = -1586.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	-- 第二检查点
	{ config_id = 597010, gadget_id = 70710126, pos = { x = 2728.052, y = 286.322, z = -1570.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	-- 第三检查点
	{ config_id = 597011, gadget_id = 70710126, pos = { x = 2694.900, y = 274.751, z = -1528.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	-- 第四检查点
	{ config_id = 597012, gadget_id = 70710126, pos = { x = 2693.735, y = 282.221, z = -1463.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	-- 第五检查点
	{ config_id = 597013, gadget_id = 70710126, pos = { x = 2707.169, y = 284.546, z = -1414.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	-- 第六检查点
	{ config_id = 597014, gadget_id = 70710126, pos = { x = 2723.041, y = 259.590, z = -1340.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	-- 第七检查点
	{ config_id = 597015, gadget_id = 70710126, pos = { x = 2773.340, y = 256.794, z = -1330.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	-- 第八检查点
	{ config_id = 597016, gadget_id = 70710126, pos = { x = 2843.238, y = 259.756, z = -1343.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 597043, gadget_id = 70220004, pos = { x = 2755.847, y = 285.846, z = -1585.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 597044, gadget_id = 70220004, pos = { x = 2747.911, y = 286.015, z = -1581.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 597045, gadget_id = 70220004, pos = { x = 2738.507, y = 286.269, z = -1576.767 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 597046, gadget_id = 70300081, pos = { x = 2681.521, y = 273.283, z = -1528.118 }, rot = { x = 0.000, y = 193.581, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 597052, gadget_id = 70220020, pos = { x = 2692.179, y = 276.374, z = -1500.895 }, rot = { x = 0.094, y = 358.275, z = 3.114 }, level = 1, area_id = 1 },
	{ config_id = 597055, gadget_id = 70220020, pos = { x = 2682.315, y = 277.032, z = -1487.863 }, rot = { x = 0.000, y = 22.274, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 597056, gadget_id = 70220020, pos = { x = 2685.514, y = 277.000, z = -1489.115 }, rot = { x = 0.000, y = 22.274, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 597057, gadget_id = 70220020, pos = { x = 2688.373, y = 276.686, z = -1489.973 }, rot = { x = 0.000, y = 22.274, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 597058, gadget_id = 70220020, pos = { x = 2690.991, y = 276.810, z = -1490.789 }, rot = { x = 0.000, y = 22.274, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 597060, gadget_id = 70220020, pos = { x = 2693.552, y = 277.121, z = -1491.807 }, rot = { x = 356.009, y = 21.932, z = 9.809 }, level = 1, area_id = 1 },
	{ config_id = 597064, gadget_id = 70220035, pos = { x = 2693.963, y = 277.104, z = -1493.656 }, rot = { x = 0.000, y = 235.163, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 597065, gadget_id = 70220035, pos = { x = 2683.210, y = 277.218, z = -1490.082 }, rot = { x = 0.000, y = 170.067, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 597067, gadget_id = 70300108, pos = { x = 2690.009, y = 283.700, z = -1438.434 }, rot = { x = 0.000, y = 62.061, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 597069, gadget_id = 70300108, pos = { x = 2683.465, y = 280.455, z = -1458.223 }, rot = { x = 0.000, y = 44.049, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 597072, gadget_id = 70220035, pos = { x = 2772.127, y = 257.001, z = -1333.172 }, rot = { x = 0.000, y = 308.623, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 597073, gadget_id = 70220035, pos = { x = 2770.371, y = 256.280, z = -1328.513 }, rot = { x = 0.000, y = 276.856, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 597075, gadget_id = 70300084, pos = { x = 2849.241, y = 260.367, z = -1338.900 }, rot = { x = 0.000, y = 339.132, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 597076, gadget_id = 70300084, pos = { x = 2846.159, y = 259.853, z = -1350.081 }, rot = { x = 0.000, y = 45.987, z = 0.000 }, level = 1, area_id = 1 }
}

-- 区域
regions = {
	{ config_id = 597018, shape = RegionShape.SPHERE, radius = 5.7, pos = { x = 2707.091, y = 284.525, z = -1414.986 }, area_id = 1 },
	{ config_id = 597019, shape = RegionShape.SPHERE, radius = 10.5, pos = { x = 2794.519, y = 299.930, z = -1593.527 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1597017, name = "VARIABLE_CHANGE_597017", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_597017", action = "action_EVENT_VARIABLE_CHANGE_597017" },
	{ config_id = 1597018, name = "ENTER_REGION_597018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_597018", action = "action_EVENT_ENTER_REGION_597018" },
	{ config_id = 1597019, name = "ENTER_REGION_597019", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_597019", action = "action_EVENT_ENTER_REGION_597019" },
	{ config_id = 1597020, name = "CHALLENGE_SUCCESS_597020", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_597020", trigger_count = 0 },
	{ config_id = 1597021, name = "PLATFORM_REACH_POINT_597021", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_597021", action = "action_EVENT_PLATFORM_REACH_POINT_597021", trigger_count = 0, tag = "888" },
	{ config_id = 1597022, name = "CHALLENGE_FAIL_597022", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_597022", trigger_count = 0 },
	{ config_id = 1597023, name = "ANY_GADGET_DIE_597023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_597023", action = "action_EVENT_ANY_GADGET_DIE_597023", tag = "999" },
	{ config_id = 1597024, name = "PLATFORM_REACH_POINT_597024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_597024", action = "action_EVENT_PLATFORM_REACH_POINT_597024", trigger_count = 0, tag = "888" },
	{ config_id = 1597025, name = "PLATFORM_REACH_POINT_597025", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_597025", action = "action_EVENT_PLATFORM_REACH_POINT_597025", trigger_count = 0 },
	{ config_id = 1597026, name = "PLATFORM_REACH_POINT_597026", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_597026", action = "action_EVENT_PLATFORM_REACH_POINT_597026", trigger_count = 0 },
	{ config_id = 1597027, name = "PLATFORM_REACH_POINT_597027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_597027", action = "action_EVENT_PLATFORM_REACH_POINT_597027", trigger_count = 0, tag = "888" },
	{ config_id = 1597028, name = "PLATFORM_REACH_POINT_597028", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_597028", action = "action_EVENT_PLATFORM_REACH_POINT_597028", trigger_count = 0, tag = "888" },
	{ config_id = 1597029, name = "PLATFORM_REACH_POINT_597029", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_597029", action = "action_EVENT_PLATFORM_REACH_POINT_597029", trigger_count = 0, tag = "888" },
	{ config_id = 1597030, name = "PLATFORM_REACH_POINT_597030", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_597030", action = "action_EVENT_PLATFORM_REACH_POINT_597030", trigger_count = 0, tag = "888" },
	{ config_id = 1597031, name = "PLATFORM_REACH_POINT_597031", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_597031", action = "action_EVENT_PLATFORM_REACH_POINT_597031", trigger_count = 0, tag = "888" },
	{ config_id = 1597032, name = "PLATFORM_REACH_POINT_597032", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_597032", action = "action_EVENT_PLATFORM_REACH_POINT_597032", trigger_count = 0, tag = "888" },
	{ config_id = 1597033, name = "ANY_MONSTER_DIE_597033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_597033", action = "action_EVENT_ANY_MONSTER_DIE_597033" },
	{ config_id = 1597077, name = "PLATFORM_REACH_POINT_597077", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_597077", action = "action_EVENT_PLATFORM_REACH_POINT_597077", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "challengeSuccess", value = 0, no_refresh = false },
	{ config_id = 2, name = "challengeStart", value = 0, no_refresh = false }
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
		monsters = { 597034, 597035, 597036 },
		gadgets = { 597002, 597008 },
		regions = { 597019 },
		triggers = { "VARIABLE_CHANGE_597017", "ENTER_REGION_597019", "CHALLENGE_SUCCESS_597020", "PLATFORM_REACH_POINT_597021", "CHALLENGE_FAIL_597022", "ANY_GADGET_DIE_597023", "PLATFORM_REACH_POINT_597024", "PLATFORM_REACH_POINT_597025", "PLATFORM_REACH_POINT_597026", "PLATFORM_REACH_POINT_597027", "PLATFORM_REACH_POINT_597028", "PLATFORM_REACH_POINT_597029", "PLATFORM_REACH_POINT_597030", "PLATFORM_REACH_POINT_597031", "PLATFORM_REACH_POINT_597032", "PLATFORM_REACH_POINT_597077" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 检查点光柱,
		monsters = { },
		gadgets = { 597009, 597010, 597011, 597012, 597013, 597014, 597015, 597016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一批怪物与物件,
		monsters = { 597037, 597038, 597039, 597040, 597041, 597042, 597048 },
		gadgets = { 597001, 597003, 597006, 597043, 597044, 597045, 597046, 597052, 597055, 597056, 597057, 597058, 597060, 597064, 597065 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二批怪物与物件,
		monsters = { 597053, 597054, 597066, 597068 },
		gadgets = { 597067, 597069 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第三批怪物与物件,
		monsters = { },
		gadgets = { 597007 },
		regions = { 597018 },
		triggers = { "ENTER_REGION_597018", "ANY_MONSTER_DIE_597033" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第四批怪物与物件,
		monsters = { 597004, 597070, 597071, 597074 },
		gadgets = { 597072, 597073, 597075, 597076 },
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
function condition_EVENT_VARIABLE_CHANGE_597017(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"challengeStart"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeStart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_597017(context, evt)
	-- 将configid为 597008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 597008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003597, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003597, 3)
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 597008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_597018(context, evt)
	if evt.param1 ~= 597018 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_597018(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 597005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 将configid为 597007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 597007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_597019(context, evt)
	if evt.param1 ~= 597019 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_597019(context, evt)
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
function action_EVENT_CHALLENGE_SUCCESS_597020(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 597002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003597, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003597, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003597, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003597, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003597, 6)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133003597, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133003597, EntityType.MONSTER, 597005)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_597021(context, evt)
	-- 判断是gadgetid 为 597008的移动平台，是否到达了300300326 的路线中的 50 点
	
	if 597008 ~= evt.param1 then
	  return false
	end
	
	if 300300326 ~= evt.param2 then
	  return false
	end
	
	if 50 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_597021(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 597016 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_597022(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003597, EntityType.GADGET, 597008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003597, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003597, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003597, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003597, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003597, 6)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133003597, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 597007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 597007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133003597, EntityType.MONSTER, 597074)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_597023(context, evt)
	if 597008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_597023(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_597024(context, evt)
	-- 判断是gadgetid 为 597008的移动平台，是否到达了300300326 的路线中的 12 点
	
	if 597008 ~= evt.param1 then
	  return false
	end
	
	if 300300326 ~= evt.param2 then
	  return false
	end
	
	if 12 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_597024(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 597010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_597025(context, evt)
	-- 判断是gadgetid 为 597008的移动平台，是否到达了300300326 的路线中的 27 点
	
	if 597008 ~= evt.param1 then
	  return false
	end
	
	if 300300326 ~= evt.param2 then
	  return false
	end
	
	if 27 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_597025(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003597, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_597026(context, evt)
	-- 判断是gadgetid 为 597008的移动平台，是否到达了300300326 的路线中的 29 点
	
	if 597008 ~= evt.param1 then
	  return false
	end
	
	if 300300326 ~= evt.param2 then
	  return false
	end
	
	if 29 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_597026(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133003597, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_597027(context, evt)
	-- 判断是gadgetid 为 597008的移动平台，是否到达了300300326 的路线中的 6 点
	
	if 597008 ~= evt.param1 then
	  return false
	end
	
	if 300300326 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_597027(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 597009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_597028(context, evt)
	-- 判断是gadgetid 为 597008的移动平台，是否到达了300300326 的路线中的 22 点
	
	if 597008 ~= evt.param1 then
	  return false
	end
	
	if 300300326 ~= evt.param2 then
	  return false
	end
	
	if 22 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_597028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 597011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133003597, EntityType.MONSTER, 597039)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133003597, EntityType.MONSTER, 597040)
	
		
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003597, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_597029(context, evt)
	-- 判断是gadgetid 为 597008的移动平台，是否到达了300300326 的路线中的 28 点
	
	if 597008 ~= evt.param1 then
	  return false
	end
	
	if 300300326 ~= evt.param2 then
	  return false
	end
	
	if 28 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_597029(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 597012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003597, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003597, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_597030(context, evt)
	-- 判断是gadgetid 为 597008的移动平台，是否到达了300300326 的路线中的 32 点
	
	if 597008 ~= evt.param1 then
	  return false
	end
	
	if 300300326 ~= evt.param2 then
	  return false
	end
	
	if 32 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_597030(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 597013 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133003597, EntityType.MONSTER, 597066)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133003597, EntityType.MONSTER, 597068)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_597031(context, evt)
	-- 判断是gadgetid 为 597008的移动平台，是否到达了300300326 的路线中的 38 点
	
	if 597008 ~= evt.param1 then
	  return false
	end
	
	if 300300326 ~= evt.param2 then
	  return false
	end
	
	if 38 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_597031(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 597014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_597032(context, evt)
	-- 判断是gadgetid 为 597008的移动平台，是否到达了300300326 的路线中的 44 点
	
	if 597008 ~= evt.param1 then
	  return false
	end
	
	if 300300326 ~= evt.param2 then
	  return false
	end
	
	if 44 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_597032(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 597015 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_597033(context, evt)
	if 597005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_597033(context, evt)
	-- 将configid为 597007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 597007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133003597, EntityType.GADGET, 597007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_597077(context, evt)
	-- 判断是gadgetid 为 597008的移动平台，是否到达了300300326 的路线中的 9 点
	
	if 597008 ~= evt.param1 then
	  return false
	end
	
	if 300300326 ~= evt.param2 then
	  return false
	end
	
	if 9 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_597077(context, evt)
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133003597, EntityType.MONSTER, 597037)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133003597, EntityType.MONSTER, 597038)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133003597, EntityType.MONSTER, 597034)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133003597, EntityType.MONSTER, 597035)
	
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 597043 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 597044 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end
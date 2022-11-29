-- 基础信息
local base_info = {
	group_id = 133103455
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 455001, monster_id = 21010701, pos = { x = 878.573, y = 247.080, z = 1639.733 }, rot = { x = 0.000, y = 86.860, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 6 },
	{ config_id = 455002, monster_id = 21010701, pos = { x = 866.833, y = 248.232, z = 1624.537 }, rot = { x = 0.000, y = 76.690, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 6 },
	{ config_id = 455003, monster_id = 21010901, pos = { x = 724.998, y = 230.927, z = 1678.383 }, rot = { x = 0.000, y = 132.049, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 6 },
	{ config_id = 455019, monster_id = 21011001, pos = { x = 770.906, y = 250.526, z = 1619.649 }, rot = { x = 0.000, y = 145.781, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 6 },
	{ config_id = 455021, monster_id = 21010501, pos = { x = 795.891, y = 253.271, z = 1601.684 }, rot = { x = 0.000, y = 78.771, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 6 },
	{ config_id = 455024, monster_id = 21010901, pos = { x = 739.002, y = 231.008, z = 1647.945 }, rot = { x = 345.080, y = 161.650, z = 346.036 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 6 },
	{ config_id = 455025, monster_id = 21010901, pos = { x = 738.803, y = 234.764, z = 1632.633 }, rot = { x = 0.761, y = 41.080, z = 0.108 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 6 },
	{ config_id = 455026, monster_id = 21030301, pos = { x = 710.708, y = 233.179, z = 1639.595 }, rot = { x = 6.050, y = 14.323, z = 1.541 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 6 },
	{ config_id = 455027, monster_id = 21010701, pos = { x = 865.864, y = 245.737, z = 1638.263 }, rot = { x = 0.000, y = 103.162, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 6 },
	{ config_id = 455028, monster_id = 22010201, pos = { x = 702.184, y = 231.914, z = 1639.319 }, rot = { x = 0.000, y = 17.456, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 6 },
	{ config_id = 455033, monster_id = 21010701, pos = { x = 844.405, y = 242.430, z = 1626.073 }, rot = { x = 0.000, y = 101.484, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 6 },
	{ config_id = 455069, monster_id = 21010701, pos = { x = 894.406, y = 247.554, z = 1641.828 }, rot = { x = 0.000, y = 166.854, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 6 },
	{ config_id = 455070, monster_id = 21010501, pos = { x = 785.890, y = 252.521, z = 1619.645 }, rot = { x = 0.000, y = 157.572, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 6 },
	{ config_id = 455071, monster_id = 21011001, pos = { x = 783.488, y = 254.319, z = 1597.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 32, area_id = 6 },
	{ config_id = 455092, monster_id = 21011001, pos = { x = 941.507, y = 252.789, z = 1610.610 }, rot = { x = 0.000, y = 281.308, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 6 },
	{ config_id = 455093, monster_id = 21011001, pos = { x = 910.078, y = 262.569, z = 1587.462 }, rot = { x = 0.000, y = 141.288, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 455004, gadget_id = 70710116, pos = { x = 909.922, y = 265.624, z = 1580.498 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1, route_id = 310300166, start_route = false, area_id = 6 },
	{ config_id = 455005, gadget_id = 70300084, pos = { x = 912.878, y = 265.265, z = 1577.552 }, rot = { x = 358.074, y = 65.878, z = 24.700 }, level = 1, area_id = 6 },
	{ config_id = 455006, gadget_id = 70220004, pos = { x = 922.803, y = 246.015, z = 1634.639 }, rot = { x = 13.185, y = 0.207, z = 1.790 }, level = 1, area_id = 6 },
	{ config_id = 455007, gadget_id = 70220004, pos = { x = 890.965, y = 247.309, z = 1635.604 }, rot = { x = 1.790, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 455008, gadget_id = 70220004, pos = { x = 880.510, y = 246.716, z = 1633.618 }, rot = { x = 15.710, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 455009, gadget_id = 70300084, pos = { x = 905.380, y = 265.385, z = 1579.860 }, rot = { x = 352.294, y = 144.094, z = 22.884 }, level = 1, area_id = 6 },
	{ config_id = 455015, gadget_id = 70220004, pos = { x = 868.561, y = 245.685, z = 1630.430 }, rot = { x = 12.936, y = 1.306, z = 11.483 }, level = 1, area_id = 6 },
	{ config_id = 455016, gadget_id = 70220004, pos = { x = 905.099, y = 247.253, z = 1636.099 }, rot = { x = 5.354, y = 359.916, z = 358.210 }, level = 1, area_id = 6 },
	{ config_id = 455017, gadget_id = 70220005, pos = { x = 729.783, y = 230.753, z = 1669.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	-- 第一检查点
	{ config_id = 455018, gadget_id = 70710126, pos = { x = 923.421, y = 245.840, z = 1635.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 455022, gadget_id = 70220005, pos = { x = 712.393, y = 232.562, z = 1657.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 455023, gadget_id = 70220005, pos = { x = 711.439, y = 232.236, z = 1656.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	-- 第二检查点
	{ config_id = 455029, gadget_id = 70710126, pos = { x = 862.254, y = 244.545, z = 1629.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 455030, gadget_id = 70360046, pos = { x = 732.933, y = 229.214, z = 1661.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 455031, gadget_id = 70220004, pos = { x = 856.543, y = 245.087, z = 1641.239 }, rot = { x = 357.317, y = 0.042, z = 358.210 }, level = 1, area_id = 6 },
	{ config_id = 455032, gadget_id = 70220004, pos = { x = 810.281, y = 252.107, z = 1606.759 }, rot = { x = 358.244, y = 0.359, z = 354.635 }, level = 1, area_id = 6 },
	{ config_id = 455034, gadget_id = 70220004, pos = { x = 844.401, y = 239.941, z = 1632.904 }, rot = { x = 6.099, y = 0.660, z = 12.340 }, level = 1, area_id = 6 },
	{ config_id = 455035, gadget_id = 70220020, pos = { x = 801.079, y = 251.614, z = 1614.657 }, rot = { x = 356.201, y = 263.942, z = 349.734 }, level = 1, area_id = 6 },
	{ config_id = 455036, gadget_id = 70220020, pos = { x = 800.473, y = 251.896, z = 1613.202 }, rot = { x = 356.201, y = 263.942, z = 349.734 }, level = 1, area_id = 6 },
	{ config_id = 455037, gadget_id = 70220020, pos = { x = 776.636, y = 251.232, z = 1618.650 }, rot = { x = 356.560, y = 305.626, z = 6.306 }, level = 1, area_id = 6 },
	{ config_id = 455038, gadget_id = 70220020, pos = { x = 774.805, y = 250.990, z = 1616.227 }, rot = { x = 9.745, y = 290.882, z = 1.810 }, level = 1, area_id = 6 },
	{ config_id = 455039, gadget_id = 70220020, pos = { x = 800.217, y = 252.280, z = 1610.549 }, rot = { x = 357.002, y = 263.848, z = 356.948 }, level = 1, area_id = 6 },
	{ config_id = 455040, gadget_id = 70220020, pos = { x = 774.005, y = 250.860, z = 1616.892 }, rot = { x = 7.914, y = 297.754, z = 2.146 }, level = 1, area_id = 6 },
	{ config_id = 455042, gadget_id = 70220020, pos = { x = 800.802, y = 253.056, z = 1600.655 }, rot = { x = 0.000, y = 93.061, z = 20.746 }, level = 1, area_id = 6 },
	{ config_id = 455043, gadget_id = 70220020, pos = { x = 800.501, y = 252.557, z = 1603.410 }, rot = { x = 0.000, y = 93.061, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 455044, gadget_id = 70220020, pos = { x = 800.256, y = 252.507, z = 1605.830 }, rot = { x = 0.000, y = 93.061, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 455045, gadget_id = 70220020, pos = { x = 800.519, y = 252.479, z = 1607.268 }, rot = { x = 0.000, y = 93.061, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 455046, gadget_id = 70220020, pos = { x = 800.508, y = 252.500, z = 1604.953 }, rot = { x = 0.000, y = 93.061, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 455047, gadget_id = 70220020, pos = { x = 799.984, y = 251.695, z = 1617.044 }, rot = { x = 0.000, y = 93.061, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 455048, gadget_id = 70220020, pos = { x = 800.637, y = 251.349, z = 1619.503 }, rot = { x = 0.000, y = 93.061, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 455051, gadget_id = 70220035, pos = { x = 802.266, y = 252.414, z = 1603.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 455052, gadget_id = 70220035, pos = { x = 801.935, y = 251.186, z = 1618.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 455053, gadget_id = 70220020, pos = { x = 770.796, y = 251.708, z = 1605.871 }, rot = { x = 0.000, y = 109.670, z = 16.608 }, level = 1, area_id = 6 },
	{ config_id = 455054, gadget_id = 70220020, pos = { x = 770.774, y = 251.166, z = 1607.428 }, rot = { x = 0.000, y = 109.670, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 455055, gadget_id = 70220020, pos = { x = 771.529, y = 251.103, z = 1609.860 }, rot = { x = 0.000, y = 109.670, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 455056, gadget_id = 70220020, pos = { x = 772.427, y = 250.917, z = 1612.432 }, rot = { x = 0.000, y = 109.670, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 455057, gadget_id = 70220020, pos = { x = 772.204, y = 251.204, z = 1610.634 }, rot = { x = 0.000, y = 109.670, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 455058, gadget_id = 70220020, pos = { x = 771.949, y = 251.313, z = 1608.675 }, rot = { x = 0.000, y = 109.670, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 455059, gadget_id = 70220020, pos = { x = 777.118, y = 251.714, z = 1621.514 }, rot = { x = 0.000, y = 109.670, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 455060, gadget_id = 70220020, pos = { x = 776.893, y = 251.619, z = 1623.611 }, rot = { x = 347.136, y = 109.128, z = 4.803 }, level = 1, area_id = 6 },
	{ config_id = 455061, gadget_id = 70220020, pos = { x = 770.047, y = 250.851, z = 1607.844 }, rot = { x = 340.695, y = 108.243, z = 8.811 }, level = 1, area_id = 6 },
	{ config_id = 455062, gadget_id = 70220020, pos = { x = 774.117, y = 251.181, z = 1613.360 }, rot = { x = 344.506, y = 108.643, z = 7.540 }, level = 1, area_id = 6 },
	{ config_id = 455063, gadget_id = 70220020, pos = { x = 775.750, y = 251.310, z = 1619.641 }, rot = { x = 2.204, y = 306.564, z = 10.428 }, level = 1, area_id = 6 },
	{ config_id = 455064, gadget_id = 70220011, pos = { x = 775.268, y = 251.996, z = 1608.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 455065, gadget_id = 70220011, pos = { x = 779.522, y = 251.874, z = 1619.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 455068, gadget_id = 70220011, pos = { x = 725.484, y = 230.719, z = 1674.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	-- 第三检查点
	{ config_id = 455072, gadget_id = 70710126, pos = { x = 804.209, y = 252.304, z = 1609.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	-- 第四检查点
	{ config_id = 455073, gadget_id = 70710126, pos = { x = 755.348, y = 248.016, z = 1615.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	-- 第五检查点
	{ config_id = 455074, gadget_id = 70710126, pos = { x = 740.225, y = 230.700, z = 1648.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	-- 第六检查点
	{ config_id = 455075, gadget_id = 70710126, pos = { x = 724.194, y = 230.700, z = 1673.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	-- 第七检查点
	{ config_id = 455076, gadget_id = 70710126, pos = { x = 708.433, y = 231.430, z = 1650.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	-- 第八检查点
	{ config_id = 455077, gadget_id = 70710126, pos = { x = 672.853, y = 231.445, z = 1623.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
	{ config_id = 455010, shape = RegionShape.SPHERE, radius = 19.7, pos = { x = 909.935, y = 264.138, z = 1580.758 }, area_id = 6 }
}

-- 触发器
triggers = {
	{ config_id = 1455010, name = "ENTER_REGION_455010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_455010", action = "action_EVENT_ENTER_REGION_455010" },
	{ config_id = 1455011, name = "CHALLENGE_SUCCESS_455011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_455011", trigger_count = 0 },
	{ config_id = 1455012, name = "PLATFORM_REACH_POINT_455012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_455012", action = "", trigger_count = 0, tag = "888" },
	{ config_id = 1455013, name = "CHALLENGE_FAIL_455013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_455013", trigger_count = 0 },
	{ config_id = 1455014, name = "ANY_GADGET_DIE_455014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_455014", action = "action_EVENT_ANY_GADGET_DIE_455014", tag = "999" },
	{ config_id = 1455020, name = "PLATFORM_REACH_POINT_455020", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_455020", action = "action_EVENT_PLATFORM_REACH_POINT_455020", trigger_count = 0, tag = "888" },
	{ config_id = 1455041, name = "PLATFORM_REACH_POINT_455041", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_455041", action = "action_EVENT_PLATFORM_REACH_POINT_455041" },
	{ config_id = 1455066, name = "PLATFORM_REACH_POINT_455066", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_455066", action = "action_EVENT_PLATFORM_REACH_POINT_455066", trigger_count = 0 },
	{ config_id = 1455067, name = "PLATFORM_REACH_POINT_455067", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_455067", action = "action_EVENT_PLATFORM_REACH_POINT_455067", trigger_count = 0 },
	{ config_id = 1455078, name = "PLATFORM_REACH_POINT_455078", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_455078", action = "action_EVENT_PLATFORM_REACH_POINT_455078", trigger_count = 0, tag = "888" },
	{ config_id = 1455079, name = "PLATFORM_REACH_POINT_455079", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_455079", action = "action_EVENT_PLATFORM_REACH_POINT_455079", trigger_count = 0, tag = "888" },
	{ config_id = 1455080, name = "PLATFORM_REACH_POINT_455080", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_455080", action = "action_EVENT_PLATFORM_REACH_POINT_455080", trigger_count = 0, tag = "888" },
	{ config_id = 1455081, name = "PLATFORM_REACH_POINT_455081", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_455081", action = "action_EVENT_PLATFORM_REACH_POINT_455081", trigger_count = 0, tag = "888" },
	{ config_id = 1455082, name = "PLATFORM_REACH_POINT_455082", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_455082", action = "action_EVENT_PLATFORM_REACH_POINT_455082", trigger_count = 0, tag = "888" },
	{ config_id = 1455083, name = "PLATFORM_REACH_POINT_455083", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_455083", action = "action_EVENT_PLATFORM_REACH_POINT_455083", trigger_count = 0, tag = "888" }
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
		gadgets = { 455004, 455005, 455009 },
		regions = { 455010 },
		triggers = { "ENTER_REGION_455010", "CHALLENGE_SUCCESS_455011", "PLATFORM_REACH_POINT_455012", "CHALLENGE_FAIL_455013", "ANY_GADGET_DIE_455014", "PLATFORM_REACH_POINT_455020", "PLATFORM_REACH_POINT_455041", "PLATFORM_REACH_POINT_455066", "PLATFORM_REACH_POINT_455067", "PLATFORM_REACH_POINT_455078", "PLATFORM_REACH_POINT_455079", "PLATFORM_REACH_POINT_455080", "PLATFORM_REACH_POINT_455081", "PLATFORM_REACH_POINT_455082", "PLATFORM_REACH_POINT_455083" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 455001, 455002, 455003, 455019, 455021, 455024, 455025, 455026, 455027, 455028, 455033, 455069, 455070, 455071, 455092, 455093 },
		gadgets = { 455006, 455007, 455008, 455015, 455016, 455017, 455018, 455022, 455023, 455029, 455030, 455031, 455032, 455034, 455035, 455036, 455037, 455038, 455039, 455040, 455042, 455043, 455044, 455045, 455046, 455047, 455048, 455051, 455052, 455053, 455054, 455055, 455056, 455057, 455058, 455059, 455060, 455061, 455062, 455063, 455064, 455065, 455068, 455072, 455073, 455074, 455075, 455076, 455077 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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

-- 触发条件
function condition_EVENT_ENTER_REGION_455010(context, evt)
	if evt.param1 ~= 455010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_455010(context, evt)
	-- 创建编号为666（该挑战的识别id),挑战内容为203的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.StartChallenge(context, 666, 203, {26, 888, 8, 2,999,1}) then
		return -1
	end
	
	-- 
		
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133103455, 2)
	
	
	-- 将configid为 455004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 455004, GadgetState.GearStart) then
		return -1
	end
	
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 455004) then
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_455011(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103455, 2)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455084 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455085 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455086 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455087 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455088 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455089 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455090 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455091 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 455005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 455009 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133103455, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_455012(context, evt)
	-- 判断是gadgetid 为 455004的移动平台，是否到达了310300166 的路线中的 27 点
	
	if 455004 ~= evt.param1 then
	  return false
	end
	
	if 310300166 ~= evt.param2 then
	  return false
	end
	
	if 27 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_455013(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455004 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103455, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103455, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_455014(context, evt)
	if 455004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_455014(context, evt)
	-- 终止识别id为666的挑战，并判定成功
		ScriptLib.StopChallenge(context, 666, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_455020(context, evt)
	-- 判断是gadgetid 为 455004的移动平台，是否到达了310300166 的路线中的 10 点
	
	if 455004 ~= evt.param1 then
	  return false
	end
	
	if 310300166 ~= evt.param2 then
	  return false
	end
	
	if 10 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_455020(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 455029 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_455041(context, evt)
	-- 判断是gadgetid 为 455004的移动平台，是否到达了310300166 的路线中的 28 点
	
	if 455004 ~= evt.param1 then
	  return false
	end
	
	if 310300166 ~= evt.param2 then
	  return false
	end
	
	if 28 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_455041(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 455077 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 终止识别id为666的挑战，并判定失败
		ScriptLib.StopChallenge(context, 666, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_455066(context, evt)
	-- 判断是gadgetid 为 455004的移动平台，是否到达了310300166 的路线中的 15 点
	
	if 455004 ~= evt.param1 then
	  return false
	end
	
	if 310300166 ~= evt.param2 then
	  return false
	end
	
	if 15 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_455066(context, evt)
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.MONSTER, 455001)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.MONSTER, 455002)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.MONSTER, 455027)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.MONSTER, 455033)
	
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455015 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455031 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455034 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.MONSTER, 455069)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.MONSTER, 455092)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.MONSTER, 455093)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_455067(context, evt)
	-- 判断是gadgetid 为 455004的移动平台，是否到达了310300166 的路线中的 21 点
	
	if 455004 ~= evt.param1 then
	  return false
	end
	
	if 310300166 ~= evt.param2 then
	  return false
	end
	
	if 21 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_455067(context, evt)
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.MONSTER, 455021)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.MONSTER, 455019)
	
		
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455035 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455036 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455037 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455038 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455039 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455040 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455042 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455043 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455044 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455045 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455046 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455047 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455048 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455053 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455054 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455055 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455056 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455057 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455058 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455059 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455060 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455061 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455062 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.GADGET, 455063 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.MONSTER, 455070)
	
		
	
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 133103455, EntityType.MONSTER, 455071)
	
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_455078(context, evt)
	-- 判断是gadgetid 为 455004的移动平台，是否到达了310300166 的路线中的 5 点
	
	if 455004 ~= evt.param1 then
	  return false
	end
	
	if 310300166 ~= evt.param2 then
	  return false
	end
	
	if 5 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_455078(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 455018 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_455079(context, evt)
	-- 判断是gadgetid 为 455004的移动平台，是否到达了310300166 的路线中的 15 点
	
	if 455004 ~= evt.param1 then
	  return false
	end
	
	if 310300166 ~= evt.param2 then
	  return false
	end
	
	if 15 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_455079(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 455072 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_455080(context, evt)
	-- 判断是gadgetid 为 455004的移动平台，是否到达了310300166 的路线中的 18 点
	
	if 455004 ~= evt.param1 then
	  return false
	end
	
	if 310300166 ~= evt.param2 then
	  return false
	end
	
	if 18 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_455080(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 455073 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_455081(context, evt)
	-- 判断是gadgetid 为 455004的移动平台，是否到达了310300166 的路线中的 21 点
	
	if 455004 ~= evt.param1 then
	  return false
	end
	
	if 310300166 ~= evt.param2 then
	  return false
	end
	
	if 21 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_455081(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 455074 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_455082(context, evt)
	-- 判断是gadgetid 为 455004的移动平台，是否到达了310300166 的路线中的 23 点
	
	if 455004 ~= evt.param1 then
	  return false
	end
	
	if 310300166 ~= evt.param2 then
	  return false
	end
	
	if 23 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_455082(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 455075 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_455083(context, evt)
	-- 判断是gadgetid 为 455004的移动平台，是否到达了310300166 的路线中的 25 点
	
	if 455004 ~= evt.param1 then
	  return false
	end
	
	if 310300166 ~= evt.param2 then
	  return false
	end
	
	if 25 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_455083(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 455076 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end
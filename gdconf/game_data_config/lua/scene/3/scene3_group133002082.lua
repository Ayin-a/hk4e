-- 基础信息
local base_info = {
	group_id = 133002082
}

-- Trigger变量
local defs = {
	target_group = 133002100,
	circle_region = 82025
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 82005, monster_id = 28020107, pos = { x = 1725.681, y = 201.993, z = -319.799 }, rot = { x = 0.000, y = 184.454, z = 0.000 }, level = 80, drop_id = 1000100, disableWander = true, pose_id = 1001, area_id = 3 },
	{ config_id = 82006, monster_id = 28020310, pos = { x = 1721.225, y = 201.530, z = -321.902 }, rot = { x = 0.000, y = 99.724, z = 0.000 }, level = 80, drop_id = 1000100, disableWander = true, pose_id = 1001, area_id = 3 },
	{ config_id = 82008, monster_id = 28030312, pos = { x = 1708.713, y = 204.601, z = -342.080 }, rot = { x = 0.000, y = 161.831, z = 0.000 }, level = 80, drop_id = 1000100, disableWander = true, pose_id = 1001, area_id = 3 },
	{ config_id = 82013, monster_id = 28030312, pos = { x = 1677.477, y = 204.117, z = -331.595 }, rot = { x = 0.000, y = 1.319, z = 0.000 }, level = 80, drop_id = 1000100, disableWander = true, pose_id = 1001, area_id = 3 },
	{ config_id = 82014, monster_id = 28020107, pos = { x = 1692.698, y = 200.623, z = -343.260 }, rot = { x = 0.000, y = 91.097, z = 0.000 }, level = 80, drop_id = 1000100, disableWander = true, pose_id = 1001, area_id = 3 },
	{ config_id = 82019, monster_id = 28020107, pos = { x = 1710.400, y = 200.894, z = -327.079 }, rot = { x = 0.000, y = 215.499, z = 0.000 }, level = 80, drop_id = 1000100, disableWander = true, pose_id = 1001, area_id = 3, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 82023, monster_id = 28030505, pos = { x = 1672.198, y = 200.000, z = -323.843 }, rot = { x = 0.000, y = 297.571, z = 0.000 }, level = 80, drop_id = 1000100, disableWander = true, pose_id = 1001, area_id = 3 },
	{ config_id = 82024, monster_id = 28030505, pos = { x = 1671.436, y = 200.000, z = -325.271 }, rot = { x = 0.000, y = 88.091, z = 0.000 }, level = 80, drop_id = 1000100, disableWander = true, pose_id = 1001, area_id = 3 },
	{ config_id = 82034, monster_id = 28030312, pos = { x = 1684.783, y = 202.445, z = -325.194 }, rot = { x = 0.000, y = 5.795, z = 0.000 }, level = 80, drop_id = 1000100, disableWander = true, pose_id = 1001, area_id = 3 },
	{ config_id = 82043, monster_id = 28030312, pos = { x = 1690.430, y = 203.239, z = -330.170 }, rot = { x = 0.000, y = 330.129, z = 0.000 }, level = 80, drop_id = 1000100, disableWander = true, pose_id = 1001, area_id = 3 },
	{ config_id = 82058, monster_id = 28020311, pos = { x = 1704.779, y = 201.247, z = -327.185 }, rot = { x = 0.000, y = 118.308, z = 0.000 }, level = 80, drop_id = 1000100, disableWander = true, pose_id = 1001, area_id = 3, vision_level = VisionLevelType.VISION_LEVEL_NEARBY },
	{ config_id = 82065, monster_id = 28020107, pos = { x = 1698.933, y = 201.983, z = -324.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, drop_id = 1000100, pose_id = 1001, area_id = 3, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 82069, monster_id = 28020107, pos = { x = 1733.316, y = 202.910, z = -318.306 }, rot = { x = 0.000, y = 304.020, z = 0.000 }, level = 80, drop_id = 1000100, disableWander = true, pose_id = 1001, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 82001, gadget_id = 70800237, pos = { x = 1726.451, y = 202.133, z = -325.691 }, rot = { x = 313.433, y = 346.871, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82002, gadget_id = 70800237, pos = { x = 1728.802, y = 202.168, z = -321.907 }, rot = { x = 309.667, y = 268.114, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82003, gadget_id = 70800238, pos = { x = 1725.182, y = 201.764, z = -322.389 }, rot = { x = 355.359, y = 117.895, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82004, gadget_id = 70800236, pos = { x = 1714.262, y = 202.263, z = -335.928 }, rot = { x = 341.145, y = 94.351, z = 2.967 }, level = 1, area_id = 3 },
	{ config_id = 82007, gadget_id = 70800236, pos = { x = 1710.419, y = 201.778, z = -321.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82010, gadget_id = 70800236, pos = { x = 1704.838, y = 201.838, z = -323.368 }, rot = { x = 0.000, y = 27.205, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82011, gadget_id = 70800236, pos = { x = 1695.058, y = 202.041, z = -324.842 }, rot = { x = 0.000, y = 259.337, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82012, gadget_id = 70800288, pos = { x = 1697.928, y = 201.014, z = -343.077 }, rot = { x = 358.117, y = 76.200, z = 5.229 }, level = 1, area_id = 3 },
	{ config_id = 82015, gadget_id = 70800237, pos = { x = 1697.691, y = 201.001, z = -343.105 }, rot = { x = 51.574, y = 57.621, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82016, gadget_id = 70800235, pos = { x = 1694.815, y = 200.788, z = -343.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82017, gadget_id = 70800235, pos = { x = 1678.003, y = 200.937, z = -327.666 }, rot = { x = 14.522, y = 289.347, z = 352.644 }, level = 1, area_id = 3 },
	{ config_id = 82018, gadget_id = 70800237, pos = { x = 1682.057, y = 202.600, z = -330.182 }, rot = { x = 327.019, y = 324.193, z = 340.705 }, level = 1, area_id = 3 },
	{ config_id = 82020, gadget_id = 70800238, pos = { x = 1708.971, y = 200.664, z = -329.232 }, rot = { x = 4.452, y = 121.767, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82021, gadget_id = 70800236, pos = { x = 1677.372, y = 203.247, z = -337.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82029, gadget_id = 70800236, pos = { x = 1737.531, y = 203.971, z = -314.864 }, rot = { x = 0.000, y = 113.453, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82030, gadget_id = 71700435, pos = { x = 1724.236, y = 202.509, z = -328.765 }, rot = { x = 20.829, y = 350.117, z = 7.123 }, level = 1, area_id = 3 },
	{ config_id = 82031, gadget_id = 70800237, pos = { x = 1724.822, y = 201.864, z = -320.208 }, rot = { x = 285.231, y = 357.064, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82032, gadget_id = 70800236, pos = { x = 1731.016, y = 202.581, z = -324.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82033, gadget_id = 70800236, pos = { x = 1707.250, y = 201.925, z = -321.607 }, rot = { x = 0.000, y = 224.584, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82035, gadget_id = 70800237, pos = { x = 1709.542, y = 203.579, z = -314.556 }, rot = { x = 294.499, y = 131.886, z = 332.916 }, level = 1, area_id = 3 },
	{ config_id = 82036, gadget_id = 70800237, pos = { x = 1707.645, y = 203.300, z = -315.833 }, rot = { x = 0.000, y = 195.962, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82037, gadget_id = 70800237, pos = { x = 1711.369, y = 203.292, z = -341.626 }, rot = { x = 0.000, y = 43.602, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82038, gadget_id = 70800236, pos = { x = 1699.312, y = 201.643, z = -345.995 }, rot = { x = 0.000, y = 269.722, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82039, gadget_id = 70800236, pos = { x = 1695.338, y = 201.741, z = -327.489 }, rot = { x = 0.000, y = 310.071, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82040, gadget_id = 70800236, pos = { x = 1674.333, y = 202.769, z = -337.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82041, gadget_id = 70800236, pos = { x = 1715.379, y = 201.721, z = -333.409 }, rot = { x = 0.000, y = 88.604, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82042, gadget_id = 70800236, pos = { x = 1723.595, y = 203.791, z = -332.147 }, rot = { x = 13.042, y = 316.906, z = 12.331 }, level = 1, area_id = 3 },
	{ config_id = 82044, gadget_id = 70800236, pos = { x = 1688.368, y = 202.268, z = -337.578 }, rot = { x = 0.000, y = 251.859, z = 13.683 }, level = 1, area_id = 3 },
	{ config_id = 82045, gadget_id = 70800236, pos = { x = 1684.778, y = 202.944, z = -331.874 }, rot = { x = 0.000, y = 310.071, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82046, gadget_id = 70300092, pos = { x = 1726.404, y = 203.190, z = -311.515 }, rot = { x = 2.067, y = 107.059, z = 359.499 }, level = 1, area_id = 3 },
	{ config_id = 82047, gadget_id = 70300092, pos = { x = 1708.551, y = 203.424, z = -315.256 }, rot = { x = 0.000, y = 175.628, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82048, gadget_id = 71700435, pos = { x = 1710.259, y = 203.354, z = -316.384 }, rot = { x = 0.000, y = 49.213, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82049, gadget_id = 70800236, pos = { x = 1674.473, y = 202.170, z = -347.424 }, rot = { x = 0.000, y = 250.936, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82050, gadget_id = 71700435, pos = { x = 1690.368, y = 201.645, z = -330.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82051, gadget_id = 70950138, pos = { x = 1726.199, y = 204.882, z = -332.907 }, rot = { x = 357.649, y = 55.499, z = 0.898 }, level = 1, area_id = 3 },
	{ config_id = 82052, gadget_id = 70950138, pos = { x = 1673.170, y = 202.499, z = -341.239 }, rot = { x = 2.273, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82054, gadget_id = 71700435, pos = { x = 1702.256, y = 202.142, z = -345.582 }, rot = { x = 0.000, y = 79.716, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82056, gadget_id = 70800236, pos = { x = 1673.489, y = 202.045, z = -353.684 }, rot = { x = 0.000, y = 297.061, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82057, gadget_id = 70300092, pos = { x = 1688.974, y = 201.889, z = -328.747 }, rot = { x = 0.000, y = 295.065, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82059, gadget_id = 70800237, pos = { x = 1714.039, y = 200.671, z = -329.865 }, rot = { x = 305.250, y = 296.318, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82060, gadget_id = 70800237, pos = { x = 1713.994, y = 201.105, z = -323.300 }, rot = { x = 287.514, y = 269.936, z = 18.439 }, level = 1, area_id = 3 },
	{ config_id = 82061, gadget_id = 70800288, pos = { x = 1714.022, y = 201.110, z = -323.277 }, rot = { x = 344.913, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82062, gadget_id = 70800288, pos = { x = 1714.240, y = 200.645, z = -329.782 }, rot = { x = 0.000, y = 287.368, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82064, gadget_id = 70800237, pos = { x = 1692.263, y = 201.766, z = -326.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82066, gadget_id = 70800236, pos = { x = 1716.692, y = 202.741, z = -335.091 }, rot = { x = 0.000, y = 88.604, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82067, gadget_id = 70800236, pos = { x = 1701.261, y = 201.492, z = -343.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82068, gadget_id = 70800236, pos = { x = 1737.360, y = 204.691, z = -312.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82070, gadget_id = 70800236, pos = { x = 1712.759, y = 202.702, z = -338.598 }, rot = { x = 7.590, y = 313.213, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82071, gadget_id = 70300092, pos = { x = 1708.508, y = 203.233, z = -343.212 }, rot = { x = 23.722, y = 330.684, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82072, gadget_id = 71700435, pos = { x = 1709.072, y = 203.570, z = -344.609 }, rot = { x = 353.851, y = 80.690, z = 15.894 }, level = 1, area_id = 3 },
	{ config_id = 82073, gadget_id = 70800236, pos = { x = 1693.267, y = 202.137, z = -322.930 }, rot = { x = 0.000, y = 197.228, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 82074, gadget_id = 70800236, pos = { x = 1692.528, y = 201.427, z = -335.679 }, rot = { x = 347.235, y = 320.379, z = 4.969 }, level = 1, area_id = 3 },
	{ config_id = 82075, gadget_id = 70800236, pos = { x = 1690.693, y = 201.624, z = -337.785 }, rot = { x = 1.800, y = 79.276, z = 346.434 }, level = 1, area_id = 3 },
	{ config_id = 82076, gadget_id = 70800236, pos = { x = 1666.892, y = 202.966, z = -357.557 }, rot = { x = 0.000, y = 255.040, z = 7.272 }, level = 1, area_id = 3 }
}

-- 区域
regions = {
	{ config_id = 82009, shape = RegionShape.POLYGON, pos = { x = 1671.699, y = 106.751, z = -355.146 }, height = 243.501, point_array = { { x = 1670.766, y = -338.592 }, { x = 1679.475, y = -350.122 }, { x = 1683.788, y = -356.165 }, { x = 1687.089, y = -359.635 }, { x = 1689.882, y = -362.406 }, { x = 1692.902, y = -368.757 }, { x = 1677.367, y = -378.655 }, { x = 1673.261, y = -374.125 }, { x = 1668.599, y = -368.451 }, { x = 1662.856, y = -358.760 }, { x = 1656.812, y = -350.023 }, { x = 1650.495, y = -338.138 }, { x = 1665.786, y = -331.636 } }, area_id = 3 },
	-- ability
	{ config_id = 82022, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1701.792, y = 200.587, z = -332.009 }, area_id = 3 },
	-- 进入区域reminder
	{ config_id = 82025, shape = RegionShape.SPHERE, radius = 40, pos = { x = 1701.792, y = 200.587, z = -332.009 }, area_id = 3 },
	{ config_id = 82078, shape = RegionShape.POLYGON, pos = { x = 1719.913, y = 209.459, z = -326.962 }, height = 58.917, point_array = { { x = 1844.905, y = -310.011 }, { x = 1782.785, y = -203.826 }, { x = 1603.705, y = -319.407 }, { x = 1594.922, y = -405.964 }, { x = 1660.333, y = -450.098 } }, area_id = 3 },
	{ config_id = 82079, shape = RegionShape.POLYGON, pos = { x = 1719.913, y = 209.459, z = -326.962 }, height = 58.917, point_array = { { x = 1844.905, y = -310.011 }, { x = 1782.785, y = -203.826 }, { x = 1603.705, y = -319.407 }, { x = 1594.922, y = -405.964 }, { x = 1660.333, y = -450.098 } }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1082009, name = "ENTER_REGION_82009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_82009", action = "action_EVENT_ENTER_REGION_82009" },
	-- 进入区域reminder
	{ config_id = 1082025, name = "ENTER_REGION_82025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_82025", action = "action_EVENT_ENTER_REGION_82025", trigger_count = 0 },
	-- 怪物所剩无几reminder
	{ config_id = 1082026, name = "ANY_MONSTER_DIE_82026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_82026", action = "action_EVENT_ANY_MONSTER_DIE_82026" },
	-- 怪物清空reminder
	{ config_id = 1082027, name = "ANY_MONSTER_DIE_82027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_82027", action = "action_EVENT_ANY_MONSTER_DIE_82027" },
	{ config_id = 1082078, name = "LEAVE_REGION_82078", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_82078", action = "action_EVENT_LEAVE_REGION_82078", trigger_count = 0 },
	{ config_id = 1082079, name = "ENTER_REGION_82079", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_82079", action = "action_EVENT_ENTER_REGION_82079", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 82055, gadget_id = 70800288, pos = { x = 1711.448, y = 203.320, z = -341.704 }, rot = { x = 355.891, y = 3.175, z = 0.000 }, level = 1, area_id = 3 },
		{ config_id = 82063, gadget_id = 70800288, pos = { x = 1692.555, y = 201.762, z = -326.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 }
	},
	triggers = {
		{ config_id = 1082028, name = "ANY_MONSTER_DIE_82028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_82028", trigger_count = 0 }
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
		gadgets = { 82001, 82002, 82003, 82004, 82007, 82010, 82011, 82012, 82015, 82016, 82017, 82018, 82020, 82021, 82029, 82030, 82031, 82032, 82033, 82035, 82036, 82037, 82038, 82039, 82040, 82041, 82042, 82044, 82045, 82046, 82047, 82048, 82049, 82050, 82051, 82052, 82054, 82056, 82057, 82059, 82060, 82061, 82062, 82064, 82066, 82067, 82068, 82070, 82071, 82072, 82073, 82074, 82075, 82076 },
		regions = { 82022, 82078, 82079 },
		triggers = { "LEAVE_REGION_82078", "ENTER_REGION_82079" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 82005, 82006, 82008, 82013, 82014, 82019, 82023, 82024, 82034, 82043, 82058, 82065, 82069 },
		gadgets = { },
		regions = { 82025 },
		triggers = { "ENTER_REGION_82025", "ANY_MONSTER_DIE_82026", "ANY_MONSTER_DIE_82027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 82009 },
		triggers = { "ENTER_REGION_82009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_82009(context, evt)
	if evt.param1 ~= 82009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_82009(context, evt)
	-- 触发镜头注目，注目位置为坐标（1665.016，202.1511，-364.0059），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1665.016, y=202.1511, z=-364.0059}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 400212 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400212) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_82025(context, evt)
	if evt.param1 ~= 82025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_82025(context, evt)
	-- 调用提示id为 400180 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_82026(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_82026(context, evt)
	-- 调用提示id为 400182 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400182) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002082, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_82027(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_82027(context, evt)
	-- 调用提示id为 400183 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400183) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_82078(context, evt)
	-- 判断是区域82078
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 82078 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_82078(context, evt)
	-- 将玩家的GroupVisionType设为1
	if 0 ~= ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {1}) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_playerGroupVisionType")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_82079(context, evt)
	if evt.param1 ~= 82079 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_82079(context, evt)
	-- 将玩家的GroupVisionType设为26
	if 0 ~= ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {26}) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_playerGroupVisionType")
	  return -1
	end
	
	return 0
end

require "V3_1/Activity_Hunt_Stage_2"
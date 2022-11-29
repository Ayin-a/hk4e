-- 基础信息
local base_info = {
	group_id = 302001013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 13006, monster_id = 25010501, pos = { x = 1701.328, y = 205.360, z = 845.385 }, rot = { x = 0.000, y = 298.717, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9002, area_id = 5 },
	{ config_id = 13007, monster_id = 25010201, pos = { x = 1700.983, y = 205.294, z = 846.832 }, rot = { x = 0.000, y = 244.579, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9003, area_id = 5 },
	{ config_id = 13015, monster_id = 21010101, pos = { x = 1444.878, y = 200.128, z = 764.712 }, rot = { x = 0.000, y = 18.951, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9012, area_id = 5 },
	{ config_id = 13018, monster_id = 21010101, pos = { x = 1446.887, y = 200.000, z = 764.922 }, rot = { x = 0.000, y = 319.288, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9012, area_id = 5 },
	{ config_id = 13020, monster_id = 25010701, pos = { x = 1525.706, y = 250.046, z = 436.092 }, rot = { x = 0.000, y = 325.170, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9008, area_id = 5 },
	{ config_id = 13023, monster_id = 25010401, pos = { x = 1525.434, y = 249.822, z = 437.076 }, rot = { x = 0.000, y = 338.383, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9003, area_id = 5 },
	{ config_id = 13026, monster_id = 21011201, pos = { x = 1621.247, y = 283.252, z = 349.499 }, rot = { x = 0.000, y = 212.519, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9012, area_id = 5 },
	{ config_id = 13027, monster_id = 21011201, pos = { x = 1618.133, y = 283.437, z = 348.899 }, rot = { x = 0.000, y = 132.539, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9012, area_id = 5 },
	{ config_id = 13029, monster_id = 21011201, pos = { x = 1460.107, y = 220.630, z = 532.344 }, rot = { x = 0.000, y = 19.314, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9016, area_id = 5 },
	{ config_id = 13030, monster_id = 21010201, pos = { x = 1408.740, y = 223.875, z = 582.221 }, rot = { x = 0.000, y = 17.033, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9016, area_id = 5 },
	{ config_id = 13031, monster_id = 21010201, pos = { x = 1408.433, y = 223.885, z = 584.076 }, rot = { x = 0.000, y = 130.700, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9016, area_id = 5 },
	{ config_id = 13034, monster_id = 25010201, pos = { x = 1463.744, y = 211.894, z = 681.250 }, rot = { x = 0.000, y = 65.226, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 9003, area_id = 5 },
	{ config_id = 13035, monster_id = 25060101, pos = { x = 1462.487, y = 211.532, z = 682.315 }, rot = { x = 0.000, y = 101.828, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 3, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 13001, gadget_id = 70500000, pos = { x = 1675.043, y = 405.199, z = 514.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 5 },
	{ config_id = 13002, gadget_id = 70500000, pos = { x = 1552.766, y = 212.553, z = 816.762 }, rot = { x = 0.867, y = 321.241, z = 2.487 }, level = 1, point_type = 9127, area_id = 5 },
	{ config_id = 13003, gadget_id = 70500000, pos = { x = 1619.941, y = 283.248, z = 347.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 5 },
	{ config_id = 13004, gadget_id = 70500000, pos = { x = 1390.681, y = 206.453, z = 436.210 }, rot = { x = 12.918, y = 359.165, z = 358.229 }, level = 1, point_type = 9127, area_id = 5 },
	{ config_id = 13005, gadget_id = 70500000, pos = { x = 1840.741, y = 211.111, z = 606.453 }, rot = { x = 0.894, y = 0.052, z = 0.896 }, level = 1, point_type = 9127, area_id = 5 },
	{ config_id = 13008, gadget_id = 70500000, pos = { x = 1879.761, y = 215.637, z = 638.451 }, rot = { x = 0.000, y = 13.842, z = 0.000 }, level = 1, point_type = 9127, area_id = 5 },
	{ config_id = 13009, gadget_id = 70500000, pos = { x = 1551.402, y = 277.995, z = 367.370 }, rot = { x = 14.093, y = 259.689, z = 348.847 }, level = 1, point_type = 9127, area_id = 5 },
	{ config_id = 13011, gadget_id = 70500000, pos = { x = 1699.827, y = 205.392, z = 846.293 }, rot = { x = 355.298, y = 165.419, z = 6.723 }, level = 1, point_type = 9127, area_id = 5 },
	{ config_id = 13012, gadget_id = 70500000, pos = { x = 1483.354, y = 220.188, z = 458.762 }, rot = { x = 346.398, y = 152.274, z = 353.022 }, level = 1, point_type = 9127, area_id = 5 },
	{ config_id = 13013, gadget_id = 70500000, pos = { x = 1889.594, y = 212.271, z = 750.563 }, rot = { x = 6.368, y = 79.822, z = 5.173 }, level = 1, point_type = 9127, area_id = 5 },
	{ config_id = 13016, gadget_id = 70500000, pos = { x = 1759.792, y = 220.148, z = 865.411 }, rot = { x = 3.064, y = 145.368, z = 357.800 }, level = 1, point_type = 9127, area_id = 5 },
	{ config_id = 13017, gadget_id = 70500000, pos = { x = 1445.734, y = 200.000, z = 766.386 }, rot = { x = 351.409, y = 145.060, z = 1.660 }, level = 1, point_type = 9127, area_id = 5 },
	{ config_id = 13019, gadget_id = 70500000, pos = { x = 1460.573, y = 220.894, z = 533.225 }, rot = { x = 358.514, y = 145.006, z = 359.747 }, level = 1, point_type = 9127, area_id = 5 },
	{ config_id = 13021, gadget_id = 70500000, pos = { x = 1525.044, y = 249.699, z = 437.650 }, rot = { x = 356.101, y = 317.777, z = 314.567 }, level = 1, point_type = 9127, area_id = 5 },
	{ config_id = 13022, gadget_id = 70500000, pos = { x = 1611.642, y = 200.000, z = 889.247 }, rot = { x = 5.136, y = 321.953, z = 14.891 }, level = 1, point_type = 9127, area_id = 5 },
	{ config_id = 13024, gadget_id = 70500000, pos = { x = 1780.747, y = 233.254, z = 796.216 }, rot = { x = 358.755, y = 321.407, z = 317.080 }, level = 1, point_type = 9127, area_id = 5 },
	{ config_id = 13025, gadget_id = 70500000, pos = { x = 1408.845, y = 223.891, z = 583.252 }, rot = { x = 0.867, y = 321.241, z = 2.487 }, level = 1, point_type = 9127, area_id = 5 },
	{ config_id = 13028, gadget_id = 70500000, pos = { x = 1347.598, y = 222.974, z = 511.000 }, rot = { x = 349.997, y = 0.380, z = 355.662 }, level = 1, point_type = 9127, area_id = 5 },
	{ config_id = 13032, gadget_id = 70500000, pos = { x = 1357.424, y = 202.492, z = 660.642 }, rot = { x = 337.556, y = 1.393, z = 355.377 }, level = 1, point_type = 9127, area_id = 5 },
	{ config_id = 13033, gadget_id = 70500000, pos = { x = 1464.431, y = 212.175, z = 681.771 }, rot = { x = 48.463, y = 262.045, z = 5.274 }, level = 1, point_type = 9127, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
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
		monsters = { 13006, 13007, 13015, 13018, 13020, 13023, 13026, 13027, 13029, 13030, 13031, 13034, 13035 },
		gadgets = { 13001, 13002, 13003, 13004, 13005, 13008, 13009, 13011, 13012, 13013, 13016, 13017, 13019, 13021, 13022, 13024, 13025, 13028, 13032, 13033 },
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
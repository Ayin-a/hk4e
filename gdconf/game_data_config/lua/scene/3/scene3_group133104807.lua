-- 基础信息
local base_info = {
	group_id = 133104807
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 807001, monster_id = 28030404, pos = { x = 412.094, y = 180.973, z = 849.954 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 807003, monster_id = 28030401, pos = { x = 411.079, y = 181.022, z = 851.472 }, rot = { x = 0.000, y = 263.927, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 807004, monster_id = 28030402, pos = { x = 374.311, y = 180.835, z = 818.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 807005, monster_id = 28030401, pos = { x = 373.926, y = 180.892, z = 820.542 }, rot = { x = 0.000, y = 250.344, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 807006, monster_id = 28030401, pos = { x = 356.580, y = 197.243, z = 864.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 807007, monster_id = 28030401, pos = { x = 357.193, y = 196.983, z = 865.738 }, rot = { x = 0.000, y = 173.046, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 807008, monster_id = 28030401, pos = { x = 287.507, y = 223.588, z = 824.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 807009, monster_id = 28030401, pos = { x = 286.346, y = 223.775, z = 825.294 }, rot = { x = 0.000, y = 292.448, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 807010, monster_id = 28030404, pos = { x = 346.527, y = 225.803, z = 795.995 }, rot = { x = 0.000, y = 39.609, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 807011, monster_id = 28030402, pos = { x = 347.653, y = 225.686, z = 796.295 }, rot = { x = 0.000, y = 175.857, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 807013, monster_id = 28030404, pos = { x = 456.276, y = 223.859, z = 776.814 }, rot = { x = 0.000, y = 346.534, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 807016, monster_id = 28030401, pos = { x = 490.532, y = 223.076, z = 797.654 }, rot = { x = 0.000, y = 337.321, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 807017, monster_id = 28030401, pos = { x = 487.621, y = 224.252, z = 914.155 }, rot = { x = 0.000, y = 199.505, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 807018, monster_id = 28030401, pos = { x = 483.038, y = 223.382, z = 928.703 }, rot = { x = 0.000, y = 239.396, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 807019, monster_id = 28030401, pos = { x = 436.539, y = 209.332, z = 940.007 }, rot = { x = 0.000, y = 273.716, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 807020, monster_id = 28030404, pos = { x = 434.964, y = 209.053, z = 939.144 }, rot = { x = 0.000, y = 238.486, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 807025, monster_id = 28020102, pos = { x = 434.944, y = 180.616, z = 917.651 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 6 },
	{ config_id = 807027, monster_id = 28020102, pos = { x = 328.265, y = 209.331, z = 1009.191 }, rot = { x = 0.000, y = 230.281, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 6 },
	{ config_id = 807029, monster_id = 28020102, pos = { x = 212.525, y = 241.500, z = 1002.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 6 },
	{ config_id = 807030, monster_id = 28030404, pos = { x = 313.355, y = 212.755, z = 843.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 807031, monster_id = 28030402, pos = { x = 312.692, y = 212.682, z = 844.583 }, rot = { x = 0.000, y = 296.092, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 807032, monster_id = 28020603, pos = { x = 380.657, y = 203.112, z = 899.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 6 },
	{ config_id = 807033, monster_id = 28020301, pos = { x = 455.463, y = 226.244, z = 1005.448 }, rot = { x = 0.000, y = 283.359, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 6 },
	{ config_id = 807034, monster_id = 28020301, pos = { x = 442.592, y = 228.017, z = 1014.540 }, rot = { x = 0.000, y = 108.916, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 807002, monster_id = 28030401, pos = { x = 413.251, y = 181.022, z = 851.725 }, rot = { x = 0.000, y = 300.411, z = 0.000 }, level = 19, drop_tag = "鸟类", area_id = 6 },
		{ config_id = 807012, monster_id = 28010202, pos = { x = 392.139, y = 232.590, z = 781.315 }, rot = { x = 0.000, y = 236.876, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 6 }
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
		monsters = { 807001, 807003, 807004, 807005, 807006, 807007, 807008, 807009, 807010, 807011, 807013, 807016, 807017, 807018, 807019, 807020, 807025, 807027, 807029, 807030, 807031, 807032, 807033, 807034 },
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
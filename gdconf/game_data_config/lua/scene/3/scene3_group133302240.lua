-- 基础信息
local base_info = {
	group_id = 133302240
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 240001, monster_id = 28030101, pos = { x = -846.525, y = 159.213, z = 2269.830 }, rot = { x = 0.000, y = 65.194, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 240002, monster_id = 28050106, pos = { x = -866.039, y = 160.585, z = 2202.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 24 },
	{ config_id = 240003, monster_id = 28030101, pos = { x = -848.597, y = 159.000, z = 2264.926 }, rot = { x = 0.000, y = 330.076, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 240004, monster_id = 28020313, pos = { x = -855.260, y = 159.000, z = 2224.570 }, rot = { x = 0.000, y = 279.806, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, area_id = 24 },
	{ config_id = 240005, monster_id = 28020314, pos = { x = -832.039, y = 161.784, z = 2244.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, area_id = 24 },
	{ config_id = 240006, monster_id = 28020314, pos = { x = -866.193, y = 159.960, z = 2215.014 }, rot = { x = 0.000, y = 114.176, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, area_id = 24 },
	{ config_id = 240007, monster_id = 28010208, pos = { x = -852.945, y = 161.806, z = 2210.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24, vision_level = VisionLevelType.VISION_LEVEL_NEARBY },
	{ config_id = 240008, monster_id = 28030313, pos = { x = -861.058, y = 161.934, z = 2198.481 }, rot = { x = 0.000, y = 326.945, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 240009, monster_id = 28030313, pos = { x = -828.144, y = 201.959, z = 2293.017 }, rot = { x = 0.000, y = 245.767, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 240010, monster_id = 28030313, pos = { x = -811.484, y = 185.510, z = 2465.088 }, rot = { x = 0.000, y = 86.812, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 240011, monster_id = 28030313, pos = { x = -792.731, y = 178.837, z = 2328.963 }, rot = { x = 0.000, y = 221.753, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 240012, monster_id = 28010208, pos = { x = -794.958, y = 160.602, z = 2318.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 240016, monster_id = 28030313, pos = { x = -833.001, y = 167.732, z = 2246.353 }, rot = { x = 0.000, y = 277.334, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 240017, monster_id = 28020201, pos = { x = -805.254, y = 162.360, z = 2279.596 }, rot = { x = 0.000, y = 82.160, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
	{ config_id = 240018, monster_id = 28010304, pos = { x = -837.390, y = 160.554, z = 2257.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 240019, monster_id = 28010304, pos = { x = -859.234, y = 160.560, z = 2275.507 }, rot = { x = 0.000, y = 97.624, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 240020, monster_id = 28030313, pos = { x = -778.599, y = 168.198, z = 2413.362 }, rot = { x = 0.000, y = 317.509, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 240023, monster_id = 28030404, pos = { x = -848.718, y = 160.409, z = 2238.048 }, rot = { x = 0.000, y = 137.394, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 240024, monster_id = 28020313, pos = { x = -833.095, y = 132.097, z = 2379.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 }
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
		{ config_id = 240013, monster_id = 28010208, pos = { x = -834.846, y = 132.177, z = 2347.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
		{ config_id = 240025, monster_id = 28020314, pos = { x = -815.178, y = 132.156, z = 2400.406 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 }
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
		monsters = { 240001, 240002, 240003, 240004, 240005, 240006, 240007, 240008, 240009, 240010, 240011, 240012, 240016, 240017, 240018, 240019, 240020, 240023, 240024 },
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
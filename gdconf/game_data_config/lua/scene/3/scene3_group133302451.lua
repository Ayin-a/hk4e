-- 基础信息
local base_info = {
	group_id = 133302451
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 451001, monster_id = 28030313, pos = { x = -319.041, y = 317.205, z = 2865.618 }, rot = { x = 0.000, y = 285.899, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 451003, monster_id = 28020102, pos = { x = -394.086, y = 231.619, z = 2588.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
	{ config_id = 451004, monster_id = 28030303, pos = { x = -429.451, y = 273.091, z = 2692.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 451005, monster_id = 28030303, pos = { x = -402.161, y = 232.500, z = 2593.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 451006, monster_id = 28030303, pos = { x = -424.049, y = 273.091, z = 2693.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 451007, monster_id = 28020102, pos = { x = -445.392, y = 241.838, z = 2616.030 }, rot = { x = 0.000, y = 281.784, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
	{ config_id = 451008, monster_id = 28020102, pos = { x = -448.630, y = 242.333, z = 2616.072 }, rot = { x = 0.000, y = 92.135, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
	{ config_id = 451009, monster_id = 28010304, pos = { x = -480.367, y = 229.759, z = 2675.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 451010, monster_id = 28020403, pos = { x = -296.102, y = 241.919, z = 2880.888 }, rot = { x = 0.000, y = 127.647, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 2, area_id = 24 },
	{ config_id = 451013, monster_id = 28030313, pos = { x = -504.743, y = 248.487, z = 2703.398 }, rot = { x = 0.000, y = 233.249, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 451014, monster_id = 28030313, pos = { x = -502.668, y = 248.443, z = 2700.903 }, rot = { x = 0.000, y = 233.249, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 451018, monster_id = 28030313, pos = { x = -297.599, y = 250.752, z = 2834.142 }, rot = { x = 0.000, y = 55.199, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 451019, monster_id = 28020402, pos = { x = -286.298, y = 246.525, z = 2782.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 24 },
	{ config_id = 451020, monster_id = 28020403, pos = { x = -364.482, y = 237.819, z = 2799.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 24 },
	{ config_id = 451021, monster_id = 28030402, pos = { x = -269.112, y = 246.818, z = 2770.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 451022, monster_id = 28030402, pos = { x = -268.555, y = 247.890, z = 2781.776 }, rot = { x = 0.000, y = 283.292, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 451023, monster_id = 28030313, pos = { x = -295.712, y = 257.638, z = 2771.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 451024, monster_id = 28030301, pos = { x = -290.699, y = 241.919, z = 2870.788 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 451025, monster_id = 28030301, pos = { x = -295.287, y = 241.919, z = 2875.405 }, rot = { x = 0.000, y = 85.628, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 451026, monster_id = 28020506, pos = { x = -303.923, y = 247.659, z = 2776.791 }, rot = { x = 0.000, y = 118.801, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 24 },
	{ config_id = 451027, monster_id = 28020502, pos = { x = -467.585, y = 241.844, z = 2743.957 }, rot = { x = 0.000, y = 83.050, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 12, area_id = 24 }
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
		{ config_id = 451002, monster_id = 28030313, pos = { x = -429.598, y = 288.068, z = 2817.919 }, rot = { x = 0.000, y = 115.869, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
		{ config_id = 451011, monster_id = 28020402, pos = { x = -472.230, y = 226.541, z = 2783.219 }, rot = { x = 0.000, y = 259.648, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 2, area_id = 24 },
		{ config_id = 451012, monster_id = 28020503, pos = { x = -493.738, y = 223.967, z = 2811.700 }, rot = { x = 0.000, y = 193.914, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 12, area_id = 24 },
		{ config_id = 451015, monster_id = 28030303, pos = { x = -518.946, y = 202.315, z = 2786.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
		{ config_id = 451016, monster_id = 28030303, pos = { x = -517.172, y = 202.315, z = 2787.733 }, rot = { x = 0.000, y = 261.754, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
		{ config_id = 451017, monster_id = 28030303, pos = { x = -520.939, y = 202.315, z = 2788.829 }, rot = { x = 0.000, y = 143.969, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 }
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
		monsters = { 451001, 451003, 451004, 451005, 451006, 451007, 451008, 451009, 451010, 451013, 451014, 451018, 451019, 451020, 451021, 451022, 451023, 451024, 451025, 451026, 451027 },
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
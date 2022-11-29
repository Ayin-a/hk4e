-- 基础信息
local base_info = {
	group_id = 133315186
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 186001, gadget_id = 70500000, pos = { x = 41.795, y = 468.567, z = 2058.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 20 },
	{ config_id = 186009, gadget_id = 70540037, pos = { x = 57.714, y = 452.130, z = 2074.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 186010, gadget_id = 70500000, pos = { x = 58.101, y = 452.506, z = 2074.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 186009, area_id = 20 },
	{ config_id = 186011, gadget_id = 70500000, pos = { x = 57.545, y = 452.851, z = 2074.575 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 186009, area_id = 20 },
	{ config_id = 186012, gadget_id = 70540037, pos = { x = 24.819, y = 458.588, z = 2045.170 }, rot = { x = 0.000, y = 76.419, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 186013, gadget_id = 70500000, pos = { x = 24.736, y = 458.963, z = 2044.753 }, rot = { x = 0.000, y = 76.419, z = 0.000 }, level = 27, point_type = 2049, owner = 186012, area_id = 20 },
	{ config_id = 186014, gadget_id = 70500000, pos = { x = 25.085, y = 459.309, z = 2045.408 }, rot = { x = 0.000, y = 346.441, z = 0.000 }, level = 27, point_type = 2049, owner = 186012, area_id = 20 },
	{ config_id = 186015, gadget_id = 70540037, pos = { x = 58.155, y = 454.686, z = 2042.375 }, rot = { x = 0.000, y = 34.296, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 186016, gadget_id = 70500000, pos = { x = 58.373, y = 455.062, z = 2042.010 }, rot = { x = 0.000, y = 34.296, z = 0.000 }, level = 27, point_type = 2049, owner = 186015, area_id = 20 },
	{ config_id = 186017, gadget_id = 70500000, pos = { x = 58.192, y = 455.407, z = 2042.730 }, rot = { x = 0.000, y = 304.318, z = 0.000 }, level = 27, point_type = 2049, owner = 186015, area_id = 20 },
	{ config_id = 186018, gadget_id = 70500000, pos = { x = 46.372, y = 458.149, z = 2058.591 }, rot = { x = 0.000, y = 40.703, z = 0.000 }, level = 27, point_type = 3003, area_id = 20 },
	{ config_id = 186019, gadget_id = 70500000, pos = { x = 46.594, y = 458.114, z = 2058.740 }, rot = { x = 0.000, y = 167.542, z = 0.000 }, level = 27, point_type = 3003, area_id = 20 }
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
		{ config_id = 186002, monster_id = 28030401, pos = { x = 45.162, y = 459.079, z = 2058.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 20 },
		{ config_id = 186003, monster_id = 28030401, pos = { x = 45.619, y = 459.055, z = 2058.389 }, rot = { x = 0.000, y = 298.288, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 20 },
		{ config_id = 186004, monster_id = 28060602, pos = { x = 58.963, y = 448.595, z = 2084.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 20 },
		{ config_id = 186005, monster_id = 28060601, pos = { x = 74.967, y = 454.333, z = 2053.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 2, area_id = 20 },
		{ config_id = 186006, monster_id = 28030313, pos = { x = 24.695, y = 459.361, z = 2042.674 }, rot = { x = 0.000, y = 321.053, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 3, area_id = 20 },
		{ config_id = 186007, monster_id = 28030313, pos = { x = 55.860, y = 456.662, z = 2040.660 }, rot = { x = 0.000, y = 112.606, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 3, area_id = 20 },
		{ config_id = 186008, monster_id = 28030313, pos = { x = 55.342, y = 457.125, z = 2038.709 }, rot = { x = 0.000, y = 240.746, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 3, area_id = 20 },
		{ config_id = 186020, monster_id = 28030101, pos = { x = 59.667, y = 453.560, z = 2072.801 }, rot = { x = 0.000, y = 343.407, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 901, area_id = 20 },
		{ config_id = 186021, monster_id = 28030101, pos = { x = 138.299, y = 420.488, z = 1992.140 }, rot = { x = 0.000, y = 109.250, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 6 },
		{ config_id = 186022, monster_id = 28030101, pos = { x = 118.184, y = 432.847, z = 2039.656 }, rot = { x = 0.000, y = 123.316, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 901, area_id = 20 }
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
		gadgets = { 186001, 186009, 186010, 186011, 186012, 186013, 186014, 186015, 186016, 186017, 186018, 186019 },
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
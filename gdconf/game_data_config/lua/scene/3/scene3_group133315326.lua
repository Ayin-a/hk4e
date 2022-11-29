-- 基础信息
local base_info = {
	group_id = 133315326
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 326001, monster_id = 28030401, pos = { x = 45.162, y = 459.079, z = 2058.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 20 },
	{ config_id = 326002, monster_id = 28030401, pos = { x = 45.619, y = 459.055, z = 2058.389 }, rot = { x = 0.000, y = 298.288, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 20 },
	{ config_id = 326003, monster_id = 28060602, pos = { x = 58.963, y = 448.595, z = 2084.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 20 },
	{ config_id = 326004, monster_id = 28060601, pos = { x = 74.967, y = 454.333, z = 2053.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 2, area_id = 20 },
	{ config_id = 326005, monster_id = 28030313, pos = { x = 24.695, y = 459.361, z = 2042.674 }, rot = { x = 0.000, y = 321.053, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 3, area_id = 20 },
	{ config_id = 326006, monster_id = 28030313, pos = { x = 55.860, y = 456.662, z = 2040.660 }, rot = { x = 0.000, y = 112.606, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 3, area_id = 20 },
	{ config_id = 326007, monster_id = 28030313, pos = { x = 55.342, y = 457.125, z = 2038.709 }, rot = { x = 0.000, y = 240.746, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 3, area_id = 20 },
	{ config_id = 326008, monster_id = 28030101, pos = { x = 59.667, y = 453.560, z = 2072.801 }, rot = { x = 0.000, y = 343.407, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 901, area_id = 20 },
	{ config_id = 326009, monster_id = 28030101, pos = { x = 138.299, y = 420.488, z = 1992.140 }, rot = { x = 0.000, y = 109.250, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 6 },
	{ config_id = 326010, monster_id = 28030101, pos = { x = 118.184, y = 432.847, z = 2039.656 }, rot = { x = 0.000, y = 123.316, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 901, area_id = 20 }
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
		monsters = { 326001, 326002, 326003, 326004, 326005, 326006, 326007, 326008, 326009, 326010 },
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
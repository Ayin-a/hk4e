-- 基础信息
local base_info = {
	group_id = 133212355
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 355001, monster_id = 28030102, pos = { x = -3614.599, y = 200.000, z = -2888.118 }, rot = { x = 0.000, y = 206.216, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 2, area_id = 12 },
	{ config_id = 355002, monster_id = 28030102, pos = { x = -3619.171, y = 200.000, z = -2865.343 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 2, area_id = 12 },
	{ config_id = 355003, monster_id = 28030102, pos = { x = -3618.174, y = 200.059, z = -2891.515 }, rot = { x = 0.000, y = 105.388, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 2, area_id = 12 },
	{ config_id = 355004, monster_id = 28030102, pos = { x = -3399.887, y = 200.752, z = -2719.476 }, rot = { x = 0.000, y = 312.005, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 13 },
	{ config_id = 355005, monster_id = 28030102, pos = { x = -3393.228, y = 201.976, z = -2725.953 }, rot = { x = 0.000, y = 9.417, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 13 },
	{ config_id = 355006, monster_id = 28030102, pos = { x = -3630.437, y = 200.115, z = -2523.030 }, rot = { x = 0.000, y = 257.176, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 2, area_id = 13 },
	{ config_id = 355007, monster_id = 28030102, pos = { x = -3613.990, y = 200.000, z = -2535.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 2, area_id = 13 },
	{ config_id = 355008, monster_id = 28030102, pos = { x = -3623.678, y = 200.781, z = -2516.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 2, area_id = 13 },
	{ config_id = 355009, monster_id = 28030102, pos = { x = -3668.376, y = 230.992, z = -2516.839 }, rot = { x = 0.000, y = 163.456, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 13 },
	{ config_id = 355010, monster_id = 28030102, pos = { x = -3668.885, y = 231.584, z = -2512.712 }, rot = { x = 0.000, y = 76.548, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 13 },
	{ config_id = 355011, monster_id = 28030102, pos = { x = -3472.803, y = 200.103, z = -2589.430 }, rot = { x = 0.000, y = 9.417, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 13 },
	{ config_id = 355012, monster_id = 28030102, pos = { x = -3470.741, y = 200.000, z = -2606.001 }, rot = { x = 0.000, y = 305.865, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 13 },
	{ config_id = 355013, monster_id = 28030102, pos = { x = -3572.937, y = 200.035, z = -2678.660 }, rot = { x = 0.000, y = 301.699, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 2, area_id = 13 },
	{ config_id = 355014, monster_id = 28030102, pos = { x = -3564.204, y = 200.047, z = -2691.827 }, rot = { x = 0.000, y = 25.456, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 2, area_id = 13 },
	{ config_id = 355015, monster_id = 28030102, pos = { x = -3539.983, y = 201.445, z = -2580.483 }, rot = { x = 0.000, y = 312.005, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 13 },
	{ config_id = 355016, monster_id = 28030306, pos = { x = -3587.458, y = 201.622, z = -2442.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 13 },
	{ config_id = 355017, monster_id = 28030306, pos = { x = -3589.440, y = 200.461, z = -2433.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 2, area_id = 13 },
	{ config_id = 355018, monster_id = 28030306, pos = { x = -3591.145, y = 200.607, z = -2432.936 }, rot = { x = 0.000, y = 110.075, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 2, area_id = 13 },
	{ config_id = 355019, monster_id = 28030306, pos = { x = -3581.048, y = 200.778, z = -2443.814 }, rot = { x = 0.000, y = 282.800, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 2, area_id = 13 },
	{ config_id = 355020, monster_id = 28030306, pos = { x = -3593.846, y = 209.785, z = -2374.118 }, rot = { x = 0.000, y = 52.383, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 13 },
	{ config_id = 355021, monster_id = 28030201, pos = { x = -3857.747, y = 344.944, z = -2282.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 13 },
	{ config_id = 355022, monster_id = 28030201, pos = { x = -3489.631, y = 233.371, z = -2756.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 13 }
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
		monsters = { 355001, 355002, 355003, 355004, 355005, 355006, 355007, 355008, 355009, 355010, 355011, 355012, 355013, 355014, 355015, 355016, 355017, 355018, 355019, 355020, 355021, 355022 },
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
-- 基础信息
local base_info = {
	group_id = 133301735
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 735001, monster_id = 26090101, pos = { x = -240.587, y = 272.760, z = 3541.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 29 },
	{ config_id = 735002, monster_id = 26090101, pos = { x = -212.002, y = 279.063, z = 3465.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 29 },
	{ config_id = 735003, monster_id = 26090101, pos = { x = -208.160, y = 278.403, z = 3467.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 29 },
	{ config_id = 735004, monster_id = 26090101, pos = { x = -234.820, y = 270.685, z = 3497.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 29 },
	{ config_id = 735005, monster_id = 26090101, pos = { x = -180.557, y = 291.595, z = 3431.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 29 },
	{ config_id = 735006, monster_id = 26090101, pos = { x = -207.941, y = 299.640, z = 3363.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 29 },
	{ config_id = 735007, monster_id = 26090101, pos = { x = -208.665, y = 298.570, z = 3366.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 29 },
	{ config_id = 735008, monster_id = 26090101, pos = { x = -241.658, y = 272.711, z = 3539.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 29 },
	{ config_id = 735009, monster_id = 26090101, pos = { x = -209.414, y = 299.310, z = 3369.777 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 102, area_id = 29 },
	{ config_id = 735010, monster_id = 26090201, pos = { x = -202.818, y = 319.257, z = 3641.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 29 },
	{ config_id = 735011, monster_id = 26120101, pos = { x = -182.503, y = 308.309, z = 3660.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "大蕈兽", pose_id = 104, area_id = 29 },
	{ config_id = 735012, monster_id = 26090201, pos = { x = -218.864, y = 302.960, z = 3687.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 29 },
	{ config_id = 735013, monster_id = 26090201, pos = { x = -179.416, y = 309.260, z = 3659.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 29 },
	{ config_id = 735014, monster_id = 26090201, pos = { x = -182.430, y = 309.537, z = 3656.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 29 },
	{ config_id = 735015, monster_id = 26090201, pos = { x = -186.190, y = 309.867, z = 3659.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 29 },
	{ config_id = 735016, monster_id = 26090201, pos = { x = -184.042, y = 309.334, z = 3663.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 29 }
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
		monsters = { 735001, 735002, 735003, 735004, 735005, 735006, 735007, 735008, 735009, 735010, 735011, 735012, 735013, 735014, 735015, 735016 },
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
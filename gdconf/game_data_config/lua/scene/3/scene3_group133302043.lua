-- 基础信息
local base_info = {
	group_id = 133302043
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 43001, monster_id = 28060101, pos = { x = -300.513, y = 132.000, z = 2489.146 }, rot = { x = 0.000, y = 289.156, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 24 },
	{ config_id = 43002, monster_id = 28060101, pos = { x = -300.761, y = 132.000, z = 2514.807 }, rot = { x = 0.000, y = 173.577, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 24 },
	{ config_id = 43003, monster_id = 28060101, pos = { x = -403.383, y = 132.000, z = 2492.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 24 },
	{ config_id = 43004, monster_id = 28060101, pos = { x = -542.633, y = 132.722, z = 2515.765 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 24 },
	{ config_id = 43005, monster_id = 28060101, pos = { x = -475.473, y = 132.000, z = 2503.057 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 24 },
	{ config_id = 43006, monster_id = 28060101, pos = { x = -619.036, y = 132.000, z = 2524.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 24 },
	{ config_id = 43007, monster_id = 28010304, pos = { x = -589.506, y = 132.647, z = 2531.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 43008, monster_id = 28010304, pos = { x = -515.132, y = 132.251, z = 2536.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 43009, monster_id = 28010304, pos = { x = -458.968, y = 132.153, z = 2491.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 43012, monster_id = 28060101, pos = { x = -387.536, y = 132.567, z = 2493.796 }, rot = { x = 0.000, y = 82.551, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 24 },
	{ config_id = 43013, monster_id = 28060101, pos = { x = -316.303, y = 132.000, z = 2455.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", disableWander = true, pose_id = 1, area_id = 24 }
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
		monsters = { 43001, 43002, 43003, 43004, 43005, 43006, 43007, 43008, 43009, 43012, 43013 },
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
-- 基础信息
local base_info = {
	group_id = 133312058
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58002, monster_id = 28050401, pos = { x = -3109.117, y = 325.822, z = 4844.541 }, rot = { x = 0.000, y = 9.466, z = 0.000 }, level = 32, drop_tag = "采集动物", pose_id = 101, area_id = 28, vision_level = VisionLevelType.VISION_LEVEL_NEARBY },
	{ config_id = 58003, monster_id = 28050401, pos = { x = -3114.336, y = 327.327, z = 4762.476 }, rot = { x = 0.000, y = 98.012, z = 0.000 }, level = 32, drop_tag = "采集动物", pose_id = 101, area_id = 28, vision_level = VisionLevelType.VISION_LEVEL_NEARBY },
	{ config_id = 58004, monster_id = 28050401, pos = { x = -3107.133, y = 315.782, z = 4888.443 }, rot = { x = 0.000, y = 98.012, z = 0.000 }, level = 32, drop_tag = "采集动物", pose_id = 101, area_id = 28, vision_level = VisionLevelType.VISION_LEVEL_NEARBY },
	{ config_id = 58006, monster_id = 28050401, pos = { x = -3171.455, y = 343.298, z = 4822.045 }, rot = { x = 0.000, y = 358.550, z = 0.000 }, level = 32, drop_tag = "采集动物", pose_id = 101, area_id = 28, vision_level = VisionLevelType.VISION_LEVEL_NEARBY }
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
		monsters = { 58002, 58003, 58004, 58006 },
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
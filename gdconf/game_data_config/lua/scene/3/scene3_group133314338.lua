-- 基础信息
local base_info = {
	group_id = 133314338
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 338001, monster_id = 28060501, pos = { x = -737.513, y = 54.523, z = 4438.412 }, rot = { x = 0.000, y = 156.159, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 4, area_id = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 338002, monster_id = 28060501, pos = { x = -741.353, y = 53.324, z = 4447.427 }, rot = { x = 0.000, y = 157.102, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 4, area_id = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 338003, monster_id = 28060301, pos = { x = -705.492, y = 71.235, z = 4437.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 121, area_id = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
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
		monsters = { 338001, 338002, 338003 },
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
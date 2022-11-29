-- 基础信息
local base_info = {
	group_id = 133308280
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 280001, monster_id = 25210103, pos = { x = -1554.719, y = 80.235, z = 4705.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 26, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 280002, monster_id = 25210103, pos = { x = -1587.729, y = 82.752, z = 4710.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 26, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 280003, monster_id = 25210103, pos = { x = -1575.444, y = 82.756, z = 4730.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 26, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 280004, monster_id = 25210103, pos = { x = -1543.515, y = 80.278, z = 4714.672 }, rot = { x = 0.000, y = 139.281, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 26, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 280005, monster_id = 25210103, pos = { x = -1541.968, y = 80.278, z = 4715.958 }, rot = { x = 0.000, y = 107.929, z = 0.000 }, level = 32, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 26, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
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
		monsters = { 280001, 280002, 280003, 280004, 280005 },
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
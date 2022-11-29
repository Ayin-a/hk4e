-- 基础信息
local base_info = {
	group_id = 133308187
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 187001, monster_id = 28060501, pos = { x = -1671.554, y = 273.735, z = 4021.677 }, rot = { x = 0.000, y = 105.543, z = 0.000 }, level = 32, drop_tag = "走兽", affix = { 5175 }, pose_id = 1, area_id = 26, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 187002, monster_id = 28060501, pos = { x = -1663.875, y = 270.374, z = 4050.811 }, rot = { x = 0.000, y = 148.955, z = 0.000 }, level = 32, drop_tag = "走兽", affix = { 5175 }, pose_id = 2, area_id = 26, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 187003, monster_id = 28060502, pos = { x = -1641.819, y = 269.812, z = 4043.434 }, rot = { x = 0.000, y = 250.394, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 26, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 187004, monster_id = 28020604, pos = { x = -1662.150, y = 270.401, z = 4046.955 }, rot = { x = 0.000, y = 329.738, z = 0.000 }, level = 32, drop_tag = "走兽", disableWander = true, area_id = 26 }
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
		monsters = { 187001, 187002, 187003, 187004 },
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
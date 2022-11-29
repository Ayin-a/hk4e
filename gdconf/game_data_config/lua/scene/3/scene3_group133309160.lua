-- 基础信息
local base_info = {
	group_id = 133309160
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 160001, monster_id = 28060509, pos = { x = -2154.241, y = 160.333, z = 5901.874 }, rot = { x = 0.000, y = 270.446, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 4, area_id = 27, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 160002, monster_id = 28060509, pos = { x = -2165.699, y = 161.281, z = 5901.717 }, rot = { x = 0.000, y = 274.187, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 4, area_id = 27, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 160003, monster_id = 23010501, pos = { x = -2168.612, y = 161.746, z = 5905.409 }, rot = { x = 0.000, y = 272.834, z = 0.000 }, level = 32, drop_tag = "先遣队", area_id = 27, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 160004, monster_id = 28060509, pos = { x = -2142.604, y = 159.531, z = 5902.956 }, rot = { x = 0.000, y = 257.473, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 4, area_id = 27, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
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
		monsters = { 160001, 160002, 160003, 160004 },
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
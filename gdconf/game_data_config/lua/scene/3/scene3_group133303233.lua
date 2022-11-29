-- 基础信息
local base_info = {
	group_id = 133303233
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 233001, monster_id = 28030313, pos = { x = -1598.126, y = 208.565, z = 3246.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 3, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 233002, monster_id = 28030313, pos = { x = -1597.286, y = 209.119, z = 3243.393 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 3, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 233003, monster_id = 28030313, pos = { x = -1597.412, y = 209.470, z = 3238.898 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 3, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 233004, monster_id = 28030313, pos = { x = -1598.717, y = 209.314, z = 3239.127 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 3, area_id = 23, vision_level = VisionLevelType.VISION_LEVEL_NORMAL }
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
		monsters = { 233001, 233002, 233003, 233004 },
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
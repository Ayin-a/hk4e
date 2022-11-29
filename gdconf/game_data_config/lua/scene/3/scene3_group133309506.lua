-- 基础信息
local base_info = {
	group_id = 133309506
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 506001, gadget_id = 70330431, pos = { x = -2400.190, y = 54.740, z = 5413.141 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 506002, gadget_id = 70330431, pos = { x = -2380.137, y = 54.844, z = 5412.939 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 506003, gadget_id = 70330431, pos = { x = -2380.216, y = 54.754, z = 5342.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 506004, gadget_id = 70330431, pos = { x = -2360.213, y = 54.754, z = 5342.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 506005, gadget_id = 70330431, pos = { x = -2410.206, y = 26.773, z = 5413.086 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 506006, gadget_id = 70330431, pos = { x = -2370.216, y = 26.738, z = 5413.153 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 506007, gadget_id = 70330431, pos = { x = -2370.196, y = 26.758, z = 5341.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 506008, gadget_id = 70330431, pos = { x = -2390.202, y = 26.758, z = 5341.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
	{ config_id = 506009, gadget_id = 70330431, pos = { x = -2410.202, y = 26.758, z = 5341.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 }
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
		monsters = { },
		gadgets = { 506001, 506002, 506003, 506004, 506005, 506006, 506007, 506008, 506009 },
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
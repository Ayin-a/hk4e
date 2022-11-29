-- 基础信息
local base_info = {
	group_id = 133308387
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
	{ config_id = 387001, gadget_id = 70330294, pos = { x = -1831.150, y = 213.510, z = 4632.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 26 },
	{ config_id = 387002, gadget_id = 70330351, pos = { x = -1831.150, y = 213.510, z = 4632.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 26 },
	{ config_id = 387003, gadget_id = 70330294, pos = { x = -1831.272, y = 213.510, z = 4629.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 26 }
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
	end_suite = 3,
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
		-- description = 死域出现前/死域解除后,
		monsters = { },
		gadgets = { 387003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 出现死域后,
		monsters = { },
		gadgets = { 387001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 种植完成后,
		monsters = { },
		gadgets = { 387002 },
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

require "V3_0/DeathFieldStandard"
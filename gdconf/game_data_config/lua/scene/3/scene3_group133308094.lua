-- 基础信息
local base_info = {
	group_id = 133308094
}

-- Trigger变量
local defs = {
	enter_region = 94005,
	leave_region = 94006
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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 94001, gadget_id = 70800240, pos = { x = -2327.177, y = 319.785, z = 4040.944 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 26 },
		{ config_id = 94002, gadget_id = 70220103, pos = { x = -2334.588, y = 328.677, z = 4073.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 },
		{ config_id = 94003, gadget_id = 70330197, pos = { x = -2334.477, y = 306.136, z = 4060.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 },
		{ config_id = 94004, gadget_id = 70360001, pos = { x = -2266.023, y = 329.890, z = 4063.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 26 }
	},
	regions = {
		{ config_id = 94005, shape = RegionShape.CYLINDER, radius = 160, pos = { x = -2266.023, y = 329.890, z = 4063.685 }, height = 200.000, area_id = 26 },
		{ config_id = 94006, shape = RegionShape.CYLINDER, radius = 200, pos = { x = -2266.023, y = 329.890, z = 4063.685 }, height = 200.000, area_id = 26 }
	}
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

require "V3_1/Activity_RockBoardExplore"
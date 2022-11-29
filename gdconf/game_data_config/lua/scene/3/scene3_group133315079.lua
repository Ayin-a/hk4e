-- 基础信息
local base_info = {
	group_id = 133315079
}

-- Trigger变量
local defs = {
	enter_region = 79003,
	leave_region = 79004
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
		{ config_id = 79001, gadget_id = 70800240, pos = { x = 289.938, y = 205.530, z = 2299.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 20 },
		{ config_id = 79002, gadget_id = 70360001, pos = { x = 330.000, y = 210.000, z = 2259.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 20 },
		{ config_id = 79005, gadget_id = 70220103, pos = { x = 282.530, y = 209.285, z = 2282.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 }
	},
	regions = {
		{ config_id = 79003, shape = RegionShape.CYLINDER, radius = 160, pos = { x = 330.000, y = 220.645, z = 2259.000 }, height = 300.000, area_id = 20 },
		{ config_id = 79004, shape = RegionShape.CYLINDER, radius = 200, pos = { x = 330.000, y = 210.000, z = 2259.000 }, height = 300.000, area_id = 20 }
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
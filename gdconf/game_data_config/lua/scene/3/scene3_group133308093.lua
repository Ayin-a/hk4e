-- 基础信息
local base_info = {
	group_id = 133308093
}

-- Trigger变量
local defs = {
	enter_region = 93005,
	leave_region = 93006
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
		{ config_id = 93001, gadget_id = 70800240, pos = { x = -2861.810, y = 154.604, z = 4399.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 28 },
		{ config_id = 93002, gadget_id = 70220103, pos = { x = -2869.221, y = 183.015, z = 4431.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 28 },
		{ config_id = 93003, gadget_id = 70330197, pos = { x = -2869.110, y = 140.954, z = 4418.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 28 },
		{ config_id = 93004, gadget_id = 70360001, pos = { x = -2800.656, y = 164.709, z = 4421.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 28 }
	},
	regions = {
		{ config_id = 93005, shape = RegionShape.CYLINDER, radius = 160, pos = { x = -2800.656, y = 164.709, z = 4421.911 }, height = 200.000, area_id = 28 },
		{ config_id = 93006, shape = RegionShape.CYLINDER, radius = 200, pos = { x = -2800.656, y = 164.709, z = 4421.911 }, height = 200.000, area_id = 28 }
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
-- 基础信息
local base_info = {
	group_id = 133308090
}

-- Trigger变量
local defs = {
	enter_region = 90005,
	leave_region = 90006
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
		{ config_id = 90001, gadget_id = 70800240, pos = { x = -2119.498, y = 163.972, z = 4532.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 26 },
		{ config_id = 90002, gadget_id = 70220103, pos = { x = -2126.910, y = 172.863, z = 4564.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 },
		{ config_id = 90003, gadget_id = 70330197, pos = { x = -2126.798, y = 150.322, z = 4551.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 26 },
		{ config_id = 90004, gadget_id = 70360001, pos = { x = -2058.344, y = 174.077, z = 4554.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 26 }
	},
	regions = {
		{ config_id = 90005, shape = RegionShape.CYLINDER, radius = 160, pos = { x = -2058.344, y = 174.077, z = 4554.911 }, height = 200.000, area_id = 26 },
		{ config_id = 90006, shape = RegionShape.CYLINDER, radius = 200, pos = { x = -2058.344, y = 174.077, z = 4554.911 }, height = 200.000, area_id = 26 }
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
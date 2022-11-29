-- 基础信息
local base_info = {
	group_id = 199001114
}

-- Trigger变量
local defs = {
	optimize_region = 114002,
	prepare_region = 114004,
	prepare_point = 114005,
	prepare_airwall = 114003
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
	{ config_id = 114001, gadget_id = 70380311, pos = { x = 672.715, y = 392.776, z = 599.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 114003, gadget_id = 70380323, pos = { x = 672.600, y = 393.671, z = 599.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 }
}

-- 区域
regions = {
	{ config_id = 114002, shape = RegionShape.POLYGON, pos = { x = 681.675, y = 290.000, z = 711.299 }, height = 420.000, point_array = { { x = 572.484, y = 422.197 }, { x = 772.984, y = 422.082 }, { x = 871.648, y = 987.171 }, { x = 491.702, y = 1000.515 } }, area_id = 402 },
	{ config_id = 114004, shape = RegionShape.SPHERE, radius = 15, pos = { x = 673.054, y = 393.665, z = 598.995 }, area_id = 402 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 114005, pos = { x = 672.518, y = 393.655, z = 600.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 402 }
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
		gadgets = { 114001 },
		regions = { 114002, 114004 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_8/SocialActivity_Optimization"
require "V2_8/SocialActivity_PrepareControl"
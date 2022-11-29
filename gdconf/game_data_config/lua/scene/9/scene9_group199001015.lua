-- 基础信息
local base_info = {
	group_id = 199001015
}

-- Trigger变量
local defs = {
	prepare_region = 15001,
	prepare_point = 15003,
	prepare_airwall = 15002,
	optimize_region = 15004
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
	{ config_id = 15002, gadget_id = 70380323, pos = { x = 87.462, y = 120.101, z = -726.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
	-- 出界region
	{ config_id = 15001, shape = RegionShape.POLYGON, pos = { x = 87.023, y = 120.192, z = -726.849 }, height = 40.383, point_array = { { x = 78.172, y = -732.756 }, { x = 78.609, y = -720.577 }, { x = 95.773, y = -720.654 }, { x = 95.874, y = -733.120 } }, area_id = 401 },
	-- visiontype region
	{ config_id = 15004, shape = RegionShape.POLYGON, pos = { x = -34.566, y = 200.000, z = -228.956 }, height = 200.000, point_array = { { x = 376.687, y = -802.117 }, { x = -159.692, y = -774.335 }, { x = -445.819, y = 273.429 }, { x = -20.532, y = 344.206 }, { x = 339.423, y = -338.827 } }, area_id = 401 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	-- 准备点
	{ config_id = 15003, pos = { x = 87.675, y = 120.101, z = -726.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 401 }
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
		gadgets = { },
		regions = { 15001, 15004 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_8/SocialActivity_PrepareControl"
require "V2_8/SocialActivity_Optimization"
-- 基础信息
local base_info = {
	group_id = 199003125
}

-- Trigger变量
local defs = {
	optimize_region = 125002,
	prepare_region = 125005,
	prepare_point = 125004,
	prepare_airwall = 125003
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
	{ config_id = 125001, gadget_id = 70380311, pos = { x = -764.733, y = 366.937, z = 401.359 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 125003, gadget_id = 70380323, pos = { x = -764.781, y = 367.848, z = 401.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 }
}

-- 区域
regions = {
	{ config_id = 125002, shape = RegionShape.POLYGON, pos = { x = -822.354, y = 290.000, z = 683.050 }, height = 420.000, point_array = { { x = -926.264, y = 373.334 }, { x = -726.418, y = 364.835 }, { x = -708.752, y = 1001.266 }, { x = -935.956, y = 997.816 } }, area_id = 403 },
	{ config_id = 125005, shape = RegionShape.SPHERE, radius = 15, pos = { x = -764.955, y = 367.819, z = 401.165 }, area_id = 403 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 125004, pos = { x = -765.018, y = 367.816, z = 401.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 }
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
		gadgets = { 125001 },
		regions = { 125002, 125005 },
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
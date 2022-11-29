-- 基础信息
local base_info = {
	group_id = 133304415
}

-- Trigger变量
local defs = {
	guide_regionID = 415016
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
	{ config_id = 415010, gadget_id = 70290429, pos = { x = -1943.801, y = 219.664, z = 2572.985 }, rot = { x = 0.000, y = 113.700, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	{ config_id = 415011, gadget_id = 70290430, pos = { x = -1942.498, y = 219.659, z = 2573.201 }, rot = { x = 0.000, y = 145.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	{ config_id = 415012, gadget_id = 70290431, pos = { x = -1943.404, y = 219.892, z = 2574.963 }, rot = { x = 0.000, y = 134.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	{ config_id = 415013, gadget_id = 70290432, pos = { x = -1941.912, y = 219.748, z = 2574.644 }, rot = { x = 0.000, y = 120.143, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	{ config_id = 415014, gadget_id = 70290433, pos = { x = -1940.931, y = 219.741, z = 2574.982 }, rot = { x = 0.000, y = 196.176, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	{ config_id = 415015, gadget_id = 70290434, pos = { x = -1939.710, y = 219.645, z = 2575.253 }, rot = { x = 0.000, y = 100.086, z = 0.000 }, level = 1, persistent = true, area_id = 21 }
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
		{ config_id = 415001, gadget_id = 70290440, pos = { x = -1941.983, y = 219.529, z = 2574.971 }, rot = { x = 0.000, y = 149.036, z = 0.000 }, level = 1, area_id = 21 },
		{ config_id = 415002, gadget_id = 70290441, pos = { x = -1942.674, y = 219.634, z = 2576.661 }, rot = { x = 0.000, y = 149.036, z = 0.000 }, level = 1, area_id = 21 },
		{ config_id = 415003, gadget_id = 70290442, pos = { x = -1944.749, y = 219.553, z = 2574.151 }, rot = { x = 0.000, y = 117.314, z = 0.000 }, level = 1, area_id = 21 },
		{ config_id = 415004, gadget_id = 70290443, pos = { x = -1943.594, y = 219.642, z = 2573.924 }, rot = { x = 0.000, y = 169.036, z = 0.000 }, level = 1, area_id = 21 },
		{ config_id = 415005, gadget_id = 70290444, pos = { x = -1943.500, y = 219.648, z = 2575.015 }, rot = { x = 0.000, y = 174.400, z = 0.000 }, level = 1, area_id = 21 },
		{ config_id = 415006, gadget_id = 70290445, pos = { x = -1944.411, y = 219.648, z = 2573.252 }, rot = { x = 0.000, y = 349.036, z = 0.000 }, level = 1, area_id = 21 },
		{ config_id = 415007, gadget_id = 70290446, pos = { x = -1939.331, y = 219.647, z = 2576.127 }, rot = { x = 0.000, y = 349.036, z = 0.000 }, level = 1, area_id = 21 },
		{ config_id = 415008, gadget_id = 70290447, pos = { x = -1940.828, y = 219.667, z = 2577.007 }, rot = { x = 0.000, y = 349.036, z = 0.000 }, level = 1, area_id = 21 },
		{ config_id = 415009, gadget_id = 70290448, pos = { x = -1940.198, y = 219.636, z = 2576.756 }, rot = { x = 0.000, y = 139.036, z = 0.000 }, level = 1, area_id = 21 }
	},
	regions = {
		{ config_id = 415016, shape = RegionShape.SPHERE, radius = 6, pos = { x = -1942.162, y = 219.529, z = 2575.269 }, area_id = 21 }
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
		gadgets = { 415010, 415011, 415012, 415013, 415014, 415015 },
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

require "V3_0/Activity_GravenCarve"
-- 基础信息
local base_info = {
	group_id = 133309119
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
	{ config_id = 119001, gadget_id = 70500000, pos = { x = -2637.150, y = 25.011, z = 5380.244 }, rot = { x = 4.589, y = 284.591, z = 10.978 }, level = 1, point_type = 1005, persistent = true, area_id = 27 },
	{ config_id = 119002, gadget_id = 70500000, pos = { x = -2633.096, y = 26.384, z = 5380.194 }, rot = { x = 335.657, y = 61.210, z = 344.513 }, level = 1, point_type = 1003, persistent = true, area_id = 27 },
	{ config_id = 119003, gadget_id = 70500000, pos = { x = -2638.231, y = 25.376, z = 5380.923 }, rot = { x = 353.431, y = 318.427, z = 42.435 }, level = 1, point_type = 1003, persistent = true, area_id = 27 },
	{ config_id = 119004, gadget_id = 70500000, pos = { x = -2640.969, y = 25.844, z = 5384.325 }, rot = { x = 0.854, y = 125.594, z = 334.024 }, level = 1, point_type = 1005, persistent = true, area_id = 27 },
	{ config_id = 119005, gadget_id = 70360001, pos = { x = -2629.705, y = 26.382, z = 5378.867 }, rot = { x = 27.107, y = 355.707, z = 342.325 }, level = 1, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false }
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
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 119001, 119002, 119003, 119004, 119005 },
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

require "V2_0/OreBlossomGroup"
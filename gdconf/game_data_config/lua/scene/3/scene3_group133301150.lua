-- 基础信息
local base_info = {
	group_id = 133301150
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
	{ config_id = 150001, gadget_id = 70500000, pos = { x = -645.638, y = 191.496, z = 3469.191 }, rot = { x = 1.761, y = 332.044, z = 353.829 }, level = 1, point_type = 1005, persistent = true, area_id = 22 },
	{ config_id = 150002, gadget_id = 70500000, pos = { x = -644.718, y = 191.566, z = 3465.277 }, rot = { x = 349.129, y = 158.222, z = 14.431 }, level = 1, point_type = 1003, persistent = true, area_id = 22 },
	{ config_id = 150003, gadget_id = 70500000, pos = { x = -646.713, y = 191.440, z = 3471.017 }, rot = { x = 348.877, y = 146.789, z = 20.112 }, level = 1, point_type = 1003, persistent = true, area_id = 22 },
	{ config_id = 150004, gadget_id = 70500000, pos = { x = -646.213, y = 191.820, z = 3467.413 }, rot = { x = 27.425, y = 125.653, z = 11.392 }, level = 1, point_type = 1005, persistent = true, area_id = 22 },
	{ config_id = 150005, gadget_id = 70360001, pos = { x = -658.332, y = 194.187, z = 3475.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 22 }
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
		gadgets = { 150001, 150002, 150003, 150004, 150005 },
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
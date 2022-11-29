-- 基础信息
local base_info = {
	group_id = 133303380
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
	{ config_id = 380001, gadget_id = 70500000, pos = { x = -1380.229, y = 274.981, z = 3588.802 }, rot = { x = 358.875, y = 115.313, z = 23.598 }, level = 1, point_type = 1005, persistent = true, area_id = 23 },
	{ config_id = 380002, gadget_id = 70500000, pos = { x = -1377.319, y = 274.268, z = 3589.642 }, rot = { x = 6.499, y = 359.214, z = 346.228 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 380003, gadget_id = 70500000, pos = { x = -1383.370, y = 274.919, z = 3590.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 380004, gadget_id = 70500000, pos = { x = -1382.233, y = 274.929, z = 3589.096 }, rot = { x = 0.000, y = 192.800, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 23 },
	{ config_id = 380005, gadget_id = 70360001, pos = { x = -1383.834, y = 274.817, z = 3588.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 }
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
		gadgets = { 380001, 380002, 380003, 380004, 380005 },
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
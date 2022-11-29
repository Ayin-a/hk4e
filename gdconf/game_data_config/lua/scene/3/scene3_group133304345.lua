-- 基础信息
local base_info = {
	group_id = 133304345
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
	{ config_id = 345001, gadget_id = 70500000, pos = { x = -1729.259, y = 189.380, z = 2991.875 }, rot = { x = 11.633, y = 2.034, z = 19.768 }, level = 1, point_type = 1005, persistent = true, area_id = 21 },
	{ config_id = 345002, gadget_id = 70500000, pos = { x = -1733.160, y = 187.638, z = 2995.104 }, rot = { x = 0.000, y = 81.032, z = 10.300 }, level = 1, point_type = 1003, persistent = true, area_id = 21 },
	{ config_id = 345003, gadget_id = 70500000, pos = { x = -1730.191, y = 185.741, z = 3002.935 }, rot = { x = 18.512, y = 333.670, z = 7.996 }, level = 1, point_type = 1003, persistent = true, area_id = 21 },
	{ config_id = 345004, gadget_id = 70500000, pos = { x = -1730.563, y = 184.745, z = 3007.162 }, rot = { x = 349.697, y = 64.899, z = 15.138 }, level = 1, point_type = 1005, persistent = true, area_id = 21 },
	{ config_id = 345005, gadget_id = 70360001, pos = { x = -1721.971, y = 187.802, z = 3005.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 }
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
		gadgets = { 345001, 345002, 345003, 345004, 345005 },
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
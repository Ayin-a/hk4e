-- 基础信息
local base_info = {
	group_id = 133310190
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
	{ config_id = 190001, gadget_id = 70500000, pos = { x = -2674.896, y = 208.139, z = 4650.790 }, rot = { x = 1.822, y = 277.980, z = 18.554 }, level = 1, point_type = 1005, persistent = true, area_id = 28 },
	{ config_id = 190002, gadget_id = 70500000, pos = { x = -2673.569, y = 207.600, z = 4649.026 }, rot = { x = 340.232, y = 0.000, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 28 },
	{ config_id = 190003, gadget_id = 70500000, pos = { x = -2675.459, y = 207.231, z = 4648.252 }, rot = { x = 0.805, y = 259.755, z = 14.876 }, level = 1, point_type = 1003, persistent = true, area_id = 28 },
	{ config_id = 190004, gadget_id = 70500000, pos = { x = -2671.768, y = 206.906, z = 4647.307 }, rot = { x = 336.461, y = 1.117, z = 354.644 }, level = 1, point_type = 1005, persistent = true, area_id = 28 },
	{ config_id = 190005, gadget_id = 70360001, pos = { x = -2674.073, y = 207.234, z = 4648.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 28 }
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
		gadgets = { 190001, 190002, 190003, 190004, 190005 },
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
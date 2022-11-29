-- 基础信息
local base_info = {
	group_id = 133302382
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
	{ config_id = 382001, gadget_id = 70500000, pos = { x = -132.841, y = 200.382, z = 2643.826 }, rot = { x = 348.460, y = 15.329, z = 358.678 }, level = 1, point_type = 1003, persistent = true, area_id = 20 },
	{ config_id = 382002, gadget_id = 70500000, pos = { x = -116.559, y = 201.140, z = 2642.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 20 },
	{ config_id = 382003, gadget_id = 70360001, pos = { x = -146.741, y = 199.810, z = 2659.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 20 },
	{ config_id = 382005, gadget_id = 70500000, pos = { x = -134.521, y = 200.983, z = 2654.059 }, rot = { x = 0.000, y = 311.626, z = 0.000 }, level = 1, point_type = 1001, area_id = 20 }
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
		gadgets = { 382001, 382002, 382003, 382005 },
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
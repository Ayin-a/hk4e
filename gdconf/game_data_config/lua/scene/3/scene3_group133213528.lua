-- 基础信息
local base_info = {
	group_id = 133213528
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
	{ config_id = 528001, gadget_id = 70500000, pos = { x = -3491.224, y = 203.932, z = -3374.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1008, persistent = true, area_id = 12 },
	{ config_id = 528002, gadget_id = 70500000, pos = { x = -3502.297, y = 202.054, z = -3375.468 }, rot = { x = 350.335, y = 6.093, z = 6.928 }, level = 1, point_type = 1008, persistent = true, area_id = 12 },
	{ config_id = 528003, gadget_id = 70500000, pos = { x = -3497.029, y = 204.949, z = -3365.688 }, rot = { x = 340.252, y = 359.533, z = 2.684 }, level = 1, point_type = 1008, persistent = true, area_id = 12 },
	{ config_id = 528004, gadget_id = 70360001, pos = { x = -3497.019, y = 205.357, z = -3366.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 }
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
		-- description = 在suite3内添加魔晶矿,
		monsters = { },
		gadgets = { 528001, 528002, 528003, 528004 },
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
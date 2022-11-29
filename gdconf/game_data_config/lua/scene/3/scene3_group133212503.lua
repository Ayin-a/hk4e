-- 基础信息
local base_info = {
	group_id = 133212503
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
	{ config_id = 503001, gadget_id = 70500000, pos = { x = -3760.697, y = 233.170, z = -2118.217 }, rot = { x = 23.613, y = 340.891, z = 353.803 }, level = 1, point_type = 1005, persistent = true, area_id = 13 },
	{ config_id = 503002, gadget_id = 70500000, pos = { x = -3769.028, y = 232.501, z = -2117.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1008, persistent = true, area_id = 13 },
	{ config_id = 503003, gadget_id = 70500000, pos = { x = -3771.945, y = 232.175, z = -2114.095 }, rot = { x = 0.000, y = 58.008, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 13 },
	{ config_id = 503004, gadget_id = 70500000, pos = { x = -3775.187, y = 232.386, z = -2112.623 }, rot = { x = 0.000, y = 300.457, z = 0.000 }, level = 1, point_type = 1008, persistent = true, area_id = 13 },
	{ config_id = 503005, gadget_id = 70360001, pos = { x = -3760.508, y = 234.056, z = -2118.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 13 }
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
		gadgets = { 503001, 503002, 503003, 503004, 503005 },
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
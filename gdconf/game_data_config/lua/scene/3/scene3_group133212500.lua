-- 基础信息
local base_info = {
	group_id = 133212500
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
	{ config_id = 500001, gadget_id = 70500000, pos = { x = -3557.613, y = 199.772, z = -2758.693 }, rot = { x = 0.000, y = 260.035, z = 0.000 }, level = 1, point_type = 1008, persistent = true, area_id = 13 },
	{ config_id = 500002, gadget_id = 70500000, pos = { x = -3557.197, y = 200.060, z = -2743.068 }, rot = { x = 0.000, y = 248.163, z = 0.000 }, level = 1, point_type = 1008, persistent = true, area_id = 13 },
	{ config_id = 500003, gadget_id = 70360001, pos = { x = -3557.510, y = 200.145, z = -2758.893 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 13 }
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
		gadgets = { 500001, 500002, 500003 },
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
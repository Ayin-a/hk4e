-- 基础信息
local base_info = {
	group_id = 133212508
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
	{ config_id = 508001, gadget_id = 70500000, pos = { x = -4051.566, y = 263.561, z = -2214.635 }, rot = { x = 0.000, y = 278.228, z = 0.000 }, level = 1, point_type = 1008, persistent = true, area_id = 13 },
	{ config_id = 508002, gadget_id = 70500000, pos = { x = -4044.373, y = 262.625, z = -2216.012 }, rot = { x = 11.186, y = 59.846, z = 13.290 }, level = 1, point_type = 1008, persistent = true, area_id = 13 },
	{ config_id = 508003, gadget_id = 70360001, pos = { x = -4044.305, y = 263.158, z = -2215.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 13 }
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
		gadgets = { 508001, 508002, 508003 },
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
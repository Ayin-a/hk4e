-- 基础信息
local base_info = {
	group_id = 133213521
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
	{ config_id = 521001, gadget_id = 70500000, pos = { x = -3448.994, y = 207.075, z = -3085.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 12 },
	{ config_id = 521002, gadget_id = 70500000, pos = { x = -3442.540, y = 202.545, z = -3087.081 }, rot = { x = 329.693, y = 0.000, z = 0.000 }, level = 1, point_type = 1008, persistent = true, area_id = 12 },
	{ config_id = 521003, gadget_id = 70500000, pos = { x = -3452.696, y = 207.203, z = -3087.234 }, rot = { x = 0.000, y = 151.354, z = 24.374 }, level = 1, point_type = 1005, persistent = true, area_id = 12 },
	{ config_id = 521004, gadget_id = 70360001, pos = { x = -3442.487, y = 202.993, z = -3087.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 }
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
		gadgets = { 521001, 521002, 521003, 521004 },
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
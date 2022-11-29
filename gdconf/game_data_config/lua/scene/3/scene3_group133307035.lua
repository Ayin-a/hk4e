-- 基础信息
local base_info = {
	group_id = 133307035
}

-- Trigger变量
local defs = {
	operator_1 = 35007,
	operator_2 = 35008,
	chest = 35009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 35001, monster_id = 23020101, pos = { x = -2095.243, y = 153.573, z = 5879.575 }, rot = { x = 0.000, y = 69.367, z = 0.000 }, level = 1, drop_tag = "债务处理人", area_id = 27 },
	{ config_id = 35002, monster_id = 23010401, pos = { x = -2090.711, y = 153.419, z = 5878.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "先遣队", area_id = 27 },
	{ config_id = 35004, monster_id = 23010601, pos = { x = -2087.567, y = 153.333, z = 5879.973 }, rot = { x = 0.000, y = 306.614, z = 0.000 }, level = 1, drop_tag = "先遣队", area_id = 27 },
	{ config_id = 35005, monster_id = 23010301, pos = { x = -2094.395, y = 154.719, z = 5887.144 }, rot = { x = 0.000, y = 126.996, z = 0.000 }, level = 1, drop_tag = "先遣队", area_id = 27 },
	{ config_id = 35006, monster_id = 23010501, pos = { x = -2088.810, y = 154.208, z = 5887.709 }, rot = { x = 0.000, y = 207.968, z = 0.000 }, level = 1, drop_tag = "先遣队", area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 35007, gadget_id = 70360056, pos = { x = -2091.796, y = 153.576, z = 5882.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 27 },
	{ config_id = 35008, gadget_id = 70360057, pos = { x = -2091.568, y = 153.573, z = 5882.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 27 },
	{ config_id = 35009, gadget_id = 70210106, pos = { x = -2092.060, y = 153.623, z = 5882.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 27 }
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
		monsters = { 35001, 35002, 35004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 35005, 35006 },
		gadgets = { },
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

require "V2_0/BlossomGroup"
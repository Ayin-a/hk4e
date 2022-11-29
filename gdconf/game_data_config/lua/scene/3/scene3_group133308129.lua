-- 基础信息
local base_info = {
	group_id = 133308129
}

-- Trigger变量
local defs = {
	operator_1 = 129007,
	operator_2 = 129008,
	chest = 129009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 129001, monster_id = 25010301, pos = { x = -1784.873, y = 416.698, z = 4344.311 }, rot = { x = 0.000, y = 261.306, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, area_id = 26 },
	{ config_id = 129002, monster_id = 25010201, pos = { x = -1791.254, y = 417.491, z = 4339.222 }, rot = { x = 0.000, y = 307.865, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, area_id = 26 },
	{ config_id = 129003, monster_id = 25210103, pos = { x = -1794.471, y = 417.743, z = 4337.931 }, rot = { x = 0.000, y = 41.165, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, area_id = 26 },
	{ config_id = 129004, monster_id = 25210201, pos = { x = -1785.219, y = 417.115, z = 4338.010 }, rot = { x = 0.000, y = 322.635, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, area_id = 26 },
	{ config_id = 129005, monster_id = 25020201, pos = { x = -1793.553, y = 417.708, z = 4334.037 }, rot = { x = 0.000, y = 10.690, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, area_id = 26 },
	{ config_id = 129006, monster_id = 25210302, pos = { x = -1798.236, y = 417.987, z = 4336.239 }, rot = { x = 0.000, y = 56.168, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 129007, gadget_id = 70360056, pos = { x = -1793.262, y = 417.386, z = 4345.332 }, rot = { x = 4.259, y = 10.850, z = 356.952 }, level = 1, area_id = 26 },
	{ config_id = 129008, gadget_id = 70360057, pos = { x = -1793.250, y = 417.387, z = 4345.300 }, rot = { x = 4.354, y = 12.683, z = 357.090 }, level = 1, area_id = 26 },
	{ config_id = 129009, gadget_id = 70210106, pos = { x = -1793.591, y = 417.378, z = 4345.801 }, rot = { x = 359.061, y = 10.067, z = 5.275 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 26 }
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
		monsters = { 129001, 129002, 129004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 129003, 129005, 129006 },
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
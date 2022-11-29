-- 基础信息
local base_info = {
	group_id = 133315004
}

-- Trigger变量
local defs = {
	operator_1 = 4007,
	operator_2 = 4008,
	chest = 4009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 4001, monster_id = 21010701, pos = { x = -255.659, y = 241.065, z = 2261.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 24 },
	{ config_id = 4002, monster_id = 21010701, pos = { x = -251.862, y = 240.238, z = 2275.271 }, rot = { x = 0.000, y = 196.598, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 24 },
	{ config_id = 4003, monster_id = 21030201, pos = { x = -243.618, y = 243.675, z = 2267.961 }, rot = { x = 0.000, y = 262.731, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", area_id = 24 },
	{ config_id = 4005, monster_id = 21010501, pos = { x = -247.022, y = 241.374, z = 2274.392 }, rot = { x = 0.000, y = 221.566, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 24 },
	{ config_id = 4006, monster_id = 21010501, pos = { x = -247.556, y = 242.580, z = 2264.735 }, rot = { x = 0.000, y = 305.981, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4004, gadget_id = 70220103, pos = { x = -193.915, y = 254.151, z = 2244.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 4007, gadget_id = 70360056, pos = { x = -251.147, y = 241.461, z = 2269.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 4008, gadget_id = 70360057, pos = { x = -250.919, y = 241.513, z = 2269.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 4009, gadget_id = 70210106, pos = { x = -251.411, y = 241.431, z = 2269.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 24 },
	{ config_id = 4010, gadget_id = 70220103, pos = { x = -216.409, y = 254.605, z = 2258.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 4011, gadget_id = 70220103, pos = { x = -237.171, y = 246.719, z = 2279.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 }
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
		gadgets = { 4004, 4010, 4011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 4001, 4002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 4003, 4005, 4006 },
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
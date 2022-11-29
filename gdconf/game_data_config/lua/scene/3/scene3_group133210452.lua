-- 基础信息
local base_info = {
	group_id = 133210452
}

-- Trigger变量
local defs = {
	operator_1 = 452007,
	operator_2 = 452008,
	chest = 452009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 452001, monster_id = 21030601, pos = { x = -3965.641, y = 199.987, z = -1120.349 }, rot = { x = 0.000, y = 72.441, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", area_id = 17 },
	{ config_id = 452002, monster_id = 21030101, pos = { x = -3958.734, y = 199.967, z = -1121.195 }, rot = { x = 0.000, y = 282.227, z = 0.000 }, level = 1, drop_tag = "丘丘萨满", area_id = 17 },
	{ config_id = 452003, monster_id = 22010401, pos = { x = -3965.129, y = 200.051, z = -1115.271 }, rot = { x = 0.000, y = 161.329, z = 0.000 }, level = 1, drop_tag = "深渊法师", area_id = 17 },
	{ config_id = 452005, monster_id = 22010201, pos = { x = -3962.344, y = 199.916, z = -1125.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "深渊法师", area_id = 17 },
	{ config_id = 452006, monster_id = 22010101, pos = { x = -3956.408, y = 200.137, z = -1115.539 }, rot = { x = 0.000, y = 223.699, z = 0.000 }, level = 1, drop_tag = "深渊法师", area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 452007, gadget_id = 70360056, pos = { x = -3962.196, y = 200.041, z = -1119.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 452008, gadget_id = 70360057, pos = { x = -3961.968, y = 200.043, z = -1119.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 452009, gadget_id = 70210106, pos = { x = -3962.459, y = 200.036, z = -1120.157 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 17 }
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
		monsters = { 452001, 452002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 452003, 452005, 452006 },
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
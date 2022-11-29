-- 基础信息
local base_info = {
	group_id = 133315003
}

-- Trigger变量
local defs = {
	operator_1 = 3007,
	operator_2 = 3008,
	chest = 3009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 25210203, pos = { x = -160.576, y = 261.236, z = 2224.303 }, rot = { x = 0.000, y = 0.162, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 20 },
	{ config_id = 3002, monster_id = 25210301, pos = { x = -163.958, y = 259.802, z = 2226.891 }, rot = { x = 0.000, y = 87.008, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 20 },
	{ config_id = 3003, monster_id = 25210302, pos = { x = -164.702, y = 259.386, z = 2236.278 }, rot = { x = 0.000, y = 118.797, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 20 },
	{ config_id = 3004, monster_id = 25210403, pos = { x = -155.104, y = 263.087, z = 2233.613 }, rot = { x = 0.000, y = 284.982, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 20 },
	{ config_id = 3005, monster_id = 25210103, pos = { x = -161.594, y = 260.618, z = 2238.399 }, rot = { x = 0.000, y = 139.022, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 20 },
	{ config_id = 3006, monster_id = 25210201, pos = { x = -158.679, y = 261.693, z = 2239.425 }, rot = { x = 0.000, y = 192.553, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3007, gadget_id = 70360056, pos = { x = -160.037, y = 261.096, z = 2233.949 }, rot = { x = 0.829, y = 0.162, z = 22.111 }, level = 1, area_id = 20 },
	{ config_id = 3008, gadget_id = 70360057, pos = { x = -159.590, y = 261.271, z = 2233.903 }, rot = { x = 0.829, y = 0.162, z = 22.111 }, level = 1, area_id = 20 },
	{ config_id = 3009, gadget_id = 70210106, pos = { x = -159.839, y = 261.179, z = 2233.605 }, rot = { x = 0.829, y = 0.162, z = 22.111 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 20 },
	{ config_id = 3010, gadget_id = 70220103, pos = { x = -102.720, y = 328.761, z = 2231.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 3011, gadget_id = 70220103, pos = { x = -138.469, y = 314.016, z = 2236.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 }
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
		gadgets = { 3010, 3011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3001, 3002, 3003, 3004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 3005, 3006 },
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
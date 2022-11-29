-- 基础信息
local base_info = {
	group_id = 133315001
}

-- Trigger变量
local defs = {
	operator_1 = 1007,
	operator_2 = 1008,
	chest = 1009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1001, monster_id = 20010801, pos = { x = -116.016, y = 276.640, z = 2323.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 20 },
	{ config_id = 1002, monster_id = 20010801, pos = { x = -110.127, y = 276.640, z = 2322.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 20 },
	{ config_id = 1003, monster_id = 20010801, pos = { x = -111.700, y = 276.640, z = 2316.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 20 },
	{ config_id = 1004, monster_id = 20010801, pos = { x = -118.705, y = 276.640, z = 2315.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", area_id = 20 },
	{ config_id = 1005, monster_id = 20010401, pos = { x = -128.107, y = 278.514, z = 2325.202 }, rot = { x = 0.000, y = 88.335, z = 0.000 }, level = 1, drop_tag = "大史莱姆", area_id = 20 },
	{ config_id = 1006, monster_id = 20010401, pos = { x = -101.278, y = 278.867, z = 2317.067 }, rot = { x = 0.000, y = 304.559, z = 0.000 }, level = 1, drop_tag = "大史莱姆", area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1007, gadget_id = 70360056, pos = { x = -114.723, y = 276.146, z = 2316.462 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 1008, gadget_id = 70360057, pos = { x = -115.066, y = 276.123, z = 2316.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 1009, gadget_id = 70210106, pos = { x = -114.872, y = 276.146, z = 2316.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 20 },
	{ config_id = 1010, gadget_id = 70220107, pos = { x = -101.253, y = 278.551, z = 2313.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 1011, gadget_id = 70220107, pos = { x = -127.342, y = 279.227, z = 2328.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 1015, gadget_id = 70220103, pos = { x = -104.887, y = 280.722, z = 2341.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 }
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
		gadgets = { 1015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 1001, 1002, 1003, 1004 },
		gadgets = { 1010, 1011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 1005, 1006 },
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
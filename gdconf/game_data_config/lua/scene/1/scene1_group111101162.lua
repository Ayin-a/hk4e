-- 基础信息
local base_info = {
	group_id = 111101162
}

-- Trigger变量
local defs = {
	operator_1 = 162007,
	operator_2 = 162008,
	chest = 162009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 162001, monster_id = 21010101, pos = { x = 2391.254, y = 305.561, z = -1666.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 162002, monster_id = 21010101, pos = { x = 2395.538, y = 305.124, z = -1664.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 162003, monster_id = 21010101, pos = { x = 2390.617, y = 304.883, z = -1661.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 162004, monster_id = 21020201, pos = { x = 2394.549, y = 304.587, z = -1659.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 162005, monster_id = 21020301, pos = { x = 2391.272, y = 303.726, z = -1655.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 162006, monster_id = 21020301, pos = { x = 2397.467, y = 304.280, z = -1657.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 162007, gadget_id = 70360056, pos = { x = 2392.077, y = 305.098, z = -1662.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 162008, gadget_id = 70360057, pos = { x = 2392.305, y = 305.095, z = -1662.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 162009, gadget_id = 70210106, pos = { x = 2391.813, y = 305.145, z = -1663.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "战斗高级蒙德", isOneoff = true, persistent = true }
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
		monsters = { 162001, 162002, 162003, 162004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 162005, 162006 },
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
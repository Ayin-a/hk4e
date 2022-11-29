-- 基础信息
local base_info = {
	group_id = 133002285
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
	{ config_id = 285001, gadget_id = 70500000, pos = { x = 1941.126, y = 211.419, z = -834.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 9101, persistent = true, area_id = 3 },
	{ config_id = 285002, gadget_id = 70500000, pos = { x = 1948.519, y = 210.495, z = -848.746 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 9101, persistent = true, area_id = 3 },
	{ config_id = 285003, gadget_id = 70500000, pos = { x = 1931.154, y = 212.417, z = -826.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 9102, persistent = true, area_id = 3 },
	{ config_id = 285004, gadget_id = 70500000, pos = { x = 1941.031, y = 211.401, z = -834.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 9101, persistent = true, area_id = 3 },
	{ config_id = 285005, gadget_id = 70500000, pos = { x = 1948.423, y = 210.510, z = -848.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 9102, persistent = true, area_id = 3 },
	{ config_id = 285006, gadget_id = 70500000, pos = { x = 1931.059, y = 212.417, z = -826.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 9101, persistent = true, area_id = 3 },
	{ config_id = 285007, gadget_id = 70500000, pos = { x = 1941.124, y = 211.472, z = -834.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 9102, persistent = true, area_id = 3 },
	{ config_id = 285008, gadget_id = 70500000, pos = { x = 1948.517, y = 210.489, z = -848.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 9101, persistent = true, area_id = 3 },
	{ config_id = 285009, gadget_id = 70500000, pos = { x = 1931.153, y = 212.448, z = -826.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 9101, persistent = true, area_id = 3 },
	{ config_id = 285010, gadget_id = 70500000, pos = { x = 1949.478, y = 207.863, z = -763.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 9103, persistent = true, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
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
		-- description = suite_2,
		monsters = { },
		gadgets = { 285001, 285002, 285003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 285004, 285005, 285006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 285007, 285008, 285009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 285010 },
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
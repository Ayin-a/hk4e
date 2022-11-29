-- 基础信息
local base_info = {
	group_id = 220134025
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
	{ config_id = 25001, gadget_id = 70310273, pos = { x = 466.661, y = 638.479, z = -1576.001 }, rot = { x = 0.000, y = 51.877, z = 0.000 }, level = 1 },
	{ config_id = 25002, gadget_id = 70310274, pos = { x = 466.831, y = 640.752, z = -1575.939 }, rot = { x = 0.000, y = 49.793, z = 0.000 }, level = 1 },
	{ config_id = 25003, gadget_id = 70310275, pos = { x = 466.584, y = 640.193, z = -1576.300 }, rot = { x = 0.000, y = 167.664, z = 0.000 }, level = 1 },
	{ config_id = 25004, gadget_id = 70310276, pos = { x = 466.693, y = 642.073, z = -1575.337 }, rot = { x = 359.959, y = 161.577, z = 359.972 }, level = 1 },
	{ config_id = 25005, gadget_id = 70310277, pos = { x = 466.797, y = 642.855, z = -1575.880 }, rot = { x = 0.000, y = 193.021, z = 0.000 }, level = 1 },
	{ config_id = 25006, gadget_id = 70310278, pos = { x = 466.690, y = 639.325, z = -1576.104 }, rot = { x = 0.000, y = 223.484, z = 0.000 }, level = 1 },
	{ config_id = 25007, gadget_id = 70310279, pos = { x = 466.748, y = 638.504, z = -1575.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 25008, gadget_id = 70310280, pos = { x = 466.362, y = 639.463, z = -1576.254 }, rot = { x = 0.000, y = 5.261, z = 0.000 }, level = 1 },
	{ config_id = 25009, gadget_id = 70310276, pos = { x = 466.693, y = 642.073, z = -1575.337 }, rot = { x = 359.959, y = 161.577, z = 359.972 }, level = 1 }
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
	suite = 10,
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
		gadgets = { 25001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 25002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 25003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 25004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 25005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 25006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 25009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 25007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 25008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
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
-- 基础信息
local base_info = {
	group_id = 220134028
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
	{ config_id = 28001, gadget_id = 70310274, pos = { x = 532.844, y = 634.618, z = -1574.678 }, rot = { x = 358.507, y = 193.210, z = 1.719 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 28002, gadget_id = 70310275, pos = { x = 532.629, y = 634.763, z = -1574.641 }, rot = { x = 358.890, y = 303.087, z = 358.012 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 28003, gadget_id = 70310276, pos = { x = 533.449, y = 636.244, z = -1574.718 }, rot = { x = 358.708, y = 297.678, z = 358.125 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 28004, gadget_id = 70310277, pos = { x = 532.704, y = 637.486, z = -1574.575 }, rot = { x = 357.296, y = 332.679, z = 357.721 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 28005, gadget_id = 70310278, pos = { x = 532.925, y = 634.003, z = -1574.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 28006, gadget_id = 70310276, pos = { x = 533.449, y = 636.244, z = -1574.718 }, rot = { x = 358.708, y = 297.678, z = 358.125 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 28007, gadget_id = 70310279, pos = { x = 532.646, y = 633.039, z = -1574.510 }, rot = { x = 0.510, y = 139.288, z = 2.219 }, level = 1 },
	{ config_id = 28008, gadget_id = 70310273, pos = { x = 533.016, y = 633.885, z = -1574.911 }, rot = { x = 358.677, y = 187.729, z = 1.853 }, level = 1 },
	{ config_id = 28009, gadget_id = 70310280, pos = { x = 532.842, y = 634.279, z = -1574.607 }, rot = { x = 0.000, y = 139.965, z = 0.000 }, level = 1 }
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
		gadgets = { 28008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 28001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 28002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 28003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 28004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 28005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 28006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 28007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 28009 },
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
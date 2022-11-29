-- 基础信息
local base_info = {
	group_id = 220134024
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
	{ config_id = 24001, gadget_id = 70310274, pos = { x = 532.988, y = 638.707, z = -1574.603 }, rot = { x = 358.507, y = 193.210, z = 1.719 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 24002, gadget_id = 70310275, pos = { x = 532.629, y = 637.058, z = -1574.641 }, rot = { x = 358.890, y = 303.087, z = 358.012 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 24003, gadget_id = 70310276, pos = { x = 533.438, y = 640.119, z = -1575.076 }, rot = { x = 358.708, y = 297.678, z = 358.125 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 24004, gadget_id = 70310277, pos = { x = 532.865, y = 640.296, z = -1574.642 }, rot = { x = 357.296, y = 332.679, z = 357.721 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 24005, gadget_id = 70310278, pos = { x = 532.925, y = 637.701, z = -1574.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 24006, gadget_id = 70310276, pos = { x = 533.438, y = 640.119, z = -1575.076 }, rot = { x = 358.708, y = 297.678, z = 358.125 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 24007, gadget_id = 70310279, pos = { x = 532.699, y = 636.100, z = -1574.464 }, rot = { x = 0.510, y = 139.288, z = 2.219 }, level = 1 },
	{ config_id = 24008, gadget_id = 70310273, pos = { x = 532.818, y = 636.840, z = -1574.919 }, rot = { x = 358.677, y = 187.729, z = 1.853 }, level = 1 },
	{ config_id = 24009, gadget_id = 70310280, pos = { x = 532.842, y = 637.682, z = -1574.607 }, rot = { x = 0.000, y = 139.965, z = 0.000 }, level = 1 }
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
		gadgets = { 24008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 24001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 24002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 24003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 24004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 24005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 24006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 24007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 24009 },
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
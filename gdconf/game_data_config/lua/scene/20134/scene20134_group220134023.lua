-- 基础信息
local base_info = {
	group_id = 220134023
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
	{ config_id = 23001, gadget_id = 70310274, pos = { x = 530.657, y = 640.101, z = -1607.551 }, rot = { x = 1.483, y = 241.005, z = 356.176 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 23002, gadget_id = 70310275, pos = { x = 531.112, y = 638.263, z = -1607.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 23003, gadget_id = 70310276, pos = { x = 530.882, y = 640.803, z = -1608.169 }, rot = { x = 2.894, y = 355.004, z = 2.907 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 23004, gadget_id = 70310277, pos = { x = 530.774, y = 641.667, z = -1607.213 }, rot = { x = 1.183, y = 23.100, z = 3.926 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 23005, gadget_id = 70310278, pos = { x = 530.980, y = 638.993, z = -1607.777 }, rot = { x = 0.000, y = 54.117, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 23006, gadget_id = 70310276, pos = { x = 530.882, y = 640.803, z = -1608.169 }, rot = { x = 2.894, y = 355.004, z = 2.907 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 23007, gadget_id = 70310279, pos = { x = 531.021, y = 637.314, z = -1607.460 }, rot = { x = 0.000, y = 192.362, z = 0.000 }, level = 1 },
	{ config_id = 23008, gadget_id = 70310273, pos = { x = 530.751, y = 638.454, z = -1607.685 }, rot = { x = 1.527, y = 240.884, z = 356.803 }, level = 1 },
	{ config_id = 23009, gadget_id = 70310280, pos = { x = 531.111, y = 638.785, z = -1607.606 }, rot = { x = 0.000, y = 190.821, z = 0.000 }, level = 1 }
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
		gadgets = { 23008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 23001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 23002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 23003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 23004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 23005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 23006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 23007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 23009 },
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
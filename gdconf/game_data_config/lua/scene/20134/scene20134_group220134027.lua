-- 基础信息
local base_info = {
	group_id = 220134027
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
	{ config_id = 27001, gadget_id = 70310274, pos = { x = 530.892, y = 635.831, z = -1607.747 }, rot = { x = 1.483, y = 241.005, z = 356.176 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 27002, gadget_id = 70310275, pos = { x = 531.060, y = 635.028, z = -1607.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 27003, gadget_id = 70310276, pos = { x = 531.054, y = 637.583, z = -1607.891 }, rot = { x = 2.894, y = 355.004, z = 2.907 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 27004, gadget_id = 70310277, pos = { x = 530.837, y = 638.617, z = -1607.171 }, rot = { x = 1.183, y = 23.100, z = 3.926 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 27005, gadget_id = 70310278, pos = { x = 530.958, y = 635.317, z = -1607.742 }, rot = { x = 0.000, y = 53.479, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 27006, gadget_id = 70310276, pos = { x = 531.054, y = 637.583, z = -1607.891 }, rot = { x = 2.894, y = 355.004, z = 2.907 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 27007, gadget_id = 70310279, pos = { x = 531.021, y = 633.429, z = -1607.460 }, rot = { x = 0.000, y = 192.362, z = 0.000 }, level = 1 },
	{ config_id = 27008, gadget_id = 70310273, pos = { x = 530.911, y = 635.281, z = -1607.799 }, rot = { x = 1.527, y = 240.884, z = 356.803 }, level = 1 },
	{ config_id = 27009, gadget_id = 70310280, pos = { x = 531.111, y = 635.139, z = -1607.606 }, rot = { x = 0.000, y = 190.821, z = 0.000 }, level = 1 }
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
		gadgets = { 27008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 27001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 27002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 27003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 27004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 27005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 27006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 27007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 27009 },
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
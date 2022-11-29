-- 基础信息
local base_info = {
	group_id = 220134029
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
	{ config_id = 29001, gadget_id = 70310273, pos = { x = 466.661, y = 635.526, z = -1576.001 }, rot = { x = 0.000, y = 51.877, z = 0.000 }, level = 1 },
	{ config_id = 29002, gadget_id = 70310274, pos = { x = 466.831, y = 636.115, z = -1575.939 }, rot = { x = 0.000, y = 49.793, z = 0.000 }, level = 1 },
	{ config_id = 29003, gadget_id = 70310275, pos = { x = 466.584, y = 636.009, z = -1576.300 }, rot = { x = 0.000, y = 167.664, z = 0.000 }, level = 1 },
	{ config_id = 29004, gadget_id = 70310276, pos = { x = 466.132, y = 639.399, z = -1575.770 }, rot = { x = 359.962, y = 168.124, z = 359.968 }, level = 1 },
	{ config_id = 29005, gadget_id = 70310277, pos = { x = 466.797, y = 639.336, z = -1575.880 }, rot = { x = 0.000, y = 193.021, z = 0.000 }, level = 1 },
	{ config_id = 29006, gadget_id = 70310278, pos = { x = 466.690, y = 635.633, z = -1576.104 }, rot = { x = 0.000, y = 223.484, z = 0.000 }, level = 1 },
	{ config_id = 29007, gadget_id = 70310276, pos = { x = 466.132, y = 639.399, z = -1575.770 }, rot = { x = 359.962, y = 168.124, z = 359.968 }, level = 1 },
	{ config_id = 29008, gadget_id = 70310279, pos = { x = 466.744, y = 634.646, z = -1575.938 }, rot = { x = 0.000, y = 1.464, z = 0.000 }, level = 1 },
	{ config_id = 29009, gadget_id = 70310280, pos = { x = 466.362, y = 635.554, z = -1576.254 }, rot = { x = 0.000, y = 5.261, z = 0.000 }, level = 1 }
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
		gadgets = { 29001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 29002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 29003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 29004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 29005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 29006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 29007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 29008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 29009 },
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
-- 基础信息
local base_info = {
	group_id = 133002290
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
	{ config_id = 290001, gadget_id = 70500000, pos = { x = 1970.178, y = 221.115, z = -573.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 9101, persistent = true, area_id = 3 },
	{ config_id = 290002, gadget_id = 70500000, pos = { x = 1968.656, y = 221.055, z = -579.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 9101, persistent = true, area_id = 3 },
	{ config_id = 290003, gadget_id = 70500000, pos = { x = 1966.987, y = 220.441, z = -590.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 9102, persistent = true, area_id = 3 },
	{ config_id = 290004, gadget_id = 70500000, pos = { x = 1969.853, y = 221.105, z = -573.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 9101, persistent = true, area_id = 3 },
	{ config_id = 290005, gadget_id = 70500000, pos = { x = 1968.586, y = 221.054, z = -579.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 9102, persistent = true, area_id = 3 },
	{ config_id = 290006, gadget_id = 70500000, pos = { x = 1966.836, y = 220.428, z = -590.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 9101, persistent = true, area_id = 3 },
	{ config_id = 290007, gadget_id = 70500000, pos = { x = 1969.874, y = 221.105, z = -573.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 9102, persistent = true, area_id = 3 },
	{ config_id = 290008, gadget_id = 70500000, pos = { x = 1968.589, y = 221.056, z = -579.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 9101, persistent = true, area_id = 3 },
	{ config_id = 290009, gadget_id = 70500000, pos = { x = 1966.737, y = 220.423, z = -589.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 9101, persistent = true, area_id = 3 },
	{ config_id = 290010, gadget_id = 70500000, pos = { x = 1924.039, y = 219.124, z = -637.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 9103, persistent = true, area_id = 3 }
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
		gadgets = { 290001, 290002, 290003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 290004, 290005, 290006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 290007, 290008, 290009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 290010 },
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
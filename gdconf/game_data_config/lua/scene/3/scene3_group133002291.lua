-- 基础信息
local base_info = {
	group_id = 133002291
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
	{ config_id = 291001, gadget_id = 70500000, pos = { x = 2006.930, y = 211.121, z = -968.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9101, persistent = true, area_id = 3 },
	{ config_id = 291002, gadget_id = 70500000, pos = { x = 2014.762, y = 212.679, z = -979.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9101, persistent = true, area_id = 3 },
	{ config_id = 291003, gadget_id = 70500000, pos = { x = 2004.014, y = 211.907, z = -954.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9102, persistent = true, area_id = 3 },
	{ config_id = 291004, gadget_id = 70500000, pos = { x = 2006.786, y = 211.156, z = -968.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9101, persistent = true, area_id = 3 },
	{ config_id = 291005, gadget_id = 70500000, pos = { x = 2014.550, y = 212.673, z = -979.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9102, persistent = true, area_id = 3 },
	{ config_id = 291006, gadget_id = 70500000, pos = { x = 2003.982, y = 211.836, z = -954.409 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9101, persistent = true, area_id = 3 },
	{ config_id = 291007, gadget_id = 70500000, pos = { x = 2007.000, y = 211.118, z = -968.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9102, persistent = true, area_id = 3 },
	{ config_id = 291008, gadget_id = 70500000, pos = { x = 2014.433, y = 212.668, z = -979.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, point_type = 9101, persistent = true, area_id = 3 },
	{ config_id = 291009, gadget_id = 70500000, pos = { x = 2004.053, y = 211.869, z = -954.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, point_type = 9101, persistent = true, area_id = 3 },
	{ config_id = 291010, gadget_id = 70500000, pos = { x = 2014.415, y = 204.708, z = -846.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 9103, persistent = true, area_id = 3 }
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
		gadgets = { 291001, 291002, 291003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 291004, 291005, 291006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 291007, 291008, 291009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 291010 },
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
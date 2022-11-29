-- 基础信息
local base_info = {
	group_id = 199002022
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
	{ config_id = 22008, gadget_id = 70500000, pos = { x = 564.304, y = 119.626, z = -401.796 }, rot = { x = 0.000, y = 212.723, z = 0.000 }, level = 1, point_type = 2033, area_id = 401 },
	{ config_id = 22009, gadget_id = 70500000, pos = { x = 564.614, y = 119.450, z = -403.553 }, rot = { x = 0.000, y = 354.915, z = 0.000 }, level = 1, point_type = 2033, area_id = 401 },
	{ config_id = 22010, gadget_id = 70290008, pos = { x = 573.412, y = 119.820, z = -359.473 }, rot = { x = 0.000, y = 53.989, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 22011, gadget_id = 70500000, pos = { x = 573.412, y = 119.820, z = -359.473 }, rot = { x = 0.000, y = 53.989, z = 0.000 }, level = 1, point_type = 3008, owner = 22010, area_id = 401 },
	{ config_id = 22012, gadget_id = 70290008, pos = { x = 554.446, y = 119.666, z = -368.710 }, rot = { x = 0.000, y = 302.312, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 22013, gadget_id = 70500000, pos = { x = 554.446, y = 119.666, z = -368.710 }, rot = { x = 0.000, y = 302.310, z = 0.000 }, level = 1, point_type = 3008, owner = 22012, area_id = 401 },
	{ config_id = 22014, gadget_id = 70500000, pos = { x = 582.775, y = 121.958, z = -389.830 }, rot = { x = 0.000, y = 74.718, z = 0.000 }, level = 1, point_type = 2004, area_id = 401 },
	{ config_id = 22016, gadget_id = 70290001, pos = { x = 601.347, y = 134.002, z = -449.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 22017, gadget_id = 70500000, pos = { x = 688.489, y = 123.926, z = -556.013 }, rot = { x = 0.000, y = 47.703, z = 0.000 }, level = 1, point_type = 2004, area_id = 401 },
	{ config_id = 22018, gadget_id = 70500000, pos = { x = 601.364, y = 134.521, z = -448.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 22016, area_id = 401 },
	{ config_id = 22019, gadget_id = 70500000, pos = { x = 543.305, y = 126.055, z = -559.584 }, rot = { x = 0.000, y = 70.926, z = 0.000 }, level = 1, point_type = 2004, area_id = 401 },
	{ config_id = 22020, gadget_id = 70500000, pos = { x = 601.282, y = 134.824, z = -449.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 22016, area_id = 401 },
	{ config_id = 22021, gadget_id = 70500000, pos = { x = 601.571, y = 134.173, z = -449.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 22016, area_id = 401 },
	{ config_id = 22022, gadget_id = 70500000, pos = { x = 603.286, y = 121.501, z = -387.762 }, rot = { x = 0.000, y = 317.322, z = 0.000 }, level = 1, point_type = 2004, area_id = 401 },
	{ config_id = 22025, gadget_id = 70500000, pos = { x = 555.003, y = 123.117, z = -536.613 }, rot = { x = 0.000, y = 52.570, z = 0.000 }, level = 1, point_type = 2001, area_id = 401 },
	{ config_id = 22027, gadget_id = 70500000, pos = { x = 645.016, y = 125.394, z = -423.962 }, rot = { x = 0.000, y = 61.088, z = 0.000 }, level = 1, point_type = 2001, area_id = 401 },
	{ config_id = 22028, gadget_id = 70500000, pos = { x = 555.972, y = 124.167, z = -541.813 }, rot = { x = 0.000, y = 286.567, z = 0.000 }, level = 1, point_type = 2004, area_id = 401 },
	{ config_id = 22029, gadget_id = 70500000, pos = { x = 464.001, y = 120.397, z = -563.135 }, rot = { x = 0.000, y = 173.464, z = 0.000 }, level = 1, point_type = 2001, area_id = 401 },
	{ config_id = 22030, gadget_id = 70500000, pos = { x = 623.421, y = 121.648, z = -395.601 }, rot = { x = 0.000, y = 154.095, z = 0.000 }, level = 1, point_type = 2001, area_id = 401 },
	{ config_id = 22031, gadget_id = 70500000, pos = { x = 565.700, y = 122.988, z = -589.838 }, rot = { x = 0.000, y = 222.192, z = 0.000 }, level = 1, point_type = 2004, area_id = 401 },
	{ config_id = 22033, gadget_id = 70290001, pos = { x = 627.137, y = 130.567, z = -431.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 22034, gadget_id = 70500000, pos = { x = 627.154, y = 130.687, z = -431.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 22033, area_id = 401 },
	{ config_id = 22035, gadget_id = 70500000, pos = { x = 627.072, y = 130.723, z = -432.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 22033, area_id = 401 },
	{ config_id = 22036, gadget_id = 70500000, pos = { x = 627.405, y = 130.723, z = -432.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 22033, area_id = 401 }
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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 22001, gadget_id = 70290001, pos = { x = 546.404, y = 121.097, z = -534.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
		{ config_id = 22002, gadget_id = 70500000, pos = { x = 546.421, y = 121.257, z = -533.621 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 22001, area_id = 401 },
		{ config_id = 22003, gadget_id = 70500000, pos = { x = 546.339, y = 121.323, z = -534.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 22001, area_id = 401 },
		{ config_id = 22004, gadget_id = 70500000, pos = { x = 546.672, y = 121.427, z = -534.126 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 22001, area_id = 401 },
		{ config_id = 22005, gadget_id = 70500000, pos = { x = 549.896, y = 127.154, z = -507.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2001, area_id = 401 },
		{ config_id = 22006, gadget_id = 70500000, pos = { x = 612.037, y = 128.094, z = -502.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2004, area_id = 401 },
		{ config_id = 22007, gadget_id = 70500000, pos = { x = 559.490, y = 119.303, z = -399.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2033, area_id = 401 },
		{ config_id = 22023, gadget_id = 70500000, pos = { x = 590.456, y = 126.871, z = -492.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2001, area_id = 401 },
		{ config_id = 22024, gadget_id = 70500000, pos = { x = 581.304, y = 127.325, z = -493.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2001, area_id = 401 },
		{ config_id = 22026, gadget_id = 70500000, pos = { x = 625.440, y = 122.216, z = -529.119 }, rot = { x = 0.000, y = 21.521, z = 0.000 }, level = 1, point_type = 2001, area_id = 401 },
		{ config_id = 22032, gadget_id = 70500000, pos = { x = 603.053, y = 126.839, z = -552.208 }, rot = { x = 0.000, y = 217.365, z = 0.000 }, level = 1, point_type = 2001, area_id = 401 }
	}
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
		gadgets = { 22008, 22009, 22010, 22011, 22012, 22013, 22014, 22016, 22017, 22018, 22019, 22020, 22021, 22022, 22025, 22027, 22028, 22029, 22030, 22031, 22033, 22034, 22035, 22036 },
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
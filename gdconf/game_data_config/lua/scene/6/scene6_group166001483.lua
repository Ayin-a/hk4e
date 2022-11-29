-- 基础信息
local base_info = {
	group_id = 166001483
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 483002, monster_id = 28050301, pos = { x = 227.134, y = 231.119, z = 344.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 483004, monster_id = 28050301, pos = { x = 179.789, y = 231.450, z = 365.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 483005, monster_id = 28050301, pos = { x = 147.926, y = 232.504, z = 398.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 483006, monster_id = 28050301, pos = { x = 126.313, y = 232.820, z = 364.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 483007, monster_id = 28050301, pos = { x = 134.720, y = 234.939, z = 432.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 483009, monster_id = 28010302, pos = { x = 200.568, y = 230.900, z = 351.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 483011, monster_id = 28010302, pos = { x = 138.806, y = 231.140, z = 380.859 }, rot = { x = 0.000, y = 132.235, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 483012, monster_id = 28020605, pos = { x = 157.551, y = 232.199, z = 380.281 }, rot = { x = 0.000, y = 257.594, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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
	monsters = {
		{ config_id = 483001, monster_id = 20050401, pos = { x = 232.673, y = 229.996, z = 352.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", disableWander = true, area_id = 300 },
		{ config_id = 483003, monster_id = 28050301, pos = { x = 180.436, y = 231.377, z = 365.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
		{ config_id = 483008, monster_id = 28010302, pos = { x = 161.031, y = 231.631, z = 380.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
		{ config_id = 483010, monster_id = 28010302, pos = { x = 168.217, y = 232.870, z = 413.851 }, rot = { x = 0.000, y = 303.857, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 }
	},
	gadgets = {
		{ config_id = 483013, gadget_id = 70500000, pos = { x = 126.299, y = 231.932, z = 420.543 }, rot = { x = 351.104, y = 0.000, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 483014, gadget_id = 70500000, pos = { x = 121.655, y = 236.269, z = 425.741 }, rot = { x = 0.000, y = 264.433, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 483015, gadget_id = 70500000, pos = { x = 187.980, y = 232.698, z = 348.555 }, rot = { x = 0.000, y = 317.181, z = 335.550 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 483016, gadget_id = 70500000, pos = { x = 184.854, y = 233.133, z = 349.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 483017, gadget_id = 70500000, pos = { x = 235.954, y = 230.822, z = 343.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 483018, gadget_id = 70500000, pos = { x = 203.074, y = 230.900, z = 357.089 }, rot = { x = -0.001, y = 134.159, z = 347.145 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 483019, gadget_id = 70500000, pos = { x = 191.923, y = 233.249, z = 390.038 }, rot = { x = 0.507, y = 161.408, z = 0.268 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 483020, gadget_id = 70500000, pos = { x = 192.310, y = 233.326, z = 391.034 }, rot = { x = 1.754, y = 0.176, z = 11.483 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 483021, gadget_id = 70500000, pos = { x = 142.031, y = 232.703, z = 386.538 }, rot = { x = 15.906, y = 184.440, z = 19.437 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 483022, gadget_id = 70500000, pos = { x = 147.570, y = 231.683, z = 407.379 }, rot = { x = 349.815, y = 1.919, z = 338.711 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 483023, gadget_id = 70500000, pos = { x = 174.697, y = 232.429, z = 415.035 }, rot = { x = 0.000, y = 0.000, z = 15.710 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 483024, gadget_id = 70500000, pos = { x = 135.537, y = 234.239, z = 431.180 }, rot = { x = 24.549, y = 184.697, z = 358.688 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 483025, gadget_id = 70500000, pos = { x = 122.178, y = 233.673, z = 364.607 }, rot = { x = 18.772, y = 356.836, z = 341.029 }, level = 36, point_type = 2044, area_id = 300 }
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
		monsters = { 483002, 483004, 483005, 483006, 483007, 483009, 483011, 483012 },
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
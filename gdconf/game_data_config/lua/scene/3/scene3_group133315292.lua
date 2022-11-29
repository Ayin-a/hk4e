-- 基础信息
local base_info = {
	group_id = 133315292
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
	{ config_id = 292001, gadget_id = 70290002, pos = { x = 25.804, y = 378.755, z = 2148.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 292002, gadget_id = 70500000, pos = { x = 24.733, y = 380.373, z = 2149.543 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 27, point_type = 3001, owner = 292001, area_id = 20 },
	{ config_id = 292003, gadget_id = 70500000, pos = { x = 26.674, y = 381.383, z = 2147.818 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 27, point_type = 3001, owner = 292001, area_id = 20 },
	{ config_id = 292004, gadget_id = 70500000, pos = { x = 25.847, y = 381.663, z = 2150.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3001, owner = 292001, area_id = 20 },
	{ config_id = 292005, gadget_id = 70290002, pos = { x = -59.590, y = 325.404, z = 2206.164 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 292006, gadget_id = 70500000, pos = { x = -60.661, y = 327.022, z = 2206.878 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 27, point_type = 3001, owner = 292005, area_id = 20 },
	{ config_id = 292007, gadget_id = 70500000, pos = { x = -58.720, y = 328.032, z = 2205.153 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 27, point_type = 3001, owner = 292005, area_id = 20 },
	{ config_id = 292008, gadget_id = 70500000, pos = { x = -59.547, y = 328.312, z = 2207.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3001, owner = 292005, area_id = 20 },
	{ config_id = 292009, gadget_id = 70290009, pos = { x = 58.470, y = 365.961, z = 2156.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 292010, gadget_id = 70500000, pos = { x = 58.470, y = 365.961, z = 2156.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3005, owner = 292009, area_id = 20 },
	{ config_id = 292011, gadget_id = 70290001, pos = { x = 96.052, y = 377.405, z = 2147.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 292012, gadget_id = 70500000, pos = { x = 96.069, y = 377.974, z = 2147.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 292011, area_id = 20 },
	{ config_id = 292013, gadget_id = 70500000, pos = { x = 95.987, y = 378.260, z = 2146.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 292011, area_id = 20 },
	{ config_id = 292014, gadget_id = 70500000, pos = { x = 96.320, y = 378.672, z = 2146.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 292011, area_id = 20 },
	{ config_id = 292015, gadget_id = 70290001, pos = { x = 38.716, y = 381.852, z = 2141.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 292016, gadget_id = 70500000, pos = { x = 38.733, y = 382.421, z = 2142.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 292015, area_id = 20 },
	{ config_id = 292017, gadget_id = 70500000, pos = { x = 38.651, y = 382.707, z = 2141.399 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 292015, area_id = 20 },
	{ config_id = 292018, gadget_id = 70500000, pos = { x = 38.984, y = 383.119, z = 2141.692 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 292015, area_id = 20 },
	{ config_id = 292019, gadget_id = 70290001, pos = { x = -34.817, y = 347.069, z = 2159.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 292020, gadget_id = 70500000, pos = { x = -34.800, y = 347.638, z = 2159.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 292019, area_id = 20 },
	{ config_id = 292021, gadget_id = 70500000, pos = { x = -34.882, y = 347.924, z = 2159.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 292019, area_id = 20 },
	{ config_id = 292022, gadget_id = 70500000, pos = { x = -34.549, y = 348.336, z = 2159.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 292019, area_id = 20 },
	{ config_id = 292023, gadget_id = 70540037, pos = { x = -66.747, y = 347.827, z = 2082.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 292024, gadget_id = 70500000, pos = { x = -66.361, y = 348.202, z = 2082.424 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 292023, area_id = 20 },
	{ config_id = 292025, gadget_id = 70500000, pos = { x = -66.916, y = 348.548, z = 2082.917 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 292023, area_id = 20 },
	{ config_id = 292026, gadget_id = 70290002, pos = { x = -8.648, y = 402.486, z = 2059.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 292027, gadget_id = 70500000, pos = { x = -9.719, y = 404.104, z = 2060.680 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 27, point_type = 3011, owner = 292026, area_id = 20 },
	{ config_id = 292028, gadget_id = 70500000, pos = { x = -7.778, y = 405.114, z = 2058.955 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 27, point_type = 3011, owner = 292026, area_id = 20 },
	{ config_id = 292029, gadget_id = 70500000, pos = { x = -8.605, y = 405.394, z = 2061.347 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3011, owner = 292026, area_id = 20 }
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
		gadgets = { 292001, 292002, 292003, 292004, 292005, 292006, 292007, 292008, 292009, 292010, 292011, 292012, 292013, 292014, 292015, 292016, 292017, 292018, 292019, 292020, 292021, 292022, 292023, 292024, 292025, 292026, 292027, 292028, 292029 },
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
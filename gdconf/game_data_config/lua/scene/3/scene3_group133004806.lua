-- 基础信息
local base_info = {
	group_id = 133004806
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
	{ config_id = 1212, gadget_id = 70500000, pos = { x = 2139.750, y = 279.311, z = -186.867 }, rot = { x = 0.000, y = 21.310, z = 0.000 }, level = 15, point_type = 1002, area_id = 3 },
	{ config_id = 1219, gadget_id = 70500000, pos = { x = 2065.139, y = 262.129, z = -334.374 }, rot = { x = 0.000, y = 315.562, z = 0.000 }, level = 15, point_type = 1002, area_id = 3 },
	{ config_id = 1274, gadget_id = 70500000, pos = { x = 2451.953, y = 300.437, z = -343.383 }, rot = { x = 349.811, y = 304.797, z = 17.481 }, level = 20, point_type = 1003, area_id = 3 }
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
		{ config_id = 1202, gadget_id = 70500000, pos = { x = 2179.986, y = 279.128, z = -205.763 }, rot = { x = 0.000, y = 21.182, z = 0.000 }, level = 15, point_type = 2001, area_id = 3 },
		{ config_id = 1203, gadget_id = 70500000, pos = { x = 2103.845, y = 275.417, z = -361.262 }, rot = { x = 0.000, y = 221.232, z = 0.000 }, level = 15, point_type = 2004, area_id = 3 },
		{ config_id = 1204, gadget_id = 70500000, pos = { x = 2067.156, y = 278.818, z = -122.151 }, rot = { x = 0.000, y = 88.370, z = 0.000 }, level = 15, point_type = 2004, area_id = 3 },
		{ config_id = 1205, gadget_id = 70500000, pos = { x = 2197.084, y = 281.490, z = -304.464 }, rot = { x = 0.000, y = 228.802, z = 0.000 }, level = 15, point_type = 2004, area_id = 3 },
		{ config_id = 1206, gadget_id = 70500000, pos = { x = 2003.144, y = 260.845, z = -356.344 }, rot = { x = 0.000, y = 129.312, z = 0.000 }, level = 15, point_type = 2004, area_id = 3 },
		{ config_id = 1207, gadget_id = 70500000, pos = { x = 2209.638, y = 283.174, z = -403.678 }, rot = { x = 0.000, y = 210.066, z = 0.000 }, level = 15, point_type = 2004, area_id = 3 },
		{ config_id = 1208, gadget_id = 70500000, pos = { x = 1972.547, y = 266.255, z = -557.667 }, rot = { x = 0.000, y = 278.855, z = 0.000 }, level = 10, point_type = 2001, area_id = 3 },
		{ config_id = 1213, gadget_id = 70500000, pos = { x = 2144.957, y = 276.304, z = -282.846 }, rot = { x = 0.000, y = 122.745, z = 0.000 }, level = 15, point_type = 1001, area_id = 3 },
		{ config_id = 1216, gadget_id = 70500000, pos = { x = 2175.021, y = 275.208, z = -336.515 }, rot = { x = 0.000, y = 338.521, z = 0.000 }, level = 15, point_type = 1001, area_id = 3 },
		{ config_id = 1217, gadget_id = 70500000, pos = { x = 2189.361, y = 280.871, z = -301.412 }, rot = { x = 0.000, y = 175.806, z = 0.000 }, level = 15, point_type = 1001, area_id = 3 },
		{ config_id = 1220, gadget_id = 70500000, pos = { x = 2147.125, y = 276.671, z = -284.949 }, rot = { x = 0.000, y = 127.331, z = 0.000 }, level = 15, point_type = 1001, area_id = 3 },
		{ config_id = 1272, gadget_id = 70500000, pos = { x = 2443.123, y = 299.795, z = -338.107 }, rot = { x = 0.000, y = 355.913, z = 27.024 }, level = 20, point_type = 1001, area_id = 3 },
		{ config_id = 1273, gadget_id = 70500000, pos = { x = 2443.208, y = 301.798, z = -332.890 }, rot = { x = 0.000, y = 203.802, z = 0.000 }, level = 20, point_type = 1001, area_id = 3 }
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
	rand_suite = true
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
		gadgets = { 1212, 1219, 1274 },
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
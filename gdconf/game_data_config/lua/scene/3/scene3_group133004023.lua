-- 基础信息
local base_info = {
	group_id = 133004023
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
	{ config_id = 23001, gadget_id = 70290002, pos = { x = 2088.140, y = 228.457, z = -632.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 23002, gadget_id = 70500000, pos = { x = 2087.069, y = 230.075, z = -631.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3011, owner = 23001, area_id = 3 },
	{ config_id = 23003, gadget_id = 70500000, pos = { x = 2089.010, y = 231.085, z = -633.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3011, owner = 23001, area_id = 3 },
	{ config_id = 23004, gadget_id = 70500000, pos = { x = 2088.183, y = 231.365, z = -631.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 3011, owner = 23001, area_id = 3 },
	{ config_id = 23005, gadget_id = 70290001, pos = { x = 2060.356, y = 236.359, z = -624.189 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 23006, gadget_id = 70500000, pos = { x = 2060.373, y = 236.928, z = -623.788 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3002, owner = 23005, area_id = 3 },
	{ config_id = 23007, gadget_id = 70500000, pos = { x = 2060.291, y = 237.214, z = -624.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3002, owner = 23005, area_id = 3 },
	{ config_id = 23008, gadget_id = 70500000, pos = { x = 2060.624, y = 237.626, z = -624.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3002, owner = 23005, area_id = 3 },
	{ config_id = 23009, gadget_id = 70290002, pos = { x = 2129.683, y = 221.270, z = -615.428 }, rot = { x = 336.519, y = 1.953, z = 350.623 }, level = 15, area_id = 3 },
	{ config_id = 23010, gadget_id = 70500000, pos = { x = 2128.889, y = 223.178, z = -615.451 }, rot = { x = 353.446, y = 263.583, z = 24.371 }, level = 15, point_type = 3011, owner = 23009, area_id = 3 },
	{ config_id = 23011, gadget_id = 70500000, pos = { x = 2130.904, y = 223.115, z = -617.374 }, rot = { x = 337.401, y = 311.711, z = 11.420 }, level = 15, point_type = 3011, owner = 23009, area_id = 3 },
	{ config_id = 23012, gadget_id = 70500000, pos = { x = 2130.204, y = 224.445, z = -615.319 }, rot = { x = 336.519, y = 1.953, z = 350.623 }, level = 15, point_type = 3011, owner = 23009, area_id = 3 },
	{ config_id = 23013, gadget_id = 70500000, pos = { x = 2074.235, y = 202.593, z = -732.790 }, rot = { x = 354.731, y = 250.042, z = 13.958 }, level = 10, point_type = 2005, area_id = 3 },
	{ config_id = 23014, gadget_id = 70500000, pos = { x = 2166.935, y = 209.167, z = -521.772 }, rot = { x = 0.000, y = 338.761, z = 0.000 }, level = 15, point_type = 2001, area_id = 3 },
	{ config_id = 23015, gadget_id = 70500000, pos = { x = 2167.342, y = 208.632, z = -538.327 }, rot = { x = 0.000, y = 74.883, z = 0.000 }, level = 15, point_type = 2002, area_id = 3 },
	{ config_id = 23016, gadget_id = 70290002, pos = { x = 2098.992, y = 225.886, z = -520.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 23017, gadget_id = 70500000, pos = { x = 2097.921, y = 227.504, z = -519.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 3011, owner = 23016, area_id = 3 },
	{ config_id = 23018, gadget_id = 70500000, pos = { x = 2099.862, y = 228.514, z = -521.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 3011, owner = 23016, area_id = 3 },
	{ config_id = 23019, gadget_id = 70500000, pos = { x = 2099.035, y = 228.794, z = -519.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 3011, owner = 23016, area_id = 3 },
	{ config_id = 23020, gadget_id = 70500000, pos = { x = 2235.948, y = 202.329, z = -523.866 }, rot = { x = 0.000, y = 106.419, z = 0.000 }, level = 2, point_type = 2005, area_id = 3 },
	{ config_id = 23021, gadget_id = 70500000, pos = { x = 2121.977, y = 213.634, z = -544.189 }, rot = { x = 0.000, y = 52.232, z = 0.000 }, level = 15, point_type = 3001, area_id = 3 },
	{ config_id = 23022, gadget_id = 70500000, pos = { x = 2201.590, y = 222.161, z = -569.100 }, rot = { x = 7.906, y = 129.224, z = 352.679 }, level = 15, point_type = 2002, area_id = 3 },
	{ config_id = 23023, gadget_id = 70500000, pos = { x = 2143.572, y = 211.719, z = -547.146 }, rot = { x = 0.000, y = 175.184, z = 0.000 }, level = 15, point_type = 2002, area_id = 3 },
	{ config_id = 23024, gadget_id = 70500000, pos = { x = 2158.642, y = 209.816, z = -535.502 }, rot = { x = 348.421, y = 280.112, z = 9.445 }, level = 15, point_type = 2002, area_id = 3 },
	{ config_id = 23025, gadget_id = 70500000, pos = { x = 2075.838, y = 206.735, z = -690.455 }, rot = { x = 0.000, y = 35.562, z = 0.000 }, level = 10, point_type = 2004, area_id = 3 },
	{ config_id = 23026, gadget_id = 70500000, pos = { x = 2179.624, y = 220.364, z = -580.844 }, rot = { x = 0.000, y = 63.574, z = 0.000 }, level = 15, point_type = 2001, area_id = 3 },
	{ config_id = 23027, gadget_id = 70500000, pos = { x = 2214.336, y = 220.810, z = -727.451 }, rot = { x = 0.000, y = 310.378, z = 0.000 }, level = 2, point_type = 2004, area_id = 1 },
	{ config_id = 23028, gadget_id = 70500000, pos = { x = 2301.759, y = 244.810, z = -668.348 }, rot = { x = 0.000, y = 352.607, z = 0.000 }, level = 2, point_type = 2004, area_id = 1 },
	{ config_id = 23029, gadget_id = 70500000, pos = { x = 2068.219, y = 245.719, z = -521.732 }, rot = { x = 0.000, y = 308.123, z = 0.000 }, level = 15, point_type = 2009, area_id = 3 },
	{ config_id = 23030, gadget_id = 70500000, pos = { x = 2268.360, y = 233.680, z = -699.807 }, rot = { x = 0.000, y = 41.277, z = 0.000 }, level = 2, point_type = 2007, area_id = 1 },
	{ config_id = 23031, gadget_id = 70500000, pos = { x = 2173.650, y = 210.355, z = -638.869 }, rot = { x = 0.000, y = 323.327, z = 0.000 }, level = 15, point_type = 2007, area_id = 3 },
	{ config_id = 23032, gadget_id = 70500000, pos = { x = 2050.613, y = 222.127, z = -705.928 }, rot = { x = 0.000, y = 144.301, z = 0.000 }, level = 10, point_type = 2009, area_id = 3 },
	{ config_id = 23033, gadget_id = 70290003, pos = { x = 2115.435, y = 225.026, z = -542.345 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 23034, gadget_id = 70500000, pos = { x = 2115.435, y = 225.129, z = -542.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 3003, owner = 23033, area_id = 3 },
	{ config_id = 23035, gadget_id = 70500000, pos = { x = 2115.435, y = 225.129, z = -542.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 3003, owner = 23033, area_id = 3 },
	{ config_id = 23036, gadget_id = 70500000, pos = { x = 2153.338, y = 213.390, z = -586.586 }, rot = { x = 349.489, y = 104.157, z = 18.318 }, level = 15, point_type = 1001, area_id = 3 },
	{ config_id = 23037, gadget_id = 70500000, pos = { x = 2146.476, y = 213.470, z = -582.287 }, rot = { x = 338.972, y = 164.617, z = 23.328 }, level = 15, point_type = 1001, area_id = 3 },
	{ config_id = 23038, gadget_id = 70290002, pos = { x = 2130.410, y = 223.876, z = -609.039 }, rot = { x = 340.222, y = 1.897, z = 349.150 }, level = 15, area_id = 3 },
	{ config_id = 23039, gadget_id = 70500000, pos = { x = 2129.666, y = 225.803, z = -608.948 }, rot = { x = 351.548, y = 263.440, z = 20.879 }, level = 15, point_type = 3011, owner = 23038, area_id = 3 },
	{ config_id = 23040, gadget_id = 70500000, pos = { x = 2131.700, y = 225.809, z = -610.852 }, rot = { x = 338.747, y = 312.606, z = 7.420 }, level = 15, point_type = 3011, owner = 23038, area_id = 3 },
	{ config_id = 23041, gadget_id = 70500000, pos = { x = 2131.011, y = 227.024, z = -608.723 }, rot = { x = 340.222, y = 1.897, z = 349.150 }, level = 15, point_type = 3011, owner = 23038, area_id = 3 }
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
		gadgets = { 23001, 23002, 23003, 23004, 23005, 23006, 23007, 23008, 23009, 23010, 23011, 23012, 23013, 23014, 23015, 23016, 23017, 23018, 23019, 23020, 23021, 23022, 23023, 23024, 23025, 23026, 23027, 23028, 23029, 23030, 23031, 23032, 23033, 23034, 23035, 23036, 23037, 23038, 23039, 23040, 23041 },
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
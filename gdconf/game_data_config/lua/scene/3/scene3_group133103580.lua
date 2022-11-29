-- 基础信息
local base_info = {
	group_id = 133103580
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
	{ config_id = 580001, gadget_id = 70290016, pos = { x = -217.014, y = 293.935, z = 1661.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 580002, gadget_id = 70500000, pos = { x = -217.014, y = 293.935, z = 1661.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 3010, owner = 580001, area_id = 19 },
	{ config_id = 580003, gadget_id = 70290016, pos = { x = -213.135, y = 294.595, z = 1667.075 }, rot = { x = 12.491, y = 301.987, z = 359.938 }, level = 36, area_id = 19 },
	{ config_id = 580004, gadget_id = 70500000, pos = { x = -213.135, y = 294.595, z = 1667.075 }, rot = { x = 12.491, y = 301.987, z = 359.938 }, level = 36, point_type = 3010, owner = 580003, area_id = 19 },
	{ config_id = 580005, gadget_id = 70500000, pos = { x = -192.252, y = 309.540, z = 1666.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2001, area_id = 6 },
	{ config_id = 580006, gadget_id = 70500000, pos = { x = -181.286, y = 302.771, z = 1723.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2001, area_id = 6 },
	{ config_id = 580007, gadget_id = 70290001, pos = { x = -140.703, y = 307.001, z = 1747.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 580008, gadget_id = 70500000, pos = { x = -140.686, y = 307.570, z = 1748.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 580007, area_id = 6 },
	{ config_id = 580009, gadget_id = 70500000, pos = { x = -140.768, y = 307.856, z = 1747.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 580007, area_id = 6 },
	{ config_id = 580010, gadget_id = 70500000, pos = { x = -140.435, y = 308.268, z = 1747.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 580007, area_id = 6 },
	{ config_id = 580011, gadget_id = 70290001, pos = { x = -20.185, y = 288.665, z = 1791.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 580012, gadget_id = 70500000, pos = { x = -20.168, y = 289.234, z = 1791.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 580011, area_id = 6 },
	{ config_id = 580013, gadget_id = 70500000, pos = { x = -20.250, y = 289.520, z = 1790.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 580011, area_id = 6 },
	{ config_id = 580014, gadget_id = 70500000, pos = { x = -19.917, y = 289.932, z = 1791.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 580011, area_id = 6 },
	{ config_id = 580015, gadget_id = 70500000, pos = { x = -37.872, y = 290.199, z = 1807.554 }, rot = { x = 0.000, y = 268.813, z = 0.000 }, level = 27, point_type = 2001, area_id = 6 },
	{ config_id = 580016, gadget_id = 70500000, pos = { x = 107.278, y = 261.599, z = 1662.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2001, area_id = 6 },
	{ config_id = 580017, gadget_id = 70290001, pos = { x = 114.210, y = 256.429, z = 1617.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 580018, gadget_id = 70500000, pos = { x = 114.227, y = 256.998, z = 1617.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 580017, area_id = 6 },
	{ config_id = 580019, gadget_id = 70500000, pos = { x = 114.145, y = 257.284, z = 1617.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 580017, area_id = 6 },
	{ config_id = 580020, gadget_id = 70500000, pos = { x = 114.478, y = 257.696, z = 1617.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 580017, area_id = 6 },
	{ config_id = 580021, gadget_id = 70290010, pos = { x = 117.422, y = 302.136, z = 1799.188 }, rot = { x = 5.982, y = 188.433, z = 350.181 }, level = 27, area_id = 6 },
	{ config_id = 580022, gadget_id = 70500000, pos = { x = 117.422, y = 302.136, z = 1799.188 }, rot = { x = 5.982, y = 188.434, z = 350.181 }, level = 27, point_type = 3006, owner = 580021, area_id = 6 },
	{ config_id = 580023, gadget_id = 70290010, pos = { x = 106.831, y = 299.697, z = 1791.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 580024, gadget_id = 70500000, pos = { x = 106.831, y = 299.697, z = 1791.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3006, owner = 580023, area_id = 6 },
	{ config_id = 580025, gadget_id = 70290010, pos = { x = 111.762, y = 303.113, z = 1802.314 }, rot = { x = 15.819, y = 280.388, z = 14.786 }, level = 27, area_id = 6 },
	{ config_id = 580026, gadget_id = 70500000, pos = { x = 111.762, y = 303.113, z = 1802.314 }, rot = { x = 15.819, y = 280.388, z = 14.786 }, level = 27, point_type = 3006, owner = 580025, area_id = 6 },
	{ config_id = 580027, gadget_id = 70500000, pos = { x = 135.581, y = 310.859, z = 1832.462 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2001, area_id = 6 },
	{ config_id = 580028, gadget_id = 70500000, pos = { x = 185.742, y = 327.313, z = 1852.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 6 },
	{ config_id = 580029, gadget_id = 70500000, pos = { x = 99.902, y = 323.496, z = 1857.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 6 },
	{ config_id = 580030, gadget_id = 70500000, pos = { x = 110.887, y = 326.231, z = 1868.289 }, rot = { x = 352.470, y = 70.931, z = 341.650 }, level = 27, point_type = 1002, area_id = 6 },
	{ config_id = 580031, gadget_id = 70500000, pos = { x = 103.510, y = 326.331, z = 1865.956 }, rot = { x = 335.833, y = 1.717, z = 351.995 }, level = 27, point_type = 1002, area_id = 6 },
	{ config_id = 580032, gadget_id = 70500000, pos = { x = 110.973, y = 324.179, z = 1862.767 }, rot = { x = 354.087, y = 303.404, z = 11.084 }, level = 27, point_type = 1002, area_id = 6 },
	{ config_id = 580033, gadget_id = 70290009, pos = { x = 49.378, y = 326.666, z = 1850.866 }, rot = { x = 341.437, y = 2.024, z = 347.660 }, level = 27, area_id = 6 },
	{ config_id = 580034, gadget_id = 70500000, pos = { x = 49.378, y = 326.666, z = 1850.866 }, rot = { x = 341.436, y = 2.024, z = 347.660 }, level = 27, point_type = 3005, owner = 580033, area_id = 6 },
	{ config_id = 580035, gadget_id = 70500000, pos = { x = -226.943, y = 305.441, z = 1929.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 1003, area_id = 6 },
	{ config_id = 580036, gadget_id = 70500000, pos = { x = -225.916, y = 305.752, z = 1923.809 }, rot = { x = 4.561, y = 23.090, z = 337.008 }, level = 27, point_type = 1003, area_id = 6 },
	{ config_id = 580037, gadget_id = 70500000, pos = { x = -231.518, y = 306.216, z = 1934.232 }, rot = { x = 332.151, y = 285.302, z = 327.489 }, level = 27, point_type = 1003, area_id = 6 },
	{ config_id = 580038, gadget_id = 70290001, pos = { x = -208.659, y = 300.593, z = 1960.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 6 },
	{ config_id = 580039, gadget_id = 70500000, pos = { x = -208.642, y = 301.162, z = 1961.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 580038, area_id = 6 },
	{ config_id = 580040, gadget_id = 70500000, pos = { x = -208.724, y = 301.448, z = 1960.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 580038, area_id = 6 },
	{ config_id = 580041, gadget_id = 70500000, pos = { x = -208.391, y = 301.860, z = 1960.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 580038, area_id = 6 },
	{ config_id = 580042, gadget_id = 70500000, pos = { x = -223.966, y = 301.343, z = 1967.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2001, area_id = 6 },
	{ config_id = 580043, gadget_id = 70500000, pos = { x = -253.418, y = 307.425, z = 1954.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2001, area_id = 6 },
	{ config_id = 580044, gadget_id = 70500000, pos = { x = -175.570, y = 303.589, z = 1924.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 6 },
	{ config_id = 580045, gadget_id = 70500000, pos = { x = -196.309, y = 296.850, z = 1999.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 6 },
	{ config_id = 580046, gadget_id = 70500000, pos = { x = -159.787, y = 321.768, z = 2002.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 6 },
	{ config_id = 580047, gadget_id = 70500000, pos = { x = -130.754, y = 322.119, z = 2022.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 6 },
	{ config_id = 580048, gadget_id = 70500000, pos = { x = -131.373, y = 332.597, z = 1976.516 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 6 }
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
		gadgets = { 580001, 580002, 580003, 580004, 580005, 580006, 580007, 580008, 580009, 580010, 580011, 580012, 580013, 580014, 580015, 580016, 580017, 580018, 580019, 580020, 580021, 580022, 580023, 580024, 580025, 580026, 580027, 580028, 580029, 580030, 580031, 580032, 580033, 580034, 580035, 580036, 580037, 580038, 580039, 580040, 580041, 580042, 580043, 580044, 580045, 580046, 580047, 580048 },
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
-- 基础信息
local base_info = {
	group_id = 133211006
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
	{ config_id = 6001, gadget_id = 70500000, pos = { x = -3682.685, y = 203.576, z = -1976.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2001, area_id = 13 },
	{ config_id = 6002, gadget_id = 70500000, pos = { x = -3778.448, y = 207.400, z = -1905.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2001, area_id = 13 },
	{ config_id = 6003, gadget_id = 70500000, pos = { x = -3654.982, y = 221.799, z = -1989.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2001, area_id = 13 },
	{ config_id = 6004, gadget_id = 70500000, pos = { x = -3686.725, y = 227.162, z = -2041.633 }, rot = { x = 0.000, y = 182.940, z = 0.000 }, level = 27, point_type = 2001, area_id = 13 },
	{ config_id = 6005, gadget_id = 70500000, pos = { x = -3659.030, y = 222.400, z = -2006.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2004, area_id = 13 },
	{ config_id = 6006, gadget_id = 70290001, pos = { x = -3611.469, y = 210.425, z = -1951.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 6007, gadget_id = 70500000, pos = { x = -3611.451, y = 210.994, z = -1951.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 6006, area_id = 13 },
	{ config_id = 6008, gadget_id = 70500000, pos = { x = -3611.533, y = 211.280, z = -1952.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 6006, area_id = 13 },
	{ config_id = 6009, gadget_id = 70500000, pos = { x = -3611.200, y = 211.692, z = -1951.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 6006, area_id = 13 },
	{ config_id = 6010, gadget_id = 70290001, pos = { x = -3654.339, y = 227.712, z = -2033.334 }, rot = { x = 0.000, y = 290.566, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 6011, gadget_id = 70500000, pos = { x = -3654.708, y = 228.281, z = -2033.177 }, rot = { x = 0.000, y = 290.566, z = 0.000 }, level = 27, point_type = 3002, owner = 6010, area_id = 13 },
	{ config_id = 6012, gadget_id = 70500000, pos = { x = -3653.991, y = 228.567, z = -2033.533 }, rot = { x = 0.000, y = 290.566, z = 0.000 }, level = 27, point_type = 3002, owner = 6010, area_id = 13 },
	{ config_id = 6013, gadget_id = 70500000, pos = { x = -3654.148, y = 228.979, z = -2033.119 }, rot = { x = 0.000, y = 290.566, z = 0.000 }, level = 27, point_type = 3002, owner = 6010, area_id = 13 },
	{ config_id = 6014, gadget_id = 70290002, pos = { x = -3593.429, y = 220.695, z = -2022.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 6015, gadget_id = 70500000, pos = { x = -3594.500, y = 222.313, z = -2021.516 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 27, point_type = 2034, owner = 6014, area_id = 13 },
	{ config_id = 6016, gadget_id = 70500000, pos = { x = -3592.559, y = 223.323, z = -2023.240 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 27, point_type = 2034, owner = 6014, area_id = 13 },
	{ config_id = 6017, gadget_id = 70500000, pos = { x = -3593.386, y = 223.603, z = -2020.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2034, owner = 6014, area_id = 13 },
	{ config_id = 6018, gadget_id = 70290001, pos = { x = -3814.195, y = 208.500, z = -1803.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 6019, gadget_id = 70500000, pos = { x = -3814.178, y = 209.069, z = -1802.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 6018, area_id = 13 },
	{ config_id = 6020, gadget_id = 70500000, pos = { x = -3814.260, y = 209.355, z = -1803.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 6018, area_id = 13 },
	{ config_id = 6021, gadget_id = 70500000, pos = { x = -3813.927, y = 209.767, z = -1803.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 6018, area_id = 13 },
	{ config_id = 6022, gadget_id = 70500000, pos = { x = -3698.090, y = 198.439, z = -1992.511 }, rot = { x = 0.000, y = 322.670, z = 0.000 }, level = 27, point_type = 2037, area_id = 13 },
	{ config_id = 6023, gadget_id = 70500000, pos = { x = -3699.332, y = 198.491, z = -1985.762 }, rot = { x = 0.000, y = 261.340, z = 0.000 }, level = 27, point_type = 2037, area_id = 13 },
	{ config_id = 6024, gadget_id = 70500000, pos = { x = -3623.662, y = 197.905, z = -1936.569 }, rot = { x = 0.000, y = 24.630, z = 0.000 }, level = 27, point_type = 2037, area_id = 13 },
	{ config_id = 6025, gadget_id = 70500000, pos = { x = -3644.993, y = 199.018, z = -1811.207 }, rot = { x = 0.000, y = 65.500, z = 0.000 }, level = 27, point_type = 2037, area_id = 13 },
	{ config_id = 6026, gadget_id = 70500000, pos = { x = -3648.145, y = 199.236, z = -1815.079 }, rot = { x = 0.000, y = 75.560, z = 0.000 }, level = 27, point_type = 2037, area_id = 13 },
	{ config_id = 6027, gadget_id = 70500000, pos = { x = -3806.248, y = 198.855, z = -1827.048 }, rot = { x = 0.000, y = 32.810, z = 0.000 }, level = 27, point_type = 2037, area_id = 13 },
	{ config_id = 6028, gadget_id = 70500000, pos = { x = -3802.503, y = 198.481, z = -1828.901 }, rot = { x = 0.000, y = 69.440, z = 0.000 }, level = 27, point_type = 2037, area_id = 13 },
	{ config_id = 6029, gadget_id = 70500000, pos = { x = -3802.885, y = 198.663, z = -1827.789 }, rot = { x = 0.000, y = 66.740, z = 0.000 }, level = 27, point_type = 2037, area_id = 13 },
	{ config_id = 6030, gadget_id = 70500000, pos = { x = -3587.264, y = 215.419, z = -1964.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2035, area_id = 13 },
	{ config_id = 6031, gadget_id = 70500000, pos = { x = -3603.340, y = 213.756, z = -1969.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2035, area_id = 13 },
	{ config_id = 6032, gadget_id = 70500000, pos = { x = -3619.443, y = 225.972, z = -2013.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2035, area_id = 13 },
	{ config_id = 6033, gadget_id = 70500000, pos = { x = -3659.630, y = 198.882, z = -1876.180 }, rot = { x = 0.000, y = 66.650, z = 0.000 }, level = 27, point_type = 2033, area_id = 13 },
	{ config_id = 6034, gadget_id = 70500000, pos = { x = -3670.807, y = 199.638, z = -1839.693 }, rot = { x = 0.000, y = 48.540, z = 0.000 }, level = 27, point_type = 2033, area_id = 13 },
	{ config_id = 6035, gadget_id = 70500000, pos = { x = -3663.666, y = 199.856, z = -1838.347 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 27, point_type = 2033, area_id = 13 },
	{ config_id = 6036, gadget_id = 70500000, pos = { x = -3673.611, y = 199.077, z = -1829.563 }, rot = { x = 0.000, y = 45.410, z = 0.000 }, level = 27, point_type = 2033, area_id = 13 },
	{ config_id = 6037, gadget_id = 70500000, pos = { x = -3648.361, y = 199.717, z = -1832.377 }, rot = { x = 0.000, y = 16.690, z = 0.000 }, level = 27, point_type = 2033, area_id = 13 },
	{ config_id = 6038, gadget_id = 70500000, pos = { x = -3639.591, y = 199.287, z = -1833.602 }, rot = { x = 0.000, y = 347.980, z = 0.000 }, level = 27, point_type = 2033, area_id = 13 },
	{ config_id = 6039, gadget_id = 70290001, pos = { x = -3680.182, y = 226.049, z = -2034.191 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 6040, gadget_id = 70500000, pos = { x = -3680.165, y = 226.618, z = -2033.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 6039, area_id = 13 },
	{ config_id = 6041, gadget_id = 70500000, pos = { x = -3680.247, y = 226.904, z = -2034.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 6039, area_id = 13 },
	{ config_id = 6042, gadget_id = 70500000, pos = { x = -3679.914, y = 227.316, z = -2034.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3002, owner = 6039, area_id = 13 },
	{ config_id = 6043, gadget_id = 70290003, pos = { x = -3598.135, y = 245.987, z = -2038.390 }, rot = { x = 0.000, y = 129.868, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 6044, gadget_id = 70500000, pos = { x = -3598.219, y = 246.090, z = -2038.354 }, rot = { x = 0.000, y = 129.866, z = 0.000 }, level = 27, point_type = 3003, owner = 6043, area_id = 13 },
	{ config_id = 6045, gadget_id = 70500000, pos = { x = -3598.042, y = 246.090, z = -2038.430 }, rot = { x = 0.000, y = 129.866, z = 0.000 }, level = 27, point_type = 3003, owner = 6043, area_id = 13 }
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
		gadgets = { 6001, 6002, 6003, 6004, 6005, 6006, 6007, 6008, 6009, 6010, 6011, 6012, 6013, 6014, 6015, 6016, 6017, 6018, 6019, 6020, 6021, 6022, 6023, 6024, 6025, 6026, 6027, 6028, 6029, 6030, 6031, 6032, 6033, 6034, 6035, 6036, 6037, 6038, 6039, 6040, 6041, 6042, 6043, 6044, 6045 },
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
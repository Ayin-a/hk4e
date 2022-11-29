-- 基础信息
local base_info = {
	group_id = 201004902
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
	{ config_id = 2, gadget_id = 70500000, pos = { x = -19.327, y = 1.314, z = 11.903 }, rot = { x = 0.000, y = 179.690, z = 0.000 }, level = 1, point_type = 9002, isOneoff = true, room = 100401 },
	{ config_id = 3, gadget_id = 70500000, pos = { x = -25.768, y = -3.365, z = -16.082 }, rot = { x = 0.000, y = 179.700, z = 0.000 }, level = 1, point_type = 9003, isOneoff = true, room = 100401 },
	{ config_id = 4, gadget_id = 70500000, pos = { x = 21.713, y = 1.939, z = 13.663 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, point_type = 9004, isOneoff = true, room = 100402 },
	{ config_id = 5, gadget_id = 70500000, pos = { x = 22.530, y = 2.216, z = 2.931 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, point_type = 9005, isOneoff = true, room = 100402 },
	{ config_id = 6, gadget_id = 70500000, pos = { x = 22.464, y = 2.164, z = 5.126 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, point_type = 9006, isOneoff = true, room = 100402 },
	{ config_id = 7, gadget_id = 70500000, pos = { x = -22.388, y = 2.642, z = -20.430 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, point_type = 9001, isOneoff = true, room = 100401 },
	{ config_id = 8, gadget_id = 70500000, pos = { x = -19.856, y = 2.189, z = 1.895 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, point_type = 9007, isOneoff = true, room = 100401 },
	{ config_id = 9, gadget_id = 70500000, pos = { x = -23.245, y = -3.211, z = -10.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9008, isOneoff = true, room = 100401 },
	{ config_id = 10, gadget_id = 70500000, pos = { x = -12.801, y = -4.427, z = 7.851 }, rot = { x = 0.000, y = 358.064, z = 0.000 }, level = 1, point_type = 9009, isOneoff = true, room = 100401 },
	{ config_id = 11, gadget_id = 70500000, pos = { x = -30.152, y = 1.952, z = 16.321 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, point_type = 9010, isOneoff = true, room = 100401 },
	{ config_id = 12, gadget_id = 70500000, pos = { x = -23.209, y = -3.556, z = 5.705 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, point_type = 9011, isOneoff = true, room = 100401 },
	{ config_id = 13, gadget_id = 70500000, pos = { x = -17.690, y = 0.768, z = 10.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9012, isOneoff = true, room = 100401 },
	{ config_id = 14, gadget_id = 70500000, pos = { x = -29.176, y = -3.242, z = 9.629 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9013, isOneoff = true, room = 100401 },
	{ config_id = 15, gadget_id = 70500000, pos = { x = -34.577, y = -3.358, z = -16.112 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, point_type = 9014, isOneoff = true, room = 100401 },
	{ config_id = 16, gadget_id = 70500000, pos = { x = -36.923, y = -2.831, z = -16.073 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, point_type = 9015, isOneoff = true, room = 100401 },
	{ config_id = 17, gadget_id = 70500000, pos = { x = -10.645, y = 2.168, z = -17.409 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, point_type = 9016, isOneoff = true, room = 100401 },
	{ config_id = 19, gadget_id = 70500000, pos = { x = -12.801, y = -3.878, z = -10.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9017, isOneoff = true, room = 100401 },
	{ config_id = 20, gadget_id = 70500000, pos = { x = -31.206, y = 2.625, z = 16.042 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, point_type = 9018, isOneoff = true, room = 100401 },
	{ config_id = 21, gadget_id = 70500000, pos = { x = 14.447, y = 1.673, z = 14.305 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, point_type = 9019, isOneoff = true, room = 100402 },
	{ config_id = 22, gadget_id = 70500000, pos = { x = -28.720, y = -3.709, z = -4.125 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, point_type = 9020, isOneoff = true, room = 100401 },
	{ config_id = 23, gadget_id = 70500000, pos = { x = -23.421, y = 1.551, z = -16.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9021, isOneoff = true, room = 100401 },
	{ config_id = 24, gadget_id = 70500000, pos = { x = -20.066, y = -3.964, z = -21.024 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, point_type = 9022, isOneoff = true, room = 100401 },
	{ config_id = 25, gadget_id = 70500000, pos = { x = -19.452, y = -3.698, z = 10.503 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, point_type = 9023, isOneoff = true, room = 100401 },
	{ config_id = 26, gadget_id = 70500000, pos = { x = -26.173, y = 1.520, z = 16.147 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, point_type = 9024, isOneoff = true, room = 100401 },
	{ config_id = 27, gadget_id = 70500000, pos = { x = -28.379, y = 1.155, z = -10.480 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, point_type = 9025, isOneoff = true, room = 100401 },
	{ config_id = 28, gadget_id = 70500000, pos = { x = 21.923, y = 1.487, z = 0.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9026, isOneoff = true, room = 100402 },
	{ config_id = 29, gadget_id = 70500000, pos = { x = -19.921, y = -3.786, z = 2.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9027, isOneoff = true, room = 100401 },
	{ config_id = 902001, gadget_id = 70500000, pos = { x = 19.839, y = 1.019, z = 9.335 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9051, isOneoff = true, room = 100402 },
	{ config_id = 902002, gadget_id = 70500000, pos = { x = -12.540, y = 1.316, z = -20.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9046, isOneoff = true, room = 100401 },
	{ config_id = 902003, gadget_id = 70500000, pos = { x = -14.943, y = 1.314, z = -20.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9048, isOneoff = true, room = 100401 },
	{ config_id = 902004, gadget_id = 70500000, pos = { x = -18.191, y = 1.295, z = -20.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9049, isOneoff = true, room = 100401 },
	{ config_id = 902005, gadget_id = 70500000, pos = { x = -14.214, y = 0.939, z = -15.591 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9050, isOneoff = true, room = 100401 },
	{ config_id = 902006, gadget_id = 70500000, pos = { x = 12.265, y = 1.799, z = 14.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9062, isOneoff = true, room = 100402 },
	{ config_id = 902007, gadget_id = 70500000, pos = { x = 18.577, y = 1.783, z = 14.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9063, isOneoff = true, room = 100402 },
	{ config_id = 902008, gadget_id = 70500000, pos = { x = 16.113, y = 1.518, z = 0.434 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9073, isOneoff = true, room = 100402 },
	{ config_id = 902009, gadget_id = 70500000, pos = { x = 21.940, y = 0.253, z = 3.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9210, room = 100402 },
	{ config_id = 902010, gadget_id = 70500000, pos = { x = 16.827, y = 0.299, z = 1.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9213, room = 100402 },
	{ config_id = 902011, gadget_id = 70500000, pos = { x = -17.642, y = 0.639, z = -9.116 }, rot = { x = 0.000, y = 82.950, z = 0.000 }, level = 1, point_type = 9235, isOneoff = true, room = 100401 },
	{ config_id = 902012, gadget_id = 70500000, pos = { x = -33.745, y = -3.622, z = 9.662 }, rot = { x = 0.000, y = 100.700, z = 0.000 }, level = 1, point_type = 9236, isOneoff = true, room = 100401 },
	{ config_id = 902013, gadget_id = 70500000, pos = { x = -28.378, y = -3.085, z = -10.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9237, isOneoff = true, room = 100401 },
	{ config_id = 902014, gadget_id = 70500000, pos = { x = -17.674, y = 0.705, z = 4.209 }, rot = { x = 0.000, y = 89.800, z = 0.000 }, level = 1, point_type = 9234, isOneoff = true, room = 100401 }
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
		gadgets = { 2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 19, 20, 22, 23, 24, 25, 26, 27, 29, 902002, 902003, 902004, 902005, 902011, 902012, 902013, 902014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 902001, 902002, 902003, 902004, 902005, 902006, 902007, 902008, 902009, 902010, 902011, 902012, 902013, 902014 },
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
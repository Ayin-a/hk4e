-- 基础信息
local base_info = {
	group_id = 133003044
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
	{ config_id = 44001, gadget_id = 70211149, pos = { x = 2419.171, y = 208.396, z = -1284.580 }, rot = { x = 0.134, y = 274.323, z = 0.000 }, level = 1, drop_tag = "逐月节低级蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44002, gadget_id = 70211149, pos = { x = 2606.254, y = 223.339, z = -1488.314 }, rot = { x = 4.776, y = 299.244, z = 356.325 }, level = 1, drop_tag = "逐月节低级蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44003, gadget_id = 70211149, pos = { x = 2398.467, y = 244.704, z = -1328.500 }, rot = { x = 357.790, y = 331.685, z = 354.689 }, level = 1, drop_tag = "逐月节低级蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44004, gadget_id = 70211149, pos = { x = 2444.199, y = 223.239, z = -1360.299 }, rot = { x = 345.604, y = 274.886, z = 353.587 }, level = 1, drop_tag = "逐月节低级蒙德", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44005, gadget_id = 70211149, pos = { x = 2585.805, y = 213.277, z = -1251.613 }, rot = { x = 7.821, y = 0.415, z = 24.225 }, level = 1, drop_tag = "逐月节低级蒙德", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44006, gadget_id = 70211149, pos = { x = 2573.391, y = 211.480, z = -1300.291 }, rot = { x = 344.771, y = 20.510, z = 359.491 }, level = 1, drop_tag = "逐月节低级蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44007, gadget_id = 70211149, pos = { x = 2509.250, y = 202.677, z = -1106.433 }, rot = { x = 0.000, y = 134.000, z = 0.000 }, level = 1, drop_tag = "逐月节低级蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44008, gadget_id = 70211149, pos = { x = 2597.507, y = 204.353, z = -1066.998 }, rot = { x = 7.912, y = 314.528, z = 6.337 }, level = 26, drop_tag = "逐月节低级蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44009, gadget_id = 70211149, pos = { x = 2529.821, y = 211.345, z = -1275.502 }, rot = { x = 1.864, y = 302.868, z = 355.157 }, level = 1, drop_tag = "逐月节低级蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44010, gadget_id = 70211149, pos = { x = 2636.215, y = 225.283, z = -1307.707 }, rot = { x = 7.794, y = 245.301, z = 341.478 }, level = 1, drop_tag = "逐月节低级蒙德", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44011, gadget_id = 70211149, pos = { x = 2601.533, y = 214.308, z = -1329.642 }, rot = { x = 13.256, y = 276.606, z = 10.116 }, level = 1, drop_tag = "逐月节低级蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44012, gadget_id = 70211149, pos = { x = 2534.043, y = 212.884, z = -1285.717 }, rot = { x = 347.368, y = 273.529, z = 4.470 }, level = 1, drop_tag = "逐月节低级蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44013, gadget_id = 70211149, pos = { x = 2469.172, y = 219.402, z = -1316.690 }, rot = { x = 353.965, y = 3.970, z = 1.061 }, level = 1, drop_tag = "逐月节低级蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44014, gadget_id = 70211149, pos = { x = 2566.291, y = 217.956, z = -1485.663 }, rot = { x = 0.234, y = 303.645, z = 342.444 }, level = 1, drop_tag = "逐月节低级蒙德", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44015, gadget_id = 70211149, pos = { x = 2586.637, y = 219.138, z = -1268.149 }, rot = { x = 350.058, y = 197.073, z = 344.554 }, level = 1, drop_tag = "逐月节低级蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44016, gadget_id = 70211149, pos = { x = 2648.311, y = 232.135, z = -1451.518 }, rot = { x = 6.111, y = 239.005, z = 346.223 }, level = 1, drop_tag = "逐月节低级蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44017, gadget_id = 70211149, pos = { x = 2560.332, y = 214.430, z = -1418.227 }, rot = { x = 13.581, y = 64.466, z = 347.966 }, level = 1, drop_tag = "逐月节低级蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44018, gadget_id = 70211149, pos = { x = 2489.567, y = 208.812, z = -1122.270 }, rot = { x = 349.874, y = 117.043, z = 358.545 }, level = 1, drop_tag = "逐月节低级蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44019, gadget_id = 70211149, pos = { x = 2537.905, y = 205.411, z = -1127.881 }, rot = { x = 358.955, y = 280.616, z = 0.715 }, level = 1, drop_tag = "逐月节低级蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44020, gadget_id = 70211149, pos = { x = 2512.632, y = 204.180, z = -1197.475 }, rot = { x = 6.667, y = 242.463, z = 353.551 }, level = 1, drop_tag = "逐月节低级蒙德", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44021, gadget_id = 70211149, pos = { x = 2582.350, y = 219.712, z = -1212.707 }, rot = { x = 7.212, y = 275.567, z = 353.826 }, level = 1, drop_tag = "逐月节低级蒙德", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44022, gadget_id = 70211149, pos = { x = 2627.459, y = 225.792, z = -1586.894 }, rot = { x = 359.165, y = 275.553, z = 20.416 }, level = 1, drop_tag = "逐月节低级蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44023, gadget_id = 70211149, pos = { x = 2608.762, y = 226.022, z = -1605.513 }, rot = { x = 5.384, y = 9.790, z = 359.767 }, level = 1, drop_tag = "逐月节低级蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44024, gadget_id = 70211149, pos = { x = 2636.632, y = 208.267, z = -1638.473 }, rot = { x = 351.039, y = 353.271, z = 357.057 }, level = 1, drop_tag = "逐月节低级蒙德", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44025, gadget_id = 70211149, pos = { x = 2648.144, y = 207.504, z = -1660.295 }, rot = { x = 12.593, y = 42.404, z = 355.998 }, level = 1, drop_tag = "逐月节低级蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44026, gadget_id = 70211149, pos = { x = 2497.313, y = 244.633, z = -1427.069 }, rot = { x = 350.125, y = 10.081, z = 0.730 }, level = 1, drop_tag = "逐月节低级蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44027, gadget_id = 70211149, pos = { x = 2651.430, y = 246.784, z = -1332.340 }, rot = { x = 355.539, y = 316.638, z = 356.795 }, level = 26, drop_tag = "逐月节低级蒙德", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44028, gadget_id = 70211149, pos = { x = 2481.196, y = 266.817, z = -1460.205 }, rot = { x = 356.843, y = 290.470, z = 1.120 }, level = 6, drop_tag = "逐月节低级蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44029, gadget_id = 70211149, pos = { x = 2397.207, y = 218.706, z = -1308.557 }, rot = { x = 7.847, y = 25.589, z = 355.823 }, level = 1, drop_tag = "逐月节低级蒙德", isOneoff = true, persistent = true, area_id = 1 },
	{ config_id = 44030, gadget_id = 70211149, pos = { x = 2621.898, y = 265.639, z = -1592.371 }, rot = { x = 355.818, y = 63.490, z = 358.988 }, level = 1, drop_tag = "逐月节低级蒙德", isOneoff = true, persistent = true, area_id = 1 }
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
		gadgets = { 44001, 44002, 44003, 44004, 44005, 44006, 44007, 44008, 44009, 44010, 44011, 44012, 44013, 44014, 44015, 44016, 44017, 44018, 44019, 44020, 44021, 44022, 44023, 44024, 44025, 44026, 44027, 44028, 44029, 44030 },
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
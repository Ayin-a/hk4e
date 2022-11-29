-- 基础信息
local base_info = {
	group_id = 133102150
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
	{ config_id = 150001, gadget_id = 70290003, pos = { x = 1548.457, y = 221.896, z = 316.951 }, rot = { x = 334.810, y = 356.851, z = 14.026 }, level = 16, area_id = 5 },
	{ config_id = 150002, gadget_id = 70500000, pos = { x = 1548.555, y = 221.913, z = 316.796 }, rot = { x = 334.810, y = 356.851, z = 14.026 }, level = 16, point_type = 3003, owner = 150001, area_id = 5 },
	{ config_id = 150003, gadget_id = 70500000, pos = { x = 1548.546, y = 221.995, z = 316.969 }, rot = { x = 334.810, y = 356.851, z = 14.026 }, level = 16, point_type = 3003, owner = 150001, area_id = 5 },
	{ config_id = 150004, gadget_id = 70500000, pos = { x = 1559.709, y = 219.534, z = 260.840 }, rot = { x = 10.567, y = 358.007, z = 330.375 }, level = 16, point_type = 3011, area_id = 5 },
	{ config_id = 150005, gadget_id = 70500000, pos = { x = 1559.344, y = 219.545, z = 261.129 }, rot = { x = 342.679, y = 12.700, z = 327.456 }, level = 16, point_type = 3011, area_id = 5 },
	{ config_id = 150006, gadget_id = 70500000, pos = { x = 1642.554, y = 257.479, z = 273.823 }, rot = { x = 323.791, y = 339.574, z = 33.124 }, level = 16, point_type = 1001, area_id = 5 },
	{ config_id = 150007, gadget_id = 70500000, pos = { x = 1648.347, y = 256.281, z = 275.333 }, rot = { x = 21.152, y = 352.533, z = 338.023 }, level = 16, point_type = 1001, area_id = 5 },
	{ config_id = 150008, gadget_id = 70290001, pos = { x = 1676.854, y = 285.488, z = 370.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 150009, gadget_id = 70500000, pos = { x = 1676.870, y = 286.057, z = 371.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 150008, area_id = 5 },
	{ config_id = 150010, gadget_id = 70500000, pos = { x = 1676.789, y = 286.343, z = 370.297 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 150008, area_id = 5 },
	{ config_id = 150011, gadget_id = 70500000, pos = { x = 1677.121, y = 286.755, z = 370.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 150008, area_id = 5 },
	{ config_id = 150012, gadget_id = 70500000, pos = { x = 1618.033, y = 296.854, z = 386.551 }, rot = { x = 0.000, y = 111.984, z = 0.000 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 150013, gadget_id = 70500000, pos = { x = 1701.435, y = 286.350, z = 346.661 }, rot = { x = 0.000, y = 274.064, z = 0.000 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 150014, gadget_id = 70500000, pos = { x = 1650.081, y = 276.840, z = 325.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 150015, gadget_id = 70500000, pos = { x = 1645.181, y = 294.256, z = 372.133 }, rot = { x = 0.000, y = 55.860, z = 0.000 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 150016, gadget_id = 70500000, pos = { x = 1787.922, y = 237.839, z = 457.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 2001, area_id = 5 },
	{ config_id = 150017, gadget_id = 70500000, pos = { x = 1674.781, y = 286.100, z = 356.921 }, rot = { x = 0.000, y = 357.402, z = 0.000 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 150018, gadget_id = 70500000, pos = { x = 1540.108, y = 237.922, z = 488.564 }, rot = { x = 0.000, y = 32.027, z = 0.000 }, level = 18, point_type = 2009, area_id = 5 },
	{ config_id = 150019, gadget_id = 70500000, pos = { x = 1713.345, y = 286.768, z = 371.380 }, rot = { x = 0.000, y = 217.854, z = 0.000 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 150020, gadget_id = 70500000, pos = { x = 1679.058, y = 285.261, z = 403.287 }, rot = { x = 0.000, y = 34.901, z = 0.000 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 150021, gadget_id = 70500000, pos = { x = 1678.907, y = 279.448, z = 306.787 }, rot = { x = 347.447, y = 48.730, z = 352.765 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 150022, gadget_id = 70500000, pos = { x = 1564.652, y = 240.005, z = 489.847 }, rot = { x = 0.000, y = 102.913, z = 0.000 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 150023, gadget_id = 70500000, pos = { x = 1555.969, y = 238.457, z = 508.417 }, rot = { x = 0.000, y = 275.094, z = 0.000 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 150024, gadget_id = 70500000, pos = { x = 1552.966, y = 241.488, z = 467.312 }, rot = { x = 0.000, y = 351.491, z = 0.000 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 150025, gadget_id = 70500000, pos = { x = 1590.848, y = 286.625, z = 360.187 }, rot = { x = 4.813, y = 64.118, z = 6.840 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 150026, gadget_id = 70500000, pos = { x = 1630.209, y = 296.695, z = 383.068 }, rot = { x = 0.000, y = 179.732, z = 0.000 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 150027, gadget_id = 70500000, pos = { x = 1666.439, y = 286.535, z = 372.730 }, rot = { x = 0.000, y = 27.442, z = 0.000 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 150028, gadget_id = 70500000, pos = { x = 1756.236, y = 291.870, z = 420.456 }, rot = { x = 0.000, y = 81.201, z = 0.000 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 150029, gadget_id = 70500000, pos = { x = 1645.601, y = 269.575, z = 307.687 }, rot = { x = 0.000, y = 14.640, z = 0.000 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 150030, gadget_id = 70500000, pos = { x = 1551.506, y = 240.094, z = 474.453 }, rot = { x = 0.000, y = 178.140, z = 0.000 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 150031, gadget_id = 70500000, pos = { x = 1666.204, y = 287.193, z = 362.780 }, rot = { x = 0.000, y = 77.223, z = 0.000 }, level = 18, point_type = 2002, area_id = 5 },
	{ config_id = 150032, gadget_id = 70500000, pos = { x = 1595.584, y = 260.878, z = 484.978 }, rot = { x = 0.000, y = 149.469, z = 0.000 }, level = 18, point_type = 2001, area_id = 5 },
	{ config_id = 150033, gadget_id = 70500000, pos = { x = 1770.618, y = 287.577, z = 395.873 }, rot = { x = 0.000, y = 242.042, z = 0.000 }, level = 18, point_type = 2001, area_id = 5 },
	{ config_id = 150034, gadget_id = 70500000, pos = { x = 1645.704, y = 284.529, z = 350.835 }, rot = { x = 0.000, y = 13.228, z = 0.000 }, level = 18, point_type = 2004, area_id = 5 },
	{ config_id = 150035, gadget_id = 70500000, pos = { x = 1540.249, y = 242.817, z = 282.747 }, rot = { x = 0.000, y = 83.162, z = 0.000 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 150036, gadget_id = 70500000, pos = { x = 1629.598, y = 281.399, z = 339.686 }, rot = { x = 0.000, y = 278.426, z = 0.000 }, level = 18, point_type = 2004, area_id = 5 },
	{ config_id = 150037, gadget_id = 70500000, pos = { x = 1596.963, y = 249.398, z = 292.009 }, rot = { x = 8.090, y = 227.797, z = 347.469 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 150038, gadget_id = 70500000, pos = { x = 1570.732, y = 287.530, z = 406.560 }, rot = { x = 0.000, y = 46.122, z = 0.000 }, level = 18, point_type = 2004, area_id = 5 },
	{ config_id = 150039, gadget_id = 70500000, pos = { x = 1725.032, y = 293.792, z = 365.928 }, rot = { x = 0.000, y = 155.245, z = 0.000 }, level = 18, point_type = 2001, area_id = 5 },
	{ config_id = 150040, gadget_id = 70500000, pos = { x = 1778.483, y = 252.107, z = 486.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 2001, area_id = 5 },
	{ config_id = 150041, gadget_id = 70500000, pos = { x = 1650.332, y = 271.290, z = 305.633 }, rot = { x = 19.368, y = 233.752, z = 1.573 }, level = 18, point_type = 2004, area_id = 5 },
	{ config_id = 150042, gadget_id = 70500000, pos = { x = 1572.293, y = 246.173, z = 453.208 }, rot = { x = 0.000, y = 162.275, z = 0.000 }, level = 18, point_type = 2001, area_id = 5 },
	{ config_id = 150043, gadget_id = 70500000, pos = { x = 1709.927, y = 342.248, z = 502.631 }, rot = { x = 0.000, y = 266.915, z = 0.000 }, level = 18, point_type = 2004, area_id = 5 },
	{ config_id = 150044, gadget_id = 70500000, pos = { x = 1613.391, y = 314.100, z = 424.538 }, rot = { x = 0.000, y = 59.450, z = 0.000 }, level = 18, point_type = 2001, area_id = 5 },
	{ config_id = 150045, gadget_id = 70500000, pos = { x = 1612.640, y = 266.934, z = 502.942 }, rot = { x = 0.000, y = 239.310, z = 0.000 }, level = 18, point_type = 2001, area_id = 5 },
	{ config_id = 150046, gadget_id = 70500000, pos = { x = 1754.114, y = 253.762, z = 506.761 }, rot = { x = 347.767, y = 32.368, z = 4.822 }, level = 18, point_type = 2030, area_id = 5 },
	{ config_id = 150047, gadget_id = 70500000, pos = { x = 1758.849, y = 253.866, z = 504.201 }, rot = { x = 357.506, y = 357.317, z = 9.878 }, level = 18, point_type = 2030, area_id = 5 },
	{ config_id = 150048, gadget_id = 70290001, pos = { x = 1606.015, y = 287.520, z = 364.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 150049, gadget_id = 70500000, pos = { x = 1606.032, y = 288.089, z = 365.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 150048, area_id = 5 },
	{ config_id = 150050, gadget_id = 70500000, pos = { x = 1605.950, y = 288.375, z = 364.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 150048, area_id = 5 },
	{ config_id = 150051, gadget_id = 70500000, pos = { x = 1606.283, y = 288.787, z = 364.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 150048, area_id = 5 },
	{ config_id = 150052, gadget_id = 70500000, pos = { x = 1604.412, y = 260.418, z = 475.411 }, rot = { x = 0.000, y = 84.089, z = 0.000 }, level = 18, point_type = 2001, area_id = 5 },
	{ config_id = 150053, gadget_id = 70500000, pos = { x = 1651.735, y = 278.569, z = 491.046 }, rot = { x = 40.318, y = 352.382, z = 339.443 }, level = 18, point_type = 2005, area_id = 5 },
	{ config_id = 150054, gadget_id = 70500000, pos = { x = 1754.839, y = 274.031, z = 471.024 }, rot = { x = 0.000, y = 169.493, z = 0.000 }, level = 18, point_type = 2001, area_id = 5 },
	{ config_id = 150055, gadget_id = 70500000, pos = { x = 1654.798, y = 290.284, z = 393.025 }, rot = { x = 0.000, y = 169.493, z = 0.000 }, level = 18, point_type = 2001, area_id = 5 },
	{ config_id = 150056, gadget_id = 70290001, pos = { x = 1698.847, y = 282.201, z = 320.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 150057, gadget_id = 70500000, pos = { x = 1698.864, y = 282.770, z = 320.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 150056, area_id = 5 },
	{ config_id = 150058, gadget_id = 70500000, pos = { x = 1698.782, y = 283.056, z = 319.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 150056, area_id = 5 },
	{ config_id = 150059, gadget_id = 70500000, pos = { x = 1699.115, y = 283.468, z = 320.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3002, owner = 150056, area_id = 5 },
	{ config_id = 150060, gadget_id = 70290002, pos = { x = 1764.690, y = 291.451, z = 420.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 150061, gadget_id = 70500000, pos = { x = 1763.619, y = 293.069, z = 421.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3011, owner = 150060, area_id = 5 },
	{ config_id = 150062, gadget_id = 70500000, pos = { x = 1765.560, y = 294.079, z = 419.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3011, owner = 150060, area_id = 5 },
	{ config_id = 150063, gadget_id = 70500000, pos = { x = 1764.733, y = 294.359, z = 421.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3011, owner = 150060, area_id = 5 },
	{ config_id = 150064, gadget_id = 70290002, pos = { x = 1567.576, y = 241.475, z = 503.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 150065, gadget_id = 70500000, pos = { x = 1566.505, y = 243.093, z = 504.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3011, owner = 150064, area_id = 5 },
	{ config_id = 150066, gadget_id = 70500000, pos = { x = 1568.446, y = 244.103, z = 502.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3011, owner = 150064, area_id = 5 },
	{ config_id = 150067, gadget_id = 70500000, pos = { x = 1567.619, y = 244.383, z = 504.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3011, owner = 150064, area_id = 5 },
	{ config_id = 150068, gadget_id = 70500000, pos = { x = 1761.857, y = 291.224, z = 409.466 }, rot = { x = 4.856, y = 64.725, z = 16.833 }, level = 18, point_type = 1001, area_id = 5 },
	{ config_id = 150069, gadget_id = 70500000, pos = { x = 1763.765, y = 291.139, z = 408.625 }, rot = { x = 21.951, y = 0.675, z = 338.396 }, level = 18, point_type = 1001, area_id = 5 },
	{ config_id = 150070, gadget_id = 70500000, pos = { x = 1760.515, y = 291.407, z = 410.558 }, rot = { x = 351.386, y = 10.933, z = 357.871 }, level = 18, point_type = 1001, area_id = 5 }
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
		gadgets = { 150001, 150002, 150003, 150004, 150005, 150006, 150007, 150008, 150009, 150010, 150011, 150012, 150013, 150014, 150015, 150016, 150017, 150018, 150019, 150020, 150021, 150022, 150023, 150024, 150025, 150026, 150027, 150028, 150029, 150030, 150031, 150032, 150033, 150034, 150035, 150036, 150037, 150038, 150039, 150040, 150041, 150042, 150043, 150044, 150045, 150046, 150047, 150048, 150049, 150050, 150051, 150052, 150053, 150054, 150055, 150056, 150057, 150058, 150059, 150060, 150061, 150062, 150063, 150064, 150065, 150066, 150067, 150068, 150069, 150070 },
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
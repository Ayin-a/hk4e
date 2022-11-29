-- 基础信息
local base_info = {
	group_id = 133002018
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
	{ config_id = 18001, gadget_id = 70500000, pos = { x = 1554.637, y = 233.512, z = -336.448 }, rot = { x = 0.000, y = 329.276, z = 0.000 }, level = 16, point_type = 2004, area_id = 3 },
	{ config_id = 18002, gadget_id = 70500000, pos = { x = 1572.551, y = 241.231, z = -294.264 }, rot = { x = 0.000, y = 345.750, z = 0.000 }, level = 16, point_type = 2004, area_id = 3 },
	{ config_id = 18003, gadget_id = 70500000, pos = { x = 1789.611, y = 215.253, z = -480.743 }, rot = { x = 0.000, y = 260.358, z = 0.000 }, level = 10, point_type = 2001, area_id = 3 },
	{ config_id = 18004, gadget_id = 70500000, pos = { x = 1617.262, y = 228.983, z = -489.998 }, rot = { x = 0.000, y = 260.358, z = 0.000 }, level = 10, point_type = 2001, area_id = 3 },
	{ config_id = 18005, gadget_id = 70290001, pos = { x = 1659.580, y = 203.680, z = -419.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 18006, gadget_id = 70500000, pos = { x = 1659.597, y = 204.249, z = -418.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3002, owner = 18005, area_id = 3 },
	{ config_id = 18007, gadget_id = 70500000, pos = { x = 1659.515, y = 204.535, z = -419.647 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3002, owner = 18005, area_id = 3 },
	{ config_id = 18008, gadget_id = 70500000, pos = { x = 1659.848, y = 204.947, z = -419.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3002, owner = 18005, area_id = 3 },
	{ config_id = 18009, gadget_id = 70290003, pos = { x = 1736.656, y = 214.368, z = -295.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 18010, gadget_id = 70500000, pos = { x = 1736.656, y = 214.471, z = -295.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3003, owner = 18009, area_id = 3 },
	{ config_id = 18011, gadget_id = 70500000, pos = { x = 1736.656, y = 214.471, z = -295.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3003, owner = 18009, area_id = 3 },
	{ config_id = 18012, gadget_id = 70290003, pos = { x = 1667.194, y = 211.652, z = -476.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 18013, gadget_id = 70500000, pos = { x = 1667.194, y = 211.755, z = -476.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3003, owner = 18012, area_id = 3 },
	{ config_id = 18014, gadget_id = 70500000, pos = { x = 1667.194, y = 211.755, z = -476.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3003, owner = 18012, area_id = 3 },
	{ config_id = 18015, gadget_id = 70290001, pos = { x = 1676.342, y = 202.062, z = -347.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 18016, gadget_id = 70500000, pos = { x = 1676.359, y = 202.631, z = -346.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3002, owner = 18015, area_id = 3 },
	{ config_id = 18017, gadget_id = 70500000, pos = { x = 1676.277, y = 202.917, z = -347.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3002, owner = 18015, area_id = 3 },
	{ config_id = 18018, gadget_id = 70500000, pos = { x = 1676.610, y = 203.329, z = -347.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3002, owner = 18015, area_id = 3 },
	{ config_id = 18019, gadget_id = 70290001, pos = { x = 1605.459, y = 201.822, z = -428.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 18020, gadget_id = 70500000, pos = { x = 1605.476, y = 202.391, z = -427.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3002, owner = 18019, area_id = 3 },
	{ config_id = 18021, gadget_id = 70500000, pos = { x = 1605.394, y = 202.677, z = -428.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3002, owner = 18019, area_id = 3 },
	{ config_id = 18022, gadget_id = 70500000, pos = { x = 1605.727, y = 203.089, z = -428.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3002, owner = 18019, area_id = 3 },
	{ config_id = 18023, gadget_id = 70290003, pos = { x = 1688.777, y = 218.870, z = -384.264 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 18024, gadget_id = 70500000, pos = { x = 1688.777, y = 218.973, z = -384.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3003, owner = 18023, area_id = 3 },
	{ config_id = 18025, gadget_id = 70500000, pos = { x = 1688.777, y = 218.973, z = -384.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3003, owner = 18023, area_id = 3 },
	{ config_id = 18026, gadget_id = 70290003, pos = { x = 1742.517, y = 219.078, z = -279.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 18027, gadget_id = 70500000, pos = { x = 1742.517, y = 219.181, z = -279.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3003, owner = 18026, area_id = 3 },
	{ config_id = 18028, gadget_id = 70500000, pos = { x = 1742.517, y = 219.181, z = -279.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3003, owner = 18026, area_id = 3 },
	{ config_id = 18029, gadget_id = 70500000, pos = { x = 1705.687, y = 205.048, z = -463.379 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 2019, area_id = 3 },
	{ config_id = 18030, gadget_id = 70500000, pos = { x = 1707.470, y = 205.420, z = -462.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 2019, area_id = 3 },
	{ config_id = 18031, gadget_id = 70500000, pos = { x = 1709.133, y = 205.550, z = -464.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 2019, area_id = 3 },
	{ config_id = 18032, gadget_id = 70500000, pos = { x = 1707.690, y = 205.294, z = -465.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 2019, area_id = 3 },
	{ config_id = 18033, gadget_id = 70500000, pos = { x = 1683.983, y = 207.066, z = -394.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 2019, area_id = 3 },
	{ config_id = 18034, gadget_id = 70500000, pos = { x = 1683.010, y = 207.096, z = -395.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 2019, area_id = 3 },
	{ config_id = 18035, gadget_id = 70500000, pos = { x = 1681.829, y = 207.153, z = -396.839 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 2003, area_id = 3 },
	{ config_id = 18036, gadget_id = 70500000, pos = { x = 1682.993, y = 207.107, z = -397.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 2019, area_id = 3 },
	{ config_id = 18037, gadget_id = 70500000, pos = { x = 1684.112, y = 207.039, z = -397.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 2019, area_id = 3 },
	{ config_id = 18038, gadget_id = 70500000, pos = { x = 1685.375, y = 206.980, z = -395.959 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 2003, area_id = 3 },
	{ config_id = 18039, gadget_id = 70500000, pos = { x = 1736.946, y = 210.131, z = -285.759 }, rot = { x = 3.534, y = 359.613, z = 353.746 }, level = 10, point_type = 2002, area_id = 3 },
	{ config_id = 18040, gadget_id = 70500000, pos = { x = 1752.544, y = 206.489, z = -299.849 }, rot = { x = 350.247, y = 0.000, z = 0.000 }, level = 10, point_type = 2001, area_id = 3 },
	{ config_id = 18041, gadget_id = 70500000, pos = { x = 1727.841, y = 205.293, z = -333.136 }, rot = { x = 356.455, y = 359.667, z = 5.366 }, level = 10, point_type = 2001, area_id = 3 },
	{ config_id = 18042, gadget_id = 70500000, pos = { x = 1640.173, y = 201.896, z = -390.210 }, rot = { x = 358.214, y = 359.916, z = 2.685 }, level = 10, point_type = 2001, area_id = 3 },
	{ config_id = 18043, gadget_id = 70500000, pos = { x = 1720.419, y = 207.870, z = -509.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 2003, area_id = 3 },
	{ config_id = 18044, gadget_id = 70500000, pos = { x = 1702.208, y = 207.352, z = -383.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 2003, area_id = 3 },
	{ config_id = 18045, gadget_id = 70500000, pos = { x = 1701.250, y = 207.177, z = -383.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 2003, area_id = 3 },
	{ config_id = 18046, gadget_id = 70500000, pos = { x = 1700.369, y = 206.996, z = -382.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 2003, area_id = 3 },
	{ config_id = 18047, gadget_id = 70500000, pos = { x = 1702.733, y = 207.135, z = -381.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 2003, area_id = 3 },
	{ config_id = 18048, gadget_id = 70500000, pos = { x = 1701.487, y = 207.076, z = -381.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 2003, area_id = 3 },
	{ config_id = 18049, gadget_id = 70500000, pos = { x = 1700.740, y = 206.974, z = -381.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 2003, area_id = 3 },
	{ config_id = 18050, gadget_id = 70500000, pos = { x = 1699.308, y = 207.013, z = -383.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 2003, area_id = 3 },
	{ config_id = 18051, gadget_id = 70500000, pos = { x = 1727.513, y = 207.892, z = -466.340 }, rot = { x = 0.000, y = 242.720, z = 0.000 }, level = 10, point_type = 2004, area_id = 3 },
	{ config_id = 18052, gadget_id = 70500000, pos = { x = 1644.718, y = 202.657, z = -370.385 }, rot = { x = 0.000, y = 343.381, z = 0.000 }, level = 10, point_type = 2004, area_id = 3 },
	{ config_id = 18053, gadget_id = 70500000, pos = { x = 1568.359, y = 231.979, z = -486.463 }, rot = { x = 0.000, y = 303.655, z = 0.000 }, level = 10, point_type = 2004, area_id = 3 },
	{ config_id = 18054, gadget_id = 70290002, pos = { x = 1777.052, y = 207.604, z = -300.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 18055, gadget_id = 70500000, pos = { x = 1775.981, y = 209.222, z = -299.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3011, owner = 18054, area_id = 3 },
	{ config_id = 18056, gadget_id = 70500000, pos = { x = 1777.922, y = 210.232, z = -301.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3011, owner = 18054, area_id = 3 },
	{ config_id = 18057, gadget_id = 70500000, pos = { x = 1777.095, y = 210.512, z = -299.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3011, owner = 18054, area_id = 3 },
	{ config_id = 18058, gadget_id = 70500000, pos = { x = 1707.687, y = 206.473, z = -492.016 }, rot = { x = 0.000, y = 173.442, z = 0.000 }, level = 10, point_type = 2002, area_id = 3 },
	{ config_id = 18059, gadget_id = 70500000, pos = { x = 1632.603, y = 203.572, z = -449.703 }, rot = { x = 0.000, y = 173.442, z = 0.000 }, level = 10, point_type = 2002, area_id = 3 },
	{ config_id = 18060, gadget_id = 70500000, pos = { x = 1587.978, y = 202.712, z = -444.915 }, rot = { x = 341.225, y = 160.489, z = 2.158 }, level = 10, point_type = 2004, area_id = 3 },
	{ config_id = 18061, gadget_id = 70500000, pos = { x = 1565.693, y = 230.566, z = -357.327 }, rot = { x = 0.000, y = 167.458, z = 0.000 }, level = 16, point_type = 2004, area_id = 3 },
	{ config_id = 18062, gadget_id = 70500000, pos = { x = 1639.590, y = 201.643, z = -437.740 }, rot = { x = 0.000, y = 173.442, z = 0.000 }, level = 10, point_type = 2002, area_id = 3 },
	{ config_id = 18063, gadget_id = 70500000, pos = { x = 1650.823, y = 205.258, z = -460.625 }, rot = { x = 0.000, y = 173.442, z = 0.000 }, level = 10, point_type = 2002, area_id = 3 },
	{ config_id = 18064, gadget_id = 70500000, pos = { x = 1638.768, y = 206.986, z = -460.095 }, rot = { x = 0.000, y = 173.442, z = 0.000 }, level = 10, point_type = 2002, area_id = 3 },
	{ config_id = 18065, gadget_id = 70500000, pos = { x = 1595.340, y = 201.572, z = -431.995 }, rot = { x = 325.956, y = 178.421, z = 6.558 }, level = 10, point_type = 1001, area_id = 3 },
	{ config_id = 18066, gadget_id = 70500000, pos = { x = 1746.648, y = 214.739, z = -495.192 }, rot = { x = 356.131, y = 238.152, z = 357.134 }, level = 10, point_type = 2004, area_id = 3 },
	{ config_id = 18067, gadget_id = 70500000, pos = { x = 1785.707, y = 208.430, z = -295.948 }, rot = { x = 0.112, y = 0.027, z = 357.150 }, level = 10, point_type = 2001, area_id = 3 },
	{ config_id = 18068, gadget_id = 70500000, pos = { x = 1753.577, y = 209.551, z = -292.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 2004, area_id = 3 },
	{ config_id = 18069, gadget_id = 70500000, pos = { x = 1731.911, y = 211.993, z = -346.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 2004, area_id = 3 },
	{ config_id = 18070, gadget_id = 70500000, pos = { x = 1667.924, y = 207.856, z = -398.057 }, rot = { x = 0.000, y = 217.019, z = 0.000 }, level = 10, point_type = 2004, area_id = 3 },
	{ config_id = 18071, gadget_id = 70500000, pos = { x = 1542.532, y = 202.965, z = -467.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 2004, area_id = 3 }
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
		gadgets = { 18001, 18002, 18003, 18004, 18005, 18006, 18007, 18008, 18009, 18010, 18011, 18012, 18013, 18014, 18015, 18016, 18017, 18018, 18019, 18020, 18021, 18022, 18023, 18024, 18025, 18026, 18027, 18028, 18029, 18030, 18031, 18032, 18033, 18034, 18035, 18036, 18037, 18038, 18039, 18040, 18041, 18042, 18043, 18044, 18045, 18046, 18047, 18048, 18049, 18050, 18051, 18052, 18053, 18054, 18055, 18056, 18057, 18058, 18059, 18060, 18061, 18062, 18063, 18064, 18065, 18066, 18067, 18068, 18069, 18070, 18071 },
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
-- 基础信息
local base_info = {
	group_id = 133003012
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
	{ config_id = 12001, gadget_id = 70500000, pos = { x = 2140.287, y = 196.326, z = -1679.461 }, rot = { x = 29.629, y = 268.109, z = 359.065 }, level = 5, point_type = 1001, area_id = 1 },
	{ config_id = 12002, gadget_id = 70500000, pos = { x = 2139.240, y = 196.524, z = -1684.978 }, rot = { x = 49.299, y = 267.483, z = 1.322 }, level = 5, point_type = 1001, area_id = 1 },
	{ config_id = 12003, gadget_id = 70500000, pos = { x = 2294.893, y = 278.887, z = -1777.705 }, rot = { x = 0.000, y = 316.061, z = 0.000 }, level = 15, point_type = 2004, area_id = 1 },
	{ config_id = 12004, gadget_id = 70500000, pos = { x = 2171.523, y = 248.596, z = -1655.817 }, rot = { x = 0.000, y = 302.866, z = 0.000 }, level = 15, point_type = 2004, area_id = 1 },
	{ config_id = 12005, gadget_id = 70500000, pos = { x = 2167.232, y = 260.372, z = -1763.775 }, rot = { x = 0.000, y = 39.510, z = 0.000 }, level = 15, point_type = 2001, area_id = 1 },
	{ config_id = 12006, gadget_id = 70500000, pos = { x = 2118.606, y = 231.490, z = -1622.912 }, rot = { x = 0.000, y = 58.501, z = 0.000 }, level = 5, point_type = 2001, area_id = 1 },
	{ config_id = 12007, gadget_id = 70290003, pos = { x = 2192.438, y = 272.890, z = -1682.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 12008, gadget_id = 70500000, pos = { x = 2192.438, y = 272.993, z = -1682.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 3003, owner = 12007, area_id = 1 },
	{ config_id = 12009, gadget_id = 70500000, pos = { x = 2192.438, y = 272.993, z = -1682.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 3003, owner = 12007, area_id = 1 },
	{ config_id = 12010, gadget_id = 70500000, pos = { x = 2226.784, y = 269.633, z = -1663.073 }, rot = { x = 0.000, y = 334.770, z = 0.000 }, level = 15, point_type = 2007, area_id = 1 },
	{ config_id = 12011, gadget_id = 70290001, pos = { x = 2302.888, y = 274.138, z = -1602.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 1 },
	{ config_id = 12012, gadget_id = 70500000, pos = { x = 2302.905, y = 274.707, z = -1602.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3002, owner = 12011, area_id = 1 },
	{ config_id = 12013, gadget_id = 70500000, pos = { x = 2302.823, y = 274.993, z = -1603.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3002, owner = 12011, area_id = 1 },
	{ config_id = 12014, gadget_id = 70500000, pos = { x = 2303.156, y = 275.405, z = -1603.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3002, owner = 12011, area_id = 1 },
	{ config_id = 12015, gadget_id = 70290001, pos = { x = 2247.250, y = 270.723, z = -1748.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 12016, gadget_id = 70500000, pos = { x = 2247.267, y = 271.292, z = -1748.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 3002, owner = 12015, area_id = 1 },
	{ config_id = 12017, gadget_id = 70500000, pos = { x = 2247.185, y = 271.578, z = -1748.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 3002, owner = 12015, area_id = 1 },
	{ config_id = 12018, gadget_id = 70500000, pos = { x = 2247.518, y = 271.990, z = -1748.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 3002, owner = 12015, area_id = 1 },
	{ config_id = 12019, gadget_id = 70290001, pos = { x = 2279.545, y = 286.479, z = -1727.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 12020, gadget_id = 70500000, pos = { x = 2279.562, y = 287.048, z = -1727.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 3002, owner = 12019, area_id = 1 },
	{ config_id = 12021, gadget_id = 70500000, pos = { x = 2279.480, y = 287.334, z = -1728.333 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 3002, owner = 12019, area_id = 1 },
	{ config_id = 12022, gadget_id = 70500000, pos = { x = 2279.813, y = 287.746, z = -1728.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 3002, owner = 12019, area_id = 1 },
	{ config_id = 12023, gadget_id = 70290003, pos = { x = 2155.009, y = 242.584, z = -1628.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 12024, gadget_id = 70500000, pos = { x = 2155.009, y = 242.687, z = -1628.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, point_type = 3003, owner = 12023, area_id = 1 },
	{ config_id = 12025, gadget_id = 70500000, pos = { x = 2155.009, y = 242.687, z = -1628.681 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, point_type = 3003, owner = 12023, area_id = 1 },
	{ config_id = 12026, gadget_id = 70500000, pos = { x = 2249.290, y = 271.505, z = -1754.079 }, rot = { x = 0.000, y = 138.914, z = 0.000 }, level = 15, point_type = 1001, area_id = 1 },
	{ config_id = 12027, gadget_id = 70500000, pos = { x = 2245.586, y = 271.011, z = -1751.249 }, rot = { x = 0.000, y = 138.914, z = 0.000 }, level = 15, point_type = 1001, area_id = 1 },
	{ config_id = 12028, gadget_id = 70500000, pos = { x = 2217.335, y = 250.815, z = -1650.127 }, rot = { x = 0.000, y = 138.914, z = 0.000 }, level = 15, point_type = 1001, area_id = 1 },
	{ config_id = 12029, gadget_id = 70500000, pos = { x = 2079.528, y = 225.209, z = -1590.689 }, rot = { x = 0.000, y = 138.914, z = 329.268 }, level = 5, point_type = 1001, area_id = 1 },
	{ config_id = 12030, gadget_id = 70500000, pos = { x = 2285.938, y = 276.383, z = -1769.368 }, rot = { x = 0.000, y = 184.102, z = 0.000 }, level = 15, point_type = 2007, area_id = 1 },
	{ config_id = 12031, gadget_id = 70500000, pos = { x = 2215.951, y = 270.993, z = -1758.109 }, rot = { x = 0.000, y = 184.102, z = 0.000 }, level = 15, point_type = 2007, area_id = 1 },
	{ config_id = 12032, gadget_id = 70500000, pos = { x = 2159.483, y = 241.693, z = -1691.341 }, rot = { x = 0.000, y = 184.102, z = 0.000 }, level = 5, point_type = 2007, area_id = 1 },
	{ config_id = 12033, gadget_id = 70500000, pos = { x = 2167.460, y = 247.398, z = -1598.524 }, rot = { x = 0.000, y = 184.102, z = 0.000 }, level = 15, point_type = 2007, area_id = 1 },
	{ config_id = 12034, gadget_id = 70500000, pos = { x = 2131.097, y = 232.408, z = -1571.356 }, rot = { x = 0.000, y = 184.102, z = 0.000 }, level = 5, point_type = 2007, area_id = 1 },
	{ config_id = 12035, gadget_id = 70500000, pos = { x = 2135.113, y = 232.515, z = -1577.646 }, rot = { x = 0.000, y = 226.382, z = 0.000 }, level = 5, point_type = 2007, area_id = 1 },
	{ config_id = 12036, gadget_id = 70500000, pos = { x = 2101.294, y = 231.271, z = -1557.586 }, rot = { x = 0.000, y = 184.102, z = 0.000 }, level = 5, point_type = 2004, area_id = 1 },
	{ config_id = 12037, gadget_id = 70500000, pos = { x = 2258.321, y = 249.727, z = -1620.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 2002, area_id = 1 },
	{ config_id = 12038, gadget_id = 70500000, pos = { x = 2265.424, y = 245.935, z = -1561.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 2002, area_id = 1 },
	{ config_id = 12039, gadget_id = 70500000, pos = { x = 2245.950, y = 249.040, z = -1619.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 2002, area_id = 1 },
	{ config_id = 12040, gadget_id = 70500000, pos = { x = 2208.588, y = 270.554, z = -1750.967 }, rot = { x = 0.000, y = 272.659, z = 0.000 }, level = 15, point_type = 2009, area_id = 1 },
	{ config_id = 12041, gadget_id = 70500000, pos = { x = 2177.846, y = 247.595, z = -1606.812 }, rot = { x = 0.000, y = 73.253, z = 0.000 }, level = 15, point_type = 2009, area_id = 1 },
	{ config_id = 12042, gadget_id = 70500000, pos = { x = 2118.980, y = 231.248, z = -1651.350 }, rot = { x = 0.000, y = 304.851, z = 0.000 }, level = 5, point_type = 2009, area_id = 1 },
	{ config_id = 12043, gadget_id = 70500000, pos = { x = 2060.106, y = 220.669, z = -1696.491 }, rot = { x = 0.000, y = 287.048, z = 0.000 }, level = 5, point_type = 2009, area_id = 2 },
	{ config_id = 12044, gadget_id = 70500000, pos = { x = 2072.127, y = 223.200, z = -1636.153 }, rot = { x = 0.000, y = 37.075, z = 0.000 }, level = 5, point_type = 2009, area_id = 1 },
	{ config_id = 12045, gadget_id = 70500000, pos = { x = 2085.173, y = 223.224, z = -1607.217 }, rot = { x = 0.000, y = 37.075, z = 0.000 }, level = 5, point_type = 2004, area_id = 1 },
	{ config_id = 12046, gadget_id = 70500000, pos = { x = 2088.615, y = 222.519, z = -1643.680 }, rot = { x = 0.000, y = 60.100, z = 0.000 }, level = 5, point_type = 2004, area_id = 1 },
	{ config_id = 12047, gadget_id = 70500000, pos = { x = 2108.668, y = 233.379, z = -1678.042 }, rot = { x = 0.000, y = 113.892, z = 0.000 }, level = 5, point_type = 2004, area_id = 1 },
	{ config_id = 12048, gadget_id = 70500000, pos = { x = 2129.990, y = 202.682, z = -1749.827 }, rot = { x = 358.374, y = 12.951, z = 12.539 }, level = 5, point_type = 2004, area_id = 1 },
	{ config_id = 12049, gadget_id = 70500000, pos = { x = 2074.029, y = 224.880, z = -1699.033 }, rot = { x = 0.000, y = 60.100, z = 0.000 }, level = 5, point_type = 2001, area_id = 1 },
	{ config_id = 12050, gadget_id = 70500000, pos = { x = 2109.789, y = 224.104, z = -1725.527 }, rot = { x = 0.000, y = 60.100, z = 0.000 }, level = 5, point_type = 2001, area_id = 1 },
	{ config_id = 12051, gadget_id = 70290003, pos = { x = 2113.568, y = 218.944, z = -1717.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 12052, gadget_id = 70500000, pos = { x = 2113.568, y = 219.047, z = -1717.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, point_type = 3003, owner = 12051, area_id = 1 },
	{ config_id = 12053, gadget_id = 70500000, pos = { x = 2113.568, y = 219.047, z = -1717.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, point_type = 3003, owner = 12051, area_id = 1 },
	{ config_id = 12054, gadget_id = 70290001, pos = { x = 2084.313, y = 226.172, z = -1682.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 12055, gadget_id = 70500000, pos = { x = 2084.330, y = 226.741, z = -1681.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, point_type = 3002, owner = 12054, area_id = 1 },
	{ config_id = 12056, gadget_id = 70500000, pos = { x = 2084.248, y = 227.027, z = -1682.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, point_type = 3002, owner = 12054, area_id = 1 },
	{ config_id = 12057, gadget_id = 70500000, pos = { x = 2084.581, y = 227.439, z = -1682.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, point_type = 3002, owner = 12054, area_id = 1 }
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
		gadgets = { 12001, 12002, 12003, 12004, 12005, 12006, 12007, 12008, 12009, 12010, 12011, 12012, 12013, 12014, 12015, 12016, 12017, 12018, 12019, 12020, 12021, 12022, 12023, 12024, 12025, 12026, 12027, 12028, 12029, 12030, 12031, 12032, 12033, 12034, 12035, 12036, 12037, 12038, 12039, 12040, 12041, 12042, 12043, 12044, 12045, 12046, 12047, 12048, 12049, 12050, 12051, 12052, 12053, 12054, 12055, 12056, 12057 },
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
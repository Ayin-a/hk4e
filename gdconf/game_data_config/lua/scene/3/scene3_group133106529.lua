-- 基础信息
local base_info = {
	group_id = 133106529
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 529001, monster_id = 28030101, pos = { x = -797.639, y = 195.131, z = 1768.824 }, rot = { x = 0.000, y = 174.249, z = 0.000 }, level = 36, drop_tag = "鸟类", pose_id = 901, area_id = 19 },
	{ config_id = 529002, monster_id = 28030101, pos = { x = -791.650, y = 196.069, z = 1765.404 }, rot = { x = 0.000, y = 212.788, z = 0.000 }, level = 36, drop_tag = "鸟类", pose_id = 901, area_id = 19 },
	{ config_id = 529011, monster_id = 20010301, pos = { x = -796.910, y = 169.696, z = 1928.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 },
	{ config_id = 529012, monster_id = 20010301, pos = { x = -800.261, y = 168.526, z = 1925.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 },
	{ config_id = 529015, monster_id = 20010401, pos = { x = -873.154, y = 226.433, z = 1853.126 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 19 },
	{ config_id = 529016, monster_id = 28030201, pos = { x = -861.358, y = 254.348, z = 1876.090 }, rot = { x = 0.000, y = 106.110, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 529017, monster_id = 28030101, pos = { x = -806.010, y = 216.548, z = 1900.709 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "鸟类", pose_id = 901, area_id = 19 },
	{ config_id = 529018, monster_id = 28030101, pos = { x = -777.568, y = 224.310, z = 2022.669 }, rot = { x = 0.000, y = 227.759, z = 0.000 }, level = 36, drop_tag = "鸟类", pose_id = 901, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 529003, gadget_id = 70210101, pos = { x = -801.438, y = 178.930, z = 1753.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 529004, gadget_id = 70210101, pos = { x = -801.645, y = 178.531, z = 1755.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 529005, gadget_id = 70290200, pos = { x = -825.243, y = 174.110, z = 1779.516 }, rot = { x = 7.171, y = 358.837, z = 341.594 }, level = 36, area_id = 19 },
	{ config_id = 529006, gadget_id = 70290200, pos = { x = -824.219, y = 166.821, z = 1865.424 }, rot = { x = 5.990, y = 159.664, z = 346.629 }, level = 36, area_id = 19 },
	{ config_id = 529010, gadget_id = 70290200, pos = { x = -794.200, y = 177.594, z = 1946.146 }, rot = { x = 348.910, y = 34.550, z = 8.448 }, level = 36, area_id = 19 },
	{ config_id = 529021, gadget_id = 70290200, pos = { x = -796.467, y = 149.961, z = 1898.542 }, rot = { x = 354.823, y = 359.845, z = 9.052 }, level = 36, area_id = 19 },
	{ config_id = 529022, gadget_id = 70210101, pos = { x = -711.283, y = 160.638, z = 1943.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 },
	{ config_id = 529023, gadget_id = 70210101, pos = { x = -710.467, y = 160.365, z = 1942.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 19 }
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
	monsters = {
		{ config_id = 529008, monster_id = 28030101, pos = { x = -848.527, y = 209.264, z = 1782.252 }, rot = { x = 0.000, y = 174.249, z = 0.000 }, level = 36, drop_tag = "鸟类", pose_id = 901, area_id = 19 }
	},
	gadgets = {
		{ config_id = 529007, gadget_id = 70500000, pos = { x = -849.454, y = 194.786, z = 1843.920 }, rot = { x = 0.000, y = 189.507, z = 0.000 }, level = 36, point_type = 2026, area_id = 19 },
		{ config_id = 529009, gadget_id = 70500000, pos = { x = -852.805, y = 203.890, z = 1844.802 }, rot = { x = 0.000, y = 178.794, z = 0.000 }, level = 36, point_type = 2026, area_id = 19 },
		{ config_id = 529013, gadget_id = 70500000, pos = { x = -814.199, y = 198.433, z = 1942.619 }, rot = { x = 0.000, y = 134.594, z = 0.000 }, level = 36, point_type = 2026, area_id = 19 },
		{ config_id = 529014, gadget_id = 70500000, pos = { x = -803.046, y = 191.772, z = 1944.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2028, area_id = 19 },
		{ config_id = 529019, gadget_id = 70500000, pos = { x = -849.600, y = 231.970, z = 1919.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2028, area_id = 19 },
		{ config_id = 529020, gadget_id = 70290001, pos = { x = -848.089, y = 227.031, z = 1900.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 19 },
		{ config_id = 529024, gadget_id = 70500000, pos = { x = -848.072, y = 227.600, z = 1901.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 3002, owner = 529020, area_id = 19 },
		{ config_id = 529025, gadget_id = 70500000, pos = { x = -848.154, y = 227.886, z = 1900.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 3002, owner = 529020, area_id = 19 },
		{ config_id = 529026, gadget_id = 70500000, pos = { x = -847.821, y = 228.298, z = 1900.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 3002, owner = 529020, area_id = 19 },
		{ config_id = 529027, gadget_id = 70500000, pos = { x = -850.865, y = 231.676, z = 1892.869 }, rot = { x = 0.000, y = 99.531, z = 0.000 }, level = 36, point_type = 2026, area_id = 19 },
		{ config_id = 529028, gadget_id = 70500000, pos = { x = -818.634, y = 171.854, z = 1782.837 }, rot = { x = 357.862, y = 0.188, z = 349.956 }, level = 36, point_type = 2004, area_id = 19 },
		{ config_id = 529029, gadget_id = 70500000, pos = { x = -818.542, y = 171.892, z = 1784.277 }, rot = { x = 354.688, y = 222.973, z = 8.798 }, level = 36, point_type = 2004, area_id = 19 }
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
		monsters = { 529001, 529002, 529011, 529012, 529015, 529016, 529017, 529018 },
		gadgets = { 529003, 529004, 529005, 529006, 529010, 529021, 529022, 529023 },
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
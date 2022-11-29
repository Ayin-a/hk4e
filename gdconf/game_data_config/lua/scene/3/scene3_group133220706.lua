-- 基础信息
local base_info = {
	group_id = 133220706
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
	{ config_id = 706001, gadget_id = 70710522, pos = { x = -2489.076, y = 241.548, z = -4463.907 }, rot = { x = 357.176, y = 266.865, z = 0.155 }, level = 27, area_id = 11 },
	{ config_id = 706002, gadget_id = 70710522, pos = { x = -2496.667, y = 242.159, z = -4459.029 }, rot = { x = 358.306, y = 99.725, z = 351.147 }, level = 27, area_id = 11 },
	{ config_id = 706003, gadget_id = 70710521, pos = { x = -2492.925, y = 241.914, z = -4461.672 }, rot = { x = 356.092, y = 18.073, z = 357.685 }, level = 27, area_id = 11 },
	{ config_id = 706004, gadget_id = 70220048, pos = { x = -2497.704, y = 242.126, z = -4456.942 }, rot = { x = 357.357, y = 339.266, z = 1.979 }, level = 27, drop_id = 1000100, drop_count = 1, area_id = 11 },
	{ config_id = 706005, gadget_id = 70220048, pos = { x = -2498.638, y = 242.379, z = -4454.743 }, rot = { x = 358.234, y = 311.899, z = 1.370 }, level = 27, drop_id = 1000100, drop_count = 1, area_id = 11 },
	{ config_id = 706006, gadget_id = 70220048, pos = { x = -2495.733, y = 241.437, z = -4441.345 }, rot = { x = 0.788, y = 320.751, z = 92.240 }, level = 27, drop_id = 1000100, drop_count = 1, area_id = 11 },
	{ config_id = 706007, gadget_id = 70220048, pos = { x = -2497.362, y = 242.609, z = -4453.256 }, rot = { x = 359.259, y = 279.056, z = 357.299 }, level = 27, drop_id = 1000100, drop_count = 1, area_id = 11 },
	{ config_id = 706008, gadget_id = 70710521, pos = { x = -2478.644, y = 241.557, z = -4447.805 }, rot = { x = 359.071, y = 132.681, z = 1.846 }, level = 27, area_id = 11 },
	{ config_id = 706009, gadget_id = 70710522, pos = { x = -2502.774, y = 242.740, z = -4450.842 }, rot = { x = 0.626, y = 18.205, z = 8.019 }, level = 27, area_id = 11 },
	{ config_id = 706010, gadget_id = 70220048, pos = { x = -2494.186, y = 240.758, z = -4441.646 }, rot = { x = 3.176, y = 272.860, z = 2.181 }, level = 27, drop_id = 1000100, drop_count = 1, area_id = 11 },
	{ config_id = 706011, gadget_id = 70210101, pos = { x = -2493.280, y = 242.121, z = -4461.936 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 706012, gadget_id = 70210101, pos = { x = -2493.875, y = 242.971, z = -4459.896 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 706013, gadget_id = 70210101, pos = { x = -2488.787, y = 242.444, z = -4464.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 706014, gadget_id = 70210101, pos = { x = -2489.833, y = 243.758, z = -4463.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 706015, gadget_id = 70210101, pos = { x = -2496.729, y = 243.381, z = -4458.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 706016, gadget_id = 70210101, pos = { x = -2461.344, y = 241.268, z = -4451.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 706017, gadget_id = 70210101, pos = { x = -2460.324, y = 241.366, z = -4450.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 706018, gadget_id = 70210101, pos = { x = -2459.067, y = 240.721, z = -4457.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 706019, gadget_id = 70210101, pos = { x = -2476.011, y = 241.509, z = -4464.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 706020, gadget_id = 70210101, pos = { x = -2475.193, y = 241.766, z = -4466.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 706021, gadget_id = 70210101, pos = { x = -2478.479, y = 242.338, z = -4447.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 706022, gadget_id = 70210101, pos = { x = -2476.885, y = 242.669, z = -4447.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 706023, gadget_id = 70220048, pos = { x = -2473.372, y = 241.237, z = -4446.705 }, rot = { x = 359.965, y = 352.467, z = 356.309 }, level = 27, drop_id = 1000100, drop_count = 1, area_id = 11 },
	{ config_id = 706024, gadget_id = 70220048, pos = { x = -2472.411, y = 241.160, z = -4448.678 }, rot = { x = 356.306, y = 206.395, z = 7.478 }, level = 27, drop_id = 1000100, drop_count = 1, area_id = 11 },
	{ config_id = 706025, gadget_id = 70210101, pos = { x = -2493.648, y = 242.670, z = -4460.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 706026, gadget_id = 70210101, pos = { x = -2495.258, y = 244.199, z = -4459.491 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 706027, gadget_id = 70710521, pos = { x = -2491.920, y = 240.585, z = -4460.951 }, rot = { x = 341.442, y = 7.726, z = 273.612 }, level = 27, area_id = 11 },
	{ config_id = 706028, gadget_id = 70710522, pos = { x = -2493.717, y = 240.949, z = -4457.566 }, rot = { x = 353.248, y = 82.631, z = 350.275 }, level = 27, area_id = 11 },
	{ config_id = 706029, gadget_id = 70710522, pos = { x = -2490.395, y = 240.231, z = -4461.832 }, rot = { x = 349.741, y = 124.017, z = 347.899 }, level = 27, area_id = 11 },
	{ config_id = 706030, gadget_id = 70710108, pos = { x = -2498.865, y = 242.376, z = -4456.174 }, rot = { x = 359.351, y = 171.027, z = 352.317 }, level = 27, area_id = 11 },
	{ config_id = 706031, gadget_id = 70710108, pos = { x = -2491.813, y = 241.525, z = -4462.077 }, rot = { x = 3.749, y = 99.197, z = 355.202 }, level = 27, area_id = 11 },
	{ config_id = 706032, gadget_id = 70710522, pos = { x = -2483.285, y = 240.059, z = -4460.018 }, rot = { x = 351.145, y = 65.322, z = 350.858 }, level = 27, area_id = 11 },
	{ config_id = 706033, gadget_id = 70710522, pos = { x = -2480.303, y = 240.216, z = -4454.272 }, rot = { x = 354.114, y = 140.938, z = 359.566 }, level = 27, area_id = 11 },
	{ config_id = 706034, gadget_id = 70710108, pos = { x = -2482.805, y = 241.655, z = -4458.423 }, rot = { x = 359.351, y = 156.949, z = 352.317 }, level = 27, area_id = 11 },
	{ config_id = 706035, gadget_id = 70710521, pos = { x = -2485.230, y = 240.416, z = -4459.176 }, rot = { x = 341.442, y = 7.726, z = 273.612 }, level = 27, area_id = 11 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 706001, 706002, 706003, 706004, 706005, 706006, 706007, 706008, 706009, 706010, 706023, 706024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 706001, 706002, 706003, 706004, 706005, 706006, 706007, 706008, 706009, 706010, 706011, 706012, 706013, 706014, 706015, 706016, 706017, 706018, 706019, 706020, 706021, 706022, 706023, 706024, 706025, 706026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 706027, 706028, 706029, 706030, 706031, 706032, 706033, 706034, 706035 },
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
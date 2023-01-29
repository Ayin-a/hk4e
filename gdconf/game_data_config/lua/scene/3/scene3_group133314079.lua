-- 基础信息
local base_info = {
	group_id = 133314079
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
	{ config_id = 79001, gadget_id = 70290003, pos = { x = -191.161, y = -40.554, z = 4799.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 79002, gadget_id = 70500000, pos = { x = -191.161, y = -40.451, z = 4799.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3003, owner = 79001, area_id = 32 },
	{ config_id = 79003, gadget_id = 70500000, pos = { x = -191.161, y = -40.451, z = 4799.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3003, owner = 79001, area_id = 32 },
	{ config_id = 79004, gadget_id = 70500000, pos = { x = -125.937, y = -0.084, z = 4989.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2049, area_id = 32 },
	{ config_id = 79005, gadget_id = 70500000, pos = { x = -125.324, y = -0.084, z = 4991.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2049, area_id = 32 },
	{ config_id = 79006, gadget_id = 70540037, pos = { x = -250.200, y = -37.855, z = 4718.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 79007, gadget_id = 70500000, pos = { x = -187.807, y = -48.773, z = 4849.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 7034, area_id = 32 },
	{ config_id = 79008, gadget_id = 70500000, pos = { x = -187.613, y = -48.663, z = 4848.730 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 7034, area_id = 32 },
	{ config_id = 79009, gadget_id = 70290003, pos = { x = -170.681, y = -26.038, z = 4820.875 }, rot = { x = 0.000, y = 0.000, z = 17.404 }, level = 32, area_id = 32 },
	{ config_id = 79010, gadget_id = 70500000, pos = { x = -170.712, y = -25.940, z = 4820.785 }, rot = { x = 0.000, y = 0.000, z = 17.403 }, level = 32, point_type = 3003, owner = 79009, area_id = 32 },
	{ config_id = 79011, gadget_id = 70500000, pos = { x = -170.712, y = -25.940, z = 4820.977 }, rot = { x = 0.000, y = 0.000, z = 17.403 }, level = 32, point_type = 3003, owner = 79009, area_id = 32 },
	{ config_id = 79012, gadget_id = 70290003, pos = { x = -133.426, y = -17.591, z = 4858.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 79013, gadget_id = 70500000, pos = { x = -133.426, y = -17.488, z = 4858.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3003, owner = 79012, area_id = 32 },
	{ config_id = 79014, gadget_id = 70500000, pos = { x = -133.426, y = -17.488, z = 4858.746 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3003, owner = 79012, area_id = 32 },
	-- 秃鹫巢穴隐藏小洞
	{ config_id = 79015, gadget_id = 70500000, pos = { x = -242.535, y = -38.773, z = 4736.153 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 7034, area_id = 32 },
	-- 秃鹫巢穴隐藏小洞
	{ config_id = 79016, gadget_id = 70500000, pos = { x = -242.444, y = -38.724, z = 4736.445 }, rot = { x = 0.000, y = 32.400, z = 0.000 }, level = 32, point_type = 7034, area_id = 32 },
	{ config_id = 79017, gadget_id = 70290003, pos = { x = -132.525, y = -0.015, z = 4875.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 79018, gadget_id = 70500000, pos = { x = -132.525, y = 0.088, z = 4875.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3003, owner = 79017, area_id = 32 },
	{ config_id = 79019, gadget_id = 70500000, pos = { x = -132.525, y = 0.088, z = 4875.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3003, owner = 79017, area_id = 32 },
	-- 秃鹫巢穴隐藏小洞
	{ config_id = 79020, gadget_id = 70290003, pos = { x = -116.767, y = 7.334, z = 4889.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 79021, gadget_id = 70500000, pos = { x = -116.767, y = 7.437, z = 4889.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3003, owner = 79020, area_id = 32 },
	{ config_id = 79022, gadget_id = 70500000, pos = { x = -116.767, y = 7.437, z = 4889.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3003, owner = 79020, area_id = 32 },
	{ config_id = 79023, gadget_id = 70500000, pos = { x = -249.814, y = -37.479, z = 4718.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2049, owner = 79006, area_id = 32 },
	{ config_id = 79024, gadget_id = 70500000, pos = { x = -250.369, y = -37.134, z = 4718.575 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 32, point_type = 2049, owner = 79006, area_id = 32 },
	-- 秃鹫巢穴隐藏小洞
	{ config_id = 79025, gadget_id = 70540037, pos = { x = -261.462, y = -38.900, z = 4720.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 79026, gadget_id = 70500000, pos = { x = -261.075, y = -38.525, z = 4720.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2049, owner = 79025, area_id = 32 },
	{ config_id = 79027, gadget_id = 70500000, pos = { x = -261.631, y = -38.179, z = 4720.784 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 32, point_type = 2049, owner = 79025, area_id = 32 },
	{ config_id = 79028, gadget_id = 70290008, pos = { x = -193.700, y = -48.310, z = 4841.079 }, rot = { x = 0.000, y = 234.022, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 79029, gadget_id = 70290008, pos = { x = -202.698, y = -46.803, z = 4830.162 }, rot = { x = 0.000, y = 302.538, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 79030, gadget_id = 70500000, pos = { x = -202.698, y = -46.803, z = 4830.162 }, rot = { x = 0.000, y = 302.538, z = 0.000 }, level = 32, point_type = 3008, owner = 79029, area_id = 32 },
	{ config_id = 79031, gadget_id = 70290008, pos = { x = -173.206, y = -48.601, z = 4799.711 }, rot = { x = 0.000, y = 59.660, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 79032, gadget_id = 70330450, pos = { x = -102.563, y = 9.122, z = 5037.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 79033, gadget_id = 70500000, pos = { x = -102.563, y = 9.122, z = 5037.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3012, owner = 79032, area_id = 32 },
	{ config_id = 79034, gadget_id = 70500000, pos = { x = -193.700, y = -48.310, z = 4841.079 }, rot = { x = 0.000, y = 234.022, z = 0.000 }, level = 32, point_type = 3008, owner = 79028, area_id = 32 },
	{ config_id = 79035, gadget_id = 70290008, pos = { x = -166.307, y = -47.757, z = 4776.215 }, rot = { x = 0.000, y = 116.596, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 79036, gadget_id = 70500000, pos = { x = -166.307, y = -47.757, z = 4776.215 }, rot = { x = 0.000, y = 116.596, z = 0.000 }, level = 32, point_type = 3008, owner = 79035, area_id = 32 },
	{ config_id = 79037, gadget_id = 70290008, pos = { x = -202.792, y = -38.833, z = 4750.708 }, rot = { x = 0.000, y = 26.483, z = 0.000 }, level = 32, area_id = 32 },
	-- 大型镀金旅团营地氛围
	{ config_id = 79038, gadget_id = 70500000, pos = { x = -135.311, y = 62.263, z = 5305.209 }, rot = { x = 0.000, y = 72.860, z = 0.000 }, level = 32, point_type = 9104, area_id = 32 },
	-- 大型镀金旅团营地氛围
	{ config_id = 79039, gadget_id = 70500000, pos = { x = -135.212, y = 62.263, z = 5304.458 }, rot = { x = 351.720, y = 133.643, z = 5.629 }, level = 32, point_type = 9104, area_id = 32 },
	{ config_id = 79040, gadget_id = 70500000, pos = { x = -118.729, y = 65.664, z = 5290.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2049, area_id = 32 },
	{ config_id = 79041, gadget_id = 70500000, pos = { x = -157.024, y = -48.232, z = 4849.687 }, rot = { x = 0.000, y = 300.451, z = 0.000 }, level = 32, point_type = 2001, area_id = 32 },
	{ config_id = 79042, gadget_id = 70500000, pos = { x = -278.705, y = -38.945, z = 4657.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2001, area_id = 32 },
	{ config_id = 79043, gadget_id = 70500000, pos = { x = -264.530, y = -38.783, z = 4662.263 }, rot = { x = 0.000, y = 153.557, z = 0.000 }, level = 32, point_type = 2001, area_id = 32 },
	{ config_id = 79044, gadget_id = 70500000, pos = { x = -226.137, y = -38.501, z = 4701.409 }, rot = { x = 0.000, y = 42.882, z = 0.000 }, level = 32, point_type = 2001, area_id = 32 },
	{ config_id = 79045, gadget_id = 70500000, pos = { x = -201.896, y = -38.790, z = 4762.106 }, rot = { x = 0.000, y = 286.358, z = 0.000 }, level = 32, point_type = 2001, area_id = 32 },
	{ config_id = 79046, gadget_id = 70500000, pos = { x = -300.519, y = -38.909, z = 4626.617 }, rot = { x = 0.000, y = 157.369, z = 0.000 }, level = 32, point_type = 2052, area_id = 32 },
	{ config_id = 79047, gadget_id = 70500000, pos = { x = -202.792, y = -38.833, z = 4750.708 }, rot = { x = 0.000, y = 26.483, z = 0.000 }, level = 32, point_type = 3008, owner = 79037, area_id = 32 },
	{ config_id = 79048, gadget_id = 70290008, pos = { x = -217.683, y = -38.942, z = 4726.581 }, rot = { x = 0.000, y = 332.439, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 79049, gadget_id = 70500000, pos = { x = -217.683, y = -38.942, z = 4726.581 }, rot = { x = 0.000, y = 332.439, z = 0.000 }, level = 32, point_type = 3008, owner = 79048, area_id = 32 },
	{ config_id = 79050, gadget_id = 70290008, pos = { x = -235.375, y = -38.900, z = 4713.558 }, rot = { x = 0.000, y = 92.565, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 79051, gadget_id = 70500000, pos = { x = -173.206, y = -48.601, z = 4799.711 }, rot = { x = 0.000, y = 59.660, z = 0.000 }, level = 32, point_type = 3008, owner = 79031, area_id = 32 },
	{ config_id = 79052, gadget_id = 70290008, pos = { x = -173.579, y = -49.008, z = 4771.859 }, rot = { x = 0.000, y = 147.287, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 79053, gadget_id = 70500000, pos = { x = -173.579, y = -49.008, z = 4771.859 }, rot = { x = 0.000, y = 147.287, z = 0.000 }, level = 32, point_type = 3008, owner = 79052, area_id = 32 },
	{ config_id = 79054, gadget_id = 70290008, pos = { x = -205.410, y = -47.387, z = 4776.987 }, rot = { x = 0.000, y = 51.137, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 79055, gadget_id = 70500000, pos = { x = -205.410, y = -47.387, z = 4776.987 }, rot = { x = 0.000, y = 51.137, z = 0.000 }, level = 32, point_type = 3008, owner = 79054, area_id = 32 },
	{ config_id = 79056, gadget_id = 70290008, pos = { x = -215.780, y = -47.722, z = 4813.662 }, rot = { x = 0.000, y = 3.567, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 79057, gadget_id = 70500000, pos = { x = -215.780, y = -47.722, z = 4813.662 }, rot = { x = 0.000, y = 3.567, z = 0.000 }, level = 32, point_type = 3008, owner = 79056, area_id = 32 },
	{ config_id = 79058, gadget_id = 70290008, pos = { x = -176.536, y = -49.075, z = 4815.864 }, rot = { x = 0.000, y = 80.460, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 79059, gadget_id = 70500000, pos = { x = -176.536, y = -49.075, z = 4815.864 }, rot = { x = 0.000, y = 80.460, z = 0.000 }, level = 32, point_type = 3008, owner = 79058, area_id = 32 },
	{ config_id = 79060, gadget_id = 70290003, pos = { x = -143.253, y = -22.883, z = 4834.280 }, rot = { x = 0.000, y = 212.516, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 79061, gadget_id = 70500000, pos = { x = -188.658, y = -48.702, z = 4850.115 }, rot = { x = 0.000, y = 152.160, z = 0.000 }, level = 32, point_type = 2001, area_id = 32 },
	{ config_id = 79062, gadget_id = 70500000, pos = { x = -178.255, y = -49.000, z = 4813.619 }, rot = { x = 0.000, y = 263.232, z = 0.000 }, level = 32, point_type = 2001, area_id = 32 },
	{ config_id = 79063, gadget_id = 70500000, pos = { x = -143.204, y = -22.780, z = 4834.356 }, rot = { x = 0.000, y = 212.516, z = 0.000 }, level = 32, point_type = 3003, owner = 79060, area_id = 32 },
	{ config_id = 79064, gadget_id = 70500000, pos = { x = -143.307, y = -22.780, z = 4834.195 }, rot = { x = 0.000, y = 212.516, z = 0.000 }, level = 32, point_type = 3003, owner = 79060, area_id = 32 },
	{ config_id = 79065, gadget_id = 70500000, pos = { x = -235.375, y = -38.900, z = 4713.558 }, rot = { x = 0.000, y = 92.565, z = 0.000 }, level = 32, point_type = 3008, owner = 79050, area_id = 32 },
	{ config_id = 79066, gadget_id = 70290003, pos = { x = -210.695, y = 2.440, z = 4880.907 }, rot = { x = 0.000, y = 113.629, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 79067, gadget_id = 70500000, pos = { x = -210.778, y = 2.543, z = 4880.944 }, rot = { x = 0.000, y = 113.629, z = 0.000 }, level = 32, point_type = 3003, owner = 79066, area_id = 32 },
	{ config_id = 79068, gadget_id = 70500000, pos = { x = -210.602, y = 2.543, z = 4880.867 }, rot = { x = 0.000, y = 113.629, z = 0.000 }, level = 32, point_type = 3003, owner = 79066, area_id = 32 }
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
		gadgets = { 79001, 79002, 79003, 79004, 79005, 79006, 79007, 79008, 79009, 79010, 79011, 79012, 79013, 79014, 79015, 79016, 79017, 79018, 79019, 79020, 79021, 79022, 79023, 79024, 79025, 79026, 79027, 79028, 79029, 79030, 79031, 79032, 79033, 79034, 79035, 79036, 79037, 79038, 79039, 79040, 79041, 79042, 79043, 79044, 79045, 79046, 79047, 79048, 79049, 79050, 79051, 79052, 79053, 79054, 79055, 79056, 79057, 79058, 79059, 79060, 79061, 79062, 79063, 79064, 79065, 79066, 79067, 79068 },
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
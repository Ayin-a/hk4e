-- 基础信息
local base_info = {
	group_id = 133222186
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
	{ config_id = 186001, gadget_id = 70500000, pos = { x = -4343.733, y = 207.618, z = -4211.161 }, rot = { x = 0.000, y = 84.655, z = 0.000 }, level = 30, point_type = 2002, area_id = 14 },
	{ config_id = 186002, gadget_id = 70500000, pos = { x = -4349.352, y = 208.082, z = -4192.634 }, rot = { x = 0.000, y = 84.655, z = 0.000 }, level = 30, point_type = 2002, area_id = 14 },
	{ config_id = 186003, gadget_id = 70500000, pos = { x = -4343.399, y = 206.284, z = -4193.064 }, rot = { x = 0.000, y = 84.655, z = 0.000 }, level = 30, point_type = 2002, area_id = 14 },
	{ config_id = 186004, gadget_id = 70500000, pos = { x = -4332.089, y = 203.533, z = -4206.159 }, rot = { x = 0.000, y = 211.290, z = 0.000 }, level = 30, point_type = 2002, area_id = 14 },
	{ config_id = 186005, gadget_id = 70500000, pos = { x = -4334.333, y = 205.770, z = -4210.959 }, rot = { x = 0.000, y = 239.672, z = 0.000 }, level = 30, point_type = 2002, area_id = 14 },
	{ config_id = 186006, gadget_id = 70500000, pos = { x = -4262.559, y = 208.216, z = -4299.055 }, rot = { x = 0.000, y = 321.231, z = 0.000 }, level = 30, point_type = 2004, area_id = 14 },
	{ config_id = 186007, gadget_id = 70290001, pos = { x = -4237.818, y = 207.533, z = -4274.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 186008, gadget_id = 70500000, pos = { x = -4237.801, y = 208.102, z = -4274.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 186007, area_id = 14 },
	{ config_id = 186009, gadget_id = 70500000, pos = { x = -4237.883, y = 208.388, z = -4275.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 186007, area_id = 14 },
	{ config_id = 186010, gadget_id = 70500000, pos = { x = -4237.550, y = 208.800, z = -4274.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 186007, area_id = 14 },
	{ config_id = 186011, gadget_id = 70290001, pos = { x = -4185.440, y = 201.538, z = -4286.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 186012, gadget_id = 70500000, pos = { x = -4185.423, y = 202.107, z = -4285.709 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 186011, area_id = 14 },
	{ config_id = 186013, gadget_id = 70500000, pos = { x = -4185.505, y = 202.393, z = -4286.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 186011, area_id = 14 },
	{ config_id = 186014, gadget_id = 70500000, pos = { x = -4185.172, y = 202.805, z = -4286.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 186011, area_id = 14 },
	{ config_id = 186027, gadget_id = 70290001, pos = { x = -4335.863, y = 202.178, z = -4350.124 }, rot = { x = 0.000, y = 37.758, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 186028, gadget_id = 70500000, pos = { x = -4335.604, y = 202.747, z = -4349.817 }, rot = { x = 0.000, y = 37.758, z = 0.000 }, level = 30, point_type = 3002, owner = 186027, area_id = 14 },
	{ config_id = 186029, gadget_id = 70500000, pos = { x = -4336.157, y = 203.033, z = -4350.397 }, rot = { x = 0.000, y = 37.758, z = 0.000 }, level = 30, point_type = 3002, owner = 186027, area_id = 14 },
	{ config_id = 186030, gadget_id = 70500000, pos = { x = -4335.714, y = 203.445, z = -4350.369 }, rot = { x = 0.000, y = 37.758, z = 0.000 }, level = 30, point_type = 3002, owner = 186027, area_id = 14 },
	{ config_id = 186031, gadget_id = 70500000, pos = { x = -4291.223, y = 213.898, z = -4251.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2004, area_id = 14 },
	{ config_id = 186032, gadget_id = 70500000, pos = { x = -4244.342, y = 212.346, z = -4242.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2004, area_id = 14 },
	{ config_id = 186033, gadget_id = 70500000, pos = { x = -4341.631, y = 236.909, z = -4173.165 }, rot = { x = 0.000, y = 345.566, z = 0.000 }, level = 30, point_type = 2040, area_id = 14 },
	{ config_id = 186034, gadget_id = 70500000, pos = { x = -4314.515, y = 228.497, z = -4205.139 }, rot = { x = 0.000, y = 132.117, z = 0.000 }, level = 30, point_type = 2040, area_id = 14 },
	{ config_id = 186035, gadget_id = 70500000, pos = { x = -4258.567, y = 202.148, z = -4107.894 }, rot = { x = 5.937, y = 238.733, z = 354.336 }, level = 30, point_type = 2001, area_id = 14 },
	{ config_id = 186036, gadget_id = 70500000, pos = { x = -4257.766, y = 201.559, z = -4097.583 }, rot = { x = 1.411, y = 277.546, z = 349.473 }, level = 30, point_type = 2001, area_id = 14 },
	{ config_id = 186037, gadget_id = 70500000, pos = { x = -4247.961, y = 202.029, z = -4101.034 }, rot = { x = 357.225, y = 172.694, z = 5.656 }, level = 30, point_type = 2001, area_id = 14 },
	{ config_id = 186038, gadget_id = 70520036, pos = { x = -4269.267, y = 228.952, z = -4214.343 }, rot = { x = 0.000, y = 102.657, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 186039, gadget_id = 70500000, pos = { x = -4269.284, y = 229.688, z = -4214.419 }, rot = { x = 0.000, y = 102.657, z = 354.199 }, level = 30, point_type = 2042, owner = 186038, area_id = 14 },
	{ config_id = 186040, gadget_id = 70500000, pos = { x = -4269.109, y = 229.487, z = -4214.320 }, rot = { x = 21.666, y = 71.229, z = 5.608 }, level = 30, point_type = 2042, owner = 186038, area_id = 14 },
	{ config_id = 186041, gadget_id = 70520036, pos = { x = -4268.538, y = 228.195, z = -4217.661 }, rot = { x = 0.000, y = 86.908, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 186042, gadget_id = 70500000, pos = { x = -4268.534, y = 228.930, z = -4217.739 }, rot = { x = 0.000, y = 86.908, z = 354.199 }, level = 30, point_type = 2042, owner = 186041, area_id = 14 },
	{ config_id = 186043, gadget_id = 70500000, pos = { x = -4268.393, y = 228.730, z = -4217.595 }, rot = { x = 21.666, y = 55.480, z = 5.608 }, level = 30, point_type = 2042, owner = 186041, area_id = 14 },
	{ config_id = 186044, gadget_id = 70520036, pos = { x = -4271.520, y = 229.039, z = -4216.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 186045, gadget_id = 70500000, pos = { x = -4271.441, y = 229.775, z = -4216.724 }, rot = { x = 0.000, y = 0.000, z = 354.199 }, level = 30, point_type = 2042, owner = 186044, area_id = 14 },
	{ config_id = 186046, gadget_id = 70500000, pos = { x = -4271.577, y = 229.574, z = -4216.575 }, rot = { x = 21.666, y = 328.572, z = 5.608 }, level = 30, point_type = 2042, owner = 186044, area_id = 14 }
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
	gadgets = {
		{ config_id = 186015, gadget_id = 70520036, pos = { x = -4271.801, y = 229.115, z = -4216.662 }, rot = { x = 349.841, y = 1.128, z = 347.362 }, level = 30, area_id = 14 },
		{ config_id = 186016, gadget_id = 70500000, pos = { x = -4271.566, y = 229.804, z = -4216.791 }, rot = { x = 349.841, y = 1.128, z = 341.561 }, level = 30, point_type = 2042, owner = 186015, area_id = 14 },
		{ config_id = 186017, gadget_id = 70500000, pos = { x = -4271.738, y = 229.667, z = -4216.611 }, rot = { x = 6.337, y = 327.278, z = 0.309 }, level = 30, point_type = 2042, owner = 186015, area_id = 14 },
		{ config_id = 186018, gadget_id = 70520036, pos = { x = -4269.213, y = 228.890, z = -4214.622 }, rot = { x = 0.000, y = 108.724, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 186019, gadget_id = 70500000, pos = { x = -4269.238, y = 229.626, z = -4214.695 }, rot = { x = 5.493, y = 108.814, z = 1.868 }, level = 30, point_type = 2042, owner = 186018, area_id = 14 },
		{ config_id = 186020, gadget_id = 70500000, pos = { x = -4269.054, y = 229.425, z = -4214.615 }, rot = { x = 348.198, y = 74.228, z = 19.113 }, level = 30, point_type = 2042, owner = 186018, area_id = 14 },
		{ config_id = 186021, gadget_id = 70520036, pos = { x = -4268.410, y = 228.107, z = -4217.983 }, rot = { x = 0.000, y = 83.492, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 186022, gadget_id = 70500000, pos = { x = -4268.401, y = 228.843, z = -4218.061 }, rot = { x = 5.764, y = 83.459, z = 359.340 }, level = 30, point_type = 2042, owner = 186021, area_id = 14 },
		{ config_id = 186023, gadget_id = 70500000, pos = { x = -4268.269, y = 228.642, z = -4217.909 }, rot = { x = 357.226, y = 50.447, z = 22.182 }, level = 30, point_type = 2042, owner = 186021, area_id = 14 },
		{ config_id = 186024, gadget_id = 70290003, pos = { x = -4246.097, y = 212.253, z = -4265.746 }, rot = { x = 0.000, y = 91.894, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 186025, gadget_id = 70500000, pos = { x = -4246.188, y = 212.356, z = -4265.743 }, rot = { x = 0.000, y = 91.894, z = 0.000 }, level = 30, point_type = 3003, owner = 186024, area_id = 14 },
		{ config_id = 186026, gadget_id = 70500000, pos = { x = -4245.996, y = 212.356, z = -4265.750 }, rot = { x = 0.000, y = 91.894, z = 0.000 }, level = 30, point_type = 3003, owner = 186024, area_id = 14 }
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
		monsters = { },
		gadgets = { 186001, 186002, 186003, 186004, 186005, 186006, 186007, 186008, 186009, 186010, 186011, 186012, 186013, 186014, 186027, 186028, 186029, 186030, 186031, 186032, 186033, 186034, 186035, 186036, 186037, 186038, 186039, 186040, 186041, 186042, 186043, 186044, 186045, 186046 },
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
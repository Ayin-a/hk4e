-- 基础信息
local base_info = {
	group_id = 144001017
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
	{ config_id = 17001, gadget_id = 70500000, pos = { x = 219.979, y = 190.739, z = 450.223 }, rot = { x = 0.000, y = 90.200, z = 0.000 }, level = 1, point_type = 2001, area_id = 102 },
	{ config_id = 17002, gadget_id = 70500000, pos = { x = 181.129, y = 122.800, z = 416.811 }, rot = { x = 0.000, y = 253.215, z = 0.000 }, level = 1, point_type = 2004, area_id = 102 },
	{ config_id = 17003, gadget_id = 70290003, pos = { x = 222.457, y = 139.703, z = 391.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 17004, gadget_id = 70500000, pos = { x = 231.267, y = 195.379, z = 321.648 }, rot = { x = 0.000, y = 75.172, z = 0.000 }, level = 1, point_type = 2004, area_id = 102 },
	{ config_id = 17006, gadget_id = 70500000, pos = { x = 222.457, y = 139.806, z = 391.534 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3003, owner = 17003, area_id = 102 },
	{ config_id = 17007, gadget_id = 70500000, pos = { x = 134.878, y = 124.797, z = 286.490 }, rot = { x = 0.000, y = 116.552, z = 0.000 }, level = 1, point_type = 2004, area_id = 102 },
	{ config_id = 17008, gadget_id = 70500000, pos = { x = 248.721, y = 122.527, z = 290.706 }, rot = { x = 0.000, y = 6.900, z = 0.000 }, level = 1, point_type = 2004, area_id = 102 },
	{ config_id = 17009, gadget_id = 70500000, pos = { x = 221.088, y = 121.709, z = 256.909 }, rot = { x = 0.000, y = 122.247, z = 0.000 }, level = 1, point_type = 2001, area_id = 102 },
	{ config_id = 17010, gadget_id = 70500000, pos = { x = 220.052, y = 123.427, z = 384.098 }, rot = { x = 0.000, y = 296.071, z = 0.000 }, level = 1, point_type = 2001, area_id = 102 },
	{ config_id = 17011, gadget_id = 70500000, pos = { x = 167.054, y = 121.265, z = 371.557 }, rot = { x = 0.000, y = 199.816, z = 0.000 }, level = 1, point_type = 2001, area_id = 102 },
	{ config_id = 17012, gadget_id = 70500000, pos = { x = 222.457, y = 139.806, z = 391.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3003, owner = 17003, area_id = 102 },
	{ config_id = 17013, gadget_id = 70500000, pos = { x = 246.385, y = 123.577, z = 418.613 }, rot = { x = 0.000, y = 262.081, z = 0.000 }, level = 1, point_type = 2004, area_id = 102 },
	{ config_id = 17014, gadget_id = 70500000, pos = { x = 244.423, y = 123.142, z = 357.753 }, rot = { x = 0.000, y = 183.236, z = 0.000 }, level = 1, point_type = 2004, area_id = 102 },
	{ config_id = 17015, gadget_id = 70290010, pos = { x = 174.645, y = 120.026, z = 155.283 }, rot = { x = 5.992, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 17016, gadget_id = 70500000, pos = { x = 149.244, y = 120.121, z = 394.001 }, rot = { x = 0.000, y = 100.049, z = 0.000 }, level = 1, point_type = 2004, area_id = 102 },
	{ config_id = 17018, gadget_id = 70290001, pos = { x = 228.374, y = 122.173, z = 390.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 17019, gadget_id = 70500000, pos = { x = 228.391, y = 122.742, z = 390.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 17018, area_id = 102 },
	{ config_id = 17020, gadget_id = 70500000, pos = { x = 228.309, y = 123.028, z = 390.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 17018, area_id = 102 },
	{ config_id = 17021, gadget_id = 70500000, pos = { x = 228.642, y = 123.440, z = 390.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 17018, area_id = 102 },
	{ config_id = 17030, gadget_id = 70290008, pos = { x = 132.577, y = 119.770, z = 365.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 17031, gadget_id = 70500000, pos = { x = 132.577, y = 119.770, z = 365.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3008, owner = 17030, area_id = 102 },
	{ config_id = 17032, gadget_id = 70290009, pos = { x = 267.048, y = 120.476, z = 387.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 17033, gadget_id = 70500000, pos = { x = 267.048, y = 120.476, z = 387.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3005, owner = 17032, area_id = 102 },
	{ config_id = 17034, gadget_id = 70290010, pos = { x = 253.620, y = 119.499, z = 444.431 }, rot = { x = 0.000, y = 234.315, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 17035, gadget_id = 70500000, pos = { x = 253.620, y = 119.499, z = 444.431 }, rot = { x = 0.000, y = 234.318, z = 0.000 }, level = 1, point_type = 3006, owner = 17034, area_id = 102 },
	{ config_id = 17036, gadget_id = 70500000, pos = { x = 174.645, y = 120.026, z = 155.283 }, rot = { x = 16.451, y = 0.000, z = 0.000 }, level = 1, point_type = 3006, owner = 17015, area_id = 102 }
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
		{ config_id = 17005, gadget_id = 70500000, pos = { x = 191.146, y = 123.299, z = 267.638 }, rot = { x = 0.000, y = 177.798, z = 0.000 }, level = 1, point_type = 2004, area_id = 102 },
		{ config_id = 17017, gadget_id = 70500000, pos = { x = 155.396, y = 151.130, z = 465.284 }, rot = { x = 0.000, y = 359.502, z = 0.000 }, level = 1, point_type = 2001, area_id = 102 },
		{ config_id = 17022, gadget_id = 70290001, pos = { x = 181.945, y = 146.625, z = 465.571 }, rot = { x = 0.000, y = 222.432, z = 0.000 }, level = 1, area_id = 102 },
		{ config_id = 17023, gadget_id = 70500000, pos = { x = 181.662, y = 147.194, z = 465.287 }, rot = { x = 0.000, y = 222.432, z = 0.000 }, level = 1, point_type = 3002, owner = 17022, area_id = 102 },
		{ config_id = 17024, gadget_id = 70500000, pos = { x = 182.261, y = 147.479, z = 465.820 }, rot = { x = 0.000, y = 222.432, z = 0.000 }, level = 1, point_type = 3002, owner = 17022, area_id = 102 },
		{ config_id = 17025, gadget_id = 70500000, pos = { x = 181.817, y = 147.891, z = 465.828 }, rot = { x = 0.000, y = 222.432, z = 0.000 }, level = 1, point_type = 3002, owner = 17022, area_id = 102 },
		{ config_id = 17026, gadget_id = 70290001, pos = { x = 203.760, y = 121.961, z = 258.815 }, rot = { x = 0.000, y = 171.330, z = 0.000 }, level = 1, area_id = 102 },
		{ config_id = 17027, gadget_id = 70500000, pos = { x = 203.803, y = 122.530, z = 258.416 }, rot = { x = 0.000, y = 171.330, z = 0.000 }, level = 1, point_type = 3002, owner = 17026, area_id = 102 },
		{ config_id = 17028, gadget_id = 70500000, pos = { x = 203.764, y = 122.816, z = 259.216 }, rot = { x = 0.000, y = 171.330, z = 0.000 }, level = 1, point_type = 3002, owner = 17026, area_id = 102 },
		{ config_id = 17029, gadget_id = 70500000, pos = { x = 203.479, y = 123.228, z = 258.876 }, rot = { x = 0.000, y = 171.330, z = 0.000 }, level = 1, point_type = 3002, owner = 17026, area_id = 102 }
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
		gadgets = { 17001, 17002, 17003, 17004, 17006, 17007, 17008, 17009, 17010, 17011, 17012, 17013, 17014, 17015, 17016, 17018, 17019, 17020, 17021, 17030, 17031, 17032, 17033, 17034, 17035, 17036 },
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
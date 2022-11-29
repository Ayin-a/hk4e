-- 基础信息
local base_info = {
	group_id = 199001120
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
	{ config_id = 120001, gadget_id = 70500000, pos = { x = 147.352, y = 120.000, z = 479.351 }, rot = { x = 0.000, y = 90.200, z = 0.000 }, level = 1, point_type = 2001, area_id = 402 },
	{ config_id = 120002, gadget_id = 70500000, pos = { x = 161.186, y = 120.169, z = 411.929 }, rot = { x = 0.000, y = 253.215, z = 0.000 }, level = 1, point_type = 2004, area_id = 402 },
	{ config_id = 120003, gadget_id = 70290003, pos = { x = 151.102, y = 136.480, z = 283.628 }, rot = { x = 342.417, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 120004, gadget_id = 70500000, pos = { x = 231.267, y = 195.379, z = 321.648 }, rot = { x = 0.000, y = 75.172, z = 0.000 }, level = 1, point_type = 2004, area_id = 402 },
	{ config_id = 120006, gadget_id = 70500000, pos = { x = 151.102, y = 136.551, z = 283.510 }, rot = { x = 342.422, y = 0.000, z = 0.000 }, level = 1, point_type = 3003, owner = 120003, area_id = 402 },
	{ config_id = 120007, gadget_id = 70500000, pos = { x = 130.886, y = 124.001, z = 285.839 }, rot = { x = 0.000, y = 116.552, z = 0.000 }, level = 1, point_type = 2004, area_id = 402 },
	{ config_id = 120008, gadget_id = 70500000, pos = { x = 246.551, y = 123.172, z = 291.692 }, rot = { x = 0.000, y = 6.900, z = 0.000 }, level = 1, point_type = 2004, area_id = 402 },
	{ config_id = 120009, gadget_id = 70500000, pos = { x = 206.538, y = 121.112, z = 251.008 }, rot = { x = 0.000, y = 122.247, z = 0.000 }, level = 1, point_type = 2001, area_id = 402 },
	{ config_id = 120010, gadget_id = 70500000, pos = { x = 218.171, y = 123.557, z = 382.538 }, rot = { x = 0.000, y = 296.071, z = 0.000 }, level = 1, point_type = 2001, area_id = 402 },
	{ config_id = 120011, gadget_id = 70500000, pos = { x = 167.054, y = 121.265, z = 371.557 }, rot = { x = 0.000, y = 199.816, z = 0.000 }, level = 1, point_type = 2001, area_id = 402 },
	{ config_id = 120012, gadget_id = 70500000, pos = { x = 151.102, y = 136.609, z = 283.693 }, rot = { x = 342.422, y = 0.000, z = 0.000 }, level = 1, point_type = 3003, owner = 120003, area_id = 402 },
	{ config_id = 120013, gadget_id = 70500000, pos = { x = 213.556, y = 193.449, z = 355.678 }, rot = { x = 0.000, y = 262.081, z = 0.000 }, level = 1, point_type = 2004, area_id = 402 },
	{ config_id = 120014, gadget_id = 70500000, pos = { x = 220.251, y = 202.726, z = 343.836 }, rot = { x = 0.000, y = 183.236, z = 0.000 }, level = 1, point_type = 2004, area_id = 402 },
	{ config_id = 120015, gadget_id = 70290010, pos = { x = 174.645, y = 120.000, z = 155.283 }, rot = { x = 5.992, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 120016, gadget_id = 70500000, pos = { x = 149.244, y = 120.121, z = 394.001 }, rot = { x = 0.000, y = 100.049, z = 0.000 }, level = 1, point_type = 2004, area_id = 402 },
	{ config_id = 120018, gadget_id = 70290001, pos = { x = 227.376, y = 122.595, z = 386.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 120019, gadget_id = 70500000, pos = { x = 227.393, y = 123.164, z = 387.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 120018, area_id = 402 },
	{ config_id = 120020, gadget_id = 70500000, pos = { x = 227.311, y = 123.450, z = 386.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 120018, area_id = 402 },
	{ config_id = 120021, gadget_id = 70500000, pos = { x = 227.644, y = 123.862, z = 386.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3002, owner = 120018, area_id = 402 },
	{ config_id = 120030, gadget_id = 70290008, pos = { x = 133.202, y = 119.917, z = 365.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 120031, gadget_id = 70500000, pos = { x = 133.202, y = 119.917, z = 365.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3008, owner = 120030, area_id = 402 },
	{ config_id = 120032, gadget_id = 70290009, pos = { x = 271.650, y = 120.534, z = 338.619 }, rot = { x = 0.000, y = 161.593, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 120033, gadget_id = 70500000, pos = { x = 271.650, y = 120.534, z = 338.619 }, rot = { x = 0.000, y = 161.590, z = 0.000 }, level = 1, point_type = 3005, owner = 120032, area_id = 402 },
	{ config_id = 120036, gadget_id = 70500000, pos = { x = 174.645, y = 120.000, z = 155.283 }, rot = { x = 16.451, y = 0.000, z = 0.000 }, level = 1, point_type = 3006, owner = 120015, area_id = 402 }
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
		{ config_id = 120005, gadget_id = 70500000, pos = { x = 191.146, y = 123.299, z = 267.638 }, rot = { x = 0.000, y = 177.798, z = 0.000 }, level = 1, point_type = 2004, area_id = 402 },
		{ config_id = 120017, gadget_id = 70500000, pos = { x = 155.396, y = 151.130, z = 465.284 }, rot = { x = 0.000, y = 359.502, z = 0.000 }, level = 1, point_type = 2001, area_id = 402 },
		{ config_id = 120022, gadget_id = 70290001, pos = { x = 181.945, y = 146.624, z = 465.571 }, rot = { x = 0.000, y = 222.432, z = 0.000 }, level = 1, area_id = 402 },
		{ config_id = 120023, gadget_id = 70500000, pos = { x = 181.662, y = 147.193, z = 465.287 }, rot = { x = 0.000, y = 222.432, z = 0.000 }, level = 1, point_type = 3002, owner = 120022, area_id = 402 },
		{ config_id = 120024, gadget_id = 70500000, pos = { x = 182.260, y = 147.479, z = 465.820 }, rot = { x = 0.000, y = 222.432, z = 0.000 }, level = 1, point_type = 3002, owner = 120022, area_id = 402 },
		{ config_id = 120025, gadget_id = 70500000, pos = { x = 181.817, y = 147.891, z = 465.828 }, rot = { x = 0.000, y = 222.432, z = 0.000 }, level = 1, point_type = 3002, owner = 120022, area_id = 402 },
		{ config_id = 120026, gadget_id = 70290001, pos = { x = 203.760, y = 122.107, z = 258.815 }, rot = { x = 0.000, y = 171.330, z = 0.000 }, level = 1, area_id = 402 },
		{ config_id = 120027, gadget_id = 70500000, pos = { x = 203.803, y = 122.676, z = 258.416 }, rot = { x = 0.000, y = 171.330, z = 0.000 }, level = 1, point_type = 3002, owner = 120026, area_id = 402 },
		{ config_id = 120028, gadget_id = 70500000, pos = { x = 203.764, y = 122.962, z = 259.216 }, rot = { x = 0.000, y = 171.330, z = 0.000 }, level = 1, point_type = 3002, owner = 120026, area_id = 402 },
		{ config_id = 120029, gadget_id = 70500000, pos = { x = 203.479, y = 123.374, z = 258.876 }, rot = { x = 0.000, y = 171.330, z = 0.000 }, level = 1, point_type = 3002, owner = 120026, area_id = 402 },
		{ config_id = 120035, gadget_id = 70290009, pos = { x = 256.865, y = 120.701, z = 410.500 }, rot = { x = 0.000, y = 69.901, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 120037, gadget_id = 70500000, pos = { x = 256.865, y = 120.701, z = 410.500 }, rot = { x = 0.000, y = 69.943, z = 0.000 }, level = 20, point_type = 3005, owner = 120035, area_id = 402 }
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
		gadgets = { 120001, 120002, 120003, 120004, 120006, 120007, 120008, 120009, 120010, 120011, 120012, 120013, 120014, 120015, 120016, 120018, 120019, 120020, 120021, 120030, 120031, 120032, 120033, 120036 },
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
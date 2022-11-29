-- 基础信息
local base_info = {
	group_id = 133107805
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
	{ config_id = 805003, gadget_id = 70290008, pos = { x = -241.978, y = 200.000, z = 177.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
	{ config_id = 805004, gadget_id = 70500000, pos = { x = -241.978, y = 200.000, z = 177.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3008, owner = 805003, area_id = 7 },
	{ config_id = 805009, gadget_id = 70500000, pos = { x = -217.847, y = 279.916, z = 196.972 }, rot = { x = 0.000, y = 8.744, z = 0.000 }, level = 18, point_type = 2026, area_id = 7 },
	{ config_id = 805010, gadget_id = 70500000, pos = { x = -213.817, y = 266.915, z = 127.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 2026, area_id = 7 },
	{ config_id = 805011, gadget_id = 70500000, pos = { x = -242.607, y = 273.552, z = 95.664 }, rot = { x = 0.000, y = 27.081, z = 0.000 }, level = 18, point_type = 2026, area_id = 7 },
	{ config_id = 805012, gadget_id = 70500000, pos = { x = -229.702, y = 265.222, z = 43.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 2026, area_id = 7 }
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
		{ config_id = 805001, gadget_id = 70500000, pos = { x = -266.660, y = 200.346, z = 108.347 }, rot = { x = 24.854, y = 290.102, z = 3.704 }, level = 18, point_type = 1001, area_id = 7 },
		{ config_id = 805002, gadget_id = 70500000, pos = { x = -260.124, y = 203.754, z = 122.335 }, rot = { x = 29.259, y = 281.722, z = 14.805 }, level = 18, point_type = 1001, area_id = 7 },
		{ config_id = 805005, gadget_id = 70500000, pos = { x = -253.813, y = 238.926, z = 92.973 }, rot = { x = 18.911, y = 6.141, z = 35.708 }, level = 18, point_type = 2002, area_id = 7 },
		{ config_id = 805006, gadget_id = 70500000, pos = { x = -245.467, y = 236.907, z = 115.628 }, rot = { x = 352.326, y = 67.043, z = 8.443 }, level = 18, point_type = 2002, area_id = 7 },
		{ config_id = 805007, gadget_id = 70500000, pos = { x = -226.201, y = 238.664, z = 131.077 }, rot = { x = 0.488, y = 85.924, z = 348.460 }, level = 18, point_type = 2002, area_id = 7 },
		{ config_id = 805008, gadget_id = 70500000, pos = { x = -219.286, y = 240.000, z = 144.223 }, rot = { x = 1.826, y = 158.996, z = 3.145 }, level = 18, point_type = 2002, area_id = 7 },
		{ config_id = 805013, gadget_id = 70290002, pos = { x = -260.087, y = 244.282, z = 41.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
		{ config_id = 805014, gadget_id = 70500000, pos = { x = -261.158, y = 245.900, z = 42.196 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 18, point_type = 3011, owner = 805013, area_id = 7 },
		{ config_id = 805015, gadget_id = 70500000, pos = { x = -259.217, y = 246.910, z = 40.471 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 18, point_type = 3011, owner = 805013, area_id = 7 },
		{ config_id = 805016, gadget_id = 70500000, pos = { x = -260.044, y = 247.190, z = 42.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3011, owner = 805013, area_id = 7 },
		{ config_id = 805017, gadget_id = 70290002, pos = { x = -235.944, y = 264.615, z = 199.586 }, rot = { x = 4.419, y = 1.410, z = 35.372 }, level = 18, area_id = 7 },
		{ config_id = 805018, gadget_id = 70500000, pos = { x = -237.735, y = 265.258, z = 200.396 }, rot = { x = 34.628, y = 262.226, z = 351.118 }, level = 18, point_type = 3011, owner = 805017, area_id = 7 },
		{ config_id = 805019, gadget_id = 70500000, pos = { x = -236.776, y = 267.332, z = 198.802 }, rot = { x = 27.950, y = 319.803, z = 23.025 }, level = 18, point_type = 3011, owner = 805017, area_id = 7 },
		{ config_id = 805020, gadget_id = 70500000, pos = { x = -237.554, y = 266.898, z = 201.187 }, rot = { x = 4.419, y = 1.410, z = 35.372 }, level = 18, point_type = 3011, owner = 805017, area_id = 7 },
		{ config_id = 805021, gadget_id = 70290002, pos = { x = -267.445, y = 203.451, z = 146.171 }, rot = { x = 0.894, y = 0.028, z = 3.577 }, level = 18, area_id = 7 },
		{ config_id = 805022, gadget_id = 70500000, pos = { x = -268.615, y = 204.987, z = 146.909 }, rot = { x = 3.484, y = 264.963, z = 358.796 }, level = 18, point_type = 3011, owner = 805021, area_id = 7 },
		{ config_id = 805023, gadget_id = 70500000, pos = { x = -266.741, y = 206.143, z = 145.201 }, rot = { x = 3.193, y = 314.051, z = 1.843 }, level = 18, point_type = 3011, owner = 805021, area_id = 7 },
		{ config_id = 805024, gadget_id = 70500000, pos = { x = -267.583, y = 206.334, z = 147.597 }, rot = { x = 0.894, y = 0.028, z = 3.577 }, level = 18, point_type = 3011, owner = 805021, area_id = 7 },
		{ config_id = 805025, gadget_id = 70500000, pos = { x = -210.486, y = 266.608, z = 18.935 }, rot = { x = 0.000, y = 247.537, z = 0.000 }, level = 18, point_type = 2004, area_id = 7 },
		{ config_id = 805026, gadget_id = 70500000, pos = { x = -199.576, y = 273.288, z = 46.651 }, rot = { x = 11.622, y = 276.884, z = 26.668 }, level = 18, point_type = 2004, area_id = 7 },
		{ config_id = 805027, gadget_id = 70500000, pos = { x = -225.484, y = 257.055, z = 180.519 }, rot = { x = 354.710, y = 358.020, z = 41.017 }, level = 18, point_type = 2004, area_id = 7 },
		{ config_id = 805028, gadget_id = 70500000, pos = { x = -189.002, y = 292.687, z = 216.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 2002, area_id = 7 },
		{ config_id = 805029, gadget_id = 70500000, pos = { x = -201.909, y = 289.397, z = 189.931 }, rot = { x = 0.000, y = 94.973, z = 0.000 }, level = 18, point_type = 2001, area_id = 7 },
		{ config_id = 805030, gadget_id = 70290003, pos = { x = -158.468, y = 310.548, z = 184.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 7 },
		{ config_id = 805031, gadget_id = 70500000, pos = { x = -158.468, y = 310.651, z = 184.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3003, owner = 805030, area_id = 7 },
		{ config_id = 805032, gadget_id = 70500000, pos = { x = -158.468, y = 310.651, z = 184.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 3003, owner = 805030, area_id = 7 }
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
		gadgets = { 805003, 805004, 805009, 805010, 805011, 805012 },
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
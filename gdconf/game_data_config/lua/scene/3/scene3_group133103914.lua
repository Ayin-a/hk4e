-- 基础信息
local base_info = {
	group_id = 133103914
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 914020, monster_id = 28050102, pos = { x = 970.166, y = 308.215, z = 1251.657 }, rot = { x = 0.000, y = 249.640, z = 0.000 }, level = 24, drop_tag = "魔法生物", area_id = 6 },
	{ config_id = 914021, monster_id = 28050102, pos = { x = 977.789, y = 309.240, z = 1244.122 }, rot = { x = 0.000, y = 126.700, z = 0.000 }, level = 24, drop_tag = "魔法生物", area_id = 6 },
	{ config_id = 914022, monster_id = 28050102, pos = { x = 960.561, y = 309.354, z = 1247.942 }, rot = { x = 0.000, y = 273.680, z = 0.000 }, level = 24, drop_tag = "魔法生物", area_id = 6 },
	{ config_id = 914023, monster_id = 28050102, pos = { x = 984.020, y = 308.457, z = 1251.307 }, rot = { x = 0.000, y = 72.430, z = 0.000 }, level = 24, drop_tag = "魔法生物", area_id = 6 },
	{ config_id = 914024, monster_id = 28050102, pos = { x = 990.857, y = 309.477, z = 1243.480 }, rot = { x = 0.000, y = 266.150, z = 0.000 }, level = 24, drop_tag = "魔法生物", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 914001, gadget_id = 70211011, pos = { x = 966.774, y = 284.778, z = 1144.997 }, rot = { x = 0.000, y = 247.686, z = 0.000 }, level = 21, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 914002, gadget_id = 70211011, pos = { x = 1045.059, y = 302.804, z = 1257.293 }, rot = { x = 0.000, y = 78.565, z = 0.000 }, level = 21, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 914003, gadget_id = 70500000, pos = { x = 971.320, y = 270.031, z = 1095.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2028, area_id = 6 },
	{ config_id = 914004, gadget_id = 70500000, pos = { x = 958.682, y = 277.153, z = 1119.364 }, rot = { x = 0.000, y = 341.807, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
	{ config_id = 914005, gadget_id = 70500000, pos = { x = 943.180, y = 291.476, z = 1167.324 }, rot = { x = 0.000, y = 305.163, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
	{ config_id = 914006, gadget_id = 70500000, pos = { x = 962.236, y = 307.053, z = 1240.413 }, rot = { x = 0.000, y = 49.516, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
	{ config_id = 914007, gadget_id = 70500000, pos = { x = 997.297, y = 307.628, z = 1253.304 }, rot = { x = 0.000, y = 49.516, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
	{ config_id = 914008, gadget_id = 70500000, pos = { x = 972.779, y = 306.183, z = 1264.126 }, rot = { x = 0.000, y = 49.516, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
	{ config_id = 914009, gadget_id = 70500000, pos = { x = 1015.515, y = 302.146, z = 1312.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
	{ config_id = 914010, gadget_id = 70500000, pos = { x = 974.092, y = 306.467, z = 1261.490 }, rot = { x = 0.000, y = 49.516, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
	{ config_id = 914011, gadget_id = 70290013, pos = { x = 1009.017, y = 301.883, z = 1320.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 914012, gadget_id = 70500000, pos = { x = 1009.017, y = 301.883, z = 1320.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2016, owner = 914011, area_id = 6 },
	{ config_id = 914013, gadget_id = 70500000, pos = { x = 1009.780, y = 302.431, z = 1320.760 }, rot = { x = 80.732, y = 197.769, z = 283.477 }, level = 24, point_type = 2016, owner = 914011, area_id = 6 },
	{ config_id = 914014, gadget_id = 70500000, pos = { x = 1008.735, y = 301.755, z = 1320.743 }, rot = { x = 343.642, y = 330.700, z = 341.572 }, level = 24, point_type = 2016, owner = 914011, area_id = 6 },
	{ config_id = 914015, gadget_id = 70290001, pos = { x = 1028.330, y = 300.905, z = 1294.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 914016, gadget_id = 70500000, pos = { x = 1028.347, y = 301.474, z = 1294.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3002, owner = 914015, area_id = 6 },
	{ config_id = 914017, gadget_id = 70500000, pos = { x = 1028.265, y = 301.760, z = 1294.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3002, owner = 914015, area_id = 6 },
	{ config_id = 914018, gadget_id = 70500000, pos = { x = 1028.598, y = 302.172, z = 1294.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3002, owner = 914015, area_id = 6 },
	{ config_id = 914019, gadget_id = 70500000, pos = { x = 1014.068, y = 302.003, z = 1314.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 }
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
		monsters = { 914020, 914021, 914022, 914023, 914024 },
		gadgets = { 914001, 914002, 914003, 914004, 914005, 914006, 914007, 914008, 914009, 914010, 914011, 914012, 914013, 914014, 914015, 914016, 914017, 914018, 914019 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================
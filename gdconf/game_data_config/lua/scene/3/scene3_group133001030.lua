-- 基础信息
local base_info = {
	group_id = 133001030
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
	{ config_id = 30001, gadget_id = 70500000, pos = { x = 1211.070, y = 258.645, z = -1427.095 }, rot = { x = 0.000, y = 268.032, z = 0.000 }, level = 15, point_type = 2002, area_id = 2 },
	{ config_id = 30002, gadget_id = 70500000, pos = { x = 1226.043, y = 255.245, z = -1429.279 }, rot = { x = 0.000, y = 268.032, z = 0.000 }, level = 15, point_type = 2002, area_id = 2 },
	{ config_id = 30003, gadget_id = 70500000, pos = { x = 1193.273, y = 273.534, z = -1426.245 }, rot = { x = 46.496, y = 133.703, z = 331.242 }, level = 15, point_type = 1001, area_id = 2 },
	{ config_id = 30004, gadget_id = 70290002, pos = { x = 1242.198, y = 257.328, z = -1411.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 30005, gadget_id = 70500000, pos = { x = 1241.127, y = 258.946, z = -1410.749 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 3011, owner = 30004, area_id = 2 },
	{ config_id = 30006, gadget_id = 70500000, pos = { x = 1243.068, y = 259.956, z = -1412.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 3011, owner = 30004, area_id = 2 },
	{ config_id = 30007, gadget_id = 70500000, pos = { x = 1242.241, y = 260.236, z = -1410.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 3011, owner = 30004, area_id = 2 },
	{ config_id = 30008, gadget_id = 70290002, pos = { x = 1201.674, y = 255.141, z = -1481.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 2 },
	{ config_id = 30009, gadget_id = 70500000, pos = { x = 1200.603, y = 256.820, z = -1480.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 3011, owner = 30008, area_id = 2 },
	{ config_id = 30010, gadget_id = 70500000, pos = { x = 1202.544, y = 257.830, z = -1482.542 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 3011, owner = 30008, area_id = 2 },
	{ config_id = 30011, gadget_id = 70500000, pos = { x = 1201.717, y = 258.110, z = -1480.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 3011, owner = 30008, area_id = 2 },
	{ config_id = 30012, gadget_id = 70500000, pos = { x = 1235.675, y = 300.206, z = -1354.630 }, rot = { x = 0.000, y = 59.075, z = 0.000 }, level = 10, point_type = 2009, area_id = 2 },
	{ config_id = 30013, gadget_id = 70500000, pos = { x = 1109.108, y = 308.565, z = -1475.545 }, rot = { x = 0.000, y = 303.378, z = 0.000 }, level = 10, point_type = 2009, area_id = 2 },
	{ config_id = 30014, gadget_id = 70500000, pos = { x = 1185.018, y = 294.444, z = -1465.943 }, rot = { x = 0.000, y = 214.181, z = 0.000 }, level = 15, point_type = 2009, area_id = 2 },
	{ config_id = 30015, gadget_id = 70500000, pos = { x = 1188.565, y = 293.616, z = -1470.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 2009, area_id = 2 },
	{ config_id = 30016, gadget_id = 70500000, pos = { x = 1097.517, y = 310.238, z = -1432.368 }, rot = { x = 0.000, y = 279.989, z = 0.000 }, level = 10, point_type = 2001, area_id = 2 },
	{ config_id = 30017, gadget_id = 70500000, pos = { x = 1122.099, y = 308.645, z = -1445.001 }, rot = { x = 0.000, y = 218.471, z = 0.000 }, level = 10, point_type = 2004, area_id = 2 },
	{ config_id = 30018, gadget_id = 70500000, pos = { x = 1153.236, y = 306.222, z = -1406.710 }, rot = { x = 0.000, y = 218.471, z = 0.000 }, level = 10, point_type = 2004, area_id = 2 },
	{ config_id = 30019, gadget_id = 70500000, pos = { x = 1154.282, y = 301.889, z = -1459.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 2009, area_id = 2 },
	{ config_id = 30020, gadget_id = 70500000, pos = { x = 1178.503, y = 298.717, z = -1430.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 2001, area_id = 2 },
	{ config_id = 30021, gadget_id = 70500000, pos = { x = 1220.255, y = 306.711, z = -1358.872 }, rot = { x = 0.000, y = 294.058, z = 0.000 }, level = 10, point_type = 2004, area_id = 2 },
	{ config_id = 30022, gadget_id = 70500000, pos = { x = 1190.704, y = 312.376, z = -1317.313 }, rot = { x = 0.000, y = 309.455, z = 0.000 }, level = 10, point_type = 2001, area_id = 10 },
	{ config_id = 30023, gadget_id = 70500000, pos = { x = 1265.801, y = 311.376, z = -1310.361 }, rot = { x = 0.000, y = 341.659, z = 0.000 }, level = 10, point_type = 2001, area_id = 2 },
	{ config_id = 30024, gadget_id = 70290001, pos = { x = 1171.534, y = 314.933, z = -1377.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 30025, gadget_id = 70500000, pos = { x = 1171.551, y = 315.502, z = -1377.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3002, owner = 30024, area_id = 2 },
	{ config_id = 30026, gadget_id = 70500000, pos = { x = 1171.469, y = 315.788, z = -1377.852 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3002, owner = 30024, area_id = 2 },
	{ config_id = 30027, gadget_id = 70500000, pos = { x = 1171.802, y = 316.200, z = -1377.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 3002, owner = 30024, area_id = 2 },
	{ config_id = 30028, gadget_id = 70290001, pos = { x = 1135.499, y = 311.077, z = -1410.237 }, rot = { x = 0.000, y = 52.635, z = 0.000 }, level = 10, area_id = 2 },
	{ config_id = 30029, gadget_id = 70500000, pos = { x = 1135.828, y = 311.646, z = -1410.007 }, rot = { x = 0.000, y = 52.635, z = 0.000 }, level = 10, point_type = 3002, owner = 30028, area_id = 2 },
	{ config_id = 30030, gadget_id = 70500000, pos = { x = 1135.145, y = 311.932, z = -1410.426 }, rot = { x = 0.000, y = 52.635, z = 0.000 }, level = 10, point_type = 3002, owner = 30028, area_id = 2 },
	{ config_id = 30031, gadget_id = 70500000, pos = { x = 1135.580, y = 312.344, z = -1410.513 }, rot = { x = 0.000, y = 52.635, z = 0.000 }, level = 10, point_type = 3002, owner = 30028, area_id = 2 },
	{ config_id = 30032, gadget_id = 70500000, pos = { x = 1045.571, y = 200.349, z = -1291.052 }, rot = { x = 0.000, y = 100.668, z = 0.000 }, level = 30, point_type = 2007, area_id = 10 }
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
		gadgets = { 30001, 30002, 30003, 30004, 30005, 30006, 30007, 30008, 30009, 30010, 30011, 30012, 30013, 30014, 30015, 30016, 30017, 30018, 30019, 30020, 30021, 30022, 30023, 30024, 30025, 30026, 30027, 30028, 30029, 30030, 30031, 30032 },
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
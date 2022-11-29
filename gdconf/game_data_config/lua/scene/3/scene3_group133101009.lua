-- 基础信息
local base_info = {
	group_id = 133101009
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
	{ config_id = 9001, gadget_id = 70500000, pos = { x = 1207.849, y = 274.673, z = 1441.913 }, rot = { x = 355.199, y = 342.363, z = 345.110 }, level = 24, point_type = 1001, area_id = 6 },
	{ config_id = 9002, gadget_id = 70500000, pos = { x = 1253.499, y = 269.000, z = 1460.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 2015, area_id = 6 },
	{ config_id = 9003, gadget_id = 70500000, pos = { x = 1241.729, y = 269.000, z = 1470.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2015, area_id = 6 },
	{ config_id = 9004, gadget_id = 70500000, pos = { x = 1255.033, y = 269.000, z = 1459.720 }, rot = { x = 0.000, y = 265.944, z = 0.000 }, level = 19, point_type = 2015, area_id = 6 },
	{ config_id = 9005, gadget_id = 70500000, pos = { x = 1241.598, y = 269.000, z = 1473.491 }, rot = { x = 0.000, y = 199.321, z = 0.000 }, level = 24, point_type = 2015, area_id = 6 },
	{ config_id = 9006, gadget_id = 70500000, pos = { x = 1206.244, y = 272.039, z = 1421.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
	{ config_id = 9007, gadget_id = 70500000, pos = { x = 1140.478, y = 266.577, z = 1294.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
	{ config_id = 9008, gadget_id = 70500000, pos = { x = 1149.021, y = 267.448, z = 1332.852 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
	{ config_id = 9009, gadget_id = 70500000, pos = { x = 1196.028, y = 264.121, z = 1357.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
	{ config_id = 9010, gadget_id = 70500000, pos = { x = 1198.163, y = 263.832, z = 1352.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
	{ config_id = 9011, gadget_id = 70500000, pos = { x = 1173.922, y = 267.328, z = 1337.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2002, area_id = 6 },
	{ config_id = 9012, gadget_id = 70500000, pos = { x = 1240.325, y = 265.866, z = 1346.728 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
	{ config_id = 9013, gadget_id = 70290003, pos = { x = 1203.829, y = 303.127, z = 1287.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 9014, gadget_id = 70500000, pos = { x = 1203.829, y = 303.230, z = 1287.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3003, owner = 9013, area_id = 6 },
	{ config_id = 9015, gadget_id = 70500000, pos = { x = 1203.829, y = 303.230, z = 1287.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3003, owner = 9013, area_id = 6 },
	{ config_id = 9016, gadget_id = 70290003, pos = { x = 1199.283, y = 301.395, z = 1290.201 }, rot = { x = 0.000, y = 271.693, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 9017, gadget_id = 70500000, pos = { x = 1199.374, y = 301.498, z = 1290.198 }, rot = { x = 0.000, y = 271.701, z = 0.000 }, level = 24, point_type = 3003, owner = 9016, area_id = 6 },
	{ config_id = 9018, gadget_id = 70500000, pos = { x = 1199.182, y = 301.498, z = 1290.204 }, rot = { x = 0.000, y = 271.701, z = 0.000 }, level = 24, point_type = 3003, owner = 9016, area_id = 6 },
	{ config_id = 9019, gadget_id = 70290003, pos = { x = 1208.222, y = 302.158, z = 1281.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 9020, gadget_id = 70500000, pos = { x = 1208.222, y = 302.261, z = 1281.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3003, owner = 9019, area_id = 6 },
	{ config_id = 9021, gadget_id = 70500000, pos = { x = 1208.222, y = 302.261, z = 1281.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3003, owner = 9019, area_id = 6 },
	{ config_id = 9022, gadget_id = 70500000, pos = { x = 1273.881, y = 278.727, z = 1288.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
	{ config_id = 9023, gadget_id = 70500000, pos = { x = 1265.559, y = 282.382, z = 1317.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
	{ config_id = 9024, gadget_id = 70500000, pos = { x = 1251.841, y = 289.469, z = 1361.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 },
	{ config_id = 9025, gadget_id = 70290001, pos = { x = 1156.675, y = 290.343, z = 1363.283 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 9026, gadget_id = 70500000, pos = { x = 1156.692, y = 290.912, z = 1363.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3002, owner = 9025, area_id = 6 },
	{ config_id = 9027, gadget_id = 70500000, pos = { x = 1156.610, y = 291.198, z = 1362.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3002, owner = 9025, area_id = 6 },
	{ config_id = 9028, gadget_id = 70500000, pos = { x = 1156.943, y = 291.610, z = 1363.180 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3002, owner = 9025, area_id = 6 },
	{ config_id = 9029, gadget_id = 70500000, pos = { x = 1241.467, y = 272.940, z = 1504.746 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 1001, area_id = 6 },
	{ config_id = 9030, gadget_id = 70500000, pos = { x = 1227.307, y = 273.493, z = 1497.850 }, rot = { x = 0.000, y = 0.000, z = 121.896 }, level = 24, point_type = 1001, area_id = 6 },
	{ config_id = 9031, gadget_id = 70500000, pos = { x = 1265.376, y = 278.064, z = 1533.653 }, rot = { x = 337.858, y = 354.467, z = 352.144 }, level = 19, point_type = 1001, area_id = 6 },
	{ config_id = 9034, gadget_id = 70500000, pos = { x = 1041.912, y = 305.418, z = 1333.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
	{ config_id = 9035, gadget_id = 70500000, pos = { x = 1033.987, y = 268.921, z = 1460.621 }, rot = { x = 0.000, y = 3.033, z = 0.000 }, level = 24, point_type = 2005, area_id = 6 },
	{ config_id = 9036, gadget_id = 70500000, pos = { x = 1045.080, y = 316.710, z = 1404.947 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
	{ config_id = 9037, gadget_id = 70500000, pos = { x = 1043.681, y = 313.562, z = 1395.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2004, area_id = 6 },
	{ config_id = 9038, gadget_id = 70500000, pos = { x = 1045.770, y = 306.055, z = 1347.468 }, rot = { x = 0.000, y = 223.064, z = 0.000 }, level = 24, point_type = 2001, area_id = 6 }
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
		{ config_id = 9032, gadget_id = 70500000, pos = { x = 1198.353, y = 351.628, z = 1524.472 }, rot = { x = 0.000, y = 89.579, z = 0.000 }, level = 24, point_type = 2009, area_id = 6 },
		{ config_id = 9033, gadget_id = 70500000, pos = { x = 1198.447, y = 351.641, z = 1525.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 2009, area_id = 6 },
		{ config_id = 9039, gadget_id = 70290001, pos = { x = 1028.330, y = 300.905, z = 1294.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 6 },
		{ config_id = 9040, gadget_id = 70500000, pos = { x = 1028.347, y = 301.474, z = 1294.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3002, owner = 9039, area_id = 6 },
		{ config_id = 9041, gadget_id = 70500000, pos = { x = 1028.265, y = 301.760, z = 1294.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3002, owner = 9039, area_id = 6 },
		{ config_id = 9042, gadget_id = 70500000, pos = { x = 1028.598, y = 302.172, z = 1294.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, point_type = 3002, owner = 9039, area_id = 6 }
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
		gadgets = { 9001, 9002, 9003, 9004, 9005, 9006, 9007, 9008, 9009, 9010, 9011, 9012, 9013, 9014, 9015, 9016, 9017, 9018, 9019, 9020, 9021, 9022, 9023, 9024, 9025, 9026, 9027, 9028, 9029, 9030, 9031, 9034, 9035, 9036, 9037, 9038 },
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
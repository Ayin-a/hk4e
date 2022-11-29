-- 基础信息
local base_info = {
	group_id = 302001007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7007, monster_id = 21010201, pos = { x = 1516.738, y = 352.588, z = -2068.016 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9016, area_id = 2 },
	{ config_id = 7008, monster_id = 20011501, pos = { x = 1352.668, y = 330.968, z = -2057.415 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	{ config_id = 7026, monster_id = 21010201, pos = { x = 1448.576, y = 243.956, z = -1501.003 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 2 },
	{ config_id = 7036, monster_id = 22010201, pos = { x = 1396.294, y = 280.062, z = -1801.675 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7005, gadget_id = 70500000, pos = { x = 1517.837, y = 352.785, z = -2067.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 2 },
	{ config_id = 7006, gadget_id = 70500000, pos = { x = 1355.490, y = 331.543, z = -2056.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 2 },
	{ config_id = 7009, gadget_id = 70500000, pos = { x = 1477.613, y = 308.851, z = -1945.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 2 },
	{ config_id = 7010, gadget_id = 70500000, pos = { x = 1604.999, y = 246.410, z = -1632.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 2 },
	{ config_id = 7011, gadget_id = 70500000, pos = { x = 1421.397, y = 259.727, z = -1687.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 2 },
	{ config_id = 7012, gadget_id = 70500000, pos = { x = 1599.942, y = 278.166, z = -1512.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 2 },
	{ config_id = 7023, gadget_id = 70500000, pos = { x = 1465.850, y = 328.722, z = -2005.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 2 },
	{ config_id = 7024, gadget_id = 70500000, pos = { x = 1449.788, y = 244.482, z = -1501.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 2 },
	{ config_id = 7027, gadget_id = 70500000, pos = { x = 1374.197, y = 252.855, z = -1570.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 2 },
	{ config_id = 7028, gadget_id = 70500000, pos = { x = 1552.195, y = 243.413, z = -1605.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 2 },
	{ config_id = 7029, gadget_id = 70500000, pos = { x = 1448.348, y = 264.211, z = -1611.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 2 },
	{ config_id = 7030, gadget_id = 70500000, pos = { x = 1247.844, y = 260.364, z = -1473.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 2 },
	{ config_id = 7031, gadget_id = 70500000, pos = { x = 1257.828, y = 257.337, z = -1543.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 2 },
	{ config_id = 7032, gadget_id = 70500000, pos = { x = 1212.081, y = 274.150, z = -1697.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 2 },
	{ config_id = 7033, gadget_id = 70500000, pos = { x = 1263.364, y = 258.898, z = -1683.180 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 2 },
	{ config_id = 7034, gadget_id = 70500000, pos = { x = 1330.342, y = 276.049, z = -1695.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 2 },
	{ config_id = 7035, gadget_id = 70500000, pos = { x = 1398.269, y = 280.610, z = -1801.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 2 },
	{ config_id = 7037, gadget_id = 70500000, pos = { x = 1398.504, y = 309.324, z = -1913.749 }, rot = { x = 330.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 2 },
	{ config_id = 7038, gadget_id = 70500000, pos = { x = 1642.930, y = 345.469, z = -2115.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 2 }
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
		monsters = { 7007, 7008, 7026, 7036 },
		gadgets = { 7005, 7006, 7009, 7010, 7011, 7012, 7023, 7024, 7027, 7028, 7029, 7030, 7031, 7032, 7033, 7034, 7035, 7037, 7038 },
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
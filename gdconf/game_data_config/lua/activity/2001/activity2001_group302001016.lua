-- 基础信息
local base_info = {
	group_id = 302001016
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 16009, monster_id = 25010201, pos = { x = -910.119, y = 198.095, z = 1153.573 }, rot = { x = 0.000, y = 185.961, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 8 },
	{ config_id = 16010, monster_id = 25010201, pos = { x = -910.546, y = 198.120, z = 1150.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 8 },
	{ config_id = 16018, monster_id = 25010201, pos = { x = -943.815, y = 205.125, z = 832.818 }, rot = { x = 0.000, y = 343.930, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9002, area_id = 8 },
	{ config_id = 16019, monster_id = 25060101, pos = { x = -941.469, y = 204.626, z = 833.778 }, rot = { x = 0.000, y = 309.679, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 8 },
	{ config_id = 16020, monster_id = 25060101, pos = { x = -941.749, y = 203.913, z = 836.064 }, rot = { x = 0.000, y = 246.244, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 8 },
	{ config_id = 16021, monster_id = 22010301, pos = { x = -828.848, y = 191.188, z = 828.041 }, rot = { x = 0.000, y = 166.340, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 8 },
	{ config_id = 16022, monster_id = 21010601, pos = { x = -829.349, y = 192.489, z = 823.816 }, rot = { x = 0.000, y = 8.501, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 8 },
	{ config_id = 16023, monster_id = 21010601, pos = { x = -826.892, y = 191.834, z = 823.909 }, rot = { x = 0.000, y = 330.982, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 8 },
	{ config_id = 16024, monster_id = 21010201, pos = { x = -335.049, y = 198.829, z = 859.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 8 },
	{ config_id = 16025, monster_id = 21010401, pos = { x = -336.605, y = 198.779, z = 861.469 }, rot = { x = 0.000, y = 112.105, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 8 },
	{ config_id = 16026, monster_id = 21010401, pos = { x = -334.668, y = 198.357, z = 862.547 }, rot = { x = 0.000, y = 182.326, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 8 },
	{ config_id = 16027, monster_id = 28020201, pos = { x = -905.104, y = 180.280, z = 941.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 8 },
	{ config_id = 16028, monster_id = 28020201, pos = { x = -904.079, y = 180.686, z = 942.834 }, rot = { x = 0.000, y = 260.298, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 16001, gadget_id = 70500000, pos = { x = -513.775, y = 257.810, z = 1282.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 8 },
	{ config_id = 16002, gadget_id = 70500000, pos = { x = -480.323, y = 202.951, z = 1065.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 8 },
	{ config_id = 16003, gadget_id = 70500000, pos = { x = -283.884, y = 227.976, z = 1177.727 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 8 },
	{ config_id = 16004, gadget_id = 70500000, pos = { x = -851.576, y = 190.514, z = 1290.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 8 },
	{ config_id = 16005, gadget_id = 70500000, pos = { x = -595.898, y = 167.071, z = 1104.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 8 },
	{ config_id = 16006, gadget_id = 70500000, pos = { x = -292.138, y = 249.123, z = 1022.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 8 },
	{ config_id = 16007, gadget_id = 70500000, pos = { x = -910.322, y = 198.101, z = 1152.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 8 },
	{ config_id = 16008, gadget_id = 70500000, pos = { x = -742.856, y = 205.445, z = 1247.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 8 },
	{ config_id = 16011, gadget_id = 70500000, pos = { x = -905.196, y = 180.475, z = 942.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 8 },
	{ config_id = 16012, gadget_id = 70500000, pos = { x = -159.005, y = 202.294, z = 879.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 8 },
	{ config_id = 16013, gadget_id = 70500000, pos = { x = -644.326, y = 283.442, z = 812.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 8 },
	{ config_id = 16014, gadget_id = 70500000, pos = { x = -335.242, y = 198.674, z = 861.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 8 },
	{ config_id = 16015, gadget_id = 70500000, pos = { x = -828.514, y = 191.573, z = 826.359 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 8 },
	{ config_id = 16016, gadget_id = 70500000, pos = { x = -944.871, y = 204.499, z = 835.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 8 },
	{ config_id = 16017, gadget_id = 70500000, pos = { x = -763.433, y = 166.018, z = 867.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9127, area_id = 8 }
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
		monsters = { 16009, 16010, 16018, 16019, 16020, 16021, 16022, 16023, 16024, 16025, 16026, 16027, 16028 },
		gadgets = { 16001, 16002, 16003, 16004, 16005, 16006, 16007, 16008, 16011, 16012, 16013, 16014, 16015, 16016, 16017 },
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
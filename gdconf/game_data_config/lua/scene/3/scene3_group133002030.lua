-- 基础信息
local base_info = {
	group_id = 133002030
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
	{ config_id = 30001, gadget_id = 70290003, pos = { x = 1221.642, y = 206.378, z = -89.668 }, rot = { x = 24.753, y = 10.863, z = 14.720 }, level = 16, area_id = 5 },
	{ config_id = 30002, gadget_id = 70500000, pos = { x = 1221.609, y = 206.507, z = -89.703 }, rot = { x = 24.773, y = 10.869, z = 14.725 }, level = 16, point_type = 3003, owner = 30001, area_id = 5 },
	{ config_id = 30003, gadget_id = 70500000, pos = { x = 1221.642, y = 206.426, z = -89.532 }, rot = { x = 24.773, y = 10.869, z = 14.725 }, level = 16, point_type = 3003, owner = 30001, area_id = 5 },
	{ config_id = 30004, gadget_id = 70500000, pos = { x = 1238.991, y = 203.197, z = -61.764 }, rot = { x = 0.894, y = 359.972, z = 356.424 }, level = 16, point_type = 2004, area_id = 5 },
	{ config_id = 30005, gadget_id = 70500000, pos = { x = 1238.334, y = 203.221, z = -60.693 }, rot = { x = 0.894, y = 359.972, z = 356.424 }, level = 16, point_type = 2004, area_id = 5 },
	{ config_id = 30006, gadget_id = 70500000, pos = { x = 1239.920, y = 203.108, z = -59.937 }, rot = { x = 2.679, y = 359.916, z = 356.424 }, level = 16, point_type = 2004, area_id = 5 },
	{ config_id = 30007, gadget_id = 70290002, pos = { x = 1260.397, y = 201.107, z = -103.211 }, rot = { x = 4.454, y = 0.174, z = 4.467 }, level = 16, area_id = 5 },
	{ config_id = 30008, gadget_id = 70500000, pos = { x = 1259.206, y = 202.576, z = -102.377 }, rot = { x = 4.454, y = 0.174, z = 4.467 }, level = 16, point_type = 3011, owner = 30007, area_id = 5 },
	{ config_id = 30009, gadget_id = 70500000, pos = { x = 1261.057, y = 203.865, z = -104.012 }, rot = { x = 4.454, y = 0.174, z = 4.467 }, level = 16, point_type = 3011, owner = 30007, area_id = 5 },
	{ config_id = 30010, gadget_id = 70500000, pos = { x = 1260.218, y = 203.893, z = -101.608 }, rot = { x = 4.454, y = 0.174, z = 4.467 }, level = 16, point_type = 3011, owner = 30007, area_id = 5 },
	{ config_id = 30011, gadget_id = 70500000, pos = { x = 1259.307, y = 200.974, z = -75.269 }, rot = { x = 0.000, y = 0.000, z = 352.875 }, level = 16, point_type = 2004, area_id = 5 },
	{ config_id = 30012, gadget_id = 70500000, pos = { x = 1215.758, y = 201.669, z = -89.860 }, rot = { x = 0.000, y = 0.000, z = 16.043 }, level = 16, point_type = 1001, area_id = 5 },
	{ config_id = 30013, gadget_id = 70500000, pos = { x = 1213.591, y = 202.232, z = -85.969 }, rot = { x = 351.573, y = 100.705, z = 346.126 }, level = 16, point_type = 1001, area_id = 5 },
	{ config_id = 30014, gadget_id = 70500000, pos = { x = 1212.565, y = 200.618, z = -89.991 }, rot = { x = 332.048, y = 102.283, z = 354.173 }, level = 16, point_type = 1001, area_id = 5 },
	{ config_id = 30015, gadget_id = 70500000, pos = { x = 1216.500, y = 201.601, z = -91.754 }, rot = { x = 4.344, y = 99.932, z = 336.606 }, level = 16, point_type = 1001, area_id = 5 },
	{ config_id = 30016, gadget_id = 70290003, pos = { x = 1201.455, y = 208.825, z = -177.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 30017, gadget_id = 70500000, pos = { x = 1201.455, y = 208.928, z = -177.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 3003, owner = 30016, area_id = 5 },
	{ config_id = 30018, gadget_id = 70500000, pos = { x = 1201.455, y = 208.928, z = -177.127 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 3003, owner = 30016, area_id = 5 },
	{ config_id = 30019, gadget_id = 70500000, pos = { x = 1097.794, y = 200.994, z = -207.849 }, rot = { x = 4.460, y = 233.677, z = 6.038 }, level = 16, point_type = 1001, area_id = 5 },
	{ config_id = 30020, gadget_id = 70290001, pos = { x = 1089.752, y = 206.269, z = -30.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, area_id = 9 },
	{ config_id = 30021, gadget_id = 70500000, pos = { x = 1089.769, y = 206.838, z = -30.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, point_type = 3002, owner = 30020, area_id = 9 },
	{ config_id = 30022, gadget_id = 70500000, pos = { x = 1089.687, y = 207.124, z = -31.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, point_type = 3002, owner = 30020, area_id = 9 },
	{ config_id = 30023, gadget_id = 70500000, pos = { x = 1090.020, y = 207.536, z = -30.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, point_type = 3002, owner = 30020, area_id = 9 },
	{ config_id = 30024, gadget_id = 70290002, pos = { x = 1063.293, y = 208.644, z = -66.184 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, area_id = 9 },
	{ config_id = 30025, gadget_id = 70500000, pos = { x = 1062.222, y = 210.262, z = -65.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, point_type = 3001, owner = 30024, area_id = 9 },
	{ config_id = 30026, gadget_id = 70500000, pos = { x = 1064.163, y = 211.272, z = -67.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, point_type = 3001, owner = 30024, area_id = 9 },
	{ config_id = 30027, gadget_id = 70500000, pos = { x = 1063.336, y = 211.552, z = -64.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, point_type = 3001, owner = 30024, area_id = 9 },
	{ config_id = 30028, gadget_id = 70500000, pos = { x = 1054.560, y = 209.165, z = -37.119 }, rot = { x = 0.000, y = 354.561, z = 0.000 }, level = 25, point_type = 2004, area_id = 9 },
	{ config_id = 30029, gadget_id = 70500000, pos = { x = 1031.195, y = 209.195, z = -27.179 }, rot = { x = 0.000, y = 53.802, z = 0.000 }, level = 25, point_type = 2004, area_id = 9 }
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
		gadgets = { 30001, 30002, 30003, 30004, 30005, 30006, 30007, 30008, 30009, 30010, 30011, 30012, 30013, 30014, 30015, 30016, 30017, 30018, 30019, 30020, 30021, 30022, 30023, 30024, 30025, 30026, 30027, 30028, 30029 },
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
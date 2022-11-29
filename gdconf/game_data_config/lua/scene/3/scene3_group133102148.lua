-- 基础信息
local base_info = {
	group_id = 133102148
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
	{ config_id = 148001, gadget_id = 70500000, pos = { x = 1253.374, y = 201.239, z = 221.017 }, rot = { x = 354.685, y = 0.331, z = 352.875 }, level = 16, point_type = 3011, area_id = 5 },
	{ config_id = 148002, gadget_id = 70500000, pos = { x = 1252.957, y = 201.084, z = 220.660 }, rot = { x = 355.567, y = 0.276, z = 18.230 }, level = 16, point_type = 3011, area_id = 5 },
	{ config_id = 148003, gadget_id = 70500000, pos = { x = 1249.365, y = 200.706, z = 255.913 }, rot = { x = 352.019, y = 0.312, z = 355.533 }, level = 16, point_type = 2002, area_id = 5 },
	{ config_id = 148004, gadget_id = 70290002, pos = { x = 1239.600, y = 200.212, z = 48.898 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 148005, gadget_id = 70500000, pos = { x = 1238.529, y = 201.830, z = 49.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 3011, owner = 148004, area_id = 5 },
	{ config_id = 148006, gadget_id = 70500000, pos = { x = 1240.470, y = 202.840, z = 47.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 3011, owner = 148004, area_id = 5 },
	{ config_id = 148007, gadget_id = 70500000, pos = { x = 1239.643, y = 203.120, z = 50.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 3011, owner = 148004, area_id = 5 },
	{ config_id = 148008, gadget_id = 70500000, pos = { x = 1220.690, y = 200.000, z = 160.660 }, rot = { x = 0.000, y = 84.397, z = 0.000 }, level = 16, point_type = 2005, area_id = 5 },
	{ config_id = 148009, gadget_id = 70500000, pos = { x = 1269.853, y = 199.908, z = 172.023 }, rot = { x = 0.000, y = 197.643, z = 0.000 }, level = 16, point_type = 2005, area_id = 5 },
	{ config_id = 148010, gadget_id = 70290014, pos = { x = 1161.881, y = 200.000, z = 247.782 }, rot = { x = 0.000, y = 309.305, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 148011, gadget_id = 70500000, pos = { x = 1161.611, y = 200.000, z = 247.301 }, rot = { x = 0.000, y = 309.309, z = 0.000 }, level = 16, point_type = 2015, owner = 148010, area_id = 5 },
	{ config_id = 148012, gadget_id = 70290014, pos = { x = 1076.033, y = 200.000, z = 236.767 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 148013, gadget_id = 70500000, pos = { x = 1075.763, y = 200.000, z = 236.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 2015, owner = 148012, area_id = 5 },
	{ config_id = 148014, gadget_id = 70290014, pos = { x = 1076.302, y = 200.000, z = 232.964 }, rot = { x = 0.000, y = 203.838, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 148015, gadget_id = 70500000, pos = { x = 1076.032, y = 200.000, z = 232.483 }, rot = { x = 0.000, y = 203.846, z = 0.000 }, level = 16, point_type = 2015, owner = 148014, area_id = 5 },
	{ config_id = 148016, gadget_id = 70500000, pos = { x = 1257.405, y = 201.482, z = 255.295 }, rot = { x = 7.861, y = 287.653, z = 358.771 }, level = 16, point_type = 2003, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 148017, gadget_id = 70500000, pos = { x = 1258.547, y = 201.748, z = 252.732 }, rot = { x = 0.720, y = 287.057, z = 354.618 }, level = 16, point_type = 2003, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 148018, gadget_id = 70500000, pos = { x = 1274.579, y = 202.155, z = 238.861 }, rot = { x = 0.000, y = 334.005, z = 0.000 }, level = 16, point_type = 2004, area_id = 5 },
	{ config_id = 148019, gadget_id = 70500000, pos = { x = 1265.672, y = 201.803, z = 254.605 }, rot = { x = 0.000, y = 334.005, z = 0.000 }, level = 16, point_type = 2004, area_id = 5 },
	{ config_id = 148020, gadget_id = 70500000, pos = { x = 1097.088, y = 200.387, z = 67.222 }, rot = { x = 0.000, y = 124.318, z = 0.000 }, level = 16, point_type = 2001, area_id = 9 },
	{ config_id = 148021, gadget_id = 70500000, pos = { x = 1276.362, y = 204.265, z = 185.100 }, rot = { x = 11.444, y = 118.179, z = 0.777 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 148022, gadget_id = 70500000, pos = { x = 1044.094, y = 205.096, z = 37.428 }, rot = { x = 0.000, y = 54.109, z = 0.000 }, level = 25, point_type = 2004, area_id = 9 },
	{ config_id = 148023, gadget_id = 70500000, pos = { x = 1083.703, y = 200.106, z = 213.352 }, rot = { x = 356.408, y = 271.020, z = 0.830 }, level = 16, point_type = 2004, area_id = 5 },
	{ config_id = 148024, gadget_id = 70500000, pos = { x = 1203.276, y = 200.072, z = 123.089 }, rot = { x = 8.636, y = 174.550, z = 6.268 }, level = 16, point_type = 2004, area_id = 5 },
	{ config_id = 148025, gadget_id = 70500000, pos = { x = 1079.772, y = 205.287, z = 1.591 }, rot = { x = 355.406, y = 268.626, z = 354.769 }, level = 25, point_type = 2001, area_id = 9 },
	{ config_id = 148026, gadget_id = 70500000, pos = { x = 1032.682, y = 201.623, z = 96.856 }, rot = { x = 0.000, y = 353.336, z = 0.000 }, level = 25, point_type = 2004, area_id = 9 },
	{ config_id = 148027, gadget_id = 70500000, pos = { x = 1145.933, y = 201.029, z = 249.430 }, rot = { x = 13.341, y = 257.604, z = 3.334 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 148028, gadget_id = 70500000, pos = { x = 1194.927, y = 200.434, z = 224.056 }, rot = { x = 353.689, y = 21.484, z = 356.569 }, level = 16, point_type = 2001, area_id = 5 },
	{ config_id = 148029, gadget_id = 70500000, pos = { x = 1124.436, y = 200.196, z = 69.331 }, rot = { x = 0.000, y = 109.863, z = 0.000 }, level = 16, point_type = 2005, area_id = 9 },
	{ config_id = 148030, gadget_id = 70500000, pos = { x = 1167.570, y = 199.672, z = 250.164 }, rot = { x = 0.000, y = 101.110, z = 0.000 }, level = 16, point_type = 2027, area_id = 5 },
	{ config_id = 148031, gadget_id = 70500000, pos = { x = 1041.156, y = 202.402, z = 245.852 }, rot = { x = 324.676, y = 15.114, z = 5.685 }, level = 16, point_type = 2004, area_id = 5 },
	{ config_id = 148032, gadget_id = 70500000, pos = { x = 1062.716, y = 206.402, z = 0.708 }, rot = { x = 353.487, y = 105.762, z = 9.454 }, level = 25, point_type = 1001, area_id = 9 },
	{ config_id = 148033, gadget_id = 70500000, pos = { x = 1053.102, y = 206.729, z = 1.365 }, rot = { x = 2.545, y = 350.648, z = 357.181 }, level = 25, point_type = 1001, area_id = 9 },
	{ config_id = 148034, gadget_id = 70500000, pos = { x = 1054.705, y = 206.477, z = 2.890 }, rot = { x = 6.252, y = 347.363, z = 14.357 }, level = 25, point_type = 1001, area_id = 9 },
	{ config_id = 148035, gadget_id = 70500000, pos = { x = 1059.451, y = 205.873, z = 3.569 }, rot = { x = 10.607, y = 80.437, z = 339.120 }, level = 25, point_type = 1001, area_id = 9 }
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
		gadgets = { 148001, 148002, 148003, 148004, 148005, 148006, 148007, 148008, 148009, 148010, 148011, 148012, 148013, 148014, 148015, 148016, 148017, 148018, 148019, 148020, 148021, 148022, 148023, 148024, 148025, 148026, 148027, 148028, 148029, 148030, 148031, 148032, 148033, 148034, 148035 },
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
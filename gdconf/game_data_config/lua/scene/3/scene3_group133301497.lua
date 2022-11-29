-- 基础信息
local base_info = {
	group_id = 133301497
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 497004, monster_id = 28040102, pos = { x = -1047.305, y = 200.000, z = 2631.264 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 24 },
	{ config_id = 497005, monster_id = 28040102, pos = { x = -1071.614, y = 200.000, z = 2661.194 }, rot = { x = 0.000, y = 111.611, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 21 },
	{ config_id = 497006, monster_id = 28040101, pos = { x = -1066.705, y = 200.000, z = 2661.303 }, rot = { x = 0.000, y = 129.153, z = 0.000 }, level = 30, drop_tag = "水族", area_id = 21 },
	{ config_id = 497020, monster_id = 28030313, pos = { x = -1131.993, y = 218.763, z = 2647.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 3, area_id = 21 },
	{ config_id = 497021, monster_id = 28010304, pos = { x = -1040.594, y = 201.350, z = 2638.224 }, rot = { x = 0.000, y = 307.837, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
	{ config_id = 497022, monster_id = 28030313, pos = { x = -1055.295, y = 211.264, z = 2670.479 }, rot = { x = 0.000, y = 208.276, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 3, area_id = 21 },
	{ config_id = 497023, monster_id = 28030313, pos = { x = -1129.820, y = 224.190, z = 2704.002 }, rot = { x = 0.000, y = 171.262, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 3, area_id = 21 },
	{ config_id = 497024, monster_id = 28030313, pos = { x = -1130.610, y = 223.873, z = 2703.946 }, rot = { x = 0.000, y = 187.477, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 3, area_id = 21 },
	{ config_id = 497028, monster_id = 28010208, pos = { x = -1111.779, y = 219.579, z = 2731.543 }, rot = { x = 0.000, y = 79.876, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 21 },
	{ config_id = 497032, monster_id = 28010208, pos = { x = -1076.397, y = 219.257, z = 2742.417 }, rot = { x = 0.000, y = 70.441, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 21 },
	{ config_id = 497038, monster_id = 28030313, pos = { x = -1074.910, y = 201.347, z = 2649.980 }, rot = { x = 0.000, y = 334.552, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 3, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 497007, gadget_id = 70210101, pos = { x = -1148.499, y = 229.364, z = 2732.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 21 },
	{ config_id = 497008, gadget_id = 70210101, pos = { x = -1101.902, y = 204.229, z = 2664.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 21 },
	{ config_id = 497009, gadget_id = 70210101, pos = { x = -1123.157, y = 217.119, z = 2636.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 21 },
	{ config_id = 497010, gadget_id = 70210101, pos = { x = -1128.425, y = 215.469, z = 2645.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 21 },
	{ config_id = 497011, gadget_id = 70210101, pos = { x = -1138.903, y = 214.860, z = 2645.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 21 },
	{ config_id = 497015, gadget_id = 70210101, pos = { x = -1145.911, y = 224.161, z = 2697.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 21 },
	{ config_id = 497016, gadget_id = 70210101, pos = { x = -1136.213, y = 224.034, z = 2701.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 21 },
	{ config_id = 497017, gadget_id = 70210101, pos = { x = -1137.800, y = 224.777, z = 2722.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 21 },
	{ config_id = 497018, gadget_id = 70210101, pos = { x = -1135.168, y = 225.057, z = 2725.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 21 },
	{ config_id = 497029, gadget_id = 70210101, pos = { x = -1087.163, y = 221.578, z = 2743.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 21 },
	{ config_id = 497030, gadget_id = 70210101, pos = { x = -1083.698, y = 220.930, z = 2749.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 21 },
	{ config_id = 497031, gadget_id = 70210101, pos = { x = -1082.173, y = 221.497, z = 2724.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 21 },
	{ config_id = 497033, gadget_id = 70210101, pos = { x = -1067.102, y = 202.554, z = 2639.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 21 },
	{ config_id = 497036, gadget_id = 70210101, pos = { x = -1062.092, y = 200.895, z = 2647.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 21 }
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
		{ config_id = 497001, gadget_id = 70500000, pos = { x = -1081.924, y = 201.784, z = 2647.410 }, rot = { x = 0.000, y = 35.022, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 },
		{ config_id = 497002, gadget_id = 70500000, pos = { x = -1085.632, y = 200.000, z = 2656.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 9130, area_id = 21 },
		{ config_id = 497003, gadget_id = 70500000, pos = { x = -1102.024, y = 204.004, z = 2648.137 }, rot = { x = 1.097, y = 342.291, z = 3.431 }, level = 30, point_type = 2052, area_id = 21 },
		{ config_id = 497012, gadget_id = 70500000, pos = { x = -1128.799, y = 209.654, z = 2655.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 7014, area_id = 21 },
		{ config_id = 497013, gadget_id = 70500000, pos = { x = -1135.458, y = 214.208, z = 2668.918 }, rot = { x = 325.610, y = 276.269, z = 0.000 }, level = 30, point_type = 7014, area_id = 21 },
		{ config_id = 497014, gadget_id = 70500000, pos = { x = -1135.525, y = 215.140, z = 2647.188 }, rot = { x = 341.284, y = 34.913, z = 355.948 }, level = 30, point_type = 7014, area_id = 21 },
		{ config_id = 497019, gadget_id = 70500000, pos = { x = -1138.730, y = 222.489, z = 2739.436 }, rot = { x = 356.690, y = 113.255, z = 358.579 }, level = 30, point_type = 2052, area_id = 21 },
		{ config_id = 497025, gadget_id = 70290003, pos = { x = -1125.918, y = 224.966, z = 2704.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
		{ config_id = 497026, gadget_id = 70500000, pos = { x = -1125.918, y = 225.069, z = 2704.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3003, owner = 497025, area_id = 21 },
		{ config_id = 497027, gadget_id = 70500000, pos = { x = -1125.918, y = 225.069, z = 2705.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3003, owner = 497025, area_id = 21 },
		{ config_id = 497034, gadget_id = 70500000, pos = { x = -1069.235, y = 202.245, z = 2640.818 }, rot = { x = 359.440, y = 211.512, z = 114.022 }, level = 30, point_type = 3011, area_id = 21 },
		{ config_id = 497035, gadget_id = 70500000, pos = { x = -1069.640, y = 202.198, z = 2640.641 }, rot = { x = 355.765, y = 320.488, z = 264.884 }, level = 30, point_type = 3011, area_id = 21 },
		{ config_id = 497037, gadget_id = 70500000, pos = { x = -1066.853, y = 200.338, z = 2648.801 }, rot = { x = 354.140, y = 77.732, z = 7.342 }, level = 30, point_type = 9130, area_id = 21 }
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
		monsters = { 497004, 497005, 497006, 497020, 497021, 497022, 497023, 497024, 497028, 497032, 497038 },
		gadgets = { 497007, 497008, 497009, 497010, 497011, 497015, 497016, 497017, 497018, 497029, 497030, 497031, 497033, 497036 },
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
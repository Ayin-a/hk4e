-- 基础信息
local base_info = {
	group_id = 133301755
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
	{ config_id = 755012, gadget_id = 70500000, pos = { x = -1081.924, y = 201.784, z = 2647.410 }, rot = { x = 0.000, y = 35.022, z = 0.000 }, level = 30, point_type = 2052, area_id = 21 },
	{ config_id = 755013, gadget_id = 70500000, pos = { x = -1086.101, y = 200.436, z = 2655.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2001, area_id = 21 },
	{ config_id = 755014, gadget_id = 70500000, pos = { x = -1102.024, y = 204.004, z = 2648.137 }, rot = { x = 1.097, y = 342.291, z = 3.431 }, level = 30, point_type = 2052, area_id = 21 },
	{ config_id = 755020, gadget_id = 70500000, pos = { x = -1128.989, y = 209.633, z = 2655.641 }, rot = { x = 0.818, y = 41.719, z = 357.141 }, level = 30, point_type = 2002, area_id = 21 },
	{ config_id = 755021, gadget_id = 70500000, pos = { x = -1135.456, y = 214.302, z = 2668.869 }, rot = { x = 325.610, y = 276.269, z = 0.000 }, level = 30, point_type = 2002, area_id = 21 },
	{ config_id = 755022, gadget_id = 70500000, pos = { x = -1135.276, y = 214.917, z = 2647.260 }, rot = { x = 343.059, y = 296.513, z = 19.754 }, level = 30, point_type = 2002, area_id = 21 },
	{ config_id = 755027, gadget_id = 70500000, pos = { x = -1138.730, y = 222.489, z = 2739.436 }, rot = { x = 356.690, y = 113.255, z = 358.579 }, level = 30, point_type = 2052, area_id = 21 },
	{ config_id = 755028, gadget_id = 70290003, pos = { x = -1125.918, y = 224.966, z = 2704.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 755029, gadget_id = 70500000, pos = { x = -1125.918, y = 225.069, z = 2704.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3003, owner = 755028, area_id = 21 },
	{ config_id = 755030, gadget_id = 70500000, pos = { x = -1125.918, y = 225.069, z = 2705.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3003, owner = 755028, area_id = 21 },
	{ config_id = 755035, gadget_id = 70500000, pos = { x = -1069.236, y = 202.295, z = 2640.814 }, rot = { x = 359.440, y = 211.512, z = 120.880 }, level = 30, point_type = 3011, area_id = 21 },
	{ config_id = 755036, gadget_id = 70500000, pos = { x = -1069.640, y = 202.198, z = 2640.641 }, rot = { x = 355.765, y = 320.488, z = 264.884 }, level = 30, point_type = 3011, area_id = 21 },
	{ config_id = 755038, gadget_id = 70500000, pos = { x = -1066.853, y = 200.338, z = 2648.801 }, rot = { x = 354.140, y = 77.732, z = 7.342 }, level = 30, point_type = 2001, area_id = 21 }
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
	monsters = {
		{ config_id = 755001, monster_id = 28040102, pos = { x = -1047.305, y = 200.000, z = 2631.264 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 24 },
		{ config_id = 755002, monster_id = 28040102, pos = { x = -1071.614, y = 200.000, z = 2661.194 }, rot = { x = 0.000, y = 111.611, z = 0.000 }, level = 30, drop_tag = "水族", area_id = 21 },
		{ config_id = 755003, monster_id = 28040101, pos = { x = -1066.705, y = 200.000, z = 2661.303 }, rot = { x = 0.000, y = 129.153, z = 0.000 }, level = 30, drop_tag = "水族", area_id = 21 },
		{ config_id = 755004, monster_id = 28030313, pos = { x = -1131.993, y = 218.763, z = 2647.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 3, area_id = 21 },
		{ config_id = 755005, monster_id = 28010304, pos = { x = -1040.594, y = 201.350, z = 2638.224 }, rot = { x = 0.000, y = 307.837, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
		{ config_id = 755006, monster_id = 28030313, pos = { x = -1055.295, y = 211.264, z = 2670.479 }, rot = { x = 0.000, y = 208.276, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 3, area_id = 21 },
		{ config_id = 755007, monster_id = 28030313, pos = { x = -1129.820, y = 224.190, z = 2704.002 }, rot = { x = 0.000, y = 171.262, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 3, area_id = 21 },
		{ config_id = 755008, monster_id = 28030313, pos = { x = -1130.610, y = 223.873, z = 2703.946 }, rot = { x = 0.000, y = 187.477, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 3, area_id = 21 },
		{ config_id = 755009, monster_id = 28010208, pos = { x = -1111.779, y = 219.579, z = 2731.543 }, rot = { x = 0.000, y = 79.876, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 21 },
		{ config_id = 755010, monster_id = 28010208, pos = { x = -1076.397, y = 219.257, z = 2742.417 }, rot = { x = 0.000, y = 70.441, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 21 },
		{ config_id = 755011, monster_id = 28030313, pos = { x = -1074.910, y = 201.347, z = 2649.980 }, rot = { x = 0.000, y = 334.552, z = 0.000 }, level = 30, drop_tag = "鸟类", pose_id = 3, area_id = 21 }
	},
	gadgets = {
		{ config_id = 755015, gadget_id = 70210101, pos = { x = -1148.499, y = 229.364, z = 2732.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 21 },
		{ config_id = 755016, gadget_id = 70210101, pos = { x = -1101.902, y = 204.229, z = 2664.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 21 },
		{ config_id = 755017, gadget_id = 70210101, pos = { x = -1123.157, y = 217.119, z = 2636.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 21 },
		{ config_id = 755018, gadget_id = 70210101, pos = { x = -1128.425, y = 215.469, z = 2645.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 21 },
		{ config_id = 755019, gadget_id = 70210101, pos = { x = -1138.903, y = 214.860, z = 2645.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 21 },
		{ config_id = 755023, gadget_id = 70210101, pos = { x = -1145.911, y = 224.161, z = 2697.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 21 },
		{ config_id = 755024, gadget_id = 70210101, pos = { x = -1136.213, y = 224.034, z = 2701.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 21 },
		{ config_id = 755025, gadget_id = 70210101, pos = { x = -1137.800, y = 224.777, z = 2722.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 21 },
		{ config_id = 755026, gadget_id = 70210101, pos = { x = -1135.168, y = 225.057, z = 2725.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 21 },
		{ config_id = 755031, gadget_id = 70210101, pos = { x = -1087.163, y = 221.578, z = 2743.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 21 },
		{ config_id = 755032, gadget_id = 70210101, pos = { x = -1083.698, y = 220.930, z = 2749.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 21 },
		{ config_id = 755033, gadget_id = 70210101, pos = { x = -1082.173, y = 221.497, z = 2724.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", persistent = true, area_id = 21 },
		{ config_id = 755034, gadget_id = 70210101, pos = { x = -1067.102, y = 202.554, z = 2639.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", persistent = true, area_id = 21 },
		{ config_id = 755037, gadget_id = 70210101, pos = { x = -1062.092, y = 200.895, z = 2647.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 21 }
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
		gadgets = { 755012, 755013, 755014, 755020, 755021, 755022, 755027, 755028, 755029, 755030, 755035, 755036, 755038 },
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
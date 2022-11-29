-- 基础信息
local base_info = {
	group_id = 166001433
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 433005, monster_id = 28050102, pos = { x = 757.912, y = 956.231, z = 915.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 300 },
	{ config_id = 433006, monster_id = 28050102, pos = { x = 756.980, y = 953.239, z = 926.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 300 },
	{ config_id = 433007, monster_id = 28050102, pos = { x = 760.523, y = 958.125, z = 911.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 300 },
	{ config_id = 433016, monster_id = 28050102, pos = { x = 706.539, y = 931.636, z = 957.357 }, rot = { x = 0.000, y = 144.225, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 300 },
	{ config_id = 433017, monster_id = 28050102, pos = { x = 704.538, y = 932.812, z = 956.139 }, rot = { x = 0.000, y = 110.151, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 300 },
	{ config_id = 433033, monster_id = 24020301, pos = { x = 816.916, y = 952.251, z = 1009.809 }, rot = { x = 0.000, y = 346.846, z = 0.000 }, level = 36, drop_tag = "拟生机关", pose_id = 100, area_id = 300 },
	{ config_id = 433034, monster_id = 28050102, pos = { x = 671.248, y = 936.838, z = 1017.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 300 },
	{ config_id = 433035, monster_id = 28050102, pos = { x = 659.298, y = 938.759, z = 1024.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 300 },
	{ config_id = 433036, monster_id = 28050102, pos = { x = 663.604, y = 941.302, z = 1034.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 300 },
	{ config_id = 433039, monster_id = 28050301, pos = { x = 677.835, y = 933.372, z = 1024.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 433001, gadget_id = 70290200, pos = { x = 757.570, y = 885.094, z = 937.058 }, rot = { x = 3.862, y = 337.001, z = 358.362 }, level = 36, area_id = 300 },
	{ config_id = 433002, gadget_id = 70290200, pos = { x = 773.491, y = 887.808, z = 938.531 }, rot = { x = 0.000, y = 287.526, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 433003, gadget_id = 70290200, pos = { x = 781.545, y = 908.792, z = 959.122 }, rot = { x = 0.000, y = 225.319, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 433004, gadget_id = 70210101, pos = { x = 771.256, y = 892.164, z = 932.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 300 },
	{ config_id = 433014, gadget_id = 70290200, pos = { x = 787.604, y = 926.654, z = 976.989 }, rot = { x = 0.000, y = 225.319, z = 355.556 }, level = 36, area_id = 300 },
	{ config_id = 433015, gadget_id = 70210101, pos = { x = 814.530, y = 932.280, z = 944.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 300 },
	{ config_id = 433020, gadget_id = 70290324, pos = { x = 799.945, y = 921.664, z = 962.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 433021, gadget_id = 70290324, pos = { x = 777.306, y = 926.679, z = 979.113 }, rot = { x = 345.950, y = 237.892, z = 22.414 }, level = 36, area_id = 300 },
	{ config_id = 433022, gadget_id = 70290324, pos = { x = 785.128, y = 936.553, z = 1005.031 }, rot = { x = 0.000, y = 0.000, z = 15.449 }, level = 36, area_id = 300 },
	{ config_id = 433026, gadget_id = 70290323, pos = { x = 783.587, y = 940.649, z = 1020.177 }, rot = { x = 0.718, y = 242.598, z = 7.918 }, level = 36, area_id = 300 },
	{ config_id = 433027, gadget_id = 70290323, pos = { x = 788.455, y = 941.795, z = 1022.321 }, rot = { x = 0.718, y = 242.598, z = 348.834 }, level = 36, area_id = 300 },
	{ config_id = 433028, gadget_id = 70290323, pos = { x = 828.629, y = 934.059, z = 946.040 }, rot = { x = 0.718, y = 242.598, z = 348.834 }, level = 36, area_id = 300 },
	{ config_id = 433029, gadget_id = 70290323, pos = { x = 808.537, y = 931.102, z = 937.626 }, rot = { x = 0.718, y = 242.598, z = 348.834 }, level = 36, area_id = 300 },
	{ config_id = 433037, gadget_id = 70290200, pos = { x = 796.755, y = 954.521, z = 1071.516 }, rot = { x = 10.068, y = 287.661, z = 5.409 }, level = 36, area_id = 300 },
	{ config_id = 433038, gadget_id = 70290347, pos = { x = 768.023, y = 946.623, z = 1078.652 }, rot = { x = 7.096, y = 327.718, z = 9.731 }, level = 36, persistent = true, interact_id = 87, area_id = 300 }
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
		{ config_id = 433008, gadget_id = 70290016, pos = { x = 753.072, y = 926.203, z = 959.086 }, rot = { x = 0.000, y = 209.651, z = 0.000 }, level = 36, area_id = 300 },
		{ config_id = 433009, gadget_id = 70500000, pos = { x = 753.072, y = 926.203, z = 959.086 }, rot = { x = 0.000, y = 209.653, z = 0.000 }, level = 36, point_type = 3010, owner = 433008, area_id = 300 },
		{ config_id = 433010, gadget_id = 70290016, pos = { x = 760.340, y = 926.352, z = 977.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
		{ config_id = 433011, gadget_id = 70500000, pos = { x = 760.340, y = 926.352, z = 977.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 3010, owner = 433010, area_id = 300 },
		{ config_id = 433012, gadget_id = 70290016, pos = { x = 741.984, y = 927.314, z = 960.455 }, rot = { x = 0.000, y = 86.631, z = 0.000 }, level = 36, area_id = 300 },
		{ config_id = 433013, gadget_id = 70500000, pos = { x = 741.984, y = 927.314, z = 960.455 }, rot = { x = 0.000, y = 86.631, z = 0.000 }, level = 36, point_type = 3010, owner = 433012, area_id = 300 },
		{ config_id = 433018, gadget_id = 70500000, pos = { x = 784.690, y = 942.747, z = 1028.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1003, area_id = 300 },
		{ config_id = 433019, gadget_id = 70500000, pos = { x = 790.861, y = 943.129, z = 1022.990 }, rot = { x = 0.000, y = 80.328, z = 0.000 }, level = 36, point_type = 1003, area_id = 300 },
		{ config_id = 433023, gadget_id = 70500000, pos = { x = 786.413, y = 941.813, z = 1026.796 }, rot = { x = 344.284, y = 0.000, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 433024, gadget_id = 70500000, pos = { x = 784.320, y = 939.542, z = 1015.222 }, rot = { x = 22.996, y = 287.302, z = 0.001 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 433025, gadget_id = 70500000, pos = { x = 788.675, y = 942.074, z = 1018.872 }, rot = { x = 0.000, y = 133.027, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 433030, gadget_id = 70500000, pos = { x = 800.426, y = 944.335, z = 925.226 }, rot = { x = 9.322, y = 56.759, z = 26.946 }, level = 36, point_type = 1001, area_id = 300 },
		{ config_id = 433031, gadget_id = 70500000, pos = { x = 799.256, y = 945.430, z = 921.945 }, rot = { x = 348.127, y = 309.773, z = 338.754 }, level = 36, point_type = 1001, area_id = 300 },
		{ config_id = 433032, gadget_id = 70500000, pos = { x = 803.705, y = 945.950, z = 921.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1002, area_id = 300 }
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
		monsters = { 433005, 433006, 433007, 433016, 433017, 433033, 433034, 433035, 433036, 433039 },
		gadgets = { 433001, 433002, 433003, 433004, 433014, 433015, 433020, 433021, 433022, 433026, 433027, 433028, 433029, 433037, 433038 },
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
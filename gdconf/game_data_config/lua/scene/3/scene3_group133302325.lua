-- 基础信息
local base_info = {
	group_id = 133302325
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
	{ config_id = 325001, gadget_id = 70540037, pos = { x = -798.009, y = 200.228, z = 2765.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 325002, gadget_id = 70290003, pos = { x = -827.482, y = 208.190, z = 2862.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 325003, gadget_id = 70500000, pos = { x = -827.482, y = 208.293, z = 2862.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, owner = 325002, area_id = 24 },
	{ config_id = 325004, gadget_id = 70500000, pos = { x = -827.482, y = 208.293, z = 2862.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, owner = 325002, area_id = 24 },
	{ config_id = 325011, gadget_id = 70290002, pos = { x = -897.222, y = 206.312, z = 2593.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 325012, gadget_id = 70500000, pos = { x = -898.293, y = 207.930, z = 2594.118 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 27, point_type = 3001, owner = 325011, area_id = 24 },
	{ config_id = 325013, gadget_id = 70500000, pos = { x = -896.352, y = 208.940, z = 2592.393 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 27, point_type = 3001, owner = 325011, area_id = 24 },
	{ config_id = 325014, gadget_id = 70500000, pos = { x = -897.179, y = 209.220, z = 2594.785 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3001, owner = 325011, area_id = 24 },
	{ config_id = 325015, gadget_id = 70540041, pos = { x = -835.840, y = 200.166, z = 2733.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 325016, gadget_id = 70500000, pos = { x = -835.572, y = 201.148, z = 2733.926 }, rot = { x = 346.837, y = 4.866, z = 14.014 }, level = 27, point_type = 2051, owner = 325015, area_id = 24 },
	{ config_id = 325017, gadget_id = 70500000, pos = { x = -835.760, y = 201.038, z = 2733.716 }, rot = { x = 344.037, y = 7.209, z = 349.121 }, level = 27, point_type = 2051, owner = 325015, area_id = 24 },
	{ config_id = 325018, gadget_id = 70500000, pos = { x = -835.541, y = 200.789, z = 2733.547 }, rot = { x = 10.767, y = 8.154, z = 14.727 }, level = 27, point_type = 2051, owner = 325015, area_id = 24 },
	{ config_id = 325019, gadget_id = 70500000, pos = { x = -836.121, y = 200.693, z = 2733.632 }, rot = { x = 359.538, y = 0.302, z = 342.000 }, level = 27, point_type = 2051, owner = 325015, area_id = 24 },
	{ config_id = 325020, gadget_id = 70500000, pos = { x = -797.622, y = 200.604, z = 2764.893 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 325001, area_id = 24 },
	{ config_id = 325021, gadget_id = 70500000, pos = { x = -798.178, y = 200.949, z = 2765.385 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 325001, area_id = 24 },
	{ config_id = 325025, gadget_id = 70290002, pos = { x = -740.169, y = 206.039, z = 2739.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 325026, gadget_id = 70500000, pos = { x = -741.240, y = 207.657, z = 2740.001 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 27, point_type = 3011, owner = 325025, area_id = 24 },
	{ config_id = 325027, gadget_id = 70500000, pos = { x = -739.299, y = 208.667, z = 2738.276 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 27, point_type = 3011, owner = 325025, area_id = 24 },
	{ config_id = 325028, gadget_id = 70500000, pos = { x = -740.126, y = 208.947, z = 2740.668 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3011, owner = 325025, area_id = 24 },
	{ config_id = 325035, gadget_id = 70500000, pos = { x = -741.543, y = 205.984, z = 2739.593 }, rot = { x = 0.000, y = 0.000, z = 74.046 }, level = 27, point_type = 3011, area_id = 24 }
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
		{ config_id = 325005, monster_id = 28030313, pos = { x = -757.957, y = 214.950, z = 2789.549 }, rot = { x = 0.000, y = 338.838, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
		{ config_id = 325006, monster_id = 28030313, pos = { x = -653.127, y = 217.199, z = 2733.465 }, rot = { x = 0.000, y = 198.558, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
		{ config_id = 325007, monster_id = 28030313, pos = { x = -554.951, y = 221.661, z = 2698.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
		{ config_id = 325008, monster_id = 28050106, pos = { x = -764.014, y = 226.985, z = 2695.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 24 },
		{ config_id = 325009, monster_id = 28050106, pos = { x = -768.585, y = 227.007, z = 2700.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 24 },
		{ config_id = 325010, monster_id = 28030313, pos = { x = -623.163, y = 216.830, z = 2727.797 }, rot = { x = 0.000, y = 30.048, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
		{ config_id = 325029, monster_id = 28020201, pos = { x = -741.653, y = 206.060, z = 2739.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
		{ config_id = 325030, monster_id = 28020201, pos = { x = -741.117, y = 205.898, z = 2739.978 }, rot = { x = 0.000, y = 240.175, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
		{ config_id = 325031, monster_id = 28010301, pos = { x = -826.086, y = 200.153, z = 2738.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
		{ config_id = 325032, monster_id = 28010301, pos = { x = -807.802, y = 200.138, z = 2861.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
		{ config_id = 325033, monster_id = 28010301, pos = { x = -817.015, y = 200.113, z = 2740.544 }, rot = { x = 0.000, y = 147.899, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
		{ config_id = 325034, monster_id = 28010301, pos = { x = -582.547, y = 200.153, z = 2782.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
		{ config_id = 325036, monster_id = 28010301, pos = { x = -591.505, y = 200.133, z = 2770.908 }, rot = { x = 0.000, y = 177.895, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
		{ config_id = 325037, monster_id = 28010301, pos = { x = -570.608, y = 200.153, z = 2896.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
		{ config_id = 325038, monster_id = 28010301, pos = { x = -569.938, y = 200.153, z = 2898.787 }, rot = { x = 0.000, y = 187.007, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
		{ config_id = 325039, monster_id = 28010301, pos = { x = -812.555, y = 200.133, z = 2938.067 }, rot = { x = 0.000, y = 146.866, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
		{ config_id = 325040, monster_id = 28010301, pos = { x = -797.187, y = 200.024, z = 2939.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 }
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
		gadgets = { 325001, 325002, 325003, 325004, 325011, 325012, 325013, 325014, 325015, 325016, 325017, 325018, 325019, 325020, 325021, 325025, 325026, 325027, 325028, 325035 },
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
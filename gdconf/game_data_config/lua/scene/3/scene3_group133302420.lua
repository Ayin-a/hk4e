-- 基础信息
local base_info = {
	group_id = 133302420
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
	{ config_id = 420001, gadget_id = 70290002, pos = { x = -846.179, y = 203.188, z = 2640.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 420002, gadget_id = 70500000, pos = { x = -847.250, y = 204.806, z = 2641.634 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 27, point_type = 3001, owner = 420001, area_id = 24 },
	{ config_id = 420003, gadget_id = 70500000, pos = { x = -845.309, y = 205.816, z = 2639.909 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 27, point_type = 3001, owner = 420001, area_id = 24 },
	{ config_id = 420004, gadget_id = 70500000, pos = { x = -846.136, y = 206.096, z = 2642.301 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3001, owner = 420001, area_id = 24 },
	{ config_id = 420005, gadget_id = 70290002, pos = { x = -853.941, y = 205.538, z = 2619.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 420006, gadget_id = 70500000, pos = { x = -855.012, y = 207.156, z = 2619.884 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 27, point_type = 3011, owner = 420005, area_id = 24 },
	{ config_id = 420007, gadget_id = 70500000, pos = { x = -853.071, y = 208.166, z = 2618.159 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 27, point_type = 3011, owner = 420005, area_id = 24 },
	{ config_id = 420008, gadget_id = 70500000, pos = { x = -853.898, y = 208.446, z = 2620.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3011, owner = 420005, area_id = 24 },
	{ config_id = 420011, gadget_id = 70500000, pos = { x = -851.360, y = 205.034, z = 2618.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3011, area_id = 24 },
	{ config_id = 420012, gadget_id = 70500000, pos = { x = -851.037, y = 204.933, z = 2618.785 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3011, area_id = 24 },
	{ config_id = 420017, gadget_id = 70540041, pos = { x = -776.691, y = 219.454, z = 2681.795 }, rot = { x = 346.337, y = 358.578, z = 11.829 }, level = 27, area_id = 24 },
	{ config_id = 420018, gadget_id = 70500000, pos = { x = -776.630, y = 220.495, z = 2681.780 }, rot = { x = 332.471, y = 0.786, z = 25.623 }, level = 27, point_type = 2051, owner = 420017, area_id = 24 },
	{ config_id = 420019, gadget_id = 70500000, pos = { x = -776.787, y = 220.303, z = 2681.607 }, rot = { x = 329.277, y = 2.695, z = 0.390 }, level = 27, point_type = 2051, owner = 420017, area_id = 24 },
	{ config_id = 420020, gadget_id = 70500000, pos = { x = -776.519, y = 220.070, z = 2681.495 }, rot = { x = 355.424, y = 8.670, z = 24.178 }, level = 27, point_type = 2051, owner = 420017, area_id = 24 },
	{ config_id = 420021, gadget_id = 70500000, pos = { x = -777.070, y = 219.883, z = 2681.615 }, rot = { x = 345.823, y = 358.785, z = 353.781 }, level = 27, point_type = 2051, owner = 420017, area_id = 24 },
	{ config_id = 420022, gadget_id = 70540041, pos = { x = -868.517, y = 203.164, z = 2771.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 420023, gadget_id = 70500000, pos = { x = -868.249, y = 204.146, z = 2771.369 }, rot = { x = 346.837, y = 4.866, z = 14.014 }, level = 27, point_type = 2051, owner = 420022, area_id = 24 },
	{ config_id = 420024, gadget_id = 70500000, pos = { x = -868.437, y = 204.036, z = 2771.160 }, rot = { x = 344.037, y = 7.209, z = 349.121 }, level = 27, point_type = 2051, owner = 420022, area_id = 24 },
	{ config_id = 420025, gadget_id = 70500000, pos = { x = -868.218, y = 203.787, z = 2770.990 }, rot = { x = 10.767, y = 8.154, z = 14.727 }, level = 27, point_type = 2051, owner = 420022, area_id = 24 },
	{ config_id = 420026, gadget_id = 70500000, pos = { x = -868.798, y = 203.690, z = 2771.075 }, rot = { x = 359.538, y = 0.302, z = 342.000 }, level = 27, point_type = 2051, owner = 420022, area_id = 24 },
	{ config_id = 420027, gadget_id = 70500000, pos = { x = -800.988, y = 191.098, z = 2604.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2002, area_id = 24 },
	{ config_id = 420028, gadget_id = 70500000, pos = { x = -792.686, y = 192.127, z = 2618.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2002, area_id = 24 },
	{ config_id = 420029, gadget_id = 70500000, pos = { x = -759.155, y = 213.732, z = 2794.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2006, area_id = 24 },
	{ config_id = 420030, gadget_id = 70500000, pos = { x = -759.122, y = 213.730, z = 2794.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3011, area_id = 24 },
	{ config_id = 420031, gadget_id = 70290009, pos = { x = -734.826, y = 163.768, z = 2635.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 420032, gadget_id = 70500000, pos = { x = -734.826, y = 163.768, z = 2635.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3005, owner = 420031, area_id = 24 },
	{ config_id = 420033, gadget_id = 70290009, pos = { x = -876.354, y = 206.998, z = 2688.556 }, rot = { x = 345.656, y = 358.011, z = 15.710 }, level = 27, area_id = 24 },
	{ config_id = 420034, gadget_id = 70500000, pos = { x = -876.354, y = 206.998, z = 2688.556 }, rot = { x = 345.656, y = 358.011, z = 15.710 }, level = 27, point_type = 3005, owner = 420033, area_id = 24 }
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
		{ config_id = 420009, monster_id = 28020102, pos = { x = -850.687, y = 204.853, z = 2617.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
		{ config_id = 420010, monster_id = 28020102, pos = { x = -850.537, y = 204.774, z = 2619.449 }, rot = { x = 0.000, y = 211.296, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
		{ config_id = 420013, monster_id = 28010208, pos = { x = -815.812, y = 194.120, z = 2594.590 }, rot = { x = 0.000, y = 175.361, z = 0.000 }, level = 27, drop_tag = "采集动物", area_id = 24 },
		{ config_id = 420014, monster_id = 28030402, pos = { x = -781.038, y = 219.314, z = 2684.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
		{ config_id = 420015, monster_id = 28030402, pos = { x = -783.640, y = 217.804, z = 2682.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
		{ config_id = 420016, monster_id = 28030402, pos = { x = -802.125, y = 207.558, z = 2669.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 }
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
		gadgets = { 420001, 420002, 420003, 420004, 420005, 420006, 420007, 420008, 420011, 420012, 420017, 420018, 420019, 420020, 420021, 420022, 420023, 420024, 420025, 420026, 420027, 420028, 420029, 420030, 420031, 420032, 420033, 420034 },
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
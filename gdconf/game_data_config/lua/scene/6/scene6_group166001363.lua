-- 基础信息
local base_info = {
	group_id = 166001363
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 363025, monster_id = 28010302, pos = { x = 940.053, y = 839.317, z = 591.257 }, rot = { x = 0.000, y = 178.298, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 363028, monster_id = 28020605, pos = { x = 925.439, y = 839.429, z = 578.213 }, rot = { x = 0.000, y = 101.320, z = 0.000 }, level = 36, drop_tag = "走兽", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 363001, gadget_id = 70220064, pos = { x = 991.103, y = 841.232, z = 548.912 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 363002, gadget_id = 70290347, pos = { x = 1050.158, y = 850.682, z = 569.679 }, rot = { x = 0.000, y = 30.328, z = 0.000 }, level = 36, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 363004, gadget_id = 70290347, pos = { x = 970.271, y = 841.525, z = 546.322 }, rot = { x = 0.000, y = 70.328, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 363007, gadget_id = 70220048, pos = { x = 1055.276, y = 850.714, z = 564.165 }, rot = { x = 0.000, y = 328.180, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 363008, gadget_id = 70220048, pos = { x = 1055.980, y = 850.826, z = 583.263 }, rot = { x = 0.000, y = 8.293, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 363009, gadget_id = 70210101, pos = { x = 1040.866, y = 845.069, z = 581.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物璃月", persistent = true, area_id = 300 },
	{ config_id = 363015, gadget_id = 70290324, pos = { x = 1061.086, y = 843.784, z = 530.567 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 363020, gadget_id = 70220048, pos = { x = 1030.139, y = 835.087, z = 473.935 }, rot = { x = 0.000, y = 43.048, z = 357.487 }, level = 36, area_id = 300 },
	{ config_id = 363021, gadget_id = 70290324, pos = { x = 1070.201, y = 832.839, z = 452.487 }, rot = { x = 0.000, y = 310.313, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 363022, gadget_id = 70290323, pos = { x = 1072.371, y = 833.053, z = 451.519 }, rot = { x = 0.000, y = 0.000, z = 10.562 }, level = 36, area_id = 300 },
	{ config_id = 363023, gadget_id = 70290323, pos = { x = 1071.646, y = 835.825, z = 464.275 }, rot = { x = 0.000, y = 0.000, z = 10.562 }, level = 36, area_id = 300 },
	{ config_id = 363027, gadget_id = 70290324, pos = { x = 1032.567, y = 842.471, z = 544.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 363029, gadget_id = 70210101, pos = { x = 1026.616, y = 843.774, z = 533.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物璃月", persistent = true, area_id = 300 }
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
		{ config_id = 363003, gadget_id = 70500000, pos = { x = 1036.539, y = 848.600, z = 606.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1002, area_id = 300 },
		{ config_id = 363005, gadget_id = 70500000, pos = { x = 974.487, y = 846.307, z = 624.383 }, rot = { x = 6.663, y = 323.312, z = 0.000 }, level = 36, point_type = 1002, area_id = 300 },
		{ config_id = 363006, gadget_id = 70500000, pos = { x = 1029.530, y = 848.766, z = 611.902 }, rot = { x = 0.000, y = 93.804, z = 0.000 }, level = 36, point_type = 1002, area_id = 300 },
		{ config_id = 363010, gadget_id = 70290016, pos = { x = 1047.971, y = 840.604, z = 520.309 }, rot = { x = 0.000, y = 127.801, z = 0.000 }, level = 36, area_id = 300 },
		{ config_id = 363011, gadget_id = 70500000, pos = { x = 1047.971, y = 840.604, z = 520.309 }, rot = { x = 0.000, y = 127.801, z = 0.000 }, level = 36, point_type = 3010, owner = 363010, area_id = 300 },
		{ config_id = 363012, gadget_id = 70500000, pos = { x = 1080.717, y = 851.488, z = 555.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1001, area_id = 300 },
		{ config_id = 363013, gadget_id = 70500000, pos = { x = 1070.598, y = 847.405, z = 541.371 }, rot = { x = 0.000, y = 260.583, z = 0.000 }, level = 36, point_type = 1001, area_id = 300 },
		{ config_id = 363014, gadget_id = 70500000, pos = { x = 1055.825, y = 843.142, z = 537.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1001, area_id = 300 },
		{ config_id = 363016, gadget_id = 70500000, pos = { x = 1032.796, y = 844.179, z = 528.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2006, isOneoff = true, persistent = true, area_id = 300 },
		{ config_id = 363017, gadget_id = 70500000, pos = { x = 1009.333, y = 847.273, z = 506.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1002, area_id = 300 },
		{ config_id = 363018, gadget_id = 70500000, pos = { x = 1009.176, y = 844.753, z = 514.295 }, rot = { x = 0.000, y = 116.459, z = 0.000 }, level = 36, point_type = 1002, area_id = 300 }
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
		monsters = { 363025, 363028 },
		gadgets = { 363001, 363002, 363004, 363007, 363008, 363009, 363015, 363020, 363021, 363022, 363023, 363027, 363029 },
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
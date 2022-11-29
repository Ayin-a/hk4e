-- 基础信息
local base_info = {
	group_id = 166001405
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 405021, monster_id = 28050102, pos = { x = 710.760, y = 763.060, z = 358.836 }, rot = { x = 0.000, y = 44.716, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 300 },
	{ config_id = 405022, monster_id = 28050102, pos = { x = 723.176, y = 763.574, z = 353.303 }, rot = { x = 0.000, y = 112.593, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 300 },
	{ config_id = 405023, monster_id = 28050102, pos = { x = 714.774, y = 763.081, z = 361.515 }, rot = { x = 0.000, y = 307.074, z = 0.000 }, level = 36, drop_tag = "魔法生物", area_id = 300 },
	{ config_id = 405024, monster_id = 28010302, pos = { x = 727.061, y = 760.600, z = 421.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 405025, monster_id = 28010302, pos = { x = 732.569, y = 760.607, z = 397.974 }, rot = { x = 0.000, y = 318.881, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 405026, monster_id = 28010302, pos = { x = 716.289, y = 762.565, z = 372.220 }, rot = { x = 0.000, y = 15.539, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 405029, monster_id = 28050301, pos = { x = 762.225, y = 774.331, z = 423.445 }, rot = { x = 0.000, y = 63.267, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 405002, gadget_id = 70210101, pos = { x = 676.939, y = 766.419, z = 337.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 300 },
	{ config_id = 405003, gadget_id = 70210101, pos = { x = 689.916, y = 767.835, z = 361.525 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜矿石璃月", persistent = true, area_id = 300 },
	{ config_id = 405004, gadget_id = 70210101, pos = { x = 759.271, y = 769.037, z = 376.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文璃月", persistent = true, area_id = 300 },
	{ config_id = 405005, gadget_id = 70210101, pos = { x = 747.271, y = 768.898, z = 377.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 300 },
	{ config_id = 405006, gadget_id = 70210101, pos = { x = 702.509, y = 762.417, z = 411.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物璃月", persistent = true, area_id = 300 },
	{ config_id = 405007, gadget_id = 70220062, pos = { x = 702.070, y = 766.113, z = 366.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 405008, gadget_id = 70220064, pos = { x = 704.748, y = 766.074, z = 366.189 }, rot = { x = 0.000, y = 284.179, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 405009, gadget_id = 70220062, pos = { x = 683.199, y = 765.876, z = 349.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 405010, gadget_id = 70220062, pos = { x = 754.804, y = 768.631, z = 376.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 405011, gadget_id = 70220063, pos = { x = 752.960, y = 768.657, z = 377.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 405012, gadget_id = 70220063, pos = { x = 752.362, y = 768.557, z = 376.497 }, rot = { x = 0.000, y = 266.014, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 405013, gadget_id = 70211001, pos = { x = 699.720, y = 760.466, z = 386.681 }, rot = { x = 0.000, y = 193.100, z = 0.000 }, level = 26, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 405020, gadget_id = 70290347, pos = { x = 714.763, y = 764.222, z = 368.619 }, rot = { x = 0.000, y = 346.676, z = 0.000 }, level = 36, persistent = true, interact_id = 87, area_id = 300 }
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
		{ config_id = 405001, gadget_id = 70290347, pos = { x = 691.514, y = 762.429, z = 304.080 }, rot = { x = 0.000, y = 346.676, z = 0.000 }, level = 36, persistent = true, interact_id = 87, area_id = 300 },
		{ config_id = 405014, gadget_id = 70500000, pos = { x = 746.606, y = 761.742, z = 346.829 }, rot = { x = 0.000, y = 0.000, z = 13.456 }, level = 36, point_type = 1001, area_id = 300 },
		{ config_id = 405015, gadget_id = 70500000, pos = { x = 730.766, y = 762.573, z = 351.831 }, rot = { x = 0.707, y = 305.684, z = 347.210 }, level = 36, point_type = 1001, area_id = 300 },
		{ config_id = 405016, gadget_id = 70500000, pos = { x = 723.700, y = 762.228, z = 354.843 }, rot = { x = 358.639, y = 0.099, z = 351.674 }, level = 36, point_type = 1001, area_id = 300 },
		{ config_id = 405017, gadget_id = 70500000, pos = { x = 729.516, y = 764.072, z = 346.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1001, area_id = 300 },
		{ config_id = 405018, gadget_id = 70500000, pos = { x = 729.455, y = 762.619, z = 351.451 }, rot = { x = 5.246, y = 334.658, z = 18.871 }, level = 36, point_type = 1001, area_id = 300 },
		{ config_id = 405019, gadget_id = 70500000, pos = { x = 728.921, y = 762.345, z = 355.579 }, rot = { x = 3.658, y = 224.449, z = 327.172 }, level = 36, point_type = 1001, area_id = 300 },
		{ config_id = 405027, gadget_id = 70500000, pos = { x = 744.387, y = 760.553, z = 431.842 }, rot = { x = 0.000, y = 322.047, z = 0.000 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 405028, gadget_id = 70500000, pos = { x = 743.839, y = 760.934, z = 433.717 }, rot = { x = 324.446, y = 346.148, z = 27.026 }, level = 36, point_type = 2044, area_id = 300 }
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
		monsters = { 405021, 405022, 405023, 405024, 405025, 405026, 405029 },
		gadgets = { 405002, 405003, 405004, 405005, 405006, 405007, 405008, 405009, 405010, 405011, 405012, 405013, 405020 },
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
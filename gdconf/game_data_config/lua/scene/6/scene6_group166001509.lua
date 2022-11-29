-- 基础信息
local base_info = {
	group_id = 166001509
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 509021, monster_id = 28040103, pos = { x = 104.905, y = 143.190, z = 729.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "水族", area_id = 300 },
	{ config_id = 509022, monster_id = 28040103, pos = { x = 107.344, y = 143.190, z = 698.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "水族", area_id = 300 },
	{ config_id = 509023, monster_id = 20011101, pos = { x = 112.710, y = 143.190, z = 730.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "大史莱姆", disableWander = true, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 509001, gadget_id = 70290200, pos = { x = 426.179, y = 180.107, z = 727.739 }, rot = { x = 18.564, y = 357.976, z = 347.660 }, level = 36, area_id = 300 },
	{ config_id = 509013, gadget_id = 70290353, pos = { x = 437.488, y = 186.403, z = 721.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, area_id = 300 },
	{ config_id = 509014, gadget_id = 70217014, pos = { x = 247.887, y = 167.970, z = 808.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 509019, gadget_id = 70217014, pos = { x = 62.100, y = 152.128, z = 706.957 }, rot = { x = 11.800, y = 123.700, z = 12.224 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 509020, gadget_id = 70217014, pos = { x = 365.227, y = 162.781, z = 730.895 }, rot = { x = 0.000, y = 305.500, z = 0.000 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
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
		{ config_id = 509002, gadget_id = 70500000, pos = { x = 406.090, y = 180.476, z = 735.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 509003, gadget_id = 70500000, pos = { x = 404.795, y = 181.367, z = 771.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 509004, gadget_id = 70500000, pos = { x = 385.779, y = 183.510, z = 779.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 509005, gadget_id = 70500000, pos = { x = 345.368, y = 175.372, z = 811.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 509006, gadget_id = 70500000, pos = { x = 288.118, y = 174.051, z = 824.283 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 509007, gadget_id = 70500000, pos = { x = 280.588, y = 160.355, z = 732.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 509008, gadget_id = 70500000, pos = { x = 81.144, y = 146.538, z = 716.250 }, rot = { x = 2.679, y = 0.084, z = 3.577 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 509009, gadget_id = 70500000, pos = { x = 256.624, y = 157.037, z = 781.509 }, rot = { x = 334.328, y = 1.626, z = 352.875 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 509010, gadget_id = 70500000, pos = { x = 234.138, y = 157.648, z = 701.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 509011, gadget_id = 70500000, pos = { x = 191.464, y = 146.948, z = 725.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 509012, gadget_id = 70500000, pos = { x = 192.346, y = 146.924, z = 725.716 }, rot = { x = 350.882, y = 252.969, z = 0.000 }, level = 36, point_type = 2044, area_id = 300 },
		{ config_id = 509015, gadget_id = 70500000, pos = { x = 240.395, y = 146.246, z = 794.659 }, rot = { x = 0.000, y = 54.017, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 509016, gadget_id = 70500000, pos = { x = 236.734, y = 146.386, z = 797.030 }, rot = { x = 0.000, y = 158.387, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 509017, gadget_id = 70500000, pos = { x = 230.300, y = 146.967, z = 779.736 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
		{ config_id = 509018, gadget_id = 70500000, pos = { x = 228.501, y = 145.706, z = 782.491 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1003, area_id = 300 }
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
		monsters = { 509021, 509022, 509023 },
		gadgets = { 509001, 509013, 509014, 509019, 509020 },
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
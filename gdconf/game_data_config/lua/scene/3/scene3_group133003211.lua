-- 基础信息
local base_info = {
	group_id = 133003211
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 866, monster_id = 21010501, pos = { x = 2731.179, y = 274.822, z = -1171.277 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_tag = "远程丘丘人", area_id = 1 },
	{ config_id = 867, monster_id = 21010501, pos = { x = 2734.675, y = 280.788, z = -1174.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_tag = "远程丘丘人", area_id = 1 },
	{ config_id = 868, monster_id = 21010201, pos = { x = 2748.089, y = 265.354, z = -1188.840 }, rot = { x = 0.000, y = 20.220, z = 0.000 }, level = 15, drop_tag = "丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 869, monster_id = 21010601, pos = { x = 2741.958, y = 271.948, z = -1176.163 }, rot = { x = 0.000, y = 124.057, z = 0.000 }, level = 15, drop_tag = "丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 898, monster_id = 21010701, pos = { x = 2757.160, y = 264.852, z = -1189.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 899, monster_id = 20011201, pos = { x = 2749.343, y = 266.200, z = -1184.902 }, rot = { x = 0.000, y = 178.427, z = 0.000 }, level = 15, drop_tag = "史莱姆", disableWander = true, area_id = 1 },
	{ config_id = 900, monster_id = 20011201, pos = { x = 2751.609, y = 265.734, z = -1186.463 }, rot = { x = 0.000, y = 249.924, z = 0.000 }, level = 15, drop_tag = "史莱姆", disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2983, gadget_id = 70211101, pos = { x = 2735.397, y = 285.527, z = -1167.753 }, rot = { x = 0.000, y = 179.167, z = 0.000 }, level = 26, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 2988, gadget_id = 70220013, pos = { x = 2749.769, y = 267.816, z = -1177.723 }, rot = { x = 15.097, y = 182.669, z = 354.967 }, level = 30, area_id = 1 },
	{ config_id = 2989, gadget_id = 70220013, pos = { x = 2750.329, y = 268.124, z = -1175.055 }, rot = { x = 0.000, y = 128.663, z = 350.526 }, level = 30, area_id = 1 },
	{ config_id = 2990, gadget_id = 70220014, pos = { x = 2751.330, y = 268.131, z = -1176.998 }, rot = { x = 0.000, y = 125.693, z = 0.000 }, level = 30, area_id = 1 },
	{ config_id = 2991, gadget_id = 70310004, pos = { x = 2749.456, y = 265.742, z = -1187.008 }, rot = { x = 0.000, y = 145.859, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 2992, gadget_id = 70211101, pos = { x = 2748.683, y = 267.979, z = -1175.790 }, rot = { x = 0.000, y = 25.531, z = 0.000 }, level = 26, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
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
	rand_suite = true
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
		monsters = { 866, 867, 868, 869, 898, 899, 900 },
		gadgets = { 2983, 2988, 2989, 2990, 2991, 2992 },
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
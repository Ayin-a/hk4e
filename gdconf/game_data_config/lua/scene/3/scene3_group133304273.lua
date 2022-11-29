-- 基础信息
local base_info = {
	group_id = 133304273
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 273002, monster_id = 21020201, pos = { x = -1252.460, y = 279.257, z = 2744.061 }, rot = { x = 0.000, y = 175.197, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 21 },
	{ config_id = 273003, monster_id = 21030201, pos = { x = -1266.898, y = 281.280, z = 2749.452 }, rot = { x = 0.000, y = 165.109, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, area_id = 21 },
	{ config_id = 273004, monster_id = 21010701, pos = { x = -1263.443, y = 277.636, z = 2739.435 }, rot = { x = 0.000, y = 267.582, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 21 },
	{ config_id = 273010, monster_id = 21011001, pos = { x = -1261.579, y = 282.429, z = 2751.419 }, rot = { x = 0.000, y = 169.809, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 273006, gadget_id = 70300089, pos = { x = -1269.063, y = 281.229, z = 2749.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 273007, gadget_id = 70300086, pos = { x = -1259.761, y = 278.362, z = 2741.531 }, rot = { x = 0.000, y = 0.000, z = 6.654 }, level = 30, area_id = 21 },
	{ config_id = 273008, gadget_id = 70220013, pos = { x = -1261.512, y = 278.509, z = 2741.288 }, rot = { x = 0.000, y = 318.040, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 273009, gadget_id = 70220014, pos = { x = -1262.947, y = 278.755, z = 2743.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 273011, gadget_id = 70217020, pos = { x = -1254.356, y = 280.490, z = 2748.659 }, rot = { x = 0.000, y = 57.337, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 21 }
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
		{ config_id = 273005, monster_id = 21010701, pos = { x = -1251.077, y = 277.175, z = 2737.531 }, rot = { x = 0.000, y = 122.175, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 21 }
	},
	gadgets = {
		{ config_id = 273001, gadget_id = 70217012, pos = { x = -1248.325, y = 277.241, z = 2747.825 }, rot = { x = 0.000, y = 40.148, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 21 }
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
		monsters = { 273002, 273003, 273004, 273010 },
		gadgets = { 273006, 273007, 273008, 273009, 273011 },
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
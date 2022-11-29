-- 基础信息
local base_info = {
	group_id = 133301754
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 754002, monster_id = 28050106, pos = { x = -433.501, y = 123.201, z = 3925.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "魔法生物", area_id = 22 },
	{ config_id = 754003, monster_id = 28050106, pos = { x = -426.434, y = 123.099, z = 3923.284 }, rot = { x = 0.000, y = 108.217, z = 0.000 }, level = 33, drop_tag = "魔法生物", area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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
		{ config_id = 754001, monster_id = 28050106, pos = { x = -430.206, y = 121.599, z = 3918.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "魔法生物", area_id = 22 },
		{ config_id = 754004, monster_id = 28050106, pos = { x = -425.465, y = 120.605, z = 3920.204 }, rot = { x = 0.000, y = 143.960, z = 0.000 }, level = 33, drop_tag = "魔法生物", area_id = 22 }
	},
	gadgets = {
		{ config_id = 754005, gadget_id = 70500000, pos = { x = -430.419, y = 121.447, z = 3922.160 }, rot = { x = 343.834, y = 337.272, z = 29.580 }, level = 33, point_type = 2046, area_id = 22 },
		{ config_id = 754006, gadget_id = 70500000, pos = { x = -435.160, y = 123.559, z = 3928.814 }, rot = { x = 353.957, y = 322.470, z = 353.280 }, level = 33, point_type = 2046, area_id = 22 },
		{ config_id = 754007, gadget_id = 70540044, pos = { x = -425.955, y = 120.512, z = 3910.526 }, rot = { x = 0.000, y = 90.722, z = 0.000 }, level = 33, area_id = 22 },
		{ config_id = 754008, gadget_id = 70500000, pos = { x = -425.955, y = 120.512, z = 3910.526 }, rot = { x = 0.000, y = 90.721, z = 0.000 }, level = 33, point_type = 2048, owner = 754007, area_id = 22 },
		{ config_id = 754009, gadget_id = 70540044, pos = { x = -424.146, y = 120.512, z = 3926.607 }, rot = { x = 0.000, y = 345.354, z = 0.000 }, level = 33, area_id = 22 },
		{ config_id = 754010, gadget_id = 70500000, pos = { x = -424.146, y = 120.512, z = 3926.607 }, rot = { x = 0.000, y = 345.354, z = 0.000 }, level = 33, point_type = 2048, owner = 754009, area_id = 22 },
		{ config_id = 754011, gadget_id = 70540044, pos = { x = -438.849, y = 120.512, z = 3921.687 }, rot = { x = 0.000, y = 324.110, z = 0.000 }, level = 33, area_id = 22 },
		{ config_id = 754012, gadget_id = 70500000, pos = { x = -438.849, y = 120.512, z = 3921.687 }, rot = { x = 0.000, y = 324.110, z = 0.000 }, level = 33, point_type = 2048, owner = 754011, area_id = 22 },
		{ config_id = 754013, gadget_id = 70210101, pos = { x = -427.790, y = 120.851, z = 3923.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 22 },
		{ config_id = 754014, gadget_id = 70211150, pos = { x = -429.559, y = 125.550, z = 3942.561 }, rot = { x = 358.492, y = 220.862, z = 1.740 }, level = 26, chest_drop_id = 21910051, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 }
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
		monsters = { 754002, 754003 },
		gadgets = { },
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
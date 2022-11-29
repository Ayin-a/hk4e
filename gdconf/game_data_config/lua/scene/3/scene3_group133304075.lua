-- 基础信息
local base_info = {
	group_id = 133304075
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
		{ config_id = 75001, monster_id = 21010201, pos = { x = -1215.127, y = 176.876, z = 2969.137 }, rot = { x = 0.000, y = 339.448, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 21 },
		{ config_id = 75002, monster_id = 21010201, pos = { x = -1218.630, y = 176.827, z = 2969.033 }, rot = { x = 0.000, y = 30.164, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 21 },
		{ config_id = 75003, monster_id = 21010201, pos = { x = -1216.948, y = 177.060, z = 2972.278 }, rot = { x = 0.000, y = 184.111, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 21 }
	},
	gadgets = {
		{ config_id = 75004, gadget_id = 70360001, pos = { x = -1215.608, y = 177.062, z = 2970.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 }
	},
	triggers = {
		{ config_id = 1075005, name = "ANY_MONSTER_DIE_75005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_75005", action = "action_EVENT_ANY_MONSTER_DIE_75005", trigger_count = 0 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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

require "V3_0/DeathFieldStandard"
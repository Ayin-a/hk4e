-- 基础信息
local base_info = {
	group_id = 133302494
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 494001, monster_id = 24030201, pos = { x = -491.649, y = 295.834, z = 2173.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "遗迹龙兽", disableWander = true, pose_id = 102, area_id = 24 }
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
	gadgets = {
		{ config_id = 494002, gadget_id = 70211002, pos = { x = -492.521, y = 295.118, z = 2177.167 }, rot = { x = 11.470, y = 359.730, z = 357.316 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
	},
	triggers = {
		{ config_id = 1494003, name = "ANY_MONSTER_DIE_494003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_494003", action = "action_EVENT_ANY_MONSTER_DIE_494003" }
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
		monsters = { 494001 },
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
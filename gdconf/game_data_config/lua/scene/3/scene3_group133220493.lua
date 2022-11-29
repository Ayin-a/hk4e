-- 基础信息
local base_info = {
	group_id = 133220493
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
		{ config_id = 493004, monster_id = 23010601, pos = { x = -2386.109, y = 253.949, z = -4241.989 }, rot = { x = 0.000, y = 29.709, z = 0.000 }, level = 27, drop_tag = "先遣队", area_id = 11 }
	},
	gadgets = {
		{ config_id = 493002, gadget_id = 70211012, pos = { x = -2399.414, y = 255.251, z = -4237.375 }, rot = { x = 0.000, y = 355.223, z = 0.000 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
	},
	triggers = {
		{ config_id = 1493003, name = "ANY_MONSTER_DIE_493003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_493003", action = "action_EVENT_ANY_MONSTER_DIE_493003" }
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================
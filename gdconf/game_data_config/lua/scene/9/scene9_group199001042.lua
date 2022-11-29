-- 基础信息
local base_info = {
	group_id = 199001042
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
		{ config_id = 42001, monster_id = 21010301, pos = { x = 231.335, y = 120.776, z = 229.941 }, rot = { x = 0.000, y = 336.146, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 402 },
		{ config_id = 42016, monster_id = 21010101, pos = { x = 216.826, y = 121.115, z = 241.620 }, rot = { x = 0.000, y = 272.086, z = 0.000 }, level = 20, drop_tag = "丘丘人", area_id = 402 }
	},
	gadgets = {
		{ config_id = 42002, gadget_id = 70211002, pos = { x = 223.157, y = 120.864, z = 227.612 }, rot = { x = 0.000, y = 20.111, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 }
	},
	triggers = {
		{ config_id = 1042003, name = "ANY_MONSTER_DIE_42003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_42003", action = "action_EVENT_ANY_MONSTER_DIE_42003" }
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
-- 基础信息
local base_info = {
	group_id = 144004042
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 42004, monster_id = 21010401, pos = { x = 72.524, y = 136.341, z = -768.444 }, rot = { x = 350.400, y = 228.926, z = 349.147 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 101 },
	{ config_id = 42005, monster_id = 21010701, pos = { x = 69.878, y = 135.959, z = -768.401 }, rot = { x = 0.000, y = 103.011, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 101 },
	{ config_id = 42006, monster_id = 21010401, pos = { x = 70.139, y = 135.420, z = -770.506 }, rot = { x = 0.000, y = 45.318, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", area_id = 101 }
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
		{ config_id = 42002, gadget_id = 70360001, pos = { x = 72.264, y = 136.437, z = -769.868 }, rot = { x = 0.000, y = 189.133, z = 0.000 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 101 }
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
		monsters = { 42004, 42005, 42006 },
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
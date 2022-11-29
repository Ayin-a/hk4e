-- 基础信息
local base_info = {
	group_id = 133212586
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
		{ config_id = 586001, monster_id = 25080101, pos = { x = -3942.584, y = 200.828, z = -3051.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 12 },
		{ config_id = 586002, monster_id = 25080101, pos = { x = -3940.578, y = 200.683, z = -3054.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 12 },
		{ config_id = 586003, monster_id = 25080301, pos = { x = -3927.748, y = 203.507, z = -3039.435 }, rot = { x = 0.000, y = 209.005, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 12 }
	},
	triggers = {
		{ config_id = 1586004, name = "ANY_MONSTER_DIE_586004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_586004", action = "action_EVENT_ANY_MONSTER_DIE_586004" },
		{ config_id = 1586005, name = "ANY_MONSTER_DIE_586005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_586005", action = "action_EVENT_ANY_MONSTER_DIE_586005" }
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
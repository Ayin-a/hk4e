-- 基础信息
local base_info = {
	group_id = 133222159
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
		{ config_id = 159001, monster_id = 23010501, pos = { x = -5167.998, y = 199.299, z = -4323.450 }, rot = { x = 0.000, y = 163.394, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, pose_id = 9014, area_id = 14 },
		{ config_id = 159004, monster_id = 23010201, pos = { x = -5170.200, y = 199.366, z = -4319.462 }, rot = { x = 0.000, y = 163.394, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, pose_id = 9014, area_id = 14 },
		{ config_id = 159005, monster_id = 23010601, pos = { x = -5166.664, y = 199.366, z = -4321.148 }, rot = { x = 0.000, y = 163.394, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, pose_id = 9014, area_id = 14 }
	},
	triggers = {
		{ config_id = 1159002, name = "MONSTER_BATTLE_159002", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_159002" },
		{ config_id = 1159003, name = "ANY_MONSTER_DIE_159003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_159003", action = "action_EVENT_ANY_MONSTER_DIE_159003" }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
	end_suite = 1,
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
	},
	{
		-- suite_id = 3,
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
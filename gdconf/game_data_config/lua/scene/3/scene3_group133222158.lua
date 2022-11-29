-- 基础信息
local base_info = {
	group_id = 133222158
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
		{ config_id = 158001, monster_id = 25080201, pos = { x = -5176.839, y = 199.211, z = -4301.067 }, rot = { x = 0.000, y = 352.461, z = 0.000 }, level = 30, drop_tag = "浪人武士", disableWander = true, pose_id = 1, area_id = 14 },
		{ config_id = 158004, monster_id = 25010201, pos = { x = -5183.622, y = 199.773, z = -4296.529 }, rot = { x = 0.000, y = 38.677, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9007, area_id = 14 },
		{ config_id = 158005, monster_id = 25010501, pos = { x = -5174.827, y = 198.995, z = -4304.220 }, rot = { x = 0.000, y = 352.461, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9007, area_id = 14 },
		{ config_id = 158006, monster_id = 25010301, pos = { x = -5178.377, y = 199.229, z = -4304.104 }, rot = { x = 0.000, y = 352.461, z = 0.000 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 9007, area_id = 14 },
		{ config_id = 158007, monster_id = 25080101, pos = { x = -5179.950, y = 199.386, z = -4300.656 }, rot = { x = 0.000, y = 352.461, z = 0.000 }, level = 30, drop_tag = "浪人武士", disableWander = true, pose_id = 1, area_id = 14 }
	},
	triggers = {
		{ config_id = 1158002, name = "MONSTER_BATTLE_158002", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_158002" },
		{ config_id = 1158003, name = "ANY_MONSTER_DIE_158003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_158003", action = "action_EVENT_ANY_MONSTER_DIE_158003" }
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
-- 基础信息
local base_info = {
	group_id = 250016010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 34, monster_id = 20011401, pos = { x = -52.364, y = -11.000, z = -210.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5 },
	{ config_id = 35, monster_id = 20011401, pos = { x = -49.893, y = -11.000, z = -212.153 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5 },
	{ config_id = 36, monster_id = 20011401, pos = { x = -49.873, y = -11.000, z = -215.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5 },
	{ config_id = 37, monster_id = 20011401, pos = { x = -52.477, y = -11.000, z = -217.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5 },
	{ config_id = 38, monster_id = 20011501, pos = { x = -47.891, y = -11.000, z = -214.149 }, rot = { x = 0.000, y = 271.696, z = 0.000 }, level = 1 }
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
	triggers = {
		{ config_id = 1000027, name = "ANY_MONSTER_DIE_27", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_27", action = "action_EVENT_ANY_MONSTER_DIE_27", trigger_count = 0 },
		{ config_id = 1000099, name = "ANY_MONSTER_DIE_99", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_99", action = "action_EVENT_ANY_MONSTER_DIE_99", trigger_count = 0 }
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
		-- description = suite_2,
		monsters = { 34, 35, 36, 37, 38 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
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
-- 基础信息
local base_info = {
	group_id = 199004123
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 123001, monster_id = 20020101, pos = { x = -333.418, y = 120.378, z = -720.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "元素之核", disableWander = true, area_id = 400 },
	{ config_id = 123004, monster_id = 20020101, pos = { x = -320.200, y = 120.270, z = -721.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "元素之核", disableWander = true, area_id = 400 }
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
		{ config_id = 1123003, name = "ANY_MONSTER_DIE_123003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_123003", action = "action_EVENT_ANY_MONSTER_DIE_123003" }
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
		monsters = { 123001, 123004 },
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
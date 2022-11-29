-- 基础信息
local base_info = {
	group_id = 199004208
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 208001, monster_id = 20010401, pos = { x = -442.409, y = 120.023, z = -614.942 }, rot = { x = 0.000, y = 217.531, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 400 },
	{ config_id = 208004, monster_id = 20010401, pos = { x = -448.369, y = 120.115, z = -601.675 }, rot = { x = 0.000, y = 265.061, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 400 },
	{ config_id = 208005, monster_id = 20010401, pos = { x = -442.608, y = 120.581, z = -605.842 }, rot = { x = 0.000, y = 104.725, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 400 }
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
		{ config_id = 1208003, name = "ANY_MONSTER_DIE_208003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_208003", action = "action_EVENT_ANY_MONSTER_DIE_208003" }
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
		monsters = { 208001, 208004, 208005 },
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
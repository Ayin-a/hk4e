-- 基础信息
local base_info = {
	group_id = 199004210
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 210001, monster_id = 20010701, pos = { x = -421.931, y = 120.431, z = -646.754 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 400 },
	{ config_id = 210004, monster_id = 20010601, pos = { x = -418.389, y = 120.471, z = -642.189 }, rot = { x = 0.000, y = 243.774, z = 0.000 }, level = 20, drop_tag = "大史莱姆", area_id = 400 },
	{ config_id = 210005, monster_id = 20010601, pos = { x = -424.971, y = 119.964, z = -641.487 }, rot = { x = 0.000, y = 139.267, z = 0.000 }, level = 20, drop_tag = "大史莱姆", area_id = 400 }
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
		{ config_id = 1210003, name = "ANY_MONSTER_DIE_210003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_210003", action = "action_EVENT_ANY_MONSTER_DIE_210003" }
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
		monsters = { 210001, 210004, 210005 },
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
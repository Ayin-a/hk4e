-- 基础信息
local base_info = {
	group_id = 199004107
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 107001, monster_id = 22040101, pos = { x = -378.454, y = 120.672, z = -549.291 }, rot = { x = 0.000, y = 307.510, z = 0.000 }, level = 20, drop_tag = "兽境幼兽", pose_id = 101, area_id = 400 },
	{ config_id = 107004, monster_id = 22040101, pos = { x = -397.223, y = 121.513, z = -546.626 }, rot = { x = 0.000, y = 67.803, z = 0.000 }, level = 20, drop_tag = "兽境幼兽", pose_id = 101, area_id = 400 },
	{ config_id = 107005, monster_id = 22050101, pos = { x = -386.520, y = 124.341, z = -561.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "兽境猎犬", pose_id = 101, area_id = 400 }
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
		{ config_id = 1107003, name = "ANY_MONSTER_DIE_107003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_107003", action = "action_EVENT_ANY_MONSTER_DIE_107003" }
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
		monsters = { 107001, 107004, 107005 },
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
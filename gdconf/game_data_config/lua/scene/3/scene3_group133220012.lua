-- 基础信息
local base_info = {
	group_id = 133220012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12001, monster_id = 21010201, pos = { x = -3022.478, y = 200.739, z = -4028.507 }, rot = { x = 2.847, y = 336.935, z = 359.428 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 11 },
	{ config_id = 12002, monster_id = 21010701, pos = { x = -3023.310, y = 201.138, z = -4020.882 }, rot = { x = 0.000, y = 343.218, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9013, area_id = 11 },
	{ config_id = 12004, monster_id = 21010301, pos = { x = -3025.446, y = 200.429, z = -4029.328 }, rot = { x = 0.000, y = 261.456, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 12005, gadget_id = 70310004, pos = { x = -3024.306, y = 200.486, z = -4029.092 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 }
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
		{ config_id = 1012003, name = "ANY_MONSTER_DIE_12003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_12003", action = "action_EVENT_ANY_MONSTER_DIE_12003" }
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
		monsters = { 12001, 12002, 12004 },
		gadgets = { 12005 },
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
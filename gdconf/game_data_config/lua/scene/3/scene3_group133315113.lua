-- 基础信息
local base_info = {
	group_id = 133315113
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 113001, monster_id = 21010701, pos = { x = 76.046, y = 234.899, z = 2441.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, area_id = 20 },
	{ config_id = 113011, monster_id = 21010401, pos = { x = 85.383, y = 235.194, z = 2436.628 }, rot = { x = 0.000, y = 258.730, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", pose_id = 402, area_id = 20 },
	{ config_id = 113012, monster_id = 21010401, pos = { x = 81.161, y = 234.720, z = 2431.992 }, rot = { x = 0.000, y = 322.594, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", pose_id = 402, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 113002, gadget_id = 70220013, pos = { x = 88.218, y = 235.383, z = 2436.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 113004, gadget_id = 70220013, pos = { x = 87.014, y = 235.007, z = 2438.434 }, rot = { x = 2.319, y = 329.384, z = 352.702 }, level = 27, area_id = 20 },
	{ config_id = 113013, gadget_id = 70310001, pos = { x = 85.807, y = 235.272, z = 2435.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
	{ config_id = 113015, gadget_id = 70310001, pos = { x = 82.044, y = 234.750, z = 2431.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 20 }
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
		{ config_id = 1113003, name = "ANY_MONSTER_DIE_113003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_113003", action = "action_EVENT_ANY_MONSTER_DIE_113003" }
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
		monsters = { 113001, 113011, 113012 },
		gadgets = { 113002, 113004, 113013, 113015 },
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
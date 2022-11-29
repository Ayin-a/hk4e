-- 基础信息
local base_info = {
	group_id = 133315131
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 131001, monster_id = 23020101, pos = { x = 107.427, y = 282.276, z = 2384.486 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "债务处理人", area_id = 20 },
	{ config_id = 131002, monster_id = 28061101, pos = { x = 103.006, y = 282.252, z = 2380.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "驮兽先遣队", pose_id = 4, area_id = 20 }
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
		{ config_id = 1131003, name = "ANY_MONSTER_DIE_131003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_131003", action = "action_EVENT_ANY_MONSTER_DIE_131003" }
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
		monsters = { 131001, 131002 },
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
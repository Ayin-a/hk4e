-- 基础信息
local base_info = {
	group_id = 133301448
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
		{ config_id = 448001, monster_id = 26010301, pos = { x = -759.872, y = 238.954, z = 3521.135 }, rot = { x = 0.000, y = 303.146, z = 0.000 }, level = 33, drop_tag = "骗骗花", area_id = 23 }
	},
	gadgets = {
		{ config_id = 448002, gadget_id = 70220109, pos = { x = -768.396, y = 237.599, z = 3521.400 }, rot = { x = 355.438, y = 306.627, z = 338.740 }, level = 33, area_id = 23 },
		{ config_id = 448003, gadget_id = 70900388, pos = { x = -755.690, y = 239.068, z = 3527.285 }, rot = { x = 3.751, y = 303.796, z = 343.619 }, level = 33, area_id = 23 },
		{ config_id = 448004, gadget_id = 70220109, pos = { x = -756.435, y = 239.972, z = 3514.279 }, rot = { x = 3.751, y = 303.796, z = 343.619 }, level = 33, area_id = 23 }
	},
	triggers = {
		{ config_id = 1448005, name = "ANY_GADGET_DIE_448005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_448005", action = "action_EVENT_ANY_GADGET_DIE_448005", trigger_count = 0 },
		{ config_id = 1448006, name = "ANY_MONSTER_DIE_448006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_448006", action = "action_EVENT_ANY_MONSTER_DIE_448006" }
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
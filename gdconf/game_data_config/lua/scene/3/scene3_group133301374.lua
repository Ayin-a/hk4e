-- 基础信息
local base_info = {
	group_id = 133301374
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
	gadgets = {
		{ config_id = 374001, gadget_id = 70500000, pos = { x = -663.806, y = 130.347, z = 3381.939 }, rot = { x = 4.074, y = 211.904, z = 354.168 }, level = 30, point_type = 2045, area_id = 22 },
		{ config_id = 374002, gadget_id = 70500000, pos = { x = -687.365, y = 131.165, z = 3384.076 }, rot = { x = 25.039, y = 4.476, z = 339.196 }, level = 30, point_type = 2045, area_id = 22 },
		{ config_id = 374003, gadget_id = 70500000, pos = { x = -665.251, y = 130.940, z = 3370.931 }, rot = { x = 0.000, y = 79.869, z = 0.000 }, level = 30, point_type = 2045, area_id = 22 }
	},
	triggers = {
		{ config_id = 1374004, name = "GROUP_LOAD_374004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_374004", action = "action_EVENT_GROUP_LOAD_374004", trigger_count = 0 }
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
	end_suite = 2,
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

require "V3_0/DeathFieldStandard"
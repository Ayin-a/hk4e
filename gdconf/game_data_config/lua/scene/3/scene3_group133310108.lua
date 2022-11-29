-- 基础信息
local base_info = {
	group_id = 133310108
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
	{ config_id = 108001, gadget_id = 70500000, pos = { x = -2990.941, y = 1.925, z = 4268.446 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2045, area_id = 28 },
	{ config_id = 108002, gadget_id = 70500000, pos = { x = -3023.557, y = 1.394, z = 4258.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2045, area_id = 28 },
	{ config_id = 108003, gadget_id = 70500000, pos = { x = -3026.133, y = 2.219, z = 4284.583 }, rot = { x = 0.000, y = 138.960, z = 0.000 }, level = 32, point_type = 2045, area_id = 28 }
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
		{ config_id = 1108004, name = "GROUP_LOAD_108004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_108004", action = "action_EVENT_GROUP_LOAD_108004", trigger_count = 0 }
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
		gadgets = { 108001, 108002, 108003 },
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
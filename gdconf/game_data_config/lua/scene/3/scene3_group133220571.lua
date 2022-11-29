-- 基础信息
local base_info = {
	group_id = 133220571
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
	{ config_id = 571001, npc_id = 20231, pos = { x = -2480.960, y = 447.745, z = -4417.998 }, rot = { x = 0.000, y = 58.222, z = 0.000 }, area_id = 11 }
}

-- 装置
gadgets = {
	{ config_id = 571002, gadget_id = 71700288, pos = { x = -2481.042, y = 447.866, z = -4418.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
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
	regions = {
		{ config_id = 571003, shape = RegionShape.SPHERE, radius = 3, pos = { x = -2481.312, y = 446.620, z = -4418.448 }, area_id = 11 },
		{ config_id = 571004, shape = RegionShape.SPHERE, radius = 3, pos = { x = -2479.820, y = 446.682, z = -4417.263 }, area_id = 11 }
	},
	triggers = {
		{ config_id = 1571003, name = "ENTER_REGION_571003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_571003", action = "action_EVENT_ENTER_REGION_571003", trigger_count = 0 },
		{ config_id = 1571004, name = "ENTER_REGION_571004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_571004", action = "action_EVENT_ENTER_REGION_571004", trigger_count = 0 }
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
		gadgets = { 571002 },
		regions = { },
		triggers = { },
		npcs = { 571001 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = BETA屏蔽,
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
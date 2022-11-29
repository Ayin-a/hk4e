-- 基础信息
local base_info = {
	group_id = 199002104
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
	{ config_id = 1, name = "isfail", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 104001, gadget_id = 70310332, pos = { x = 439.515, y = 209.526, z = -446.355 }, rot = { x = 0.000, y = 174.470, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 104002, gadget_id = 70300111, pos = { x = 436.364, y = 209.572, z = -450.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 104003, gadget_id = 70300111, pos = { x = 439.574, y = 209.514, z = -452.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 104004, gadget_id = 70300111, pos = { x = 441.802, y = 209.546, z = -449.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
		{ config_id = 104005, gadget_id = 70211002, pos = { x = 435.689, y = 209.612, z = -446.549 }, rot = { x = 0.000, y = 99.171, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 }
	},
	triggers = {
		{ config_id = 1104006, name = "ANY_GADGET_DIE_104006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_104006", action = "action_EVENT_ANY_GADGET_DIE_104006", trigger_count = 0 },
		{ config_id = 1104007, name = "ANY_GADGET_DIE_104007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_104007", action = "action_EVENT_ANY_GADGET_DIE_104007", trigger_count = 0 },
		{ config_id = 1104008, name = "ANY_GADGET_DIE_104008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_104008", action = "action_EVENT_ANY_GADGET_DIE_104008", trigger_count = 0 },
		{ config_id = 1104009, name = "TIMER_EVENT_104009", event = EventType.EVENT_TIMER_EVENT, source = "delayJudge", condition = "condition_EVENT_TIMER_EVENT_104009", action = "action_EVENT_TIMER_EVENT_104009", trigger_count = 0 }
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
-- 基础信息
local base_info = {
	group_id = 220133075
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
	{ config_id = 1, name = "SingleTick", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 75001, gadget_id = 70310242, pos = { x = 2479.036, y = 535.154, z = -1756.137 }, rot = { x = 352.108, y = 292.663, z = 356.212 }, level = 1, interact_id = 64 },
		{ config_id = 75002, gadget_id = 70380320, pos = { x = 2408.943, y = 549.652, z = -1793.602 }, rot = { x = 359.428, y = 252.203, z = 355.718 }, level = 1, route_id = 8, start_route = false },
		{ config_id = 75003, gadget_id = 70310242, pos = { x = 2407.329, y = 539.975, z = -1819.993 }, rot = { x = 353.111, y = 173.516, z = 4.905 }, level = 1, interact_id = 64 },
		{ config_id = 75004, gadget_id = 70380320, pos = { x = 2461.913, y = 535.452, z = -1779.689 }, rot = { x = 357.352, y = 233.543, z = 1.394 }, level = 1, route_id = 9, start_route = false },
		{ config_id = 75005, gadget_id = 70380320, pos = { x = 2418.190, y = 545.186, z = -1768.099 }, rot = { x = 358.327, y = 160.717, z = 5.988 }, level = 1, route_id = 10, start_route = false }
	},
	triggers = {
		{ config_id = 1075006, name = "GADGET_STATE_CHANGE_75006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_75006", action = "action_EVENT_GADGET_STATE_CHANGE_75006", trigger_count = 0 },
		{ config_id = 1075007, name = "GADGET_STATE_CHANGE_75007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_75007", action = "action_EVENT_GADGET_STATE_CHANGE_75007", trigger_count = 0 },
		{ config_id = 1075008, name = "GADGET_STATE_CHANGE_75008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_75008", action = "action_EVENT_GADGET_STATE_CHANGE_75008", trigger_count = 0 },
		{ config_id = 1075009, name = "GADGET_STATE_CHANGE_75009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_75009", action = "action_EVENT_GADGET_STATE_CHANGE_75009", trigger_count = 0 },
		{ config_id = 1075010, name = "GADGET_STATE_CHANGE_75010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_75010", action = "action_EVENT_GADGET_STATE_CHANGE_75010", trigger_count = 0 },
		{ config_id = 1075011, name = "GADGET_STATE_CHANGE_75011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_75011", action = "action_EVENT_GADGET_STATE_CHANGE_75011", trigger_count = 0 }
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================
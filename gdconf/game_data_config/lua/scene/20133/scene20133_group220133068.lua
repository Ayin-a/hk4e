-- 基础信息
local base_info = {
	group_id = 220133068
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
	{ config_id = 2, name = "SingleTick", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 68001, gadget_id = 70310242, pos = { x = 5063.180, y = 520.446, z = -1621.103 }, rot = { x = 352.108, y = 292.663, z = 356.212 }, level = 1, interact_id = 64 },
		{ config_id = 68002, gadget_id = 70380320, pos = { x = 5028.852, y = 532.757, z = -1629.253 }, rot = { x = 359.428, y = 252.203, z = 355.718 }, level = 1, route_id = 8, start_route = false },
		{ config_id = 68003, gadget_id = 70310242, pos = { x = 5027.238, y = 523.081, z = -1655.644 }, rot = { x = 353.111, y = 173.516, z = 4.905 }, level = 1, interact_id = 64 },
		{ config_id = 68010, gadget_id = 70380320, pos = { x = 5028.717, y = 543.838, z = -1614.948 }, rot = { x = 357.352, y = 233.543, z = 1.394 }, level = 1, route_id = 9, start_route = false },
		{ config_id = 68011, gadget_id = 70380320, pos = { x = 5038.885, y = 528.238, z = -1604.005 }, rot = { x = 358.327, y = 160.717, z = 5.988 }, level = 1, route_id = 10, start_route = false }
	},
	triggers = {
		{ config_id = 1068004, name = "GADGET_STATE_CHANGE_68004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_68004", action = "action_EVENT_GADGET_STATE_CHANGE_68004", trigger_count = 0 },
		{ config_id = 1068005, name = "GADGET_STATE_CHANGE_68005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_68005", action = "action_EVENT_GADGET_STATE_CHANGE_68005", trigger_count = 0 },
		{ config_id = 1068006, name = "GADGET_STATE_CHANGE_68006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_68006", action = "action_EVENT_GADGET_STATE_CHANGE_68006", trigger_count = 0 },
		{ config_id = 1068007, name = "GADGET_STATE_CHANGE_68007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_68007", action = "action_EVENT_GADGET_STATE_CHANGE_68007", trigger_count = 0 },
		{ config_id = 1068008, name = "GADGET_STATE_CHANGE_68008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_68008", action = "action_EVENT_GADGET_STATE_CHANGE_68008", trigger_count = 0 },
		{ config_id = 1068009, name = "GADGET_STATE_CHANGE_68009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_68009", action = "action_EVENT_GADGET_STATE_CHANGE_68009", trigger_count = 0 }
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
-- 基础信息
local base_info = {
	group_id = 133304365
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
	{ config_id = 365001, gadget_id = 70217020, pos = { x = -1378.789, y = 272.086, z = 1950.793 }, rot = { x = 14.961, y = 33.114, z = 3.673 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 21 }
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
		{ config_id = 365002, gadget_id = 70330199, pos = { x = -1378.583, y = 271.575, z = 1950.715 }, rot = { x = 345.460, y = 218.771, z = 354.886 }, level = 30, state = GadgetState.GearStop, area_id = 21 }
	},
	triggers = {
		{ config_id = 1365003, name = "GADGET_STATE_CHANGE_365003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_365003", action = "action_EVENT_GADGET_STATE_CHANGE_365003", trigger_count = 0 },
		{ config_id = 1365004, name = "GADGET_STATE_CHANGE_365004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_365004", action = "action_EVENT_GADGET_STATE_CHANGE_365004", trigger_count = 0 },
		{ config_id = 1365005, name = "GROUP_LOAD_365005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_365005", trigger_count = 0 }
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
		gadgets = { 365001 },
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
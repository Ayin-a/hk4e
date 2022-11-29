-- 基础信息
local base_info = {
	group_id = 133303611
}

-- Trigger变量
local defs = {
	gadget_iris = 611001,
	gadget_block = 611002
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
	{ config_id = 1, name = "isActive", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 611001, gadget_id = 70500000, pos = { x = -1121.575, y = 90.130, z = 3887.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 23, is_enable_interact = false },
		{ config_id = 611002, gadget_id = 70330199, pos = { x = -1121.792, y = 89.167, z = 3886.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, state = GadgetState.DestroyState, area_id = 23 }
	},
	triggers = {
		{ config_id = 1611003, name = "GADGET_STATE_CHANGE_611003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_611003", trigger_count = 0 },
		{ config_id = 1611004, name = "TIME_AXIS_PASS_611004", event = EventType.EVENT_TIME_AXIS_PASS, source = "blockRised", condition = "", action = "action_EVENT_TIME_AXIS_PASS_611004", trigger_count = 0 },
		{ config_id = 1611005, name = "GROUP_LOAD_611005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_611005", trigger_count = 0 },
		{ config_id = 1611006, name = "TIME_AXIS_PASS_611006", event = EventType.EVENT_TIME_AXIS_PASS, source = "blockfalling", condition = "", action = "action_EVENT_TIME_AXIS_PASS_611006", trigger_count = 0 }
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
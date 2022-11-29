-- 基础信息
local base_info = {
	group_id = 133106573
}

-- Trigger变量
local defs = {
	gadget_id = 573004
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
	{ config_id = 1, name = "start", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 573001, gadget_id = 70360007, pos = { x = -860.851, y = 124.071, z = 1740.788 }, rot = { x = 357.458, y = 0.651, z = 347.644 }, level = 36, persistent = true, area_id = 19 },
		{ config_id = 573002, gadget_id = 70360006, pos = { x = -855.752, y = 123.077, z = 1737.237 }, rot = { x = 354.776, y = 0.709, z = 349.360 }, level = 36, persistent = true, area_id = 19 },
		{ config_id = 573003, gadget_id = 70360005, pos = { x = -859.596, y = 123.603, z = 1735.627 }, rot = { x = 1.587, y = 359.073, z = 347.639 }, level = 36, persistent = true, area_id = 19 },
		{ config_id = 573004, gadget_id = 70211111, pos = { x = -854.914, y = 122.468, z = 1729.621 }, rot = { x = 354.529, y = 341.096, z = 347.025 }, level = 26, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
		{ config_id = 573009, gadget_id = 70220065, pos = { x = -855.967, y = 123.288, z = 1737.476 }, rot = { x = 354.735, y = 0.490, z = 349.380 }, level = 36, area_id = 19 },
		{ config_id = 573010, gadget_id = 70220066, pos = { x = -859.539, y = 123.731, z = 1735.869 }, rot = { x = 1.749, y = 359.811, z = 338.161 }, level = 36, area_id = 19 }
	},
	triggers = {
		{ config_id = 1573005, name = "GADGET_STATE_CHANGE_573005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_573005", action = "action_EVENT_GADGET_STATE_CHANGE_573005", trigger_count = 0 },
		{ config_id = 1573006, name = "GADGET_STATE_CHANGE_573006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_573006", action = "action_EVENT_GADGET_STATE_CHANGE_573006" },
		{ config_id = 1573007, name = "GADGET_CREATE_573007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_573007", action = "action_EVENT_GADGET_CREATE_573007" },
		{ config_id = 1573008, name = "GADGET_STATE_CHANGE_573008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_573008", action = "action_EVENT_GADGET_STATE_CHANGE_573008" },
		{ config_id = 1573011, name = "GADGET_STATE_CHANGE_573011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_573011", action = "action_EVENT_GADGET_STATE_CHANGE_573011" }
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
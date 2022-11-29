-- 基础信息
local base_info = {
	group_id = 133222166
}

-- Trigger变量
local defs = {
	gadget_id = 166004
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
		{ config_id = 166001, gadget_id = 70900008, pos = { x = -5186.101, y = 218.645, z = -4350.015 }, rot = { x = 356.131, y = 352.431, z = 348.864 }, level = 32, persistent = true, area_id = 14 },
		{ config_id = 166002, gadget_id = 70900008, pos = { x = -5193.469, y = 201.521, z = -4295.327 }, rot = { x = 4.523, y = 3.121, z = 8.990 }, level = 32, persistent = true, area_id = 14 },
		{ config_id = 166003, gadget_id = 70900008, pos = { x = -5187.546, y = 201.612, z = -4260.538 }, rot = { x = 8.754, y = 0.022, z = 7.120 }, level = 32, persistent = true, area_id = 14 },
		{ config_id = 166004, gadget_id = 70211101, pos = { x = -5188.501, y = 199.340, z = -4303.635 }, rot = { x = 0.269, y = 268.997, z = 19.384 }, level = 26, drop_tag = "解谜低级稻妻", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1166005, name = "GADGET_STATE_CHANGE_166005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_166005", action = "action_EVENT_GADGET_STATE_CHANGE_166005", trigger_count = 0 },
		{ config_id = 1166006, name = "GADGET_STATE_CHANGE_166006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_166006" },
		{ config_id = 1166007, name = "GADGET_CREATE_166007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_166007", action = "action_EVENT_GADGET_CREATE_166007" },
		{ config_id = 1166008, name = "GADGET_STATE_CHANGE_166008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_166008", action = "action_EVENT_GADGET_STATE_CHANGE_166008" }
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
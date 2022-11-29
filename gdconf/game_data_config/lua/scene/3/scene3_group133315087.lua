-- 基础信息
local base_info = {
	group_id = 133315087
}

-- Trigger变量
local defs = {
	gadget_id = 87004
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
		{ config_id = 87001, gadget_id = 70310200, pos = { x = -54.067, y = 190.034, z = 2862.847 }, rot = { x = 0.000, y = 56.295, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
		{ config_id = 87002, gadget_id = 70310200, pos = { x = -69.966, y = 184.449, z = 2855.085 }, rot = { x = 0.000, y = 46.650, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
		{ config_id = 87003, gadget_id = 70310200, pos = { x = -43.004, y = 200.298, z = 2872.457 }, rot = { x = 0.000, y = 50.233, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
		{ config_id = 87004, gadget_id = 70211101, pos = { x = -40.844, y = 183.949, z = 2861.659 }, rot = { x = 0.000, y = 326.039, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
		{ config_id = 87005, gadget_id = 70330255, pos = { x = -69.966, y = 184.449, z = 2855.085 }, rot = { x = 342.105, y = 64.358, z = 359.779 }, level = 27, area_id = 20 },
		{ config_id = 87010, gadget_id = 70330255, pos = { x = -54.067, y = 190.034, z = 2862.847 }, rot = { x = 327.515, y = 46.327, z = 359.993 }, level = 27, area_id = 20 },
		{ config_id = 87011, gadget_id = 70330255, pos = { x = -54.067, y = 190.034, z = 2862.847 }, rot = { x = 31.531, y = 241.814, z = 8.252 }, level = 27, area_id = 20 },
		{ config_id = 87014, gadget_id = 70330255, pos = { x = -43.004, y = 200.298, z = 2872.457 }, rot = { x = 39.174, y = 229.275, z = 357.407 }, level = 27, area_id = 20 }
	},
	triggers = {
		{ config_id = 1087006, name = "GADGET_STATE_CHANGE_87006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_87006", action = "action_EVENT_GADGET_STATE_CHANGE_87006", trigger_count = 0 },
		{ config_id = 1087007, name = "GADGET_STATE_CHANGE_87007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_87007" },
		{ config_id = 1087008, name = "GADGET_CREATE_87008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_87008", action = "action_EVENT_GADGET_CREATE_87008" },
		{ config_id = 1087009, name = "GADGET_STATE_CHANGE_87009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_87009", action = "action_EVENT_GADGET_STATE_CHANGE_87009" },
		{ config_id = 1087012, name = "GADGET_STATE_CHANGE_87012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_87012", action = "action_EVENT_GADGET_STATE_CHANGE_87012" },
		{ config_id = 1087013, name = "GADGET_STATE_CHANGE_87013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_87013", action = "action_EVENT_GADGET_STATE_CHANGE_87013" },
		{ config_id = 1087015, name = "GADGET_STATE_CHANGE_87015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_87015", action = "action_EVENT_GADGET_STATE_CHANGE_87015" }
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
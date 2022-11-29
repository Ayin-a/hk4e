-- 基础信息
local base_info = {
	group_id = 133309321
}

-- Trigger变量
local defs = {
	gadget_receiver_1 = 321002,
	gadget_receiver_2 = 321003
}

-- DEFS_MISCS
--接收装置列表
defs.receiverList = {
	defs.gadget_receiver_1,
	defs.gadget_receiver_2,
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
	{ config_id = 2, name = "default", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 321002, gadget_id = 70330281, pos = { x = -2375.579, y = -2.866, z = 5410.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 },
		{ config_id = 321003, gadget_id = 70330281, pos = { x = -2385.112, y = -2.866, z = 5410.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 27 }
	},
	triggers = {
		{ config_id = 1321001, name = "GROUP_LOAD_321001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_321001", action = "action_EVENT_GROUP_LOAD_321001", trigger_count = 0 },
		{ config_id = 1321004, name = "VARIABLE_CHANGE_321004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_321004", action = "action_EVENT_VARIABLE_CHANGE_321004" },
		{ config_id = 1321006, name = "GADGET_STATE_CHANGE_321006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_321006", action = "action_EVENT_GADGET_STATE_CHANGE_321006", trigger_count = 0 }
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
	},
	{
		-- suite_id = 3,
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
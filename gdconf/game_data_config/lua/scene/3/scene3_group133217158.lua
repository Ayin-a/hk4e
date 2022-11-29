-- 基础信息
local base_info = {
	group_id = 133217158
}

-- DEFS_MISCS
local connection = {
	[158001] = {158003,1,158004,1},
	[158002] = {158004,1,158005,1},
	[158003] = {158005,1,158001,1},
	[158004] = {158001,1,158002,1},
	[158005] = {158003,1,158002,1},
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
	{ config_id = 1, name = "Finish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 158001, gadget_id = 70360180, pos = { x = -4273.432, y = 198.113, z = -4280.721 }, rot = { x = 0.000, y = 3.119, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 14 },
		{ config_id = 158002, gadget_id = 70360180, pos = { x = -4278.643, y = 198.059, z = -4276.558 }, rot = { x = 0.000, y = 74.361, z = 0.000 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 14 },
		{ config_id = 158003, gadget_id = 70360180, pos = { x = -4276.580, y = 198.321, z = -4269.858 }, rot = { x = 0.000, y = 146.030, z = 0.000 }, level = 30, state = GadgetState.GearAction1, persistent = true, area_id = 14 },
		{ config_id = 158004, gadget_id = 70360180, pos = { x = -4270.412, y = 198.238, z = -4270.234 }, rot = { x = 0.000, y = 209.594, z = 0.000 }, level = 30, state = GadgetState.GearAction1, persistent = true, area_id = 14 },
		{ config_id = 158005, gadget_id = 70360180, pos = { x = -4267.637, y = 198.142, z = -4276.520 }, rot = { x = 0.000, y = 285.960, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
		{ config_id = 158006, gadget_id = 70211122, pos = { x = -4273.242, y = 198.007, z = -4274.942 }, rot = { x = 0.000, y = 272.876, z = 0.000 }, level = 26, drop_tag = "解谜高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1158007, name = "GADGET_STATE_CHANGE_158007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_158007", action = "action_EVENT_GADGET_STATE_CHANGE_158007", trigger_count = 0 },
		{ config_id = 1158008, name = "GADGET_STATE_CHANGE_158008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_158008", action = "action_EVENT_GADGET_STATE_CHANGE_158008", trigger_count = 0 },
		{ config_id = 1158009, name = "GROUP_LOAD_158009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_158009", action = "action_EVENT_GROUP_LOAD_158009", trigger_count = 0 }
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

require "V2_1/PirateHelm"
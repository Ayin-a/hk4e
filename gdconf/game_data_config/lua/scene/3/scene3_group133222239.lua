-- 基础信息
local base_info = {
	group_id = 133222239
}

-- DEFS_MISCS
local connection = {
	[239001] = {239003,1},
	[239002] = {239001,1},
	[239003] = {239002,1},
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
		{ config_id = 239001, gadget_id = 70360180, pos = { x = -4236.901, y = 222.713, z = -4220.639 }, rot = { x = 347.122, y = 254.996, z = 14.254 }, level = 30, state = GadgetState.GearAction1, persistent = true, area_id = 14 },
		{ config_id = 239002, gadget_id = 70360180, pos = { x = -4241.144, y = 222.510, z = -4227.528 }, rot = { x = 348.322, y = 359.287, z = 351.846 }, level = 30, state = GadgetState.GearAction1, persistent = true, area_id = 14 },
		{ config_id = 239003, gadget_id = 70360180, pos = { x = -4245.061, y = 224.097, z = -4219.295 }, rot = { x = 2.683, y = 124.872, z = 355.030 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 14 },
		{ config_id = 239004, gadget_id = 70211102, pos = { x = -4241.037, y = 223.354, z = -4222.237 }, rot = { x = 350.195, y = 0.857, z = 350.040 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1239005, name = "GADGET_STATE_CHANGE_239005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_239005", action = "action_EVENT_GADGET_STATE_CHANGE_239005", trigger_count = 0 },
		{ config_id = 1239006, name = "GROUP_LOAD_239006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_239006", action = "action_EVENT_GROUP_LOAD_239006", trigger_count = 0 }
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
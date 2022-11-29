-- 基础信息
local base_info = {
	group_id = 133217256
}

-- DEFS_MISCS
local connection = {
	[240001] = {240003,1},
	[240002] = {240001,1},
	[240003] = {240002,1},
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
		{ config_id = 256001, gadget_id = 70360180, pos = { x = -4269.172, y = 204.619, z = -3831.084 }, rot = { x = 351.761, y = 205.975, z = 10.659 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 14 },
		{ config_id = 256002, gadget_id = 70360180, pos = { x = -4266.949, y = 204.466, z = -3838.538 }, rot = { x = 353.795, y = 308.992, z = 349.384 }, level = 30, state = GadgetState.GearAction1, persistent = true, area_id = 14 },
		{ config_id = 256003, gadget_id = 70360180, pos = { x = -4275.972, y = 206.607, z = -3836.632 }, rot = { x = 12.616, y = 75.747, z = 3.128 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 14 },
		{ config_id = 256004, gadget_id = 70211102, pos = { x = -4271.016, y = 205.338, z = -3835.384 }, rot = { x = 11.724, y = 31.269, z = 347.773 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1256005, name = "GADGET_STATE_CHANGE_256005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_256005", action = "action_EVENT_GADGET_STATE_CHANGE_256005", trigger_count = 0 },
		{ config_id = 1256006, name = "GROUP_LOAD_256006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_256006", action = "action_EVENT_GROUP_LOAD_256006", trigger_count = 0 }
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
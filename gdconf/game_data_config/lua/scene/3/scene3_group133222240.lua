-- 基础信息
local base_info = {
	group_id = 133222240
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
		{ config_id = 240001, gadget_id = 70360180, pos = { x = -5058.063, y = 197.680, z = -3781.310 }, rot = { x = 350.832, y = 50.961, z = 357.164 }, level = 30, state = GadgetState.GearAction1, persistent = true, area_id = 14 },
		{ config_id = 240002, gadget_id = 70360180, pos = { x = -5051.830, y = 197.864, z = -3783.473 }, rot = { x = 349.380, y = 0.085, z = 359.984 }, level = 30, state = GadgetState.GearStart, persistent = true, area_id = 14 },
		{ config_id = 240003, gadget_id = 70360180, pos = { x = -5059.843, y = 197.881, z = -3774.308 }, rot = { x = 347.816, y = 126.779, z = 349.971 }, level = 30, persistent = true, area_id = 14 },
		{ config_id = 240004, gadget_id = 70211102, pos = { x = -5053.843, y = 201.079, z = -3777.447 }, rot = { x = 11.224, y = 82.307, z = 4.354 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1240005, name = "GADGET_STATE_CHANGE_240005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_240005", action = "action_EVENT_GADGET_STATE_CHANGE_240005", trigger_count = 0 },
		{ config_id = 1240006, name = "GROUP_LOAD_240006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_240006", action = "action_EVENT_GROUP_LOAD_240006", trigger_count = 0 }
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
-- 基础信息
local base_info = {
	group_id = 133222287
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
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 287001, gadget_id = 70330064, pos = { x = -4776.695, y = 209.201, z = -4307.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 14 },
		{ config_id = 287002, gadget_id = 70900380, pos = { x = -4782.024, y = 220.878, z = -4307.941 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
		{ config_id = 287003, gadget_id = 70900380, pos = { x = -4793.421, y = 232.933, z = -4311.449 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
		{ config_id = 287004, gadget_id = 70900380, pos = { x = -4801.945, y = 245.115, z = -4313.952 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
		{ config_id = 287007, gadget_id = 70900380, pos = { x = -4815.001, y = 248.096, z = -4316.025 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 }
	},
	triggers = {
		{ config_id = 1287005, name = "GADGET_STATE_CHANGE_287005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_287005", action = "action_EVENT_GADGET_STATE_CHANGE_287005", trigger_count = 0 },
		{ config_id = 1287006, name = "GADGET_STATE_CHANGE_287006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_287006", action = "action_EVENT_GADGET_STATE_CHANGE_287006", trigger_count = 0 }
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

require "V2_0/ElectricCore"
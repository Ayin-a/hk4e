-- 基础信息
local base_info = {
	group_id = 133222167
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
		{ config_id = 167001, gadget_id = 70330064, pos = { x = -5193.919, y = 203.969, z = -4270.105 }, rot = { x = 0.000, y = 257.424, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, interact_id = 35, area_id = 14 },
		{ config_id = 167002, gadget_id = 70900380, pos = { x = -5197.896, y = 208.702, z = -4269.623 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
		{ config_id = 167003, gadget_id = 70900380, pos = { x = -5208.291, y = 210.898, z = -4266.943 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
		{ config_id = 167004, gadget_id = 70900380, pos = { x = -5218.781, y = 212.649, z = -4262.242 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 14 },
		{ config_id = 167007, gadget_id = 70900380, pos = { x = -5226.043, y = 214.420, z = -4256.367 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 },
		{ config_id = 167008, gadget_id = 70900380, pos = { x = -5232.762, y = 215.929, z = -4248.115 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 },
		{ config_id = 167009, gadget_id = 70900380, pos = { x = -5238.945, y = 218.223, z = -4238.274 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 30, area_id = 14 }
	},
	triggers = {
		{ config_id = 1167005, name = "GADGET_STATE_CHANGE_167005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_167005", action = "action_EVENT_GADGET_STATE_CHANGE_167005", trigger_count = 0 },
		{ config_id = 1167006, name = "GADGET_STATE_CHANGE_167006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_167006", action = "action_EVENT_GADGET_STATE_CHANGE_167006", trigger_count = 0 },
		{ config_id = 1167010, name = "GROUP_LOAD_167010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_167010" }
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
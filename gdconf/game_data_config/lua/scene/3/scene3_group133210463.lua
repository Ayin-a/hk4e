-- 基础信息
local base_info = {
	group_id = 133210463
}

-- Trigger变量
local defs = {
	group_ID = 133210463,
	gadget_fundation01 = 463001,
	gadget_hand01 = 463003,
	gadget_fundation02 = 0,
	gadget_hand02 = 0,
	gadget_fundation03 = 0,
	gadget_hand03 = 0,
	gadget_fundation04 = 0,
	gadget_hand04 = 0,
	gadget_fundation05 = 0,
	gadget_hand05 = 0,
	minDiscrapancy = 15
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
		{ config_id = 463001, gadget_id = 70950084, pos = { x = -3871.896, y = 250.836, z = -539.761 }, rot = { x = 0.000, y = 119.059, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 463002, gadget_id = 70360276, pos = { x = -3871.896, y = 250.836, z = -539.761 }, rot = { x = 0.000, y = 106.481, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 463003, gadget_id = 70950085, pos = { x = -3871.896, y = 250.836, z = -539.761 }, rot = { x = 0.000, y = 330.436, z = 0.000 }, level = 30, state = GadgetState.GearStop, area_id = 17 }
	},
	triggers = {
		{ config_id = 1463006, name = "VARIABLE_CHANGE_463006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_463006", action = "action_EVENT_VARIABLE_CHANGE_463006" }
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
	end_suite = 2,
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

require "BlackBoxPlay/MagneticGear"
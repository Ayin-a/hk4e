-- 基础信息
local base_info = {
	group_id = 133210462
}

-- Trigger变量
local defs = {
	group_ID = 133210462,
	gadget_fundation01 = 462001,
	gadget_hand01 = 462003,
	gadget_fundation02 = 462002,
	gadget_hand02 = 462004,
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
		{ config_id = 462001, gadget_id = 70950084, pos = { x = -3871.488, y = 250.253, z = -543.943 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 462002, gadget_id = 70950084, pos = { x = -3864.671, y = 250.021, z = -543.777 }, rot = { x = 0.000, y = 119.010, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 462003, gadget_id = 70950085, pos = { x = -3871.488, y = 250.253, z = -543.943 }, rot = { x = 0.000, y = 41.542, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 462004, gadget_id = 70950085, pos = { x = -3864.671, y = 250.209, z = -543.777 }, rot = { x = 0.000, y = 311.826, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 462005, gadget_id = 70360276, pos = { x = -3871.488, y = 250.253, z = -543.943 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 462007, gadget_id = 70360276, pos = { x = -3864.671, y = 250.021, z = -543.777 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 30, area_id = 17 }
	},
	triggers = {
		{ config_id = 1462006, name = "VARIABLE_CHANGE_462006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_462006", action = "action_EVENT_VARIABLE_CHANGE_462006" }
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
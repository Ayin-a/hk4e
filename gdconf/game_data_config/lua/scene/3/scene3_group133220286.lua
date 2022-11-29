-- 基础信息
local base_info = {
	group_id = 133220286
}

-- Trigger变量
local defs = {
	group_ID = 133220286,
	gadget_fundation01 = 286001,
	gadget_hand01 = 286003,
	gadget_fundation02 = 286007,
	gadget_hand02 = 286008,
	gadget_fundation03 = 0,
	gadget_hand03 = 0,
	gadget_fundation04 = 0,
	gadget_hand04 = 0,
	gadget_fundation05 = 0,
	gadget_hand05 = 0,
	minDiscrapancy = 20
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
		{ config_id = 286001, gadget_id = 70950084, pos = { x = -2188.700, y = 199.527, z = -4267.051 }, rot = { x = 0.000, y = 274.853, z = 0.000 }, level = 30, area_id = 11 },
		{ config_id = 286003, gadget_id = 70950085, pos = { x = -2188.700, y = 199.527, z = -4267.051 }, rot = { x = 0.000, y = 25.699, z = 0.000 }, level = 30, area_id = 11 },
		{ config_id = 286005, gadget_id = 70211111, pos = { x = -2179.708, y = 198.938, z = -4270.655 }, rot = { x = 0.000, y = 64.086, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
		{ config_id = 286007, gadget_id = 70950084, pos = { x = -2170.178, y = 199.903, z = -4275.506 }, rot = { x = 0.000, y = 106.354, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 286008, gadget_id = 70950085, pos = { x = -2170.178, y = 199.903, z = -4275.506 }, rot = { x = 0.000, y = 13.158, z = 0.000 }, level = 27, area_id = 11 }
	},
	triggers = {
		{ config_id = 1286006, name = "VARIABLE_CHANGE_286006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_286006", action = "" }
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

require "BlackBoxPlay/MagneticGear"
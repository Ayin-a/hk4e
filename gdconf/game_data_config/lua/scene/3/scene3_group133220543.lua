-- 基础信息
local base_info = {
	group_id = 133220543
}

-- Trigger变量
local defs = {
	group_ID = 133220543,
	gadget_fundation01 = 543001,
	gadget_hand01 = 543003,
	gadget_fundation02 = 543002,
	gadget_hand02 = 543004,
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
		{ config_id = 543001, gadget_id = 70950084, pos = { x = -2564.286, y = 200.454, z = -4063.786 }, rot = { x = 0.000, y = 272.176, z = 0.000 }, level = 30, area_id = 11 },
		{ config_id = 543002, gadget_id = 70950084, pos = { x = -2571.959, y = 200.230, z = -4063.900 }, rot = { x = 0.000, y = 88.842, z = 0.000 }, level = 30, area_id = 11 },
		{ config_id = 543003, gadget_id = 70950085, pos = { x = -2564.286, y = 200.454, z = -4063.786 }, rot = { x = 0.000, y = 88.335, z = 0.000 }, level = 30, area_id = 11 },
		{ config_id = 543004, gadget_id = 70950085, pos = { x = -2571.959, y = 200.230, z = -4063.900 }, rot = { x = 0.000, y = 271.476, z = 0.000 }, level = 30, area_id = 11 },
		{ config_id = 543005, gadget_id = 70211111, pos = { x = -2567.959, y = 200.417, z = -4064.076 }, rot = { x = 358.211, y = 359.972, z = 1.790 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
	},
	triggers = {
		{ config_id = 1543006, name = "VARIABLE_CHANGE_543006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_543006", action = "action_EVENT_VARIABLE_CHANGE_543006" }
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
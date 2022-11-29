-- 基础信息
local base_info = {
	group_id = 133220443
}

-- Trigger变量
local defs = {
	group_ID = 133220443,
	gadget_fundation01 = 443001,
	gadget_hand01 = 443003,
	gadget_fundation02 = 443002,
	gadget_hand02 = 443004,
	gadget_fundation03 = 443009,
	gadget_hand03 = 443008,
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
		{ config_id = 443001, gadget_id = 70950084, pos = { x = -2736.099, y = 215.626, z = -4183.639 }, rot = { x = 0.000, y = 186.213, z = 0.000 }, level = 30, area_id = 11 },
		{ config_id = 443002, gadget_id = 70950084, pos = { x = -2746.191, y = 216.540, z = -4188.604 }, rot = { x = 0.000, y = 115.374, z = 0.000 }, level = 30, area_id = 11 },
		{ config_id = 443003, gadget_id = 70950085, pos = { x = -2736.099, y = 215.626, z = -4183.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 11 },
		{ config_id = 443004, gadget_id = 70950085, pos = { x = -2746.191, y = 216.540, z = -4188.604 }, rot = { x = 0.000, y = 250.653, z = 0.000 }, level = 30, area_id = 11 },
		{ config_id = 443005, gadget_id = 70211111, pos = { x = -2739.154, y = 215.877, z = -4190.810 }, rot = { x = 0.000, y = 155.861, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
		{ config_id = 443007, gadget_id = 70500000, pos = { x = -2736.209, y = 213.575, z = -4181.329 }, rot = { x = 359.615, y = 37.392, z = 359.706 }, level = 27, point_type = 3006, area_id = 11 },
		{ config_id = 443008, gadget_id = 70950085, pos = { x = -2736.318, y = 215.326, z = -4197.452 }, rot = { x = 0.000, y = 70.442, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 443009, gadget_id = 70950084, pos = { x = -2736.318, y = 215.326, z = -4197.452 }, rot = { x = 0.000, y = 337.702, z = 0.000 }, level = 27, area_id = 11 }
	},
	triggers = {
		{ config_id = 1443006, name = "VARIABLE_CHANGE_443006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_443006", action = "action_EVENT_VARIABLE_CHANGE_443006" }
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
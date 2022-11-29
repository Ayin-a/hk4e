-- 基础信息
local base_info = {
	group_id = 133210188
}

-- Trigger变量
local defs = {
	group_ID = 133210188,
	gadget_fundation01 = 188001,
	gadget_hand01 = 188003,
	gadget_fundation02 = 188002,
	gadget_hand02 = 188004,
	gadget_fundation03 = 188007,
	gadget_hand03 = 188008,
	gadget_fundation04 = 188009,
	gadget_hand04 = 188010,
	gadget_fundation05 = 188011,
	gadget_hand05 = 188012,
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
		{ config_id = 188001, gadget_id = 70950084, pos = { x = -3723.036, y = 120.643, z = -856.692 }, rot = { x = 0.000, y = 208.692, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 188002, gadget_id = 70950084, pos = { x = -3704.950, y = 116.586, z = -889.675 }, rot = { x = 0.000, y = 275.732, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 188003, gadget_id = 70950085, pos = { x = -3723.036, y = 120.643, z = -856.692 }, rot = { x = 0.000, y = 290.105, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 188004, gadget_id = 70950085, pos = { x = -3704.950, y = 116.586, z = -889.675 }, rot = { x = 0.000, y = 115.597, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 188005, gadget_id = 70211111, pos = { x = -3731.529, y = 115.966, z = -889.102 }, rot = { x = 3.325, y = 0.256, z = 8.801 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
		{ config_id = 188007, gadget_id = 70950084, pos = { x = -3732.345, y = 112.293, z = -882.992 }, rot = { x = 0.000, y = 172.517, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 188008, gadget_id = 70950085, pos = { x = -3732.345, y = 112.293, z = -882.992 }, rot = { x = 0.000, y = 27.067, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 188009, gadget_id = 70950084, pos = { x = -3737.893, y = 121.477, z = -910.448 }, rot = { x = 0.000, y = 19.265, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 188010, gadget_id = 70950085, pos = { x = -3737.893, y = 121.477, z = -910.448 }, rot = { x = 0.000, y = 193.926, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 188011, gadget_id = 70950084, pos = { x = -3745.781, y = 114.821, z = -869.980 }, rot = { x = 0.000, y = 140.759, z = 0.000 }, level = 30, area_id = 17 },
		{ config_id = 188012, gadget_id = 70950085, pos = { x = -3745.781, y = 114.821, z = -869.980 }, rot = { x = 0.000, y = 39.600, z = 0.000 }, level = 30, area_id = 17 }
	},
	triggers = {
		{ config_id = 1188006, name = "VARIABLE_CHANGE_188006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_188006", action = "action_EVENT_VARIABLE_CHANGE_188006" }
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
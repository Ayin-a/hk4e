-- 基础信息
local base_info = {
	group_id = 133212267
}

-- Trigger变量
local defs = {
	group_ID = 133212267,
	gadget_fundation01 = 267001,
	gadget_hand01 = 267003,
	gadget_fundation02 = 267002,
	gadget_hand02 = 267004,
	gadget_fundation03 = 267007,
	gadget_hand03 = 267008,
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
		{ config_id = 267001, gadget_id = 70950084, pos = { x = -4222.489, y = 197.725, z = -2562.669 }, rot = { x = 0.000, y = 179.546, z = 0.000 }, level = 30, area_id = 13 },
		{ config_id = 267002, gadget_id = 70950084, pos = { x = -4235.368, y = 201.681, z = -2559.499 }, rot = { x = 0.000, y = 177.159, z = 0.000 }, level = 30, area_id = 13 },
		{ config_id = 267003, gadget_id = 70950085, pos = { x = -4222.489, y = 197.725, z = -2562.669 }, rot = { x = 0.000, y = 75.200, z = 0.000 }, level = 30, area_id = 13 },
		{ config_id = 267004, gadget_id = 70950085, pos = { x = -4235.368, y = 201.707, z = -2559.499 }, rot = { x = 0.000, y = 325.949, z = 0.000 }, level = 30, area_id = 13 },
		{ config_id = 267005, gadget_id = 70211101, pos = { x = -4229.997, y = 198.401, z = -2569.702 }, rot = { x = 343.164, y = 299.014, z = 5.177 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
		{ config_id = 267007, gadget_id = 70950084, pos = { x = -4222.294, y = 194.393, z = -2577.661 }, rot = { x = 0.000, y = 354.037, z = -0.004 }, level = 27, area_id = 13 },
		{ config_id = 267008, gadget_id = 70950085, pos = { x = -4222.294, y = 194.393, z = -2577.661 }, rot = { x = 0.000, y = 116.089, z = -0.004 }, level = 27, area_id = 13 }
	},
	triggers = {
		{ config_id = 1267006, name = "VARIABLE_CHANGE_267006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_267006", action = "" }
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
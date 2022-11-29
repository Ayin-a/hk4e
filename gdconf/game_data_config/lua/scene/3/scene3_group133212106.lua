-- 基础信息
local base_info = {
	group_id = 133212106
}

-- Trigger变量
local defs = {
	group_ID = 133212106,
	gadget_fundation01 = 106001,
	gadget_hand01 = 106003,
	gadget_fundation02 = 106002,
	gadget_hand02 = 106004,
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
	monsters = {
		{ config_id = 106007, monster_id = 20010501, pos = { x = -4226.636, y = 201.334, z = -2527.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", disableWander = true, area_id = 13 },
		{ config_id = 106008, monster_id = 20010501, pos = { x = -4229.474, y = 201.359, z = -2533.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", disableWander = true, area_id = 13 },
		{ config_id = 106009, monster_id = 20010501, pos = { x = -4221.384, y = 200.392, z = -2531.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", disableWander = true, area_id = 13 }
	},
	gadgets = {
		{ config_id = 106001, gadget_id = 70950084, pos = { x = -4222.261, y = 200.506, z = -2528.004 }, rot = { x = 0.000, y = 256.453, z = 0.000 }, level = 30, area_id = 13 },
		{ config_id = 106002, gadget_id = 70950084, pos = { x = -4230.071, y = 201.451, z = -2531.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 13 },
		{ config_id = 106003, gadget_id = 70950085, pos = { x = -4222.258, y = 200.506, z = -2528.000 }, rot = { x = 0.000, y = 326.453, z = 0.000 }, level = 30, area_id = 13 },
		{ config_id = 106004, gadget_id = 70950085, pos = { x = -4230.067, y = 201.325, z = -2531.415 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 30, area_id = 13 },
		{ config_id = 106005, gadget_id = 70211101, pos = { x = -4225.601, y = 200.886, z = -2532.841 }, rot = { x = 353.337, y = 335.798, z = 354.374 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
	},
	triggers = {
		{ config_id = 1106006, name = "VARIABLE_CHANGE_106006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_106006", action = "" }
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
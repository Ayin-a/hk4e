-- 基础信息
local base_info = {
	group_id = 133217357
}

-- Trigger变量
local defs = {
	group_ID = 133217357,
	gadget_1 = 357001,
	rotation_1 = 0,
	gadget_2 = 357002,
	rotation_2 = 90,
	gadget_3 = 357003,
	rotation_3 = 180,
	gadget_4 = 357009,
	rotation_4 = 90,
	gadget_5 = 357011,
	rotation_5 = 180,
	gadget_connect1 = {},
	gadget_connect2 = {357009},
	gadget_connect3 = {357011},
	gadget_connect4 = {357002},
	gadget_connect5 = {357003}
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
		{ config_id = 357001, gadget_id = 70330081, pos = { x = -4196.125, y = 200.705, z = -4822.191 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 14 },
		{ config_id = 357002, gadget_id = 70330081, pos = { x = -4196.125, y = 202.705, z = -4822.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 14 },
		{ config_id = 357003, gadget_id = 70330081, pos = { x = -4196.125, y = 204.705, z = -4822.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 14 },
		{ config_id = 357004, gadget_id = 70330084, pos = { x = -4196.125, y = 200.705, z = -4822.191 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 14 },
		{ config_id = 357005, gadget_id = 70330085, pos = { x = -4196.125, y = 206.848, z = -4822.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 14 },
		{ config_id = 357006, gadget_id = 70211101, pos = { x = -4192.750, y = 199.067, z = -4818.164 }, rot = { x = 341.389, y = 226.063, z = 14.916 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
		{ config_id = 357008, gadget_id = 70330084, pos = { x = -4196.125, y = 200.319, z = -4820.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 357009, gadget_id = 70330081, pos = { x = -4196.125, y = 200.319, z = -4820.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 14 },
		{ config_id = 357010, gadget_id = 70330084, pos = { x = -4196.125, y = 200.003, z = -4817.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 357011, gadget_id = 70330081, pos = { x = -4196.125, y = 200.003, z = -4817.731 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, is_use_point_array = true, area_id = 14 }
	},
	triggers = {
		{ config_id = 1357007, name = "VARIABLE_CHANGE_357007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_357007", action = "" }
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

require "BlackBoxPlay/LightSquare"
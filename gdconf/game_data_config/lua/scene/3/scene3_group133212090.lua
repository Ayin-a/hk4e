-- 基础信息
local base_info = {
	group_id = 133212090
}

-- Trigger变量
local defs = {
	group_ID = 133212090,
	gadget_1 = 90001,
	rotation_1 = 0,
	gadget_2 = 90002,
	rotation_2 = 90,
	gadget_3 = 90003,
	rotation_3 = 0,
	gadget_4 = 90004,
	rotation_4 = 270,
	gadget_5 = 90005,
	rotation_5 = 0,
	gadget_connect1 = {90002,90003},
	gadget_connect2 = {90005},
	gadget_connect3 = {90001,90004},
	gadget_connect4 = {},
	gadget_connect5 = {}
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
		{ config_id = 90001, gadget_id = 70330081, pos = { x = -4271.905, y = 202.228, z = -2139.642 }, rot = { x = 0.000, y = 352.992, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 13 },
		{ config_id = 90002, gadget_id = 70330081, pos = { x = -4268.729, y = 201.216, z = -2138.764 }, rot = { x = 0.000, y = 346.495, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 13 },
		{ config_id = 90003, gadget_id = 70330081, pos = { x = -4265.792, y = 202.815, z = -2142.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 13 },
		{ config_id = 90004, gadget_id = 70330081, pos = { x = -4272.910, y = 204.382, z = -2142.541 }, rot = { x = 0.000, y = 1.798, z = 0.000 }, level = 27, is_use_point_array = true, area_id = 13 },
		{ config_id = 90005, gadget_id = 70330081, pos = { x = -4268.740, y = 203.397, z = -2145.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, is_use_point_array = true, area_id = 13 }
	},
	triggers = {
		{ config_id = 1090007, name = "VARIABLE_CHANGE_90007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_90007", action = "action_EVENT_VARIABLE_CHANGE_90007" }
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
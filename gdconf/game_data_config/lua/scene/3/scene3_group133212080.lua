-- 基础信息
local base_info = {
	group_id = 133212080
}

-- Trigger变量
local defs = {
	group_ID = 133212080,
	gadget_1 = 80001,
	rotation_1 = 0,
	gadget_2 = 80002,
	rotation_2 = 90,
	gadget_3 = 80003,
	rotation_3 = 180,
	gadget_4 = 80006,
	rotation_4 = 270,
	gadget_5 = 0,
	rotation_5 = 0,
	gadget_connect1 = {80003},
	gadget_connect2 = {80003},
	gadget_connect3 = {80002,80006},
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
		{ config_id = 80001, gadget_id = 70330081, pos = { x = -3974.720, y = 203.935, z = -2714.751 }, rot = { x = 0.000, y = 335.482, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 13 },
		{ config_id = 80002, gadget_id = 70330081, pos = { x = -3975.903, y = 202.556, z = -2710.869 }, rot = { x = 0.000, y = 328.139, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 13 },
		{ config_id = 80003, gadget_id = 70330081, pos = { x = -3983.726, y = 200.916, z = -2723.478 }, rot = { x = 0.000, y = 351.167, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 13 },
		{ config_id = 80006, gadget_id = 70330081, pos = { x = -3981.766, y = 201.413, z = -2713.874 }, rot = { x = 0.000, y = 334.708, z = 0.000 }, level = 27, is_use_point_array = true, area_id = 13 }
	},
	triggers = {
		{ config_id = 1080007, name = "VARIABLE_CHANGE_80007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_80007", action = "action_EVENT_VARIABLE_CHANGE_80007" }
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
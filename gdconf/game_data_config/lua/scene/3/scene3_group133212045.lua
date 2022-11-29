-- 基础信息
local base_info = {
	group_id = 133212045
}

-- Trigger变量
local defs = {
	group_ID = 133212045,
	gadget_1 = 45001,
	rotation_1 = 180,
	gadget_2 = 45002,
	rotation_2 = 90,
	gadget_3 = 45003,
	rotation_3 = 270,
	gadget_4 = 45010,
	rotation_4 = 90,
	gadget_5 = 0,
	rotation_5 = 0,
	gadget_connect1 = {},
	gadget_connect2 = {45010},
	gadget_connect3 = {},
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
		{ config_id = 45001, gadget_id = 70330081, pos = { x = -4898.074, y = 198.192, z = -2502.501 }, rot = { x = 18.182, y = 150.000, z = 8.214 }, level = 2, is_use_point_array = true, area_id = 18 },
		{ config_id = 45002, gadget_id = 70330081, pos = { x = -4891.964, y = 201.503, z = -2495.937 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 18 },
		{ config_id = 45003, gadget_id = 70330081, pos = { x = -4891.963, y = 202.836, z = -2495.938 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 18 },
		{ config_id = 45004, gadget_id = 70330084, pos = { x = -4891.956, y = 201.501, z = -2495.939 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 2, area_id = 18 },
		{ config_id = 45005, gadget_id = 70330085, pos = { x = -4891.963, y = 204.656, z = -2495.938 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 2, area_id = 18 },
		{ config_id = 45006, gadget_id = 70211111, pos = { x = -4890.828, y = 203.759, z = -2491.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
		{ config_id = 45008, gadget_id = 70330084, pos = { x = -4898.136, y = 198.067, z = -2502.394 }, rot = { x = 18.182, y = 150.000, z = 8.214 }, level = 27, area_id = 18 },
		{ config_id = 45009, gadget_id = 70330084, pos = { x = -4885.471, y = 197.900, z = -2496.328 }, rot = { x = 25.457, y = 150.000, z = 7.285 }, level = 27, area_id = 18 },
		{ config_id = 45010, gadget_id = 70330081, pos = { x = -4885.477, y = 198.228, z = -2496.455 }, rot = { x = 25.457, y = 150.000, z = 7.285 }, level = 27, is_use_point_array = true, area_id = 18 },
		{ config_id = 45011, gadget_id = 70330085, pos = { x = -4897.597, y = 199.875, z = -2502.775 }, rot = { x = 16.350, y = 149.624, z = 6.655 }, level = 27, area_id = 18 },
		{ config_id = 45012, gadget_id = 70330085, pos = { x = -4884.924, y = 199.834, z = -2496.953 }, rot = { x = 29.844, y = 150.132, z = 6.240 }, level = 27, area_id = 18 },
		{ config_id = 45013, gadget_id = 70330083, pos = { x = -4879.333, y = 198.201, z = -2487.673 }, rot = { x = 314.329, y = 0.001, z = 17.393 }, level = 27, area_id = 18 }
	},
	triggers = {
		{ config_id = 1045007, name = "VARIABLE_CHANGE_45007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_45007", action = "" }
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
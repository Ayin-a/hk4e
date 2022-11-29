-- 基础信息
local base_info = {
	group_id = 133212099
}

-- Trigger变量
local defs = {
	group_ID = 133212099,
	gadget_1 = 99001,
	rotation_1 = 0,
	gadget_2 = 99002,
	rotation_2 = 90,
	gadget_3 = 99003,
	rotation_3 = 180,
	gadget_4 = 99008,
	rotation_4 = 270,
	gadget_5 = 99009,
	rotation_5 = 0,
	gadget_connect1 = {99009},
	gadget_connect2 = {99009},
	gadget_connect3 = {99008},
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
	{ config_id = 1, name = "fix", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 99001, gadget_id = 70330081, pos = { x = -3864.745, y = 203.049, z = -1891.686 }, rot = { x = 0.000, y = 352.188, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 13 },
		{ config_id = 99002, gadget_id = 70330081, pos = { x = -3868.414, y = 202.253, z = -1889.824 }, rot = { x = 0.000, y = 356.382, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 13 },
		{ config_id = 99003, gadget_id = 70330081, pos = { x = -3871.463, y = 202.381, z = -1889.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 13 },
		{ config_id = 99004, gadget_id = 70330083, pos = { x = -3870.187, y = 200.123, z = -1883.469 }, rot = { x = 304.540, y = 165.478, z = 3.196 }, level = 27, area_id = 13 },
		{ config_id = 99008, gadget_id = 70330081, pos = { x = -3872.804, y = 201.734, z = -1883.874 }, rot = { x = 0.000, y = 359.288, z = 0.000 }, level = 27, is_use_point_array = true, area_id = 13 },
		{ config_id = 99009, gadget_id = 70330081, pos = { x = -3870.077, y = 201.805, z = -1883.002 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, is_use_point_array = true, area_id = 13 }
	},
	triggers = {
		{ config_id = 1099005, name = "VARIABLE_CHANGE_99005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_99005", action = "action_EVENT_VARIABLE_CHANGE_99005", trigger_count = 0 },
		{ config_id = 1099007, name = "VARIABLE_CHANGE_99007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_99007", action = "action_EVENT_VARIABLE_CHANGE_99007" }
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
-- 基础信息
local base_info = {
	group_id = 133212295
}

-- Trigger变量
local defs = {
	group_ID = 133212295,
	gadget_1 = 295001,
	rotation_1 = 180,
	gadget_2 = 295002,
	rotation_2 = 90,
	gadget_3 = 295003,
	rotation_3 = 180,
	gadget_4 = 295011,
	rotation_4 = 0,
	gadget_5 = 295012,
	rotation_5 = 90,
	gadget_connect1 = {},
	gadget_connect2 = {295003},
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
	monsters = {
		{ config_id = 295022, monster_id = 24020201, pos = { x = -4240.145, y = 202.612, z = -2494.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 13 }
	},
	gadgets = {
		{ config_id = 295001, gadget_id = 70330081, pos = { x = -4250.127, y = 201.468, z = -2500.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 13 },
		{ config_id = 295002, gadget_id = 70330081, pos = { x = -4240.011, y = 203.717, z = -2490.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 13 },
		{ config_id = 295003, gadget_id = 70330081, pos = { x = -4229.982, y = 200.347, z = -2501.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, is_use_point_array = true, area_id = 13 },
		{ config_id = 295004, gadget_id = 70330084, pos = { x = -4240.030, y = 203.385, z = -2490.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 13 },
		{ config_id = 295005, gadget_id = 70330085, pos = { x = -4240.066, y = 206.842, z = -2490.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 13 },
		{ config_id = 295006, gadget_id = 70211111, pos = { x = -4235.138, y = 203.770, z = -2486.419 }, rot = { x = 6.185, y = 203.500, z = 5.561 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
		{ config_id = 295008, gadget_id = 70330084, pos = { x = -4229.990, y = 200.007, z = -2500.828 }, rot = { x = 357.589, y = 79.801, z = 346.831 }, level = 27, area_id = 13 },
		{ config_id = 295009, gadget_id = 70330084, pos = { x = -4240.248, y = 197.454, z = -2510.946 }, rot = { x = 19.754, y = 143.645, z = 356.590 }, level = 27, area_id = 13 },
		{ config_id = 295010, gadget_id = 70330084, pos = { x = -4250.040, y = 201.111, z = -2500.661 }, rot = { x = 19.754, y = 143.645, z = 356.590 }, level = 27, area_id = 13 },
		{ config_id = 295011, gadget_id = 70330081, pos = { x = -4240.359, y = 197.790, z = -2511.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, is_use_point_array = true, area_id = 13 },
		{ config_id = 295012, gadget_id = 70330081, pos = { x = -4240.044, y = 205.061, z = -2490.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, is_use_point_array = true, area_id = 13 },
		{ config_id = 295013, gadget_id = 70330085, pos = { x = -4250.132, y = 203.272, z = -2500.681 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 295014, gadget_id = 70330085, pos = { x = -4229.991, y = 202.116, z = -2501.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 295015, gadget_id = 70330085, pos = { x = -4240.378, y = 199.549, z = -2511.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 295016, gadget_id = 70330083, pos = { x = -4247.299, y = 202.323, z = -2494.068 }, rot = { x = -0.001, y = 21.575, z = 343.541 }, level = 27, area_id = 13 },
		{ config_id = 295017, gadget_id = 70330083, pos = { x = -4231.554, y = 201.724, z = -2494.129 }, rot = { x = 51.694, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 295018, gadget_id = 70330083, pos = { x = -4232.014, y = 196.682, z = -2506.852 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 295019, gadget_id = 70330083, pos = { x = -4247.566, y = 198.609, z = -2507.605 }, rot = { x = 0.000, y = 0.000, z = 37.527 }, level = 27, area_id = 13 }
	},
	triggers = {
		{ config_id = 1295007, name = "VARIABLE_CHANGE_295007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_295007", action = "" },
		{ config_id = 1295020, name = "ANY_GADGET_DIE_295020", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_295020", action = "action_EVENT_ANY_GADGET_DIE_295020" }
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
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
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
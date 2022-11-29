-- 基础信息
local base_info = {
	group_id = 133212572
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
	{ config_id = 572006, gadget_id = 70500000, pos = { x = -3975.161, y = 248.121, z = -2182.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2001, area_id = 13 },
	{ config_id = 572007, gadget_id = 70500000, pos = { x = -3902.084, y = 218.929, z = -2118.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2001, area_id = 13 },
	{ config_id = 572008, gadget_id = 70500000, pos = { x = -3919.867, y = 231.418, z = -2141.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2001, area_id = 13 }
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
		{ config_id = 572001, monster_id = 26010301, pos = { x = -3939.431, y = 231.065, z = -2154.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "骗骗花", area_id = 13 }
	},
	gadgets = {
		{ config_id = 572002, gadget_id = 70520033, pos = { x = -4190.699, y = 176.823, z = -2471.040 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
		{ config_id = 572003, gadget_id = 70520033, pos = { x = -4193.903, y = 176.064, z = -2465.177 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
		{ config_id = 572004, gadget_id = 70520033, pos = { x = -4186.268, y = 176.401, z = -2468.173 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
		{ config_id = 572005, gadget_id = 70520033, pos = { x = -4188.280, y = 175.755, z = -2463.080 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
		{ config_id = 572009, gadget_id = 70510013, pos = { x = -3939.243, y = 231.164, z = -2153.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
	},
	triggers = {
		{ config_id = 1572010, name = "GADGET_STATE_CHANGE_572010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_572010", action = "action_EVENT_GADGET_STATE_CHANGE_572010", trigger_count = 0 },
		{ config_id = 1572011, name = "ANY_MONSTER_DIE_572011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_572011", action = "action_EVENT_ANY_MONSTER_DIE_572011" },
		{ config_id = 1572012, name = "GADGET_CREATE_572012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_572012", action = "action_EVENT_GADGET_CREATE_572012", trigger_count = 0 },
		{ config_id = 1572013, name = "SELECT_OPTION_572013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_572013", action = "action_EVENT_SELECT_OPTION_572013", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 572006, 572007, 572008 },
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
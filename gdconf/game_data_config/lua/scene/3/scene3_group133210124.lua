-- 基础信息
local base_info = {
	group_id = 133210124
}

-- Trigger变量
local defs = {
	group_ID = 133210124,
	gadget_11 = 124001,
	gadget_12 = 124002,
	gadget_13 = 124003,
	gadget_14 = 124004,
	gadget_15 = 124005,
	gadget_21 = 124006,
	gadget_22 = 124007,
	gadget_23 = 124008,
	gadget_24 = 124009,
	gadget_25 = 124010,
	gadget_31 = 124011,
	gadget_32 = 124012,
	gadget_33 = 124013,
	gadget_34 = 124014,
	gadget_35 = 124015,
	gadget_41 = 124016,
	gadget_42 = 124017,
	gadget_43 = 124018,
	gadget_44 = 124019,
	gadget_45 = 124020,
	gadget_51 = 124021,
	gadget_52 = 124022,
	gadget_53 = 124023,
	gadget_54 = 124024,
	gadget_55 = 124025,
	trigger_boarder = 124027,
	gadget_starter = 124015,
	gadget_ender = 124018
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
		{ config_id = 124001, gadget_id = 70360186, pos = { x = -3991.046, y = 213.986, z = -720.658 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, area_id = 17 },
		{ config_id = 124002, gadget_id = 70360186, pos = { x = -3991.695, y = 213.777, z = -722.657 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, area_id = 17 },
		{ config_id = 124003, gadget_id = 70360186, pos = { x = -3992.341, y = 213.567, z = -724.655 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, area_id = 17 },
		{ config_id = 124004, gadget_id = 70360186, pos = { x = -3992.990, y = 213.353, z = -726.653 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, area_id = 17 },
		{ config_id = 124005, gadget_id = 70360186, pos = { x = -3993.636, y = 213.199, z = -728.650 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, area_id = 17 },
		{ config_id = 124006, gadget_id = 70360186, pos = { x = -3993.002, y = 214.050, z = -720.030 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, area_id = 17 },
		{ config_id = 124007, gadget_id = 70360186, pos = { x = -3993.648, y = 213.874, z = -722.025 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, area_id = 17 },
		{ config_id = 124008, gadget_id = 70360186, pos = { x = -3994.295, y = 213.698, z = -724.024 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, area_id = 17 },
		{ config_id = 124009, gadget_id = 70360186, pos = { x = -3994.943, y = 213.521, z = -726.022 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, area_id = 17 },
		{ config_id = 124010, gadget_id = 70360186, pos = { x = -3995.589, y = 213.341, z = -728.020 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, area_id = 17 },
		{ config_id = 124011, gadget_id = 70360186, pos = { x = -3994.980, y = 214.109, z = -719.391 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, area_id = 17 },
		{ config_id = 124012, gadget_id = 70360186, pos = { x = -3995.626, y = 213.933, z = -721.388 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, state = GadgetState.Action03, area_id = 17 },
		{ config_id = 124013, gadget_id = 70360186, pos = { x = -3996.274, y = 213.759, z = -723.387 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, state = GadgetState.Action03, area_id = 17 },
		{ config_id = 124014, gadget_id = 70360186, pos = { x = -3996.920, y = 213.590, z = -725.385 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, area_id = 17 },
		{ config_id = 124015, gadget_id = 70360186, pos = { x = -3997.566, y = 213.450, z = -727.381 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, state = GadgetState.GearStart, area_id = 17 },
		{ config_id = 124016, gadget_id = 70360186, pos = { x = -3996.976, y = 214.170, z = -718.746 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, area_id = 17 },
		{ config_id = 124017, gadget_id = 70360186, pos = { x = -3997.621, y = 214.001, z = -720.745 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, state = GadgetState.Action03, area_id = 17 },
		{ config_id = 124018, gadget_id = 70360186, pos = { x = -3998.273, y = 213.832, z = -722.741 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, area_id = 17 },
		{ config_id = 124019, gadget_id = 70360186, pos = { x = -3998.919, y = 213.663, z = -724.740 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, area_id = 17 },
		{ config_id = 124020, gadget_id = 70360186, pos = { x = -3999.566, y = 213.526, z = -726.737 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, area_id = 17 },
		{ config_id = 124021, gadget_id = 70360186, pos = { x = -3998.941, y = 214.231, z = -718.120 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, area_id = 17 },
		{ config_id = 124022, gadget_id = 70360186, pos = { x = -3999.589, y = 214.066, z = -720.117 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, area_id = 17 },
		{ config_id = 124023, gadget_id = 70360186, pos = { x = -4000.237, y = 213.901, z = -722.114 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, area_id = 17 },
		{ config_id = 124024, gadget_id = 70360186, pos = { x = -4000.865, y = 213.735, z = -724.102 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, area_id = 17 },
		{ config_id = 124025, gadget_id = 70360186, pos = { x = -4001.531, y = 213.598, z = -726.110 }, rot = { x = 0.000, y = 17.953, z = 0.000 }, level = 10, area_id = 17 }
	},
	regions = {
		{ config_id = 124027, shape = RegionShape.SPHERE, radius = 7.07, pos = { x = -3996.254, y = 213.553, z = -723.383 }, area_id = 17 }
	},
	triggers = {
		{ config_id = 1124028, name = "VARIABLE_CHANGE_124028", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_124028", action = "action_EVENT_VARIABLE_CHANGE_124028" }
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
	end_suite = 3,
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "BlackBoxPlay/DrawOneLine"
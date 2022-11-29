-- 基础信息
local base_info = {
	group_id = 133304410
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
	{ config_id = 410004, gadget_id = 70900388, pos = { x = -1447.291, y = 274.808, z = 2215.949 }, rot = { x = 17.865, y = 357.615, z = 344.913 }, level = 30, area_id = 21 },
	{ config_id = 410005, gadget_id = 70900388, pos = { x = -1454.894, y = 275.901, z = 2219.823 }, rot = { x = 25.861, y = 358.316, z = 352.676 }, level = 30, area_id = 21 },
	{ config_id = 410006, gadget_id = 70900388, pos = { x = -1450.685, y = 272.615, z = 2223.701 }, rot = { x = 23.022, y = 357.035, z = 351.614 }, level = 30, area_id = 21 },
	{ config_id = 410007, gadget_id = 70330216, pos = { x = -1455.656, y = 274.922, z = 2221.091 }, rot = { x = 0.000, y = 211.049, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 410008, gadget_id = 70330216, pos = { x = -1448.914, y = 272.329, z = 2223.313 }, rot = { x = 0.000, y = 189.999, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 410009, gadget_id = 70211001, pos = { x = -1450.905, y = 274.786, z = 2219.863 }, rot = { x = 30.114, y = 34.723, z = 357.090 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 410011, gadget_id = 70330216, pos = { x = -1448.376, y = 275.086, z = 2215.618 }, rot = { x = 0.000, y = 227.435, z = 0.000 }, level = 30, area_id = 21 }
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
		{ config_id = 410001, gadget_id = 70220004, pos = { x = -1455.260, y = 271.760, z = 2227.489 }, rot = { x = 10.741, y = 358.398, z = 343.079 }, level = 30, area_id = 21 },
		{ config_id = 410002, gadget_id = 70220004, pos = { x = -1457.722, y = 272.508, z = 2226.568 }, rot = { x = 27.380, y = 356.062, z = 343.932 }, level = 30, area_id = 21 },
		{ config_id = 410003, gadget_id = 70220004, pos = { x = -1456.444, y = 272.160, z = 2227.018 }, rot = { x = 34.370, y = 355.451, z = 345.363 }, level = 30, area_id = 21 }
	},
	triggers = {
		{ config_id = 1410012, name = "GADGET_STATE_CHANGE_410012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_410012", action = "action_EVENT_GADGET_STATE_CHANGE_410012", trigger_count = 0 }
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
		gadgets = { 410004, 410005, 410006, 410007, 410008, 410009, 410011 },
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
-- 基础信息
local base_info = {
	group_id = 133222300
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
	{ config_id = 300001, gadget_id = 70290086, pos = { x = -4494.523, y = 364.004, z = -4247.602 }, rot = { x = 299.430, y = 347.537, z = 304.557 }, level = 30, area_id = 14 },
	{ config_id = 300002, gadget_id = 70330064, pos = { x = -4489.836, y = 366.648, z = -4250.270 }, rot = { x = 358.071, y = 0.161, z = 350.441 }, level = 30, interact_id = 35, area_id = 14 }
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
		{ config_id = 300005, gadget_id = 70900380, pos = { x = -4483.578, y = 371.952, z = -4253.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 300006, gadget_id = 70900380, pos = { x = -4472.901, y = 379.999, z = -4256.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 300007, gadget_id = 70900380, pos = { x = -4463.214, y = 388.431, z = -4259.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
	},
	triggers = {
		{ config_id = 1300003, name = "GADGET_STATE_CHANGE_300003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_300003", action = "action_EVENT_GADGET_STATE_CHANGE_300003", trigger_count = 0 },
		{ config_id = 1300004, name = "GADGET_STATE_CHANGE_300004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_300004", action = "action_EVENT_GADGET_STATE_CHANGE_300004", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { 300001, 300002 },
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

require "V2_0/ElectricCore"
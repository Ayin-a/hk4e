-- 基础信息
local base_info = {
	group_id = 199001179
}

-- DEFS_MISCS
local	defs = {

		--左右旋转的SelectOptionID
		selectID_horizon = 54,

		--上下俯仰的SelectOptionID
		selectID_vertical = 55,

		--定义左右旋转的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		horizon_steps = {
			[56006] = {0,102},
		},

		--定义上下俯仰的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		vertical_steps = {

		}
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
		{ config_id = 179003, gadget_id = 70310171, pos = { x = 244.168, y = 132.931, z = 303.407 }, rot = { x = 349.867, y = 227.553, z = 359.591 }, level = 20, state = GadgetState.GearStart, persistent = true, interact_id = 64, area_id = 402 },
		{ config_id = 179004, gadget_id = 70310169, pos = { x = 239.634, y = 132.311, z = 303.185 }, rot = { x = 358.340, y = 217.553, z = 1.206 }, level = 20, area_id = 402 },
		{ config_id = 179011, gadget_id = 70310341, pos = { x = 239.737, y = 134.318, z = 303.004 }, rot = { x = 345.131, y = 216.051, z = 0.271 }, level = 20, area_id = 402 },
		{ config_id = 179012, gadget_id = 70690027, pos = { x = 237.972, y = 133.418, z = 305.399 }, rot = { x = 77.737, y = 307.326, z = 1.233 }, level = 20, area_id = 402 },
		{ config_id = 179014, gadget_id = 70690001, pos = { x = 216.690, y = 215.391, z = 290.989 }, rot = { x = 347.336, y = 73.826, z = 2.260 }, level = 20, area_id = 402 },
		{ config_id = 179015, gadget_id = 70690001, pos = { x = 207.245, y = 216.033, z = 290.001 }, rot = { x = 347.139, y = 84.030, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 179016, gadget_id = 70690001, pos = { x = 227.107, y = 212.623, z = 312.642 }, rot = { x = 330.412, y = 316.963, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 179017, gadget_id = 70690001, pos = { x = 220.125, y = 214.946, z = 320.394 }, rot = { x = 336.508, y = 306.066, z = 357.444 }, level = 20, area_id = 402 },
		{ config_id = 179018, gadget_id = 70690001, pos = { x = 208.123, y = 131.700, z = 327.715 }, rot = { x = 351.360, y = 266.883, z = 359.095 }, level = 20, area_id = 402 },
		{ config_id = 179019, gadget_id = 70690001, pos = { x = 196.980, y = 131.639, z = 327.481 }, rot = { x = 343.245, y = 223.261, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 179020, gadget_id = 70690001, pos = { x = 190.810, y = 138.808, z = 320.928 }, rot = { x = 343.245, y = 223.261, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 179021, gadget_id = 70690001, pos = { x = 189.228, y = 215.576, z = 295.188 }, rot = { x = 13.987, y = 120.406, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 179022, gadget_id = 70690001, pos = { x = 197.571, y = 141.735, z = 290.294 }, rot = { x = 11.032, y = 91.735, z = 0.000 }, level = 20, area_id = 402 }
	},
	triggers = {
		{ config_id = 1179023, name = "GADGET_STATE_CHANGE_179023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_179023", action = "action_EVENT_GADGET_STATE_CHANGE_179023", trigger_count = 0 },
		{ config_id = 1179024, name = "GADGET_STATE_CHANGE_179024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_179024", action = "action_EVENT_GADGET_STATE_CHANGE_179024", trigger_count = 0 },
		{ config_id = 1179025, name = "VARIABLE_CHANGE_179025", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_179025", action = "action_EVENT_VARIABLE_CHANGE_179025", trigger_count = 0 },
		{ config_id = 1179026, name = "TIME_AXIS_PASS_179026", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_179026", action = "action_EVENT_TIME_AXIS_PASS_179026", trigger_count = 0 },
		{ config_id = 1179027, name = "TIME_AXIS_PASS_179027", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_179027", action = "action_EVENT_TIME_AXIS_PASS_179027", trigger_count = 0 },
		{ config_id = 1179028, name = "VARIABLE_CHANGE_179028", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_179028", action = "action_EVENT_VARIABLE_CHANGE_179028", trigger_count = 0 },
		{ config_id = 1179029, name = "TIME_AXIS_PASS_179029", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_179029", action = "action_EVENT_TIME_AXIS_PASS_179029", trigger_count = 0 },
		{ config_id = 1179030, name = "TIME_AXIS_PASS_179030", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_179030", action = "action_EVENT_TIME_AXIS_PASS_179030", trigger_count = 0 }
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
		-- description = 0,
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

require "V2_8/TransferFlower"
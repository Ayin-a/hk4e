-- 基础信息
local base_info = {
	group_id = 220133061
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
		{ config_id = 61001, gadget_id = 70690001, pos = { x = 4350.821, y = 542.257, z = 227.540 }, rot = { x = 342.675, y = 238.137, z = 357.168 }, level = 1 },
		{ config_id = 61002, gadget_id = 70690001, pos = { x = 4343.089, y = 545.575, z = 220.442 }, rot = { x = 343.183, y = 227.266, z = 359.889 }, level = 1 },
		{ config_id = 61003, gadget_id = 70310171, pos = { x = 4361.946, y = 536.556, z = 227.816 }, rot = { x = 357.998, y = 341.774, z = 353.553 }, level = 20, state = GadgetState.GearStart, persistent = true, interact_id = 64 },
		{ config_id = 61004, gadget_id = 70310166, pos = { x = 4359.771, y = 536.276, z = 229.903 }, rot = { x = 352.376, y = 223.899, z = 349.682 }, level = 20, persistent = true, worktop_config = { init_options = { 54 } } },
		{ config_id = 61005, gadget_id = 70690001, pos = { x = 4333.947, y = 549.336, z = 211.997 }, rot = { x = 344.032, y = 225.198, z = 359.899 }, level = 1 },
		{ config_id = 61006, gadget_id = 70690001, pos = { x = 4325.078, y = 552.912, z = 203.192 }, rot = { x = 345.284, y = 222.260, z = 359.913 }, level = 1 },
		{ config_id = 61007, gadget_id = 70690001, pos = { x = 4316.626, y = 556.214, z = 193.887 }, rot = { x = 347.596, y = 217.123, z = 359.937 }, level = 1 },
		{ config_id = 61008, gadget_id = 70690001, pos = { x = 4308.969, y = 559.004, z = 183.772 }, rot = { x = 353.178, y = 204.686, z = -0.005 }, level = 1 },
		{ config_id = 61009, gadget_id = 70690001, pos = { x = 4304.937, y = 560.517, z = 177.160 }, rot = { x = 352.535, y = 214.059, z = 359.952 }, level = 1 },
		{ config_id = 61010, gadget_id = 70690001, pos = { x = 4297.717, y = 562.206, z = 166.482 }, rot = { x = 351.270, y = 213.689, z = 359.953 }, level = 1 },
		{ config_id = 61011, gadget_id = 70690027, pos = { x = 4357.718, y = 536.947, z = 228.251 }, rot = { x = 61.114, y = 215.531, z = 342.152 }, level = 20 }
	},
	triggers = {
		{ config_id = 1061022, name = "GADGET_STATE_CHANGE_61022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_61022", action = "action_EVENT_GADGET_STATE_CHANGE_61022", trigger_count = 0 },
		{ config_id = 1061023, name = "GADGET_STATE_CHANGE_61023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_61023", action = "action_EVENT_GADGET_STATE_CHANGE_61023", trigger_count = 0 },
		{ config_id = 1061024, name = "VARIABLE_CHANGE_61024", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_61024", action = "action_EVENT_VARIABLE_CHANGE_61024", trigger_count = 0 },
		{ config_id = 1061025, name = "TIME_AXIS_PASS_61025", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_61025", action = "action_EVENT_TIME_AXIS_PASS_61025", trigger_count = 0 },
		{ config_id = 1061026, name = "TIME_AXIS_PASS_61026", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_61026", action = "action_EVENT_TIME_AXIS_PASS_61026", trigger_count = 0 },
		{ config_id = 1061027, name = "VARIABLE_CHANGE_61027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_61027", action = "action_EVENT_VARIABLE_CHANGE_61027", trigger_count = 0 },
		{ config_id = 1061028, name = "TIME_AXIS_PASS_61028", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_61028", action = "action_EVENT_TIME_AXIS_PASS_61028", trigger_count = 0 },
		{ config_id = 1061029, name = "TIME_AXIS_PASS_61029", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_61029", action = "action_EVENT_TIME_AXIS_PASS_61029", trigger_count = 0 }
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
	},
	{
		-- suite_id = 3,
		-- description = 102,
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
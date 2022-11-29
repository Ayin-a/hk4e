-- 基础信息
local base_info = {
	group_id = 199001123
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
	[123001] = { config_id = 123001, gadget_id = 70690001, pos = { x = 233.858, y = 205.606, z = 339.320 }, rot = { x = 347.828, y = 48.727, z = 358.055 }, level = 20, area_id = 402 },
	[123002] = { config_id = 123002, gadget_id = 70690001, pos = { x = 242.850, y = 208.287, z = 347.807 }, rot = { x = 348.502, y = 60.980, z = 355.533 }, level = 20, area_id = 402 },
	[123003] = { config_id = 123003, gadget_id = 70310171, pos = { x = 223.739, y = 203.339, z = 335.682 }, rot = { x = 352.269, y = 44.000, z = 359.594 }, level = 20, state = GadgetState.GearStart, persistent = true, interact_id = 64, area_id = 402 },
	-- 大花-水平转动
	[123004] = { config_id = 123004, gadget_id = 70310169, pos = { x = 228.302, y = 202.625, z = 334.505 }, rot = { x = 347.828, y = 48.727, z = 358.055 }, level = 20, area_id = 402 },
	[123005] = { config_id = 123005, gadget_id = 70690001, pos = { x = 252.951, y = 210.135, z = 353.455 }, rot = { x = 353.622, y = 60.578, z = 355.595 }, level = 20, area_id = 402 },
	[123006] = { config_id = 123006, gadget_id = 70690001, pos = { x = 269.692, y = 206.984, z = 365.986 }, rot = { x = 21.965, y = 58.319, z = 355.279 }, level = 20, area_id = 402 },
	[123007] = { config_id = 123007, gadget_id = 70690001, pos = { x = 285.745, y = 199.376, z = 375.894 }, rot = { x = 21.965, y = 58.319, z = 355.279 }, level = 20, area_id = 402 },
	[123008] = { config_id = 123008, gadget_id = 70690001, pos = { x = 303.553, y = 191.112, z = 385.587 }, rot = { x = 22.381, y = 66.303, z = 358.297 }, level = 20, area_id = 402 },
	[123011] = { config_id = 123011, gadget_id = 70310341, pos = { x = 227.693, y = 204.247, z = 333.890 }, rot = { x = 347.828, y = 48.727, z = 358.055 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- if big_flower==1 and 花大=0
	{ config_id = 1123025, name = "VARIABLE_CHANGE_123025", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_123025", action = "action_EVENT_VARIABLE_CHANGE_123025", trigger_count = 0 },
	-- WindTimeA
	{ config_id = 1123026, name = "TIME_AXIS_PASS_123026", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_123026", action = "action_EVENT_TIME_AXIS_PASS_123026", trigger_count = 0 },
	-- WindTimeA
	{ config_id = 1123027, name = "TIME_AXIS_PASS_123027", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_123027", action = "action_EVENT_TIME_AXIS_PASS_123027", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 123012, gadget_id = 70690027, pos = { x = 230.045, y = 206.179, z = 334.077 }, rot = { x = 77.739, y = 123.790, z = 1.233 }, level = 20, area_id = 402 },
		{ config_id = 123014, gadget_id = 70690001, pos = { x = 250.399, y = 208.703, z = 349.773 }, rot = { x = 347.336, y = 250.289, z = 2.260 }, level = 20, area_id = 402 },
		{ config_id = 123015, gadget_id = 70690001, pos = { x = 259.764, y = 206.535, z = 351.341 }, rot = { x = 347.139, y = 260.493, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 123016, gadget_id = 70690001, pos = { x = 241.337, y = 209.212, z = 327.518 }, rot = { x = 330.412, y = 133.427, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 123017, gadget_id = 70690001, pos = { x = 248.783, y = 214.754, z = 320.213 }, rot = { x = 336.508, y = 122.530, z = 357.444 }, level = 20, area_id = 402 },
		{ config_id = 123018, gadget_id = 70690001, pos = { x = 261.215, y = 219.047, z = 313.645 }, rot = { x = 351.360, y = 83.347, z = 359.095 }, level = 20, area_id = 402 },
		{ config_id = 123019, gadget_id = 70690001, pos = { x = 272.323, y = 220.733, z = 314.566 }, rot = { x = 343.245, y = 39.725, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 123020, gadget_id = 70690001, pos = { x = 278.074, y = 223.443, z = 321.488 }, rot = { x = 343.245, y = 39.725, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 123021, gadget_id = 70690001, pos = { x = 278.066, y = 210.831, z = 347.275 }, rot = { x = 13.987, y = 296.870, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 123022, gadget_id = 70690001, pos = { x = 269.440, y = 208.422, z = 351.645 }, rot = { x = 11.032, y = 268.199, z = 0.000 }, level = 20, area_id = 402 }
	},
	triggers = {
		{ config_id = 1123023, name = "GADGET_STATE_CHANGE_123023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_123023", action = "action_EVENT_GADGET_STATE_CHANGE_123023", trigger_count = 0 },
		{ config_id = 1123024, name = "GADGET_STATE_CHANGE_123024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_123024", action = "action_EVENT_GADGET_STATE_CHANGE_123024", trigger_count = 0 },
		{ config_id = 1123028, name = "VARIABLE_CHANGE_123028", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_123028", action = "action_EVENT_VARIABLE_CHANGE_123028", trigger_count = 0 },
		{ config_id = 1123029, name = "TIME_AXIS_PASS_123029", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_123029", action = "action_EVENT_TIME_AXIS_PASS_123029", trigger_count = 0 },
		{ config_id = 1123030, name = "TIME_AXIS_PASS_123030", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_123030", action = "action_EVENT_TIME_AXIS_PASS_123030", trigger_count = 0 }
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
		gadgets = { 123003, 123004 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_123025", "TIME_AXIS_PASS_123026", "TIME_AXIS_PASS_123027" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 0,
		monsters = { },
		gadgets = { 123001, 123002, 123005, 123006, 123007, 123008, 123011 },
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

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_123025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"big_flower"为1
	if ScriptLib.GetGroupVariableValue(context, "big_flower") ~= 1 then
			return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 199001123, 123004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_123025(context, evt)
	-- 创建标识为"WindTimeA"，时间节点为{1,20}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "WindTimeA", {1,20}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_123026(context, evt)
	if "WindTimeA" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_123026(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001123, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_123027(context, evt)
	if "WindTimeA" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_123027(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001123, 2)
	
	-- 变量"big_flower"赋值为0
	ScriptLib.SetGroupVariableValue(context, "big_flower", 0)
	
	return 0
end

require "V2_8/TransferFlower"
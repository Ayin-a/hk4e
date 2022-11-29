-- 基础信息
local base_info = {
	group_id = 199001056
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
	[56003] = { config_id = 56003, gadget_id = 70690001, pos = { x = 312.312, y = 246.128, z = 180.142 }, rot = { x = 339.097, y = 226.511, z = 0.000 }, level = 20, area_id = 402 },
	[56004] = { config_id = 56004, gadget_id = 70690001, pos = { x = 303.163, y = 249.122, z = 171.302 }, rot = { x = 337.537, y = 223.333, z = 0.000 }, level = 20, area_id = 402 },
	[56005] = { config_id = 56005, gadget_id = 70310171, pos = { x = 321.104, y = 240.661, z = 186.337 }, rot = { x = 349.867, y = 227.553, z = 359.591 }, level = 20, persistent = true, interact_id = 64, area_id = 402 },
	-- 大花-水平转动
	[56006] = { config_id = 56006, gadget_id = 70310166, pos = { x = 316.762, y = 241.231, z = 186.989 }, rot = { x = 347.737, y = 217.326, z = 1.233 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 },
	[56008] = { config_id = 56008, gadget_id = 70690001, pos = { x = 295.330, y = 251.280, z = 160.308 }, rot = { x = 344.743, y = 177.870, z = 358.871 }, level = 20, area_id = 402 },
	[56009] = { config_id = 56009, gadget_id = 70690001, pos = { x = 296.416, y = 253.252, z = 147.095 }, rot = { x = 343.245, y = 132.808, z = 0.000 }, level = 20, area_id = 402 },
	[56011] = { config_id = 56011, gadget_id = 70690001, pos = { x = 327.929, y = 247.150, z = 140.378 }, rot = { x = 13.987, y = 29.954, z = 0.000 }, level = 20, area_id = 402 },
	[56013] = { config_id = 56013, gadget_id = 70690001, pos = { x = 333.533, y = 243.428, z = 155.109 }, rot = { x = 347.161, y = 350.167, z = 0.759 }, level = 20, area_id = 402 },
	[56014] = { config_id = 56014, gadget_id = 70310341, pos = { x = 317.053, y = 242.942, z = 187.374 }, rot = { x = 335.227, y = 216.000, z = 0.288 }, level = 20, area_id = 402 },
	[56015] = { config_id = 56015, gadget_id = 70310341, pos = { x = 316.503, y = 242.535, z = 187.171 }, rot = { x = 337.848, y = 306.015, z = 0.283 }, level = 20, area_id = 402 },
	[56016] = { config_id = 56016, gadget_id = 70690001, pos = { x = 331.912, y = 245.338, z = 167.871 }, rot = { x = 347.276, y = 345.067, z = 1.888 }, level = 20, area_id = 402 },
	[56017] = { config_id = 56017, gadget_id = 70690001, pos = { x = 293.626, y = 246.025, z = 173.918 }, rot = { x = 347.336, y = 73.826, z = 2.260 }, level = 20, area_id = 402 },
	[56019] = { config_id = 56019, gadget_id = 70690001, pos = { x = 309.921, y = 245.686, z = 191.017 }, rot = { x = 334.489, y = 316.963, z = 0.000 }, level = 20, area_id = 402 },
	[56021] = { config_id = 56021, gadget_id = 70690001, pos = { x = 297.062, y = 249.880, z = 203.322 }, rot = { x = 336.508, y = 306.066, z = 357.444 }, level = 20, area_id = 402 },
	[56022] = { config_id = 56022, gadget_id = 70690001, pos = { x = 284.846, y = 254.205, z = 210.633 }, rot = { x = 351.360, y = 266.883, z = 359.095 }, level = 20, area_id = 402 },
	[56023] = { config_id = 56023, gadget_id = 70690001, pos = { x = 269.394, y = 257.845, z = 205.605 }, rot = { x = 343.245, y = 223.261, z = 0.000 }, level = 20, area_id = 402 },
	[56025] = { config_id = 56025, gadget_id = 70690001, pos = { x = 265.647, y = 248.302, z = 178.422 }, rot = { x = 13.987, y = 120.406, z = 0.000 }, level = 20, area_id = 402 },
	[56026] = { config_id = 56026, gadget_id = 70690001, pos = { x = 277.327, y = 245.819, z = 173.541 }, rot = { x = 11.032, y = 91.735, z = 0.000 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 喷风中途改102
	{ config_id = 1056001, name = "GADGET_STATE_CHANGE_56001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_56001", action = "action_EVENT_GADGET_STATE_CHANGE_56001", trigger_count = 0 },
	-- 喷风中途改0
	{ config_id = 1056002, name = "GADGET_STATE_CHANGE_56002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_56002", action = "action_EVENT_GADGET_STATE_CHANGE_56002", trigger_count = 0 },
	-- if big_flower==1 and 花大=0
	{ config_id = 1056027, name = "VARIABLE_CHANGE_56027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_56027", action = "action_EVENT_VARIABLE_CHANGE_56027", trigger_count = 0 },
	-- WindTimeA
	{ config_id = 1056029, name = "TIME_AXIS_PASS_56029", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_56029", action = "action_EVENT_TIME_AXIS_PASS_56029", trigger_count = 0 },
	-- if big_flower==1 and 花大=102
	{ config_id = 1056030, name = "VARIABLE_CHANGE_56030", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_56030", action = "action_EVENT_VARIABLE_CHANGE_56030", trigger_count = 0 },
	-- WindTimeB
	{ config_id = 1056032, name = "TIME_AXIS_PASS_56032", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_56032", action = "action_EVENT_TIME_AXIS_PASS_56032", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 56010, gadget_id = 70690001, pos = { x = 300.906, y = 265.525, z = 142.936 }, rot = { x = 343.245, y = 132.808, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 56012, gadget_id = 70690001, pos = { x = 343.076, y = 241.788, z = 163.681 }, rot = { x = 11.032, y = 1.283, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 56018, gadget_id = 70690001, pos = { x = 278.666, y = 268.145, z = 172.353 }, rot = { x = 347.139, y = 84.030, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 56024, gadget_id = 70690001, pos = { x = 270.318, y = 273.220, z = 206.587 }, rot = { x = 343.245, y = 223.261, z = 0.000 }, level = 20, area_id = 402 }
	},
	triggers = {
		{ config_id = 1056028, name = "TIME_AXIS_PASS_56028", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_56028", action = "action_EVENT_TIME_AXIS_PASS_56028", trigger_count = 0 },
		{ config_id = 1056031, name = "TIME_AXIS_PASS_56031", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_56031", action = "action_EVENT_TIME_AXIS_PASS_56031", trigger_count = 0 }
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
		gadgets = { 56005, 56006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_56001", "GADGET_STATE_CHANGE_56002", "VARIABLE_CHANGE_56027", "TIME_AXIS_PASS_56029", "VARIABLE_CHANGE_56030", "TIME_AXIS_PASS_56032" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 0,
		monsters = { },
		gadgets = { 56003, 56004, 56008, 56009, 56011, 56013, 56014, 56016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 102,
		monsters = { },
		gadgets = { 56015, 56017, 56019, 56021, 56022, 56023, 56025, 56026 },
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
function condition_EVENT_GADGET_STATE_CHANGE_56001(context, evt)
	if 56006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"big_flower"为1
	if ScriptLib.GetGroupVariableValue(context, "big_flower") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_56001(context, evt)
	-- 变量"big_flower"赋值为0
	ScriptLib.SetGroupVariableValue(context, "big_flower", 0)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001056, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_56002(context, evt)
	if 56006 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"big_flower"为1
	if ScriptLib.GetGroupVariableValue(context, "big_flower") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_56002(context, evt)
	-- 变量"big_flower"赋值为0
	ScriptLib.SetGroupVariableValue(context, "big_flower", 0)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001056, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_56027(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"big_flower"为1
	if ScriptLib.GetGroupVariableValue(context, "big_flower") ~= 1 then
			return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 199001056, 56006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_56027(context, evt)
	-- 创建标识为"WindTimeA"，时间节点为{20}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "WindTimeA", {20}, false)
	
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001056, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_56029(context, evt)
	if "WindTimeA" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_56029(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001056, 2)
	
	-- 变量"big_flower"赋值为0
	ScriptLib.SetGroupVariableValue(context, "big_flower", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_56030(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"big_flower"为1
	if ScriptLib.GetGroupVariableValue(context, "big_flower") ~= 1 then
			return false
	end
	
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 199001056, 56006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_56030(context, evt)
	-- 创建标识为"WindTimeB"，时间节点为{20}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "WindTimeB", {20}, false)
	
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001056, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_56032(context, evt)
	if "WindTimeB" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_56032(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001056, 3)
	
	-- 变量"big_flower"赋值为0
	ScriptLib.SetGroupVariableValue(context, "big_flower", 0)
	
	return 0
end

require "V2_8/TransferFlower"
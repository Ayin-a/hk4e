-- 基础信息
local base_info = {
	group_id = 199001193
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
	-- 大花-水平转动
	[193002] = { config_id = 193002, gadget_id = 70310169, pos = { x = 159.600, y = 120.292, z = 388.933 }, rot = { x = 353.925, y = 82.173, z = 355.475 }, level = 20, area_id = 402 },
	[193003] = { config_id = 193003, gadget_id = 70310341, pos = { x = 159.280, y = 121.629, z = 388.865 }, rot = { x = 339.352, y = 83.392, z = 355.191 }, level = 20, area_id = 402 },
	[193005] = { config_id = 193005, gadget_id = 70690001, pos = { x = 167.715, y = 124.045, z = 389.994 }, rot = { x = 337.475, y = 83.306, z = 355.427 }, level = 20, area_id = 402 },
	[193006] = { config_id = 193006, gadget_id = 70690001, pos = { x = 178.109, y = 128.385, z = 391.214 }, rot = { x = 337.475, y = 83.306, z = 355.427 }, level = 20, area_id = 402 },
	[193022] = { config_id = 193022, gadget_id = 70310170, pos = { x = 154.623, y = 120.267, z = 392.768 }, rot = { x = 0.000, y = 128.537, z = 0.000 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- if big_flower==1 and 花大=0
	{ config_id = 1193016, name = "VARIABLE_CHANGE_193016", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_193016", action = "action_EVENT_VARIABLE_CHANGE_193016", trigger_count = 0 },
	-- WindTimeA
	{ config_id = 1193017, name = "TIME_AXIS_PASS_193017", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_193017", action = "action_EVENT_TIME_AXIS_PASS_193017", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 193001, gadget_id = 70310171, pos = { x = 154.051, y = 120.244, z = 389.975 }, rot = { x = 351.550, y = 79.281, z = 3.516 }, level = 20, persistent = true, interact_id = 64, area_id = 402 },
		{ config_id = 193004, gadget_id = 70690027, pos = { x = 152.379, y = 121.352, z = 392.986 }, rot = { x = 77.737, y = 307.326, z = 1.233 }, level = 20, area_id = 402 },
		{ config_id = 193007, gadget_id = 70690001, pos = { x = 206.656, y = 133.994, z = 393.863 }, rot = { x = 330.412, y = 316.963, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 193008, gadget_id = 70690001, pos = { x = 134.532, y = 202.880, z = 407.981 }, rot = { x = 336.508, y = 306.066, z = 357.444 }, level = 20, area_id = 402 },
		{ config_id = 193009, gadget_id = 70690001, pos = { x = 122.530, y = 119.634, z = 415.303 }, rot = { x = 351.360, y = 266.883, z = 359.095 }, level = 20, area_id = 402 },
		{ config_id = 193010, gadget_id = 70690001, pos = { x = 111.387, y = 119.573, z = 415.068 }, rot = { x = 343.245, y = 223.261, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 193011, gadget_id = 70690001, pos = { x = 105.217, y = 126.741, z = 408.515 }, rot = { x = 343.245, y = 223.261, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 193012, gadget_id = 70690001, pos = { x = 103.635, y = 203.510, z = 382.776 }, rot = { x = 13.987, y = 120.406, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 193013, gadget_id = 70690001, pos = { x = 111.637, y = 130.361, z = 381.709 }, rot = { x = 11.032, y = 94.834, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 193023, gadget_id = 70690001, pos = { x = 188.404, y = 137.526, z = 360.565 }, rot = { x = 343.242, y = 68.669, z = 359.622 }, level = 20, area_id = 402 },
		{ config_id = 193024, gadget_id = 70690001, pos = { x = 198.455, y = 141.558, z = 366.830 }, rot = { x = 341.834, y = 82.939, z = 355.554 }, level = 20, area_id = 402 },
		{ config_id = 193025, gadget_id = 70690001, pos = { x = 202.847, y = 145.523, z = 372.202 }, rot = { x = 313.113, y = 86.075, z = 353.813 }, level = 20, area_id = 402 }
	},
	triggers = {
		{ config_id = 1193014, name = "GADGET_STATE_CHANGE_193014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_193014", action = "action_EVENT_GADGET_STATE_CHANGE_193014", trigger_count = 0 },
		{ config_id = 1193015, name = "GADGET_STATE_CHANGE_193015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_193015", action = "action_EVENT_GADGET_STATE_CHANGE_193015", trigger_count = 0 },
		{ config_id = 1193018, name = "TIME_AXIS_PASS_193018", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_193018", action = "action_EVENT_TIME_AXIS_PASS_193018", trigger_count = 0 },
		{ config_id = 1193019, name = "VARIABLE_CHANGE_193019", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_193019", action = "action_EVENT_VARIABLE_CHANGE_193019", trigger_count = 0 },
		{ config_id = 1193020, name = "TIME_AXIS_PASS_193020", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_193020", action = "action_EVENT_TIME_AXIS_PASS_193020", trigger_count = 0 },
		{ config_id = 1193021, name = "TIME_AXIS_PASS_193021", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_193021", action = "action_EVENT_TIME_AXIS_PASS_193021", trigger_count = 0 }
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
		gadgets = { 193002, 193022 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_193016", "TIME_AXIS_PASS_193017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 193003, 193005, 193006 },
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
function condition_EVENT_VARIABLE_CHANGE_193016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"big_flower"为1
	if ScriptLib.GetGroupVariableValue(context, "big_flower") ~= 1 then
			return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 199001193, 193002) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_193016(context, evt)
	-- 创建标识为"WindTimeA"，时间节点为{20}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "WindTimeA", {20}, false)
	
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001193, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_193017(context, evt)
	if "WindTimeA" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_193017(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001193, 2)
	
	-- 将本组内变量名为 "big_flower" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "big_flower", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_8/TransferFlower"
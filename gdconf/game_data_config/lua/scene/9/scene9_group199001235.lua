-- 基础信息
local base_info = {
	group_id = 199001235
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
	[235004] = {0,303},

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
	[235001] = { config_id = 235001, gadget_id = 70310341, pos = { x = 193.603, y = 145.203, z = 465.613 }, rot = { x = 284.745, y = 12.143, z = 336.690 }, level = 20, area_id = 402 },
	[235002] = { config_id = 235002, gadget_id = 70690001, pos = { x = 194.121, y = 154.356, z = 468.074 }, rot = { x = 284.745, y = 12.143, z = 336.690 }, level = 1, area_id = 402 },
	-- 大花-0  303
	[235004] = { config_id = 235004, gadget_id = 70310166, pos = { x = 192.991, y = 145.533, z = 465.453 }, rot = { x = 1.555, y = 11.664, z = 3.557 }, level = 20, persistent = true, worktop_config = { init_options = { 54 } }, area_id = 402 },
	[235009] = { config_id = 235009, gadget_id = 70310341, pos = { x = 193.078, y = 147.467, z = 465.101 }, rot = { x = 1.555, y = 11.664, z = 3.557 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 喷风中途改303(有报错？
	{ config_id = 1235013, name = "GADGET_STATE_CHANGE_235013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_235013", trigger_count = 0 },
	-- 喷风中途改0
	{ config_id = 1235014, name = "GADGET_STATE_CHANGE_235014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_235014", action = "action_EVENT_GADGET_STATE_CHANGE_235014", trigger_count = 0 },
	-- if big_flower==1 and 花大=0
	{ config_id = 1235015, name = "VARIABLE_CHANGE_235015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_235015", action = "action_EVENT_VARIABLE_CHANGE_235015", trigger_count = 0 },
	-- WindTimeA
	{ config_id = 1235016, name = "TIME_AXIS_PASS_235016", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_235016", action = "action_EVENT_TIME_AXIS_PASS_235016", trigger_count = 0 },
	-- WindTimeA
	{ config_id = 1235017, name = "TIME_AXIS_PASS_235017", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_235017", action = "action_EVENT_TIME_AXIS_PASS_235017", trigger_count = 0 },
	-- if big_flower==1 and 花大=303
	{ config_id = 1235018, name = "VARIABLE_CHANGE_235018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE_235018", trigger_count = 0 },
	-- WindTimeB
	{ config_id = 1235019, name = "TIME_AXIS_PASS_235019", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_235019", action = "action_EVENT_TIME_AXIS_PASS_235019", trigger_count = 0 },
	-- WindTimeB
	{ config_id = 1235020, name = "TIME_AXIS_PASS_235020", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_235020", action = "action_EVENT_TIME_AXIS_PASS_235020", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 235003, gadget_id = 70310171, pos = { x = 177.436, y = 145.575, z = 468.727 }, rot = { x = 349.867, y = 184.913, z = 359.591 }, level = 20, persistent = true, interact_id = 64, area_id = 402 },
		{ config_id = 235006, gadget_id = 70690001, pos = { x = 194.258, y = 164.001, z = 468.396 }, rot = { x = 277.225, y = 258.225, z = 4.220 }, level = 1, area_id = 402 },
		{ config_id = 235010, gadget_id = 70310170, pos = { x = 192.726, y = 146.253, z = 467.627 }, rot = { x = 0.000, y = 85.362, z = 0.000 }, level = 20, area_id = 402 },
		{ config_id = 235011, gadget_id = 70310170, pos = { x = 198.646, y = 146.241, z = 467.776 }, rot = { x = 1.746, y = 203.197, z = 0.998 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_SUPER_NEARBY, area_id = 402 },
		{ config_id = 235012, gadget_id = 70310170, pos = { x = 195.207, y = 146.446, z = 459.973 }, rot = { x = 358.600, y = 257.470, z = 358.540 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_SUPER_NEARBY, area_id = 402 }
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
		gadgets = { 235004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_235013", "GADGET_STATE_CHANGE_235014", "VARIABLE_CHANGE_235015", "TIME_AXIS_PASS_235016", "TIME_AXIS_PASS_235017", "VARIABLE_CHANGE_235018", "TIME_AXIS_PASS_235019", "TIME_AXIS_PASS_235020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 235009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 235001, 235002 },
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

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_235013(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 199001235, 235004) == 303 and ScriptLib.GetGroupVariableValue(context, "big_flower") == 1 then
		ScriptLib.SetGroupVariableValue(context, "big_flower", 0)
		
		ScriptLib.RemoveExtraGroupSuite(context, 199001235, 2)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_235014(context, evt)
	if 235004 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"big_flower"为1
	if ScriptLib.GetGroupVariableValue(context, "big_flower") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_235014(context, evt)
	-- 变量"big_flower"赋值为0
	ScriptLib.SetGroupVariableValue(context, "big_flower", 0)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001235, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_235015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"big_flower"为1
	if ScriptLib.GetGroupVariableValue(context, "big_flower") ~= 1 then
			return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 199001235, 235004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_235015(context, evt)
	-- 创建标识为"WindTimeA"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "WindTimeA", {1,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_235016(context, evt)
	if "WindTimeA" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_235016(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001235, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_235017(context, evt)
	if "WindTimeA" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_235017(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001235, 2)
	
	-- 变量"big_flower"赋值为0
	ScriptLib.SetGroupVariableValue(context, "big_flower", 0)
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_235018(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if ScriptLib.GetGroupVariableValue(context, "big_flower") == 1 and ScriptLib.GetGadgetStateByConfigId(context, 199001235, 235004) == 303 then
		ScriptLib.InitTimeAxis(context, "WindTimeB", {1,45}, false)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_235019(context, evt)
	if "WindTimeB" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_235019(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001235, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_235020(context, evt)
	if "WindTimeB" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_235020(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001235, 3)
	
	-- 变量"big_flower"赋值为0
	ScriptLib.SetGroupVariableValue(context, "big_flower", 0)
	
	return 0
end

require "V2_8/TransferFlower"
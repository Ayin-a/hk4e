-- 基础信息
local base_info = {
	group_id = 199001133
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
	[133004] = {0,303},

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
	[133001] = { config_id = 133001, gadget_id = 70310341, pos = { x = 204.395, y = 122.635, z = 190.938 }, rot = { x = 279.712, y = 175.181, z = 356.063 }, level = 20, area_id = 402 },
	[133002] = { config_id = 133002, gadget_id = 70690001, pos = { x = 204.517, y = 131.169, z = 189.482 }, rot = { x = 279.712, y = 175.181, z = 356.063 }, level = 1, area_id = 402 },
	-- 大花-0  303
	[133004] = { config_id = 133004, gadget_id = 70310166, pos = { x = 204.472, y = 121.139, z = 190.813 }, rot = { x = 357.436, y = 173.935, z = 357.086 }, level = 20, persistent = true, worktop_config = { init_options = { 54 } }, area_id = 402 },
	[133006] = { config_id = 133006, gadget_id = 70690013, pos = { x = 226.963, y = 145.158, z = 169.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	[133007] = { config_id = 133007, gadget_id = 70690001, pos = { x = 204.389, y = 139.364, z = 188.440 }, rot = { x = 282.358, y = 84.121, z = 0.000 }, level = 1, area_id = 402 },
	[133008] = { config_id = 133008, gadget_id = 70690001, pos = { x = 206.303, y = 148.145, z = 188.637 }, rot = { x = 297.876, y = 116.825, z = 0.000 }, level = 1, area_id = 402 },
	[133009] = { config_id = 133009, gadget_id = 70690001, pos = { x = 209.975, y = 155.924, z = 186.781 }, rot = { x = 350.403, y = 132.077, z = 0.000 }, level = 1, area_id = 402 },
	[133011] = { config_id = 133011, gadget_id = 70310341, pos = { x = 204.314, y = 122.893, z = 191.444 }, rot = { x = 357.436, y = 173.935, z = 357.086 }, level = 20, area_id = 402 },
	[133031] = { config_id = 133031, gadget_id = 70310170, pos = { x = 209.826, y = 120.943, z = 200.125 }, rot = { x = 0.000, y = 85.362, z = 0.000 }, level = 20, area_id = 402 },
	[133032] = { config_id = 133032, gadget_id = 70310170, pos = { x = 215.747, y = 120.932, z = 200.274 }, rot = { x = 1.746, y = 203.197, z = 0.998 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_SUPER_NEARBY, area_id = 402 },
	[133033] = { config_id = 133033, gadget_id = 70310170, pos = { x = 212.307, y = 121.136, z = 192.471 }, rot = { x = 358.600, y = 257.470, z = 358.540 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_SUPER_NEARBY, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 喷风中途改303(有报错？
	{ config_id = 1133023, name = "GADGET_STATE_CHANGE_133023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_133023", trigger_count = 0 },
	-- 喷风中途改0
	{ config_id = 1133024, name = "GADGET_STATE_CHANGE_133024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_133024", action = "action_EVENT_GADGET_STATE_CHANGE_133024", trigger_count = 0 },
	-- if big_flower==1 and 花大=0
	{ config_id = 1133025, name = "VARIABLE_CHANGE_133025", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_133025", action = "action_EVENT_VARIABLE_CHANGE_133025", trigger_count = 0 },
	-- WindTimeA
	{ config_id = 1133026, name = "TIME_AXIS_PASS_133026", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_133026", action = "action_EVENT_TIME_AXIS_PASS_133026", trigger_count = 0 },
	-- WindTimeA
	{ config_id = 1133027, name = "TIME_AXIS_PASS_133027", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_133027", action = "action_EVENT_TIME_AXIS_PASS_133027", trigger_count = 0 },
	-- if big_flower==1 and 花大=303
	{ config_id = 1133028, name = "VARIABLE_CHANGE_133028", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE_133028", trigger_count = 0 },
	-- WindTimeB
	{ config_id = 1133029, name = "TIME_AXIS_PASS_133029", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_133029", action = "action_EVENT_TIME_AXIS_PASS_133029", trigger_count = 0 },
	-- WindTimeB
	{ config_id = 1133030, name = "TIME_AXIS_PASS_133030", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_133030", action = "action_EVENT_TIME_AXIS_PASS_133030", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 133003, gadget_id = 70310171, pos = { x = 194.536, y = 120.266, z = 201.225 }, rot = { x = 349.867, y = 184.913, z = 359.591 }, level = 20, persistent = true, interact_id = 64, area_id = 402 }
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
		gadgets = { 133004, 133031, 133032, 133033 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_133023", "GADGET_STATE_CHANGE_133024", "VARIABLE_CHANGE_133025", "TIME_AXIS_PASS_133026", "TIME_AXIS_PASS_133027", "VARIABLE_CHANGE_133028", "TIME_AXIS_PASS_133029", "TIME_AXIS_PASS_133030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 0,
		monsters = { },
		gadgets = { 133011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 303,
		monsters = { },
		gadgets = { 133001, 133002, 133006, 133007, 133008, 133009 },
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
function action_EVENT_GADGET_STATE_CHANGE_133023(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, 199001133, 133004) == 303 and ScriptLib.GetGroupVariableValue(context, "big_flower") == 1 then
		ScriptLib.SetGroupVariableValue(context, "big_flower", 0)
		
		ScriptLib.RemoveExtraGroupSuite(context, 199001133, 2)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_133024(context, evt)
	if 133004 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"big_flower"为1
	if ScriptLib.GetGroupVariableValue(context, "big_flower") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_133024(context, evt)
	-- 变量"big_flower"赋值为0
	ScriptLib.SetGroupVariableValue(context, "big_flower", 0)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001133, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_133025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"big_flower"为1
	if ScriptLib.GetGroupVariableValue(context, "big_flower") ~= 1 then
			return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 199001133, 133004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_133025(context, evt)
	-- 创建标识为"WindTimeA"，时间节点为{1,5}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "WindTimeA", {1,5}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_133026(context, evt)
	if "WindTimeA" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_133026(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001133, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_133027(context, evt)
	if "WindTimeA" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_133027(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001133, 2)
	
	-- 变量"big_flower"赋值为0
	ScriptLib.SetGroupVariableValue(context, "big_flower", 0)
	
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_133028(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	if ScriptLib.GetGroupVariableValue(context, "big_flower") == 1 and ScriptLib.GetGadgetStateByConfigId(context, 199001133, 133004) == 303 then
		ScriptLib.InitTimeAxis(context, "WindTimeB", {1,20}, false)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_133029(context, evt)
	if "WindTimeB" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_133029(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001133, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_133030(context, evt)
	if "WindTimeB" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_133030(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001133, 3)
	
	-- 变量"big_flower"赋值为0
	ScriptLib.SetGroupVariableValue(context, "big_flower", 0)
	
	return 0
end

require "V2_8/TransferFlower"
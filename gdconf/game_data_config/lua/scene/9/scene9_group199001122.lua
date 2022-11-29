-- 基础信息
local base_info = {
	group_id = 199001122
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
			[122004] = {0,102},
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
	[122001] = { config_id = 122001, gadget_id = 70690001, pos = { x = 172.962, y = 209.651, z = 258.567 }, rot = { x = 354.291, y = 204.987, z = 15.937 }, level = 20, area_id = 402 },
	[122003] = { config_id = 122003, gadget_id = 70310171, pos = { x = 186.120, y = 208.770, z = 271.430 }, rot = { x = 358.702, y = 204.182, z = 356.647 }, level = 20, persistent = true, interact_id = 64, area_id = 402 },
	-- 大花-水平转动
	[122004] = { config_id = 122004, gadget_id = 70310166, pos = { x = 183.047, y = 208.177, z = 268.913 }, rot = { x = 2.399, y = 217.639, z = 1.206 }, level = 20, worktop_config = { init_options = { 54 } }, area_id = 402 },
	[122005] = { config_id = 122005, gadget_id = 70690001, pos = { x = 163.369, y = 208.693, z = 230.954 }, rot = { x = 14.994, y = 161.927, z = 349.635 }, level = 20, area_id = 402 },
	[122006] = { config_id = 122006, gadget_id = 70690001, pos = { x = 181.572, y = 203.966, z = 205.956 }, rot = { x = 19.901, y = 136.557, z = 344.676 }, level = 20, area_id = 402 },
	[122007] = { config_id = 122007, gadget_id = 70690001, pos = { x = 217.582, y = 192.479, z = 186.517 }, rot = { x = 7.528, y = 101.912, z = 336.169 }, level = 20, area_id = 402 },
	[122011] = { config_id = 122011, gadget_id = 70310341, pos = { x = 183.000, y = 209.809, z = 268.787 }, rot = { x = 352.677, y = 223.045, z = 0.864 }, level = 20, area_id = 402 },
	[122012] = { config_id = 122012, gadget_id = 70310341, pos = { x = 182.452, y = 209.308, z = 268.523 }, rot = { x = 348.299, y = 290.960, z = 2.696 }, level = 20, area_id = 402 },
	[122015] = { config_id = 122015, gadget_id = 70690001, pos = { x = 175.001, y = 212.549, z = 270.788 }, rot = { x = 335.512, y = 314.301, z = 5.846 }, level = 20, area_id = 402 },
	[122016] = { config_id = 122016, gadget_id = 70690001, pos = { x = 167.093, y = 217.582, z = 278.506 }, rot = { x = 342.216, y = 326.811, z = 0.585 }, level = 20, area_id = 402 },
	[122017] = { config_id = 122017, gadget_id = 70690001, pos = { x = 161.746, y = 217.830, z = 289.283 }, rot = { x = 5.481, y = 350.800, z = 348.143 }, level = 20, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 喷风中途改102
	{ config_id = 1122023, name = "GADGET_STATE_CHANGE_122023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_122023", action = "action_EVENT_GADGET_STATE_CHANGE_122023", trigger_count = 0 },
	-- 喷风中途改0
	{ config_id = 1122024, name = "GADGET_STATE_CHANGE_122024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_122024", action = "action_EVENT_GADGET_STATE_CHANGE_122024", trigger_count = 0 },
	-- if big_flower==1 and 花大=0
	{ config_id = 1122025, name = "VARIABLE_CHANGE_122025", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_122025", action = "action_EVENT_VARIABLE_CHANGE_122025", trigger_count = 0 },
	-- WindTimeA
	{ config_id = 1122026, name = "TIME_AXIS_PASS_122026", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_122026", action = "action_EVENT_TIME_AXIS_PASS_122026", trigger_count = 0 },
	-- WindTimeA
	{ config_id = 1122027, name = "TIME_AXIS_PASS_122027", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_122027", action = "action_EVENT_TIME_AXIS_PASS_122027", trigger_count = 0 },
	-- if big_flower==1 and 花大=102
	{ config_id = 1122028, name = "VARIABLE_CHANGE_122028", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_122028", action = "action_EVENT_VARIABLE_CHANGE_122028", trigger_count = 0 },
	-- WindTimeB
	{ config_id = 1122029, name = "TIME_AXIS_PASS_122029", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_122029", action = "action_EVENT_TIME_AXIS_PASS_122029", trigger_count = 0 },
	-- WindTimeB
	{ config_id = 1122030, name = "TIME_AXIS_PASS_122030", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_122030", action = "action_EVENT_TIME_AXIS_PASS_122030", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 122002, gadget_id = 70690001, pos = { x = 151.650, y = 213.107, z = 253.990 }, rot = { x = 5.801, y = 205.200, z = 14.436 }, level = 20, area_id = 402 },
		{ config_id = 122008, gadget_id = 70690001, pos = { x = 180.591, y = 184.638, z = 181.938 }, rot = { x = 20.017, y = 137.012, z = 344.831 }, level = 20, area_id = 402 },
		{ config_id = 122009, gadget_id = 70690001, pos = { x = 207.412, y = 184.622, z = 185.634 }, rot = { x = 20.671, y = 139.670, z = 345.756 }, level = 20, area_id = 402 },
		{ config_id = 122010, gadget_id = 70690001, pos = { x = 187.236, y = 182.109, z = 182.968 }, rot = { x = 22.445, y = 148.127, z = 348.868 }, level = 20, area_id = 402 },
		{ config_id = 122013, gadget_id = 70690001, pos = { x = 177.605, y = 210.144, z = 263.026 }, rot = { x = 352.677, y = 223.045, z = 0.864 }, level = 20, area_id = 402 }
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
		gadgets = { 122003, 122004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_122023", "GADGET_STATE_CHANGE_122024", "VARIABLE_CHANGE_122025", "TIME_AXIS_PASS_122026", "TIME_AXIS_PASS_122027", "VARIABLE_CHANGE_122028", "TIME_AXIS_PASS_122029", "TIME_AXIS_PASS_122030" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 0,
		monsters = { },
		gadgets = { 122001, 122005, 122006, 122007, 122011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 102,
		monsters = { },
		gadgets = { 122012, 122015, 122016, 122017 },
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
function condition_EVENT_GADGET_STATE_CHANGE_122023(context, evt)
	if 122004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	-- 判断变量"big_flower"为1
	if ScriptLib.GetGroupVariableValue(context, "big_flower") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_122023(context, evt)
	-- 变量"big_flower"赋值为0
	ScriptLib.SetGroupVariableValue(context, "big_flower", 0)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001122, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_122024(context, evt)
	if 122004 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	-- 判断变量"big_flower"为1
	if ScriptLib.GetGroupVariableValue(context, "big_flower") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_122024(context, evt)
	-- 变量"big_flower"赋值为0
	ScriptLib.SetGroupVariableValue(context, "big_flower", 0)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001122, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_122025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"big_flower"为1
	if ScriptLib.GetGroupVariableValue(context, "big_flower") ~= 1 then
			return false
	end
	
	if GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 199001122, 122004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_122025(context, evt)
	-- 创建标识为"WindTimeA"，时间节点为{1,20}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "WindTimeA", {1,20}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_122026(context, evt)
	if "WindTimeA" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_122026(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001122, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_122027(context, evt)
	if "WindTimeA" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_122027(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001122, 2)
	
	-- 变量"big_flower"赋值为0
	ScriptLib.SetGroupVariableValue(context, "big_flower", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_122028(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"big_flower"为1
	if ScriptLib.GetGroupVariableValue(context, "big_flower") ~= 1 then
			return false
	end
	
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 199001122, 122004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_122028(context, evt)
	-- 创建标识为"WindTimeB"，时间节点为{1,20}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "WindTimeB", {1,20}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_122029(context, evt)
	if "WindTimeB" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_122029(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001122, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_122030(context, evt)
	if "WindTimeB" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_122030(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001122, 3)
	
	-- 变量"big_flower"赋值为0
	ScriptLib.SetGroupVariableValue(context, "big_flower", 0)
	
	return 0
end

require "V2_8/TransferFlower"
-- 基础信息
local base_info = {
	group_id = 250015023
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 23003, monster_id = 21010701, pos = { x = -122.090, y = 22.966, z = 64.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 23005, monster_id = 21010701, pos = { x = -117.838, y = 22.966, z = 80.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 23010, monster_id = 21020101, pos = { x = -134.879, y = 22.966, z = 80.936 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 23013, monster_id = 21020101, pos = { x = -111.867, y = 22.966, z = 66.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 23017, monster_id = 21010501, pos = { x = -137.880, y = 28.456, z = 60.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 23018, monster_id = 21010501, pos = { x = -107.998, y = 28.456, z = 88.039 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 23001, gadget_id = 70220007, pos = { x = -138.705, y = 22.966, z = 80.426 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 23002, gadget_id = 40200001, pos = { x = -123.243, y = 5.010, z = 39.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 23004, gadget_id = 70300081, pos = { x = -122.357, y = 22.966, z = 89.472 }, rot = { x = 0.590, y = 267.330, z = 2.744 }, level = 1 },
	{ config_id = 23006, gadget_id = 70300081, pos = { x = -128.829, y = 22.966, z = 89.497 }, rot = { x = 357.103, y = 268.222, z = 0.346 }, level = 1 },
	{ config_id = 23007, gadget_id = 70300081, pos = { x = -115.926, y = 22.966, z = 89.843 }, rot = { x = 359.029, y = 272.141, z = 0.049 }, level = 1 },
	{ config_id = 23009, gadget_id = 70220007, pos = { x = -138.639, y = 22.966, z = 75.128 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 23011, gadget_id = 70300081, pos = { x = -109.876, y = 22.966, z = 89.192 }, rot = { x = 359.170, y = 306.389, z = 359.494 }, level = 1 },
	{ config_id = 23012, gadget_id = 70300081, pos = { x = -135.764, y = 22.966, z = 89.057 }, rot = { x = 357.128, y = 264.930, z = 0.512 }, level = 1 },
	{ config_id = 23014, gadget_id = 70300090, pos = { x = -137.306, y = 22.966, z = 61.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 23015, gadget_id = 70300090, pos = { x = -109.250, y = 22.966, z = 88.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 23016, gadget_id = 70350006, pos = { x = -138.006, y = 22.966, z = 75.304 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 23019, gadget_id = 70900007, pos = { x = -111.635, y = 22.966, z = 70.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 23020, gadget_id = 70900007, pos = { x = -136.084, y = 22.966, z = 70.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 23021, gadget_id = 70350006, pos = { x = -138.006, y = 22.966, z = 81.107 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1023008, name = "ANY_MONSTER_DIE_23008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_23008", action = "action_EVENT_ANY_MONSTER_DIE_23008" },
	{ config_id = 1023024, name = "GADGET_STATE_CHANGE_23024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_23024", action = "action_EVENT_GADGET_STATE_CHANGE_23024", trigger_count = 0 },
	{ config_id = 1023028, name = "GADGET_STATE_CHANGE_23028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_23028", action = "action_EVENT_GADGET_STATE_CHANGE_23028", trigger_count = 0 },
	{ config_id = 1023029, name = "GADGET_STATE_CHANGE_23029", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_23029", action = "action_EVENT_GADGET_STATE_CHANGE_23029", trigger_count = 0 },
	{ config_id = 1023030, name = "GADGET_STATE_CHANGE_23030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_23030", action = "action_EVENT_GADGET_STATE_CHANGE_23030", trigger_count = 0 },
	{ config_id = 1023031, name = "TIMER_EVENT_23031", event = EventType.EVENT_TIMER_EVENT, source = "stop23019", condition = "condition_EVENT_TIMER_EVENT_23031", action = "action_EVENT_TIMER_EVENT_23031", trigger_count = 0 },
	{ config_id = 1023032, name = "TIMER_EVENT_23032", event = EventType.EVENT_TIMER_EVENT, source = "stop23020", condition = "condition_EVENT_TIMER_EVENT_23032", action = "action_EVENT_TIMER_EVENT_23032", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "t23019", value = 0, no_refresh = false },
	{ config_id = 2, name = "t23020", value = 0, no_refresh = false },
	{ config_id = 3, name = "ison", value = 0, no_refresh = false }
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
		monsters = { 23003, 23005 },
		gadgets = { 23001, 23002, 23004, 23006, 23007, 23009, 23011, 23012, 23014, 23015, 23016, 23021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_23008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 23010, 23013, 23017, 23018 },
		gadgets = { 23019, 23020 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_23024", "GADGET_STATE_CHANGE_23028", "GADGET_STATE_CHANGE_23029", "GADGET_STATE_CHANGE_23030", "TIMER_EVENT_23031", "TIMER_EVENT_23032" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_23008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_23008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 250015023, 2)
	
	-- 调用提示id为 200050203 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 200050203) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_23024(context, evt)
	if 23019 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_23024(context, evt)
	-- 将本组内变量名为 "t23019" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "t23019", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_23028(context, evt)
	if 23020 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_23028(context, evt)
	-- 将本组内变量名为 "t23020" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "t23020", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_23029(context, evt)
	if 23019 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_23029(context, evt)
	-- 将本组内变量名为 "t23019" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "t23019", 1) 
	then
	return -1
	end
	
	
	if ScriptLib.GetGroupVariableValue(context, "ison") == 0 
	then
		if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250015023, "stop23019", 5) 
		then
		return -1
		end
	end
	
	
	if ScriptLib.GetGroupVariableValue(context, "t23019") + ScriptLib.GetGroupVariableValue(context, "t23020") == 2 
	then
		
		if ScriptLib.GetGroupVariableValue(context, "ison") == 0 
		then
			if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23016,GadgetState.GearStart) then
			return -1
			end
	
			if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23021,GadgetState.GearStart) then
			return -1
			end
	
		
			if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) 
			then
		  	return -1
			end
		
		end
		
	end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_23030(context, evt)
	if 23020 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_23030(context, evt)
	-- 将本组内变量名为 "t23019" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "t23020", 1) then
	  return -1
	end
	
	if ScriptLib.GetGroupVariableValue(context, "ison") == 0 then
		if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250015023, "stop23020", 5) then
		  return -1
		end
	end
		
	
	
	if ScriptLib.GetGroupVariableValue(context, "t23019") + ScriptLib.GetGroupVariableValue(context, "t23020") == 2 
	then
		
		if ScriptLib.GetGroupVariableValue(context, "ison") == 0 
		then
			if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23016,GadgetState.GearStart) then
			return -1
			end
	
			if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23021,GadgetState.GearStart) then
			return -1
			end
	
		
			if 0 ~= ScriptLib.SetGroupVariableValue(context, "ison", 1) 
			then
		  	return -1
			end
		
		end
		
	end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_23031(context, evt)
	-- 判断变量"ison"为0
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_23031(context, evt)
	-- 将configid为 23019 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23019, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 1110033 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110033) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_23032(context, evt)
	-- 判断变量"ison"为0
	if ScriptLib.GetGroupVariableValue(context, "ison") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_23032(context, evt)
	-- 将configid为 23020 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 23020, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 1110033 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110033) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end
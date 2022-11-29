-- 基础信息
local base_info = {
	group_id = 144003013
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
	{ config_id = 13001, gadget_id = 70710400, pos = { x = -243.330, y = 120.197, z = 403.492 }, rot = { x = 0.000, y = 4.029, z = 0.000 }, level = 1, persistent = true, mark_flag = 16, area_id = 103 },
	{ config_id = 13002, gadget_id = 70710401, pos = { x = -245.853, y = 120.086, z = 398.902 }, rot = { x = 0.000, y = 119.330, z = 0.000 }, level = 1, persistent = true, mark_flag = 17, area_id = 103 },
	{ config_id = 13003, gadget_id = 70710402, pos = { x = -243.457, y = 120.091, z = 397.368 }, rot = { x = 0.000, y = 90.634, z = 0.000 }, level = 1, persistent = true, mark_flag = 18, area_id = 103 },
	{ config_id = 13004, gadget_id = 70710403, pos = { x = -241.002, y = 120.110, z = 398.557 }, rot = { x = 0.000, y = 64.734, z = 0.000 }, level = 1, persistent = true, mark_flag = 19, area_id = 103 },
	{ config_id = 13009, gadget_id = 70310058, pos = { x = -243.105, y = 122.039, z = 426.611 }, rot = { x = 0.000, y = 177.488, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 13010, gadget_id = 70710411, pos = { x = -245.716, y = 120.980, z = 399.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, interact_id = 38, area_id = 103 },
	{ config_id = 13011, gadget_id = 70710411, pos = { x = -243.441, y = 120.990, z = 397.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, interact_id = 39, area_id = 103 },
	{ config_id = 13012, gadget_id = 70710411, pos = { x = -241.068, y = 120.990, z = 398.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, interact_id = 40, area_id = 103 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1013005, name = "GADGET_STATE_CHANGE_13005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13005", action = "action_EVENT_GADGET_STATE_CHANGE_13005" },
	{ config_id = 1013006, name = "GADGET_STATE_CHANGE_13006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13006", action = "action_EVENT_GADGET_STATE_CHANGE_13006" },
	{ config_id = 1013007, name = "GADGET_STATE_CHANGE_13007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13007", action = "action_EVENT_GADGET_STATE_CHANGE_13007" },
	{ config_id = 1013008, name = "VARIABLE_CHANGE_13008", event = EventType.EVENT_VARIABLE_CHANGE, source = "SealGear", condition = "condition_EVENT_VARIABLE_CHANGE_13008", action = "action_EVENT_VARIABLE_CHANGE_13008", trigger_count = 0 },
	{ config_id = 1013013, name = "GADGET_STATE_CHANGE_13013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13013", action = "action_EVENT_GADGET_STATE_CHANGE_13013" },
	{ config_id = 1013014, name = "GADGET_STATE_CHANGE_13014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13014", action = "action_EVENT_GADGET_STATE_CHANGE_13014" },
	{ config_id = 1013015, name = "GADGET_STATE_CHANGE_13015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_13015", action = "action_EVENT_GADGET_STATE_CHANGE_13015" },
	{ config_id = 1013016, name = "QUEST_START_13016", event = EventType.EVENT_QUEST_START, source = "4001306", condition = "", action = "action_EVENT_QUEST_START_13016", trigger_count = 0 },
	{ config_id = 1013017, name = "QUEST_FINISH_13017", event = EventType.EVENT_QUEST_FINISH, source = "4001313", condition = "", action = "action_EVENT_QUEST_FINISH_13017", trigger_count = 0 },
	{ config_id = 1013018, name = "QUEST_FINISH_13018", event = EventType.EVENT_QUEST_FINISH, source = "4001309", condition = "", action = "action_EVENT_QUEST_FINISH_13018", trigger_count = 0 },
	{ config_id = 1013019, name = "QUEST_START_13019", event = EventType.EVENT_QUEST_START, source = "4001306", condition = "condition_EVENT_QUEST_START_13019", action = "action_EVENT_QUEST_START_13019", trigger_count = 0 },
	{ config_id = 1013020, name = "QUEST_START_13020", event = EventType.EVENT_QUEST_START, source = "4001306", condition = "condition_EVENT_QUEST_START_13020", action = "action_EVENT_QUEST_START_13020", trigger_count = 0 },
	{ config_id = 1013021, name = "QUEST_START_13021", event = EventType.EVENT_QUEST_START, source = "4001306", condition = "condition_EVENT_QUEST_START_13021", action = "action_EVENT_QUEST_START_13021", trigger_count = 0 },
	{ config_id = 1013022, name = "QUEST_START_13022", event = EventType.EVENT_QUEST_START, source = "4001306", condition = "condition_EVENT_QUEST_START_13022", action = "action_EVENT_QUEST_START_13022", trigger_count = 0 },
	{ config_id = 1013023, name = "TIMER_EVENT_13023", event = EventType.EVENT_TIMER_EVENT, source = "AddQuestProgress", condition = "condition_EVENT_TIMER_EVENT_13023", action = "action_EVENT_TIMER_EVENT_13023", trigger_count = 0 },
	{ config_id = 1013024, name = "QUEST_START_13024", event = EventType.EVENT_QUEST_START, source = "4001306", condition = "condition_EVENT_QUEST_START_13024", action = "action_EVENT_QUEST_START_13024", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "SealGear", value = 0, no_refresh = true },
	{ config_id = 2, name = "Gear1", value = 0, no_refresh = true },
	{ config_id = 3, name = "Gear2", value = 0, no_refresh = true },
	{ config_id = 4, name = "Gear3", value = 0, no_refresh = true }
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
		gadgets = { 13001, 13002, 13003, 13004, 13009 },
		regions = { },
		triggers = { "QUEST_START_13016", "QUEST_FINISH_13017", "QUEST_FINISH_13018", "QUEST_START_13019", "QUEST_START_13020", "QUEST_START_13021", "QUEST_START_13022", "QUEST_START_13024" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_13005", "GADGET_STATE_CHANGE_13006", "GADGET_STATE_CHANGE_13007", "VARIABLE_CHANGE_13008", "GADGET_STATE_CHANGE_13013", "GADGET_STATE_CHANGE_13014", "GADGET_STATE_CHANGE_13015", "TIMER_EVENT_13023" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13005(context, evt)
	if 13002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13005(context, evt)
	-- 针对当前group内变量名为 "SealGear" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "SealGear", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "Gear1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Gear1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 13010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13006(context, evt)
	if 13004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13006(context, evt)
	-- 针对当前group内变量名为 "SealGear" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "SealGear", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "Gear3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Gear3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 13012 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13007(context, evt)
	if 13003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13007(context, evt)
	-- 针对当前group内变量名为 "SealGear" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "SealGear", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "Gear2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Gear2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 13011 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_13008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"SealGear"为3
	if ScriptLib.GetGroupVariableValue(context, "SealGear") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_13008(context, evt)
	-- 延迟2秒后,向groupId为：144003013的对象,请求一次调用,并将string参数："AddQuestProgress" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144003013, "AddQuestProgress", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13013(context, evt)
	if 13010 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13013(context, evt)
	-- 将configid为 13002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13014(context, evt)
	if 13011 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13014(context, evt)
	-- 将configid为 13003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_13015(context, evt)
	if 13012 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_13015(context, evt)
	-- 将configid为 13004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_13016(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144003013, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_13017(context, evt)
	-- 将configid为 13009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_13018(context, evt)
	-- 将configid为 13009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_13019(context, evt)
	-- 判断变量"Gear1"为0
	if ScriptLib.GetGroupVariableValue(context, "Gear1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_13019(context, evt)
	-- 创建id为13010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 13010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_13020(context, evt)
	-- 判断变量"Gear2"为0
	if ScriptLib.GetGroupVariableValue(context, "Gear2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_13020(context, evt)
	-- 创建id为13011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 13011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_13021(context, evt)
	-- 判断变量"Gear1"为0
	if ScriptLib.GetGroupVariableValue(context, "Gear1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_13021(context, evt)
	-- 创建id为13010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 13010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_13022(context, evt)
	-- 判断变量"Gear3"为0
	if ScriptLib.GetGroupVariableValue(context, "Gear3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_13022(context, evt)
	-- 创建id为13012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 13012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_13023(context, evt)
	-- 判断变量"SealGear"为3
	if ScriptLib.GetGroupVariableValue(context, "SealGear") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_13023(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "14400300106") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 144003013, "AddQuestProgress") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_13024(context, evt)
	-- 判断变量"SealGear"为3
	if ScriptLib.GetGroupVariableValue(context, "SealGear") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_13024(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "14400300106") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end
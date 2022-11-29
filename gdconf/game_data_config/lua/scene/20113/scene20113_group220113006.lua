-- 基础信息
local base_info = {
	group_id = 220113006
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
	{ config_id = 6001, gadget_id = 70360280, pos = { x = -18.000, y = -7.283, z = 46.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6002, gadget_id = 70360280, pos = { x = -22.000, y = -7.234, z = 46.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6003, gadget_id = 70360280, pos = { x = -10.000, y = -7.234, z = 46.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6004, gadget_id = 70360280, pos = { x = -14.000, y = -7.234, z = 46.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6007, gadget_id = 70360291, pos = { x = -18.000, y = -7.283, z = 52.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6008, gadget_id = 70360291, pos = { x = -22.000, y = -7.234, z = 52.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6009, gadget_id = 70360291, pos = { x = -10.000, y = -7.234, z = 52.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6010, gadget_id = 70360291, pos = { x = -14.000, y = -7.234, z = 52.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6016, gadget_id = 70360280, pos = { x = -16.946, y = 11.280, z = 56.898 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 6017, gadget_id = 70360280, pos = { x = -11.946, y = 11.329, z = 56.898 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 6018, gadget_id = 70360280, pos = { x = -6.946, y = 11.329, z = 56.898 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 6019, gadget_id = 70360280, pos = { x = -1.946, y = 11.329, z = 56.898 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 6020, gadget_id = 70360280, pos = { x = 3.054, y = 11.329, z = 56.898 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 6021, gadget_id = 70360280, pos = { x = 8.054, y = 11.329, z = 56.898 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 6022, gadget_id = 70360291, pos = { x = -16.946, y = 11.280, z = 47.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6023, gadget_id = 70360291, pos = { x = -11.946, y = 11.329, z = 47.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6024, gadget_id = 70360291, pos = { x = -6.946, y = 11.329, z = 47.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6025, gadget_id = 70360291, pos = { x = -1.946, y = 11.329, z = 47.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6026, gadget_id = 70360291, pos = { x = 3.054, y = 11.329, z = 47.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6027, gadget_id = 70360291, pos = { x = 8.054, y = 11.329, z = 47.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6032, gadget_id = 70290137, pos = { x = -25.009, y = -10.723, z = 49.810 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 6028, shape = RegionShape.CUBIC, size = { x = 50.000, y = 4.000, z = 25.000 }, pos = { x = 4.370, y = 10.317, z = 52.238 } },
	{ config_id = 6033, shape = RegionShape.CUBIC, size = { x = 2.000, y = 10.000, z = 10.000 }, pos = { x = -23.191, y = -8.106, z = 49.641 } }
}

-- 触发器
triggers = {
	{ config_id = 1006013, name = "GADGET_STATE_CHANGE_6013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_6013", action = "action_EVENT_GADGET_STATE_CHANGE_6013" },
	-- shoot2
	{ config_id = 1006014, name = "TIMER_EVENT_6014", event = EventType.EVENT_TIMER_EVENT, source = "shoot2", condition = "", action = "action_EVENT_TIMER_EVENT_6014", trigger_count = 0 },
	-- shoot1
	{ config_id = 1006015, name = "TIMER_EVENT_6015", event = EventType.EVENT_TIMER_EVENT, source = "shoot1", condition = "", action = "action_EVENT_TIMER_EVENT_6015", trigger_count = 0 },
	{ config_id = 1006028, name = "ENTER_REGION_6028", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6028", action = "action_EVENT_ENTER_REGION_6028" },
	-- shoot2
	{ config_id = 1006029, name = "TIMER_EVENT_6029", event = EventType.EVENT_TIMER_EVENT, source = "shoot22", condition = "", action = "action_EVENT_TIMER_EVENT_6029", trigger_count = 0 },
	-- shoot1
	{ config_id = 1006030, name = "TIMER_EVENT_6030", event = EventType.EVENT_TIMER_EVENT, source = "shoot11", condition = "", action = "action_EVENT_TIMER_EVENT_6030", trigger_count = 0 },
	{ config_id = 1006031, name = "GADGET_CREATE_6031", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_6031", action = "action_EVENT_GADGET_CREATE_6031" },
	{ config_id = 1006033, name = "ENTER_REGION_6033", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6033", action = "action_EVENT_ENTER_REGION_6033" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 6005, gadget_id = 70360280, pos = { x = -8.274, y = -7.234, z = 46.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 6006, gadget_id = 70360280, pos = { x = -8.274, y = -7.234, z = 46.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 6011, gadget_id = 70360291, pos = { x = -8.274, y = -7.234, z = 52.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 6012, gadget_id = 70360291, pos = { x = -8.274, y = -7.234, z = 52.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 6001, 6002, 6003, 6004, 6007, 6008, 6009, 6010, 6032 },
		regions = { 6033 },
		triggers = { "GADGET_STATE_CHANGE_6013", "TIMER_EVENT_6014", "TIMER_EVENT_6015", "GADGET_CREATE_6031", "ENTER_REGION_6033" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 6016, 6017, 6018, 6019, 6020, 6021, 6022, 6023, 6024, 6025, 6026, 6027 },
		regions = { 6028 },
		triggers = { "ENTER_REGION_6028", "TIMER_EVENT_6029", "TIMER_EVENT_6030" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_6013(context, evt)
	if 6032 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_6013(context, evt)
	-- 延迟3秒后,向groupId为：220113006的对象,请求一次调用,并将string参数："shoot2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220113006, "shoot2", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组220113006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113006中， configid为6003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_6014(context, evt)
	-- 延迟3秒后,向groupId为：220113006的对象,请求一次调用,并将string参数："shoot1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220113006, "shoot1", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组220113006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113006中， configid为6003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113006中， configid为6002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113006中， configid为6004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_6015(context, evt)
	-- 延迟3秒后,向groupId为：220113006的对象,请求一次调用,并将string参数："shoot2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220113006, "shoot2", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组220113006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113006中， configid为6003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113006中， configid为6002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113006中， configid为6004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6028(context, evt)
	if evt.param1 ~= 6028 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6028(context, evt)
	-- 延迟3秒后,向groupId为：220113006的对象,请求一次调用,并将string参数："shoot22" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220113006, "shoot22", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组220113006中， configid为6021的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6021, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113006中， configid为6019的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6019, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113006中， configid为6017的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6017, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 220113006, "shoot1") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 220113006, "shoot2") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_6029(context, evt)
	-- 延迟3秒后,向groupId为：220113006的对象,请求一次调用,并将string参数："shoot11" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220113006, "shoot11", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组220113006中， configid为6017的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6017, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113006中， configid为6019的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6019, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113006中， configid为6021的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6021, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113006中， configid为6016的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6016, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113006中， configid为6018的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6018, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113006中， configid为6020的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6020, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_6030(context, evt)
	-- 延迟3秒后,向groupId为：220113006的对象,请求一次调用,并将string参数："shoot22" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220113006, "shoot22", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组220113006中， configid为6017的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6017, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113006中， configid为6019的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6019, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113006中， configid为6021的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6021, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113006中， configid为6016的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6016, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113006中， configid为6018的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6018, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组220113006中， configid为6020的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 220113006, 6020, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_6031(context, evt)
	if 6001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_6031(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 220113006, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_6033(context, evt)
	if evt.param1 ~= 6033 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"key_downfloor"为2
	if ScriptLib.GetGroupVariableValueByGroup(context, "key_downfloor", 220113004) ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6033(context, evt)
	-- 调用提示id为 201130304 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 201130304) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 240016002
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
	{ config_id = 1002001, name = "GROUP_REFRESH_2001", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_2001", trigger_count = 0 },
	{ config_id = 1002002, name = "TIMER_EVENT_2002", event = EventType.EVENT_TIMER_EVENT, source = "timeStart", condition = "", action = "action_EVENT_TIMER_EVENT_2002", trigger_count = 0 },
	{ config_id = 1002003, name = "TIMER_EVENT_2003", event = EventType.EVENT_TIMER_EVENT, source = "time1", condition = "", action = "action_EVENT_TIMER_EVENT_2003", trigger_count = 0 },
	{ config_id = 1002004, name = "TIMER_EVENT_2004", event = EventType.EVENT_TIMER_EVENT, source = "time2", condition = "", action = "action_EVENT_TIMER_EVENT_2004", trigger_count = 0 },
	{ config_id = 1002005, name = "TIMER_EVENT_2005", event = EventType.EVENT_TIMER_EVENT, source = "time3", condition = "", action = "action_EVENT_TIMER_EVENT_2005", trigger_count = 0 },
	{ config_id = 1002006, name = "TIMER_EVENT_2006", event = EventType.EVENT_TIMER_EVENT, source = "time4", condition = "", action = "action_EVENT_TIMER_EVENT_2006", trigger_count = 0 }
}

-- 变量
variables = {
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
		triggers = { "GROUP_REFRESH_2001", "TIMER_EVENT_2002", "TIMER_EVENT_2003", "TIMER_EVENT_2004", "TIMER_EVENT_2005", "TIMER_EVENT_2006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_REFRESH_2001(context, evt)
	-- 延迟2秒后,向groupId为：240016002的对象,请求一次调用,并将string参数："timeStart" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240016002, "timeStart", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组240016001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016001, 1002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240016001中， configid为1003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016001, 1003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240016001中， configid为1004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016001, 1004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240016001中， configid为1005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016001, 1005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240016001中， configid为1006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016001, 1006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240016001中， configid为1007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016001, 1007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240016001中， configid为1008的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016001, 1008, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240016001中， configid为1009的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016001, 1009, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240016001中， configid为1010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016001, 1010, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2002(context, evt)
	-- 改变指定group组240016001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016001, 1002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟2秒后,向groupId为：240016002的对象,请求一次调用,并将string参数："time1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240016002, "time1", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2003(context, evt)
	-- 改变指定group组240016001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016001, 1002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240016001中， configid为1006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016001, 1006, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟2秒后,向groupId为：240016002的对象,请求一次调用,并将string参数："time2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240016002, "time2", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2004(context, evt)
	-- 改变指定group组240016001中， configid为1006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016001, 1006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240016001中， configid为1010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016001, 1010, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟2秒后,向groupId为：240016002的对象,请求一次调用,并将string参数："time3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240016002, "time3", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2005(context, evt)
	-- 改变指定group组240016001中， configid为1010的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016001, 1010, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组240016001中， configid为1004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016001, 1004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟2秒后,向groupId为：240016002的对象,请求一次调用,并将string参数："time4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240016002, "time4", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2006(context, evt)
	-- 改变指定group组240016001中， configid为1004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240016001, 1004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "type" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "type", 1, 240016001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 201058012
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
	{ config_id = 1012001, name = "GROUP_REFRESH_12001", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_12001", trigger_count = 0 },
	{ config_id = 1012002, name = "TIMER_EVENT_12002", event = EventType.EVENT_TIMER_EVENT, source = "timeStart", condition = "", action = "action_EVENT_TIMER_EVENT_12002", trigger_count = 0 },
	{ config_id = 1012003, name = "TIMER_EVENT_12003", event = EventType.EVENT_TIMER_EVENT, source = "time1", condition = "", action = "action_EVENT_TIMER_EVENT_12003", trigger_count = 0 },
	{ config_id = 1012004, name = "TIMER_EVENT_12004", event = EventType.EVENT_TIMER_EVENT, source = "time2", condition = "", action = "action_EVENT_TIMER_EVENT_12004", trigger_count = 0 },
	{ config_id = 1012005, name = "TIMER_EVENT_12005", event = EventType.EVENT_TIMER_EVENT, source = "time3", condition = "", action = "action_EVENT_TIMER_EVENT_12005", trigger_count = 0 },
	{ config_id = 1012006, name = "TIMER_EVENT_12006", event = EventType.EVENT_TIMER_EVENT, source = "time4", condition = "", action = "action_EVENT_TIMER_EVENT_12006", trigger_count = 0 },
	{ config_id = 1012007, name = "TIMER_EVENT_12007", event = EventType.EVENT_TIMER_EVENT, source = "time5", condition = "", action = "action_EVENT_TIMER_EVENT_12007", trigger_count = 0 }
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
		triggers = { "GROUP_REFRESH_12001", "TIMER_EVENT_12002", "TIMER_EVENT_12003", "TIMER_EVENT_12004", "TIMER_EVENT_12005", "TIMER_EVENT_12006", "TIMER_EVENT_12007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_REFRESH_12001(context, evt)
	-- 延迟2秒后,向groupId为：201058012的对象,请求一次调用,并将string参数："timeStart" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058012, "timeStart", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组201058009中， configid为9002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058009, 9002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058009中， configid为9003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058009, 9003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058009中， configid为9004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058009, 9004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058009中， configid为9005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058009, 9005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058009中， configid为9006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058009, 9006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_12002(context, evt)
	-- 改变指定group组201058009中， configid为9003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058009, 9003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟2秒后,向groupId为：201058012的对象,请求一次调用,并将string参数："time1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058012, "time1", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_12003(context, evt)
	-- 改变指定group组201058009中， configid为9003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058009, 9003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058009中， configid为9005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058009, 9005, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟2秒后,向groupId为：201058012的对象,请求一次调用,并将string参数："time2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058012, "time2", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_12004(context, evt)
	-- 改变指定group组201058009中， configid为9005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058009, 9005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058009中， configid为9002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058009, 9002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟2秒后,向groupId为：201058012的对象,请求一次调用,并将string参数："time3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058012, "time3", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_12005(context, evt)
	-- 改变指定group组201058009中， configid为9002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058009, 9002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058009中， configid为9006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058009, 9006, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟2秒后,向groupId为：201058012的对象,请求一次调用,并将string参数："time4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058012, "time4", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_12006(context, evt)
	-- 改变指定group组201058009中， configid为9006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058009, 9006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058009中， configid为9004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058009, 9004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟2秒后,向groupId为：201058012的对象,请求一次调用,并将string参数："time5" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058012, "time5", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_12007(context, evt)
	-- 改变指定group组201058009中， configid为9004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058009, 9004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "type" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "type", 3, 201058009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end
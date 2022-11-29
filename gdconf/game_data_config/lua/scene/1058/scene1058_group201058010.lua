-- 基础信息
local base_info = {
	group_id = 201058010
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
	{ config_id = 1010001, name = "GROUP_REFRESH_10001", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_10001", trigger_count = 0 },
	{ config_id = 1010002, name = "TIMER_EVENT_10002", event = EventType.EVENT_TIMER_EVENT, source = "timeStart", condition = "", action = "action_EVENT_TIMER_EVENT_10002", trigger_count = 0 },
	{ config_id = 1010003, name = "TIMER_EVENT_10003", event = EventType.EVENT_TIMER_EVENT, source = "time1", condition = "", action = "action_EVENT_TIMER_EVENT_10003", trigger_count = 0 },
	{ config_id = 1010004, name = "TIMER_EVENT_10004", event = EventType.EVENT_TIMER_EVENT, source = "time2", condition = "", action = "action_EVENT_TIMER_EVENT_10004", trigger_count = 0 },
	{ config_id = 1010005, name = "TIMER_EVENT_10005", event = EventType.EVENT_TIMER_EVENT, source = "time3", condition = "", action = "action_EVENT_TIMER_EVENT_10005", trigger_count = 0 }
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
		triggers = { "GROUP_REFRESH_10001", "TIMER_EVENT_10002", "TIMER_EVENT_10003", "TIMER_EVENT_10004", "TIMER_EVENT_10005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_REFRESH_10001(context, evt)
	-- 延迟2秒后,向groupId为：201058010的对象,请求一次调用,并将string参数："timeStart" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058010, "timeStart", 2) then
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
function action_EVENT_TIMER_EVENT_10002(context, evt)
	-- 改变指定group组201058009中， configid为9002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058009, 9002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟2秒后,向groupId为：201058010的对象,请求一次调用,并将string参数："time1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058010, "time1", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_10003(context, evt)
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
	
	-- 延迟2秒后,向groupId为：201058010的对象,请求一次调用,并将string参数："time2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058010, "time2", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_10004(context, evt)
	-- 改变指定group组201058009中， configid为9006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058009, 9006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组201058009中， configid为9005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058009, 9005, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟2秒后,向groupId为：201058010的对象,请求一次调用,并将string参数："time3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201058010, "time3", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_10005(context, evt)
	-- 改变指定group组201058009中， configid为9005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 201058009, 9005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 将本组内变量名为 "type" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "type", 1, 201058009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end
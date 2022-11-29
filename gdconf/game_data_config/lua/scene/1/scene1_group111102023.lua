-- 基础信息
local base_info = {
	group_id = 111102023
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
	{ config_id = 23001, gadget_id = 70290140, pos = { x = 1969.866, y = 197.361, z = -1316.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 23002, gadget_id = 70290145, pos = { x = 1969.890, y = 203.497, z = -1316.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 23003, gadget_id = 70290142, pos = { x = 1969.892, y = 199.356, z = -1316.308 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 23004, gadget_id = 70290144, pos = { x = 1969.317, y = 198.890, z = -1316.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 23005, gadget_id = 70290144, pos = { x = 1969.892, y = 200.047, z = -1316.318 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 23006, gadget_id = 70290143, pos = { x = 1970.462, y = 198.909, z = -1316.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 23007, gadget_id = 70360001, pos = { x = 1969.902, y = 198.308, z = -1316.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1023008, name = "TIMER_EVENT_23008", event = EventType.EVENT_TIMER_EVENT, source = "time1", condition = "", action = "action_EVENT_TIMER_EVENT_23008" },
	{ config_id = 1023011, name = "GADGET_STATE_CHANGE_23011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_23011", action = "action_EVENT_GADGET_STATE_CHANGE_23011" },
	{ config_id = 1023012, name = "SELECT_OPTION_23012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_23012", action = "action_EVENT_SELECT_OPTION_23012" }
}

-- 变量
variables = {
	{ config_id = 1, name = "open_door", value = 0, no_refresh = false }
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
		gadgets = { 23001, 23002, 23003, 23004, 23005, 23006, 23007 },
		regions = { },
		triggers = { "TIMER_EVENT_23008", "GADGET_STATE_CHANGE_23011", "SELECT_OPTION_23012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_TIMER_EVENT_23008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111102023, 23007, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组111102023中， configid为23003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111102023, 23003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_23011(context, evt)
	-- 判断变量"open_door"为3
	if ScriptLib.GetGroupVariableValue(context, "open_door") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_23011(context, evt)
	-- 改变指定group组111102023中， configid为23006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111102023, 23006, GadgetState.Action01) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟1秒后,向groupId为：111102023的对象,请求一次调用,并将string参数："time1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111102023, "time1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组111102023中， configid为23005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111102023, 23005, GadgetState.Action01) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组111102023中， configid为23004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111102023, 23004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_23012(context, evt)
	-- 判断是gadgetid 23007 option_id 1
	if 23007 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_23012(context, evt)
	-- 改变指定group组111102023中， configid为23001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 111102023, 23001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 23003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 23006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 23004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 23005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end
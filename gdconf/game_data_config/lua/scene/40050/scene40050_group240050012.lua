-- 基础信息
local base_info = {
	group_id = 240050012
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
	{ config_id = 12001, gadget_id = 70290140, pos = { x = 25.706, y = 77.040, z = -80.978 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 12002, gadget_id = 70290145, pos = { x = 25.084, y = 83.196, z = -81.025 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 12003, gadget_id = 70290142, pos = { x = 25.484, y = 79.036, z = -81.027 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 12004, gadget_id = 70290144, pos = { x = 25.436, y = 78.569, z = -80.457 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 12005, gadget_id = 70290144, pos = { x = 25.437, y = 79.726, z = -81.029 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 12006, gadget_id = 70290143, pos = { x = 25.428, y = 78.589, z = -81.596 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 12007, gadget_id = 70360001, pos = { x = 25.639, y = 78.408, z = -81.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1012008, name = "TIMER_EVENT_12008", event = EventType.EVENT_TIMER_EVENT, source = "time1", condition = "", action = "action_EVENT_TIMER_EVENT_12008" },
	{ config_id = 1012009, name = "GADGET_STATE_CHANGE_12009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12009", action = "action_EVENT_GADGET_STATE_CHANGE_12009" },
	{ config_id = 1012010, name = "GADGET_STATE_CHANGE_12010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12010", action = "action_EVENT_GADGET_STATE_CHANGE_12010" },
	{ config_id = 1012011, name = "GADGET_STATE_CHANGE_12011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_12011", action = "action_EVENT_GADGET_STATE_CHANGE_12011" },
	{ config_id = 1012012, name = "SELECT_OPTION_12012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_12012", action = "action_EVENT_SELECT_OPTION_12012" }
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
		gadgets = { 12001, 12002, 12003, 12004, 12005, 12006, 12007 },
		regions = { },
		triggers = { "TIMER_EVENT_12008", "GADGET_STATE_CHANGE_12009", "GADGET_STATE_CHANGE_12010", "GADGET_STATE_CHANGE_12011", "SELECT_OPTION_12012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_TIMER_EVENT_12008(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240050012, 12007, {1}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组240050012中， configid为12003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240050012, 12003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_12009(context, evt)
	-- 检测config_id为12001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 12001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12009(context, evt)
	-- 改变指定group组240050012中， configid为12004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240050012, 12004, GadgetState.Action01) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_12010(context, evt)
	-- 检测config_id为12001的gadget是否从GadgetState.GearStart变为GadgetState.GearStop
	if 12001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12010(context, evt)
	-- 改变指定group组240050012中， configid为12005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240050012, 12005, GadgetState.Action01) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_12011(context, evt)
	-- 检测config_id为12001的gadget是否从GadgetState.GearStop变为GadgetState.GearAction1
	if 12001 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_12011(context, evt)
	-- 改变指定group组240050012中， configid为12006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240050012, 12006, GadgetState.Action01) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 延迟1秒后,向groupId为：240050012的对象,请求一次调用,并将string参数："time1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 240050012, "time1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_12012(context, evt)
	-- 判断是gadgetid 12007 option_id 1
	if 12007 ~= evt.param1 then
		return false	
	end
	
	if 1 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_12012(context, evt)
	-- 改变指定group组240050012中， configid为12001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240050012, 12001, GadgetState.GearAction2) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 12003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 12006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 12004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 12005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除指定group： 240050012 ；指定config：12007；物件身上指定option：1；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240050012, 12007, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end
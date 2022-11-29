-- 基础信息
local base_info = {
	group_id = 250007008
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
	{ config_id = 30, gadget_id = 70900244, pos = { x = -127.089, y = -10.884, z = -314.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 31, gadget_id = 70900244, pos = { x = -132.322, y = -10.884, z = -314.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32, gadget_id = 70900244, pos = { x = -121.943, y = -10.884, z = -314.666 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 33, gadget_id = 70360002, pos = { x = -126.758, y = -10.845, z = -307.882 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 34, gadget_id = 70900246, pos = { x = -121.914, y = -11.000, z = -304.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 35, gadget_id = 70900246, pos = { x = -126.837, y = -11.000, z = -304.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 36, gadget_id = 70900246, pos = { x = -132.188, y = -10.900, z = -304.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000046, name = "GADGET_CREATE_46", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_46", action = "action_EVENT_GADGET_CREATE_46", trigger_count = 0 },
	{ config_id = 1000047, name = "SELECT_OPTION_47", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_47", action = "action_EVENT_SELECT_OPTION_47", trigger_count = 0, forbid_guest = false },
	{ config_id = 1000048, name = "TIMER_EVENT_48", event = EventType.EVENT_TIMER_EVENT, source = "WaitFor2", condition = "", action = "action_EVENT_TIMER_EVENT_48", trigger_count = 0 },
	{ config_id = 1000049, name = "TIMER_EVENT_49", event = EventType.EVENT_TIMER_EVENT, source = "WaitFor3", condition = "", action = "action_EVENT_TIMER_EVENT_49", trigger_count = 0 },
	{ config_id = 1000050, name = "CLIENT_EXECUTE_50", event = EventType.EVENT_CLIENT_EXECUTE, source = "Badminton_Rule", condition = "", action = "action_EVENT_CLIENT_EXECUTE_50", trigger_count = 0 },
	{ config_id = 1000051, name = "VARIABLE_CHANGE_51", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_51", action = "action_EVENT_VARIABLE_CHANGE_51", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "FailTimes", value = 0, no_refresh = false }
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
		gadgets = { 30, 31, 32, 33, 34, 35, 36 },
		regions = { },
		triggers = { "GADGET_CREATE_46", "SELECT_OPTION_47", "TIMER_EVENT_48", "TIMER_EVENT_49", "CLIENT_EXECUTE_50", "VARIABLE_CHANGE_51" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_46(context, evt)
	if 33 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_46(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_47(context, evt)
	if 33 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_47(context, evt)
	-- 将configid为 33 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 33, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 30 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 30, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟4秒后,向groupId为：250007008的对象,请求一次调用,并将string参数："WaitFor2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250007008, "WaitFor2", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟8秒后,向groupId为：250007008的对象,请求一次调用,并将string参数："WaitFor3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250007008, "WaitFor3", 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 33 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_48(context, evt)
	-- 将configid为 31 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_49(context, evt)
	-- 将configid为 32 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 32, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_50(context, evt)
	--羽球落地或出界后把羽毛球发射器设为Default
	if evt.param1 == defs.gadget_id_3 then
	
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id_1, GadgetState.Default) then
	  return -1
	 end 
	
	
	end
	
	-- 针对当前group内变量名为 "FailTimes" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FailTimes", 1) then
	  return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_51(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"FailTimes"为3
	if ScriptLib.GetGroupVariableValue(context, "FailTimes") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_51(context, evt)
	-- 创建id为33的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 33 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
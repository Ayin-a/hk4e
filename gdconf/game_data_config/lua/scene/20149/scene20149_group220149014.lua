-- 基础信息
local base_info = {
	group_id = 220149014
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
	{ config_id = 14001, gadget_id = 70290580, pos = { x = 462.340, y = 152.347, z = 335.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1 },
	{ config_id = 14004, gadget_id = 70290580, pos = { x = 462.340, y = 152.347, z = 335.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1 },
	{ config_id = 14007, gadget_id = 70360001, pos = { x = 460.754, y = 150.050, z = 332.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14008, gadget_id = 70290580, pos = { x = 462.340, y = 152.347, z = 335.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1014002, name = "GADGET_CREATE_14002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_14002", action = "action_EVENT_GADGET_CREATE_14002", trigger_count = 0 },
	{ config_id = 1014003, name = "TIMER_EVENT_14003", event = EventType.EVENT_TIMER_EVENT, source = "1", condition = "", action = "action_EVENT_TIMER_EVENT_14003", trigger_count = 0 },
	{ config_id = 1014005, name = "GADGET_CREATE_14005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_14005", action = "action_EVENT_GADGET_CREATE_14005", trigger_count = 0 },
	{ config_id = 1014006, name = "TIMER_EVENT_14006", event = EventType.EVENT_TIMER_EVENT, source = "2", condition = "", action = "action_EVENT_TIMER_EVENT_14006", trigger_count = 0 },
	{ config_id = 1014009, name = "GADGET_CREATE_14009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_14009", action = "action_EVENT_GADGET_CREATE_14009", trigger_count = 0 },
	{ config_id = 1014010, name = "TIMER_EVENT_14010", event = EventType.EVENT_TIMER_EVENT, source = "3", condition = "", action = "action_EVENT_TIMER_EVENT_14010", trigger_count = 0 }
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
		gadgets = { 14007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 14001 },
		regions = { },
		triggers = { "GADGET_CREATE_14002", "TIMER_EVENT_14003", "GADGET_CREATE_14005", "TIMER_EVENT_14006", "GADGET_CREATE_14009", "TIMER_EVENT_14010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_14002(context, evt)
	if 14001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_14002(context, evt)
	-- 延迟8秒后,向groupId为：220149014的对象,请求一次调用,并将string参数："1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220149014, "1", 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_14003(context, evt)
	-- 创建id为14004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 14004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 14001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_14005(context, evt)
	if 14004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_14005(context, evt)
	-- 延迟8秒后,向groupId为：220149014的对象,请求一次调用,并将string参数："2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220149014, "2", 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_14006(context, evt)
	-- 创建id为14008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 14008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 14004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_14009(context, evt)
	if 14008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_14009(context, evt)
	-- 延迟8秒后,向groupId为：220149014的对象,请求一次调用,并将string参数："3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220149014, "3", 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_14010(context, evt)
	-- 创建id为14001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 14001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 14008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
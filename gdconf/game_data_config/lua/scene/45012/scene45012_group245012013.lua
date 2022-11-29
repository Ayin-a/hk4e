-- 基础信息
local base_info = {
	group_id = 245012013
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
	{ config_id = 13001, gadget_id = 70360002, pos = { x = 71.214, y = 1.752, z = -46.971 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 13002, gadget_id = 70360140, pos = { x = 71.214, y = 1.752, z = -46.971 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1 },
	{ config_id = 13003, gadget_id = 70350110, pos = { x = 73.521, y = -6.347, z = -28.462 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 13008, gadget_id = 70350110, pos = { x = 87.870, y = -6.613, z = -43.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1013004, name = "GADGET_CREATE_13004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_13004", action = "action_EVENT_GADGET_CREATE_13004" },
	{ config_id = 1013005, name = "SELECT_OPTION_13005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_13005", action = "action_EVENT_SELECT_OPTION_13005", trigger_count = 0, forbid_guest = false },
	{ config_id = 1013006, name = "TIMER_EVENT_13006", event = EventType.EVENT_TIMER_EVENT, source = "close", condition = "", action = "action_EVENT_TIMER_EVENT_13006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1013007, name = "TIMER_EVENT_13007", event = EventType.EVENT_TIMER_EVENT, source = "cd", condition = "", action = "action_EVENT_TIMER_EVENT_13007", trigger_count = 0 }
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
		gadgets = { 13001, 13002, 13003, 13008 },
		regions = { },
		triggers = { "GADGET_CREATE_13004", "SELECT_OPTION_13005", "TIMER_EVENT_13006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_13004(context, evt)
	if 13001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_13004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 245012013, 13001, {4007}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_13005(context, evt)
	-- 判断是gadgetid 13001 option_id 4007
	if 13001 ~= evt.param1 then
		return false	
	end
	
	if 4007 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_13005(context, evt)
	-- 删除指定group： 245012013 ；指定config：13001；物件身上指定option：4007；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 245012013, 13001, 4007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 13001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟10秒后,向groupId为：245012013的对象,请求一次调用,并将string参数："close" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 245012013, "close", 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 245012013, EntityType.GADGET, 13002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_13006(context, evt)
	-- 将configid为 13001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 13008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 13008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
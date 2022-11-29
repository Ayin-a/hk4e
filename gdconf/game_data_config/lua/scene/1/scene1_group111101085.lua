-- 基础信息
local base_info = {
	group_id = 111101085
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
	{ config_id = 85001, gadget_id = 70710132, pos = { x = 2457.851, y = 221.877, z = -1331.290 }, rot = { x = 0.000, y = 318.084, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 85002, gadget_id = 70360001, pos = { x = 2457.851, y = 221.877, z = -1331.290 }, rot = { x = 0.000, y = 318.084, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1085003, name = "GADGET_CREATE_85003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_85003", action = "action_EVENT_GADGET_CREATE_85003" },
	{ config_id = 1085004, name = "SELECT_OPTION_85004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_85004", action = "action_EVENT_SELECT_OPTION_85004", trigger_count = 0 },
	{ config_id = 1085005, name = "TIMER_EVENT_85005", event = EventType.EVENT_TIMER_EVENT, source = "waitForRecharge", condition = "", action = "action_EVENT_TIMER_EVENT_85005" }
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
		gadgets = { 85001, 85002 },
		regions = { },
		triggers = { "GADGET_CREATE_85003", "SELECT_OPTION_85004", "TIMER_EVENT_85005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_85003(context, evt)
	if 85001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_85003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101085, 85002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_85004(context, evt)
	-- 判断是gadgetid 85002 option_id 7
	if 85002 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_85004(context, evt)
	-- 将configid为 85001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 85001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟10秒后,向groupId为：111101085的对象,请求一次调用,并将string参数："waitForRecharge" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101085, "waitForRecharge", 10) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 删除指定group： 111101085 ；指定config：85002；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101085, 85002, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_85005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101085, 85002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end
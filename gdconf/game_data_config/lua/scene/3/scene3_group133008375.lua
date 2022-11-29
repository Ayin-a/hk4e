-- 基础信息
local base_info = {
	group_id = 133008375
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
	{ config_id = 375001, gadget_id = 70360116, pos = { x = 1040.632, y = 458.900, z = -819.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 375004, gadget_id = 70360112, pos = { x = 1040.390, y = 459.705, z = -820.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1375002, name = "QUEST_START_375002", event = EventType.EVENT_QUEST_START, source = "7014122", condition = "", action = "action_EVENT_QUEST_START_375002", trigger_count = 0 },
	{ config_id = 1375003, name = "ANY_GADGET_DIE_375003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_375003", action = "action_EVENT_ANY_GADGET_DIE_375003", trigger_count = 0 },
	{ config_id = 1375005, name = "TIMER_EVENT_375005", event = EventType.EVENT_TIMER_EVENT, source = "delay_2", condition = "", action = "action_EVENT_TIMER_EVENT_375005", trigger_count = 0 },
	{ config_id = 1375006, name = "TIMER_EVENT_375006", event = EventType.EVENT_TIMER_EVENT, source = "delay_1", condition = "", action = "action_EVENT_TIMER_EVENT_375006", trigger_count = 0 },
	{ config_id = 1375007, name = "GROUP_LOAD_375007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_375007", trigger_count = 0 },
	{ config_id = 1375008, name = "GROUP_LOAD_375008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_375008", action = "action_EVENT_GROUP_LOAD_375008", trigger_count = 0 },
	{ config_id = 1375009, name = "GROUP_LOAD_375009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_375009", action = "action_EVENT_GROUP_LOAD_375009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "is_rollback", value = 0, no_refresh = true }
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
		gadgets = { 375001, 375004 },
		regions = { },
		triggers = { "QUEST_START_375002", "ANY_GADGET_DIE_375003", "TIMER_EVENT_375005", "TIMER_EVENT_375006", "GROUP_LOAD_375008", "GROUP_LOAD_375009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_375007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_375002(context, evt)
	-- 将本组内变量名为 "is_rollback" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "is_rollback", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 延迟14秒后,向groupId为：133008375的对象,请求一次调用,并将string参数："delay_1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008375, "delay_1", 14) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_375003(context, evt)
	if 375004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_375003(context, evt)
	-- 解除当前场景中pointid 为%force_id%的地城入口的groupLimit状态
		ScriptLib.UnfreezeGroupLimit(context, 221)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_375005(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 375004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_375006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 375001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 延迟4秒后,向groupId为：133008375的对象,请求一次调用,并将string参数："delay_2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008375, "delay_2", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_375007(context, evt)
	-- 解除当前场景中pointid 为%force_id%的地城入口的groupLimit状态
		ScriptLib.UnfreezeGroupLimit(context, 221)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_375008(context, evt)
	-- 判断变量"is_rollback"为1
	if ScriptLib.GetGroupVariableValue(context, "is_rollback") ~= 1 or -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133008375, 375001)then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_375008(context, evt)
	-- 创建id为375001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 375001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_375009(context, evt)
	-- 判断变量"is_rollback"为1
	if ScriptLib.GetGroupVariableValue(context, "is_rollback") ~= 1 or -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 133008375, 375004)then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_375009(context, evt)
	-- 创建id为375004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 375004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
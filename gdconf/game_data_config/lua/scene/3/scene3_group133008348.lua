-- 基础信息
local base_info = {
	group_id = 133008348
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
	{ config_id = 348001, gadget_id = 70360119, pos = { x = 1296.826, y = 279.266, z = -805.713 }, rot = { x = 0.000, y = 60.184, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 348004, gadget_id = 70310023, pos = { x = 1298.997, y = 277.887, z = -803.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1348002, name = "QUEST_START_348002", event = EventType.EVENT_QUEST_START, source = "7010228", condition = "", action = "action_EVENT_QUEST_START_348002", trigger_count = 0 },
	{ config_id = 1348003, name = "QUEST_FINISH_348003", event = EventType.EVENT_QUEST_FINISH, source = "7010228", condition = "", action = "action_EVENT_QUEST_FINISH_348003", trigger_count = 0 },
	{ config_id = 1348005, name = "TIMER_EVENT_348005", event = EventType.EVENT_TIMER_EVENT, source = "3008348", condition = "", action = "action_EVENT_TIMER_EVENT_348005", trigger_count = 0 },
	{ config_id = 1348006, name = "QUEST_FINISH_348006", event = EventType.EVENT_QUEST_FINISH, source = "7011001", condition = "", action = "action_EVENT_QUEST_FINISH_348006", trigger_count = 0 },
	{ config_id = 1348007, name = "TIMER_EVENT_348007", event = EventType.EVENT_TIMER_EVENT, source = "Back", condition = "", action = "action_EVENT_TIMER_EVENT_348007", trigger_count = 0 },
	{ config_id = 1348008, name = "TIMER_EVENT_348008", event = EventType.EVENT_TIMER_EVENT, source = "300834802", condition = "", action = "action_EVENT_TIMER_EVENT_348008", trigger_count = 0 }
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
		gadgets = { 348001, 348004 },
		regions = { },
		triggers = { "QUEST_START_348002", "QUEST_FINISH_348003", "TIMER_EVENT_348005", "QUEST_FINISH_348006", "TIMER_EVENT_348007", "TIMER_EVENT_348008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_348002(context, evt)
	-- 延迟2秒后,向groupId为：133008348的对象,请求一次调用,并将string参数："300834802" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008348, "300834802", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_348003(context, evt)
	-- 延迟1秒后,向groupId为：133008348的对象,请求一次调用,并将string参数："3008348" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008348, "3008348", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_348005(context, evt)
	-- 将configid为 348001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 348001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_348006(context, evt)
	-- 将configid为 348001 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 348001, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟1.5秒后,向groupId为：133008348的对象,请求一次调用,并将string参数："Back" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133008348, "Back", 1.5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_348007(context, evt)
	-- 将configid为 348001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 348001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_348008(context, evt)
	-- 将configid为 348001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 348001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
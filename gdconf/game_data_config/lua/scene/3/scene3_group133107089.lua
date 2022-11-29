-- 基础信息
local base_info = {
	group_id = 133107089
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
	{ config_id = 89001, gadget_id = 70710089, pos = { x = -620.071, y = 251.711, z = 385.460 }, rot = { x = 0.816, y = 3.414, z = 359.966 }, level = 18, persistent = true, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1089002, name = "QUEST_FINISH_89002", event = EventType.EVENT_QUEST_FINISH, source = "101108", condition = "condition_EVENT_QUEST_FINISH_89002", action = "action_EVENT_QUEST_FINISH_89002" },
	{ config_id = 1089003, name = "QUEST_FINISH_89003", event = EventType.EVENT_QUEST_FINISH, source = "101404", condition = "condition_EVENT_QUEST_FINISH_89003", action = "action_EVENT_QUEST_FINISH_89003" },
	{ config_id = 1089004, name = "QUEST_FINISH_89004", event = EventType.EVENT_QUEST_FINISH, source = "101511", condition = "condition_EVENT_QUEST_FINISH_89004", action = "action_EVENT_QUEST_FINISH_89004" },
	{ config_id = 1089005, name = "TIMER_EVENT_89005", event = EventType.EVENT_TIMER_EVENT, source = "state201", condition = "", action = "action_EVENT_TIMER_EVENT_89005" },
	{ config_id = 1089006, name = "TIMER_EVENT_89006", event = EventType.EVENT_TIMER_EVENT, source = "state202", condition = "", action = "action_EVENT_TIMER_EVENT_89006" },
	{ config_id = 1089007, name = "TIMER_EVENT_89007", event = EventType.EVENT_TIMER_EVENT, source = "state203", condition = "", action = "action_EVENT_TIMER_EVENT_89007" }
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
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 89001 },
		regions = { },
		triggers = { "QUEST_FINISH_89002", "QUEST_FINISH_89003", "QUEST_FINISH_89004", "TIMER_EVENT_89005", "TIMER_EVENT_89006", "TIMER_EVENT_89007" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_FINISH_89002(context, evt)
	--检查ID为101108的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 101108 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_89002(context, evt)
	-- 延迟3秒后,向groupId为：133107089的对象,请求一次调用,并将string参数："state201" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133107089, "state201", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_89003(context, evt)
	--检查ID为101404的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 101404 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_89003(context, evt)
	-- 延迟1秒后,向groupId为：133107089的对象,请求一次调用,并将string参数："state202" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133107089, "state202", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_89004(context, evt)
	--检查ID为101511的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 101511 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_89004(context, evt)
	-- 延迟1秒后,向groupId为：133107089的对象,请求一次调用,并将string参数："state203" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133107089, "state203", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_89005(context, evt)
	-- 改变指定group组133107089中， configid为89001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133107089, 89001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_89006(context, evt)
	-- 改变指定group组133107089中， configid为89001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133107089, 89001, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_89007(context, evt)
	-- 改变指定group组133107089中， configid为89001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133107089, 89001, GadgetState.GearAction1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end
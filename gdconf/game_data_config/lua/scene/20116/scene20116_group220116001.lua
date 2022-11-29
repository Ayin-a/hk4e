-- 基础信息
local base_info = {
	group_id = 220116001
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
	{ config_id = 1002, gadget_id = 70290109, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001001, name = "QUEST_FINISH_1001", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_1001", action = "action_EVENT_QUEST_FINISH_1001" },
	{ config_id = 1001003, name = "TIMER_EVENT_1003", event = EventType.EVENT_TIMER_EVENT, source = "timer", condition = "", action = "action_EVENT_TIMER_EVENT_1003" },
	{ config_id = 1001004, name = "QUEST_START_1004", event = EventType.EVENT_QUEST_START, source = "1201510", condition = "", action = "action_EVENT_QUEST_START_1004" },
	{ config_id = 1001005, name = "GROUP_LOAD_1005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_1005" }
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
		gadgets = { 1002 },
		regions = { },
		triggers = { "QUEST_FINISH_1001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_FINISH_1001(context, evt)
	--检查ID为1201510的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 1201510 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_1001(context, evt)
	-- 解锁当前场景中pointid 为%force_id%的 传送点或者地城入口
	if 0 ~= ScriptLib.UnlockScenePoint(context, 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_scenePoint_curScene")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_1003(context, evt)
	-- 将configid为 1002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_1004(context, evt)
	-- 延迟1.5秒后,向groupId为：220116001的对象,请求一次调用,并将string参数："timer" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220116001, "timer", 1.5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_1005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220116001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 延迟2秒后,向groupId为：220116001的对象,请求一次调用,并将string参数："timer" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220116001, "timer", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end
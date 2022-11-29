-- 基础信息
local base_info = {
	group_id = 133220747
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
	{ config_id = 747001, gadget_id = 70710713, pos = { x = -2505.767, y = 436.619, z = -4392.355 }, rot = { x = 3.065, y = 262.258, z = 10.937 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1747002, name = "TIMER_EVENT_747002", event = EventType.EVENT_TIMER_EVENT, source = "billboard01", condition = "", action = "action_EVENT_TIMER_EVENT_747002", trigger_count = 0 },
	{ config_id = 1747004, name = "ANY_GADGET_DIE_747004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_747004", action = "action_EVENT_ANY_GADGET_DIE_747004", trigger_count = 0 }
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
		gadgets = { 747001 },
		regions = { },
		triggers = { "TIMER_EVENT_747002", "ANY_GADGET_DIE_747004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_TIMER_EVENT_747002(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133220747, "billboard01") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332207471") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_747004(context, evt)
	if 747001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_747004(context, evt)
	-- 延迟1秒后,向groupId为：133220747的对象,请求一次调用,并将string参数："billboard01" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133220747, "billboard01", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end
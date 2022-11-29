-- 基础信息
local base_info = {
	group_id = 133220775
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
	{ config_id = 775001, gadget_id = 70710713, pos = { x = -2476.834, y = 417.782, z = -4420.315 }, rot = { x = 358.266, y = 118.071, z = 12.104 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1775002, name = "ANY_GADGET_DIE_775002", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_775002", action = "action_EVENT_ANY_GADGET_DIE_775002" },
	{ config_id = 1775003, name = "TIMER_EVENT_775003", event = EventType.EVENT_TIMER_EVENT, source = "billboard03", condition = "", action = "action_EVENT_TIMER_EVENT_775003", trigger_count = 0 }
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
		gadgets = { 775001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_775002", "TIMER_EVENT_775003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_775002(context, evt)
	if 775001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_775002(context, evt)
	-- 延迟1秒后,向groupId为：133220775的对象,请求一次调用,并将string参数："billboard03" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133220775, "billboard03", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_775003(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 133220775, "billboard03") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1332207473") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end
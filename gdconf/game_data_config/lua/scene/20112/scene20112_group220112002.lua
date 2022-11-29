-- 基础信息
local base_info = {
	group_id = 220112002
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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1002001, name = "QUEST_START_2001", event = EventType.EVENT_QUEST_START, source = "200804", condition = "condition_EVENT_QUEST_START_2001", action = "action_EVENT_QUEST_START_2001", trigger_count = 0 },
	{ config_id = 1002002, name = "TIMER_EVENT_2002", event = EventType.EVENT_TIMER_EVENT, source = "1", condition = "", action = "action_EVENT_TIMER_EVENT_2002", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "point", value = 0, no_refresh = false }
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
		triggers = { "QUEST_START_2001", "TIMER_EVENT_2002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_START_2001(context, evt)
	-- 判断变量"point"为1
	if ScriptLib.GetGroupVariableValue(context, "point") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_2001(context, evt)
	-- 延迟0.5秒后,向groupId为：220112002的对象,请求一次调用,并将string参数："1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 220112002, "1", 0.5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_2002(context, evt)
		-- 移除指定monster
		ScriptLib.RemoveEntityByConfigId(context, 220112001, EntityType.MONSTER, 1001)
	
		
	
	return 0
end
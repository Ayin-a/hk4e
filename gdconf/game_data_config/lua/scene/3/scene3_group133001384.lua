-- 基础信息
local base_info = {
	group_id = 133001384
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
	{ config_id = 1384001, name = "QUEST_START_384001", event = EventType.EVENT_QUEST_START, source = "2070002", condition = "", action = "action_EVENT_QUEST_START_384001" },
	{ config_id = 1384002, name = "TIMER_EVENT_384002", event = EventType.EVENT_TIMER_EVENT, source = "1330013842", condition = "", action = "action_EVENT_TIMER_EVENT_384002" }
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
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_384001", "TIMER_EVENT_384002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_384001(context, evt)
	-- 延迟60秒后,向groupId为：133001384的对象,请求一次调用,并将string参数："1330013842" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133001384, "1330013842", 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_384002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330013841") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end
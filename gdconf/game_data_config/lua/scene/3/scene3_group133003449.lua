-- 基础信息
local base_info = {
	group_id = 133003449
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 442, monster_id = 20011202, pos = { x = 2560.823, y = 211.480, z = -1342.399 }, rot = { x = 0.000, y = 357.239, z = 0.000 }, level = 3, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 443, monster_id = 20011202, pos = { x = 2561.975, y = 211.611, z = -1341.981 }, rot = { x = 0.000, y = 338.496, z = 0.000 }, level = 3, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 444, monster_id = 20011202, pos = { x = 2560.662, y = 211.774, z = -1341.382 }, rot = { x = 0.000, y = 349.357, z = 0.000 }, level = 3, drop_id = 1000100, disableWander = true, area_id = 1 },
	{ config_id = 445, monster_id = 20011202, pos = { x = 2561.635, y = 211.813, z = -1341.042 }, rot = { x = 0.000, y = 333.325, z = 0.000 }, level = 3, drop_id = 1000100, disableWander = true, area_id = 1 }
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
	{ config_id = 1000516, name = "ANY_MONSTER_DIE_516", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_516", action = "action_EVENT_ANY_MONSTER_DIE_516", trigger_count = 0 },
	{ config_id = 1000535, name = "ANY_MONSTER_LIVE_535", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_535", action = "action_EVENT_ANY_MONSTER_LIVE_535" },
	{ config_id = 1000536, name = "TIMER_EVENT_536", event = EventType.EVENT_TIMER_EVENT, source = "delay2", condition = "", action = "action_EVENT_TIMER_EVENT_536" },
	{ config_id = 1000545, name = "QUEST_START_545", event = EventType.EVENT_QUEST_START, source = "35304", condition = "condition_EVENT_QUEST_START_545", action = "action_EVENT_QUEST_START_545", trigger_count = 0 }
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
		triggers = { "ANY_MONSTER_DIE_516", "ANY_MONSTER_LIVE_535", "TIMER_EVENT_536", "QUEST_START_545" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_516(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_516(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1330030024") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_535(context, evt)
	if 444 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_535(context, evt)
	-- 延迟2秒后,向groupId为：133003002的对象,请求一次调用,并将string参数："delay3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133003002, "delay3", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_536(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003002delay3") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_545(context, evt)
	if 35304 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_545(context, evt)
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 442, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 443, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 444, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟2秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 445, delay_time = 2 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end
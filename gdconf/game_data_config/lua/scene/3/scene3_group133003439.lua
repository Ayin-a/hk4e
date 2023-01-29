-- 基础信息
local base_info = {
	group_id = 133003439
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
	{ config_id = 3834, gadget_id = 70380002, pos = { x = 2290.818, y = 211.310, z = -1124.334 }, rot = { x = 0.000, y = 147.448, z = 0.000 }, level = 2, route_id = 3003233, persistent = true, area_id = 1 },
	{ config_id = 4115, gadget_id = 70211101, pos = { x = 2292.743, y = 209.798, z = -1122.817 }, rot = { x = 359.364, y = 142.337, z = 354.706 }, level = 1, chest_drop_id = 1010000, drop_count = 1, showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 4247, gadget_id = 70900201, pos = { x = 2290.836, y = 211.841, z = -1124.342 }, rot = { x = 0.000, y = 147.448, z = 0.000 }, level = 2, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000510, name = "ANY_GADGET_DIE_510", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_510", action = "action_EVENT_ANY_GADGET_DIE_510" },
	{ config_id = 1000539, name = "QUEST_START_539", event = EventType.EVENT_QUEST_START, source = "35404", condition = "condition_EVENT_QUEST_START_539", action = "action_EVENT_QUEST_START_539", trigger_count = 0 },
	{ config_id = 1000542, name = "TIMER_EVENT_542", event = EventType.EVENT_TIMER_EVENT, source = "born", condition = "", action = "action_EVENT_TIMER_EVENT_542" }
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
		triggers = { "ANY_GADGET_DIE_510", "QUEST_START_539", "TIMER_EVENT_542" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_510(context, evt)
	if 3834 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_510(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003079") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 创建id为4115的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 4115 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_539(context, evt)
	if 35404 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_539(context, evt)
	-- 延迟1秒后,向groupId为：133003439的对象,请求一次调用,并将string参数："born" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133003439, "born", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_542(context, evt)
	-- 创建id为3834的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3834 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
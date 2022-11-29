-- 基础信息
local base_info = {
	group_id = 144002901
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
	{ config_id = 901002, gadget_id = 70710428, pos = { x = 134.114, y = 122.034, z = -164.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, interact_id = 41, area_id = 101 }
}

-- 区域
regions = {
	-- 调查石块和小花trigger
	{ config_id = 901001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 108.999, y = 126.185, z = -121.931 }, area_id = 101 },
	-- 登岛trigger
	{ config_id = 901005, shape = RegionShape.SPHERE, radius = 20, pos = { x = 126.006, y = 121.195, z = -180.133 }, area_id = 101 },
	{ config_id = 901014, shape = RegionShape.SPHERE, radius = 30, pos = { x = 134.742, y = 121.195, z = -166.728 }, area_id = 101 }
}

-- 触发器
triggers = {
	-- 调查石块和小花trigger
	{ config_id = 1901001, name = "ENTER_REGION_901001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901001", action = "action_EVENT_ENTER_REGION_901001", trigger_count = 0 },
	{ config_id = 1901003, name = "GADGET_STATE_CHANGE_901003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_901003", action = "action_EVENT_GADGET_STATE_CHANGE_901003", trigger_count = 0 },
	{ config_id = 1901004, name = "TIMER_EVENT_901004", event = EventType.EVENT_TIMER_EVENT, source = "AddQuestProgress", condition = "", action = "action_EVENT_TIMER_EVENT_901004", trigger_count = 0 },
	-- 登岛trigger
	{ config_id = 1901005, name = "ENTER_REGION_901005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901005", action = "action_EVENT_ENTER_REGION_901005", trigger_count = 0 },
	{ config_id = 1901014, name = "ENTER_REGION_901014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_901014", action = "action_EVENT_ENTER_REGION_901014", trigger_count = 0 },
	{ config_id = 1901016, name = "ANY_MONSTER_DIE_901016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_901016", action = "action_EVENT_ANY_MONSTER_DIE_901016", trigger_count = 0 }
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
		gadgets = { },
		regions = { 901001 },
		triggers = { "ENTER_REGION_901001" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 901005 },
		triggers = { "ENTER_REGION_901005" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 901002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_901003", "TIMER_EVENT_901004" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 901014 },
		triggers = { "ENTER_REGION_901014" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_901016" },
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
function condition_EVENT_ENTER_REGION_901001(context, evt)
	if evt.param1 ~= 901001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_901001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "14400290101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_901003(context, evt)
	if 901002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_901003(context, evt)
	-- 延迟2秒后,向groupId为：144002901的对象,请求一次调用,并将string参数："AddQuestProgress" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144002901, "AddQuestProgress", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 901002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_901004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "14400290104") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 144002901, "AddQuestProgress") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_901005(context, evt)
	if evt.param1 ~= 901005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_901005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "14400290103") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_901014(context, evt)
	if evt.param1 ~= 901014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_901014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "14400290105") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_901016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_901016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "14400290106") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end
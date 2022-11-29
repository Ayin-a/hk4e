-- 基础信息
local base_info = {
	group_id = 144001123
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
	{ config_id = 123001, gadget_id = 70380277, pos = { x = -703.206, y = 100.893, z = 424.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 400100089, persistent = true, area_id = 103 }
}

-- 区域
regions = {
	{ config_id = 123004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -726.195, y = 122.026, z = 405.274 }, area_id = 103 }
}

-- 触发器
triggers = {
	{ config_id = 1123002, name = "TIMER_EVENT_123002", event = EventType.EVENT_TIMER_EVENT, source = "7900602", condition = "", action = "action_EVENT_TIMER_EVENT_123002" },
	{ config_id = 1123003, name = "QUEST_START_123003", event = EventType.EVENT_QUEST_START, source = "7900602", condition = "", action = "action_EVENT_QUEST_START_123003" },
	{ config_id = 1123004, name = "ENTER_REGION_123004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_123004", action = "action_EVENT_ENTER_REGION_123004" },
	{ config_id = 1123006, name = "GROUP_LOAD_123006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_123006", action = "action_EVENT_GROUP_LOAD_123006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 123008, gadget_id = 70380028, pos = { x = -741.447, y = 100.893, z = 417.644 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 400100122, persistent = true, area_id = 103 }
	},
	triggers = {
		{ config_id = 1123005, name = "GROUP_LOAD_123005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_123005", action = "action_EVENT_GROUP_LOAD_123005", trigger_count = 0 },
		{ config_id = 1123007, name = "GROUP_LOAD_123007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_123007", action = "action_EVENT_GROUP_LOAD_123007", trigger_count = 0 }
	}
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
		triggers = { "QUEST_START_123003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 123001 },
		regions = { },
		triggers = { "TIMER_EVENT_123002", "QUEST_START_123003", "GROUP_LOAD_123006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 123004 },
		triggers = { "ENTER_REGION_123004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_TIMER_EVENT_123002(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 123001, 400100092) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 123001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "finishyishi" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finishyishi", 1, 144001122) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001123, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_123003(context, evt)
	-- 将本组内变量名为 "finishyishi" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finishyishi", 1, 144001122) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：144001123的对象,请求一次调用,并将string参数："7900602" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001123, "7900602", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 删除suite1的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144001129, 1)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_123004(context, evt)
	if evt.param1 ~= 123004 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_123004(context, evt)
	-- 调用提示id为 1110274 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110274) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900603") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_123006(context, evt)
	-- 判断变量"finishyishi"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "finishyishi", 144001122) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_123006(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 123001, 400100092) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 123001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end
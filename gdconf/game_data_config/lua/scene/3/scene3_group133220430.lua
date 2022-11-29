-- 基础信息
local base_info = {
	group_id = 133220430
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
	{ config_id = 430001, shape = RegionShape.SPHERE, radius = 8, pos = { x = -2708.022, y = 240.834, z = -4488.387 }, area_id = 11 },
	{ config_id = 430002, shape = RegionShape.SPHERE, radius = 8, pos = { x = -2708.225, y = 240.793, z = -4488.589 }, area_id = 11 },
	{ config_id = 430003, shape = RegionShape.SPHERE, radius = 8, pos = { x = -2708.171, y = 241.562, z = -4488.391 }, area_id = 11 },
	{ config_id = 430005, shape = RegionShape.SPHERE, radius = 8, pos = { x = -2778.247, y = 228.033, z = -4496.785 }, area_id = 11 },
	{ config_id = 430006, shape = RegionShape.SPHERE, radius = 8, pos = { x = -2777.836, y = 227.586, z = -4496.343 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1430001, name = "ENTER_REGION_430001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_430001", action = "action_EVENT_ENTER_REGION_430001" },
	{ config_id = 1430002, name = "ENTER_REGION_430002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_430002", action = "action_EVENT_ENTER_REGION_430002" },
	{ config_id = 1430003, name = "ENTER_REGION_430003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_430003", action = "action_EVENT_ENTER_REGION_430003" },
	{ config_id = 1430005, name = "ENTER_REGION_430005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_430005", action = "action_EVENT_ENTER_REGION_430005" },
	{ config_id = 1430006, name = "ENTER_REGION_430006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_430006", action = "action_EVENT_ENTER_REGION_430006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "done", value = 0, no_refresh = false },
	{ config_id = 2, name = "finish", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 430004, shape = RegionShape.SPHERE, radius = 8, pos = { x = -2708.385, y = 239.680, z = -4489.962 }, area_id = 11 }
	},
	triggers = {
		{ config_id = 1430004, name = "ENTER_REGION_430004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_430004", action = "action_EVENT_ENTER_REGION_430004" }
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 430001, 430002, 430003, 430005, 430006 },
		triggers = { "ENTER_REGION_430001", "ENTER_REGION_430002", "ENTER_REGION_430003", "ENTER_REGION_430005", "ENTER_REGION_430006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_430001(context, evt)
	if evt.param1 ~= 430001 then return false end
	
	-- 判断变量"done"为0
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_430001(context, evt)
	-- 调用提示id为 322072815 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322072815) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "done" 的变量设置为 5
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "done", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_430002(context, evt)
	if evt.param1 ~= 430002 then return false end
	
	-- 判断变量"done"为1
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 1 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_430002(context, evt)
	-- 调用提示id为 322072817 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322072817) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "finish" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_430003(context, evt)
	if evt.param1 ~= 430003 then return false end
	
	-- 判断变量"done"为2
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 2 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_430003(context, evt)
	-- 调用提示id为 322072819 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322072819) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_430005(context, evt)
	if evt.param1 ~= 430005 then return false end
	
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_430005(context, evt)
	-- 调用提示id为 322072817 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322072817) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "done" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "done", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_430006(context, evt)
	if evt.param1 ~= 430006 then return false end
	
	-- 判断变量"finish"为2
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 2 then
			return false
	end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_430006(context, evt)
	-- 调用提示id为 322072819 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322072819) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end
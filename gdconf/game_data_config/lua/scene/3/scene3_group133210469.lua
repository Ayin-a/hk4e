-- 基础信息
local base_info = {
	group_id = 133210469
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
	-- 进入不可交互雕像的范围内时
	{ config_id = 469001, shape = RegionShape.SPHERE, radius = 3, pos = { x = -3767.234, y = 149.404, z = -1142.321 }, area_id = 17 },
	-- 进入不可交互雕像的范围内时
	{ config_id = 469002, shape = RegionShape.SPHERE, radius = 3, pos = { x = -3766.034, y = 149.404, z = -1129.193 }, area_id = 17 },
	-- 进入不可交互雕像的范围内时
	{ config_id = 469003, shape = RegionShape.SPHERE, radius = 3, pos = { x = -3753.222, y = 149.404, z = -1130.154 }, area_id = 17 },
	-- 进入不可交互雕像的范围内时
	{ config_id = 469004, shape = RegionShape.SPHERE, radius = 3, pos = { x = -3754.365, y = 149.395, z = -1143.031 }, area_id = 17 },
	-- 进入大范围内时
	{ config_id = 469005, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3779.054, y = 152.578, z = -1117.362 }, area_id = 17 }
}

-- 触发器
triggers = {
	-- 进入不可交互雕像的范围内时
	{ config_id = 1469001, name = "ENTER_REGION_469001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_469001", action = "action_EVENT_ENTER_REGION_469001" },
	-- 进入不可交互雕像的范围内时
	{ config_id = 1469002, name = "ENTER_REGION_469002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_469002", action = "action_EVENT_ENTER_REGION_469002" },
	-- 进入不可交互雕像的范围内时
	{ config_id = 1469003, name = "ENTER_REGION_469003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_469003", action = "action_EVENT_ENTER_REGION_469003" },
	-- 进入不可交互雕像的范围内时
	{ config_id = 1469004, name = "ENTER_REGION_469004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_469004", action = "action_EVENT_ENTER_REGION_469004" },
	-- 进入大范围内时
	{ config_id = 1469005, name = "ENTER_REGION_469005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_469005", action = "action_EVENT_ENTER_REGION_469005" },
	{ config_id = 1469006, name = "TIME_AXIS_PASS_469006", event = EventType.EVENT_TIME_AXIS_PASS, source = "reminder", condition = "condition_EVENT_TIME_AXIS_PASS_469006", action = "action_EVENT_TIME_AXIS_PASS_469006" }
}

-- 变量
variables = {
	{ config_id = 1, name = "reminder", value = 0, no_refresh = true }
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
		regions = { 469001, 469002, 469003 },
		triggers = { "ENTER_REGION_469001", "ENTER_REGION_469002", "ENTER_REGION_469003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_469001(context, evt)
	if evt.param1 ~= 469001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"StatueCount"不为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "StatueCount", 133210391) == 3 then
			return false
	end
	
	
	-- 判断变量"reminder"为0
	if ScriptLib.GetGroupVariableValue(context, "reminder") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_469001(context, evt)
	-- 调用提示id为 32100189 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100189) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "reminder" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_469002(context, evt)
	if evt.param1 ~= 469002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"StatueCount"不为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "StatueCount", 133210391) == 3 then
			return false
	end
	
	
	-- 判断变量"reminder"为0
	if ScriptLib.GetGroupVariableValue(context, "reminder") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_469002(context, evt)
	-- 调用提示id为 32100189 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100189) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "reminder" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_469003(context, evt)
	if evt.param1 ~= 469003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"StatueCount"不为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "StatueCount", 133210391) == 3 then
			return false
	end
	
	
	-- 判断变量"reminder"为0
	if ScriptLib.GetGroupVariableValue(context, "reminder") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_469003(context, evt)
	-- 调用提示id为 32100189 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100189) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "reminder" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_469004(context, evt)
	if evt.param1 ~= 469004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"StatueCount"不为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "StatueCount", 133210391) == 3 then
			return false
	end
	
	-- 判断变量"reminder"为0
	if ScriptLib.GetGroupVariableValue(context, "reminder") ~= 0 then
			return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_469004(context, evt)
	-- 调用提示id为 32100189 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100189) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "reminder" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_469005(context, evt)
	if evt.param1 ~= 469005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_469005(context, evt)
	-- 调用提示id为 32100115 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100115) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_469006(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_469006(context, evt)
	-- 将本组内变量名为 "reminder" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end
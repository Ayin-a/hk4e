-- 基础信息
local base_info = {
	group_id = 144001903
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
	{ config_id = 903005, gadget_id = 70350266, pos = { x = -245.025, y = 199.878, z = -590.164 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 903006, gadget_id = 70350266, pos = { x = -361.803, y = 200.000, z = -514.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 903007, gadget_id = 70350266, pos = { x = -233.711, y = 200.000, z = -730.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 }
}

-- 区域
regions = {
	{ config_id = 903003, shape = RegionShape.SPHERE, radius = 40, pos = { x = -243.282, y = 200.523, z = -585.319 }, area_id = 100 },
	{ config_id = 903010, shape = RegionShape.SPHERE, radius = 40, pos = { x = -232.419, y = 200.523, z = -729.596 }, area_id = 100 },
	{ config_id = 903011, shape = RegionShape.SPHERE, radius = 40, pos = { x = -364.054, y = 200.523, z = -516.711 }, area_id = 100 }
}

-- 触发器
triggers = {
	{ config_id = 1903001, name = "VARIABLE_CHANGE_903001", event = EventType.EVENT_VARIABLE_CHANGE, source = "Gear", condition = "condition_EVENT_VARIABLE_CHANGE_903001", action = "action_EVENT_VARIABLE_CHANGE_903001", trigger_count = 0 },
	{ config_id = 1903002, name = "VARIABLE_CHANGE_903002", event = EventType.EVENT_VARIABLE_CHANGE, source = "Gear", condition = "condition_EVENT_VARIABLE_CHANGE_903002", action = "action_EVENT_VARIABLE_CHANGE_903002", trigger_count = 0 },
	{ config_id = 1903003, name = "ENTER_REGION_903003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_903003", action = "action_EVENT_ENTER_REGION_903003" },
	-- Gear2
	{ config_id = 1903004, name = "ANY_GADGET_DIE_903004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_903004", action = "action_EVENT_ANY_GADGET_DIE_903004", trigger_count = 0 },
	{ config_id = 1903008, name = "ANY_GADGET_DIE_903008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_903008", trigger_count = 0 },
	{ config_id = 1903009, name = "VARIABLE_CHANGE_903009", event = EventType.EVENT_VARIABLE_CHANGE, source = "Gear", condition = "condition_EVENT_VARIABLE_CHANGE_903009", action = "action_EVENT_VARIABLE_CHANGE_903009", trigger_count = 0 },
	{ config_id = 1903010, name = "ENTER_REGION_903010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_903010", action = "action_EVENT_ENTER_REGION_903010" },
	{ config_id = 1903011, name = "ENTER_REGION_903011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_903011", action = "action_EVENT_ENTER_REGION_903011" },
	-- Gear1
	{ config_id = 1903012, name = "ANY_GADGET_DIE_903012", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_903012", action = "action_EVENT_ANY_GADGET_DIE_903012", trigger_count = 0 },
	{ config_id = 1903013, name = "TIMER_EVENT_903013", event = EventType.EVENT_TIMER_EVENT, source = "AddQuestProgress3", condition = "", action = "action_EVENT_TIMER_EVENT_903013", trigger_count = 0 },
	-- Gear3
	{ config_id = 1903014, name = "ANY_GADGET_DIE_903014", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_903014", action = "action_EVENT_ANY_GADGET_DIE_903014", trigger_count = 0 },
	{ config_id = 1903015, name = "VARIABLE_CHANGE_903015", event = EventType.EVENT_VARIABLE_CHANGE, source = "Gear1", condition = "condition_EVENT_VARIABLE_CHANGE_903015", action = "action_EVENT_VARIABLE_CHANGE_903015", trigger_count = 0 },
	{ config_id = 1903016, name = "VARIABLE_CHANGE_903016", event = EventType.EVENT_VARIABLE_CHANGE, source = "Gear2", condition = "condition_EVENT_VARIABLE_CHANGE_903016", action = "action_EVENT_VARIABLE_CHANGE_903016", trigger_count = 0 },
	{ config_id = 1903017, name = "QUEST_START_903017", event = EventType.EVENT_QUEST_START, source = "4001120", condition = "", action = "action_EVENT_QUEST_START_903017", trigger_count = 0 },
	{ config_id = 1903018, name = "VARIABLE_CHANGE_903018", event = EventType.EVENT_VARIABLE_CHANGE, source = "Gear3", condition = "condition_EVENT_VARIABLE_CHANGE_903018", action = "action_EVENT_VARIABLE_CHANGE_903018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Gear", value = 0, no_refresh = false },
	{ config_id = 2, name = "FirstReminder", value = 0, no_refresh = false },
	{ config_id = 3, name = "Gear1", value = 0, no_refresh = false },
	{ config_id = 4, name = "Gear2", value = 0, no_refresh = false },
	{ config_id = 5, name = "Gear3", value = 0, no_refresh = false }
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
		gadgets = { 903005, 903006, 903007 },
		regions = { },
		triggers = { "QUEST_START_903017" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 903003, 903010, 903011 },
		triggers = { "VARIABLE_CHANGE_903001", "VARIABLE_CHANGE_903002", "ENTER_REGION_903003", "ANY_GADGET_DIE_903004", "ANY_GADGET_DIE_903008", "VARIABLE_CHANGE_903009", "ENTER_REGION_903010", "ENTER_REGION_903011", "ANY_GADGET_DIE_903012", "TIMER_EVENT_903013", "ANY_GADGET_DIE_903014", "VARIABLE_CHANGE_903015", "VARIABLE_CHANGE_903016", "VARIABLE_CHANGE_903018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_903001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Gear"为2
	if ScriptLib.GetGroupVariableValue(context, "Gear") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_903001(context, evt)
	-- 调用提示id为 600030 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600030) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_903002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Gear"为3
	if ScriptLib.GetGroupVariableValue(context, "Gear") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_903002(context, evt)
	-- 调用提示id为 600031 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600031) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 延迟6秒后,向groupId为：144001903的对象,请求一次调用,并将string参数："AddQuestProgress3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001903, "AddQuestProgress3", 6) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_903003(context, evt)
	if evt.param1 ~= 903003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"FirstReminder"为0
	if ScriptLib.GetGroupVariableValue(context, "FirstReminder") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_903003(context, evt)
	-- 调用提示id为 600034 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600034) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 针对当前group内变量名为 "FirstReminder" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FirstReminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_903004(context, evt)
	if 903006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_903004(context, evt)
	-- 针对当前group内变量名为 "Gear2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Gear2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_903008(context, evt)
	-- 针对当前group内变量名为 "Gear" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Gear", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_903009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Gear"为1
	if ScriptLib.GetGroupVariableValue(context, "Gear") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_903009(context, evt)
	-- 调用提示id为 600028 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600028) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_903010(context, evt)
	if evt.param1 ~= 903010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"FirstReminder"为0
	if ScriptLib.GetGroupVariableValue(context, "FirstReminder") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_903010(context, evt)
	-- 调用提示id为 600034 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600034) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 针对当前group内变量名为 "FirstReminder" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FirstReminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_903011(context, evt)
	if evt.param1 ~= 903011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"FirstReminder"为0
	if ScriptLib.GetGroupVariableValue(context, "FirstReminder") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_903011(context, evt)
	-- 调用提示id为 600034 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600034) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 针对当前group内变量名为 "FirstReminder" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "FirstReminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_903012(context, evt)
	if 903005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_903012(context, evt)
	-- 针对当前group内变量名为 "Gear1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Gear1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_903013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "14400190304") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 144001903, "AddQuestProgress3") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_903014(context, evt)
	if 903007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_903014(context, evt)
	-- 针对当前group内变量名为 "Gear3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Gear3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_903015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Gear1"为1
	if ScriptLib.GetGroupVariableValue(context, "Gear1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_903015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "14400190301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_903016(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Gear2"为1
	if ScriptLib.GetGroupVariableValue(context, "Gear2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_903016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "14400190302") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_903017(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001903, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_903018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Gear3"为1
	if ScriptLib.GetGroupVariableValue(context, "Gear3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_903018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "14400190303") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end
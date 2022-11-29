-- 基础信息
local base_info = {
	group_id = 220136009
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
	-- 语音——一直以来
	{ config_id = 9001, shape = RegionShape.SPHERE, radius = 8, pos = { x = 775.833, y = 56.690, z = 923.533 } },
	-- 语音——人们得知我会占卜
	{ config_id = 9002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 795.857, y = 61.447, z = 865.494 } },
	-- 语音——别开玩笑了
	{ config_id = 9003, shape = RegionShape.SPHERE, radius = 8, pos = { x = 774.692, y = 80.846, z = 744.842 } },
	-- 语音——我深信
	{ config_id = 9004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 816.289, y = 51.400, z = 895.263 } },
	-- 语音——我失踪的儿子
	{ config_id = 9005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 756.911, y = 53.200, z = 864.393 } },
	-- 语音——真诚的我
	{ config_id = 9008, shape = RegionShape.SPHERE, radius = 5, pos = { x = 786.185, y = 56.740, z = 805.071 } },
	-- 语音——诚实会招来厌恶
	{ config_id = 9009, shape = RegionShape.SPHERE, radius = 5, pos = { x = 789.139, y = 82.300, z = 787.033 } },
	-- 语音——占星术就是骗人的
	{ config_id = 9010, shape = RegionShape.SPHERE, radius = 8, pos = { x = 774.692, y = 82.795, z = 764.213 } },
	-- 语音——我想静一静
	{ config_id = 9011, shape = RegionShape.SPHERE, radius = 8, pos = { x = 774.495, y = 79.830, z = 727.314 } },
	-- 语音——他们的失落感
	{ config_id = 9012, shape = RegionShape.SPHERE, radius = 8, pos = { x = 773.757, y = 76.294, z = 676.381 } }
}

-- 触发器
triggers = {
	-- 语音——一直以来
	{ config_id = 1009001, name = "ENTER_REGION_9001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9001", action = "action_EVENT_ENTER_REGION_9001", trigger_count = 0 },
	-- 语音——人们得知我会占卜
	{ config_id = 1009002, name = "ENTER_REGION_9002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9002", action = "action_EVENT_ENTER_REGION_9002", trigger_count = 0 },
	-- 语音——别开玩笑了
	{ config_id = 1009003, name = "ENTER_REGION_9003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9003", action = "action_EVENT_ENTER_REGION_9003", trigger_count = 0 },
	-- 语音——我深信
	{ config_id = 1009004, name = "ENTER_REGION_9004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9004", action = "action_EVENT_ENTER_REGION_9004", trigger_count = 0 },
	-- 语音——我失踪的儿子
	{ config_id = 1009005, name = "ENTER_REGION_9005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9005", action = "action_EVENT_ENTER_REGION_9005", trigger_count = 0 },
	-- 重新进入场景清变量
	{ config_id = 1009006, name = "GROUP_LOAD_9006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_9006", trigger_count = 0 },
	-- 重新进入场景清变量
	{ config_id = 1009007, name = "GROUP_REFRESH_9007", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_9007", trigger_count = 0 },
	-- 语音——真诚的我
	{ config_id = 1009008, name = "ENTER_REGION_9008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9008", action = "action_EVENT_ENTER_REGION_9008", trigger_count = 0 },
	-- 语音——诚实会招来厌恶
	{ config_id = 1009009, name = "ENTER_REGION_9009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9009", action = "action_EVENT_ENTER_REGION_9009", trigger_count = 0 },
	-- 语音——占星术就是骗人的
	{ config_id = 1009010, name = "ENTER_REGION_9010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9010", action = "action_EVENT_ENTER_REGION_9010", trigger_count = 0 },
	-- 语音——我想静一静
	{ config_id = 1009011, name = "ENTER_REGION_9011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9011", action = "action_EVENT_ENTER_REGION_9011", trigger_count = 0 },
	-- 语音——他们的失落感
	{ config_id = 1009012, name = "ENTER_REGION_9012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_9012", action = "action_EVENT_ENTER_REGION_9012", trigger_count = 0 },
	-- 任务结束，刷新为空
	{ config_id = 1009014, name = "QUEST_FINISH_9014", event = EventType.EVENT_QUEST_FINISH, source = "4007408", condition = "condition_EVENT_QUEST_FINISH_9014", action = "action_EVENT_QUEST_FINISH_9014", trigger_count = 0 },
	-- 判断任务是否已结束
	{ config_id = 1009015, name = "GROUP_LOAD_9015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_9015", action = "action_EVENT_GROUP_LOAD_9015", trigger_count = 0 },
	-- 意外情况保底
	{ config_id = 1009016, name = "GROUP_LOAD_9016", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_9016", trigger_count = 0 },
	-- 任务开始（断线）清变量
	{ config_id = 1009017, name = "QUEST_START_9017", event = EventType.EVENT_QUEST_START, source = "4007408", condition = "", action = "action_EVENT_QUEST_START_9017", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finishRmd1", value = 0, no_refresh = false },
	{ config_id = 2, name = "finishRmd2", value = 0, no_refresh = false },
	{ config_id = 3, name = "finishRmd3", value = 0, no_refresh = false },
	{ config_id = 4, name = "finishRmd4", value = 0, no_refresh = false },
	{ config_id = 5, name = "finishRmd5", value = 0, no_refresh = false },
	{ config_id = 8, name = "finishRmd8", value = 0, no_refresh = false },
	{ config_id = 9, name = "finishRmd9", value = 0, no_refresh = false },
	{ config_id = 10, name = "finishRmd10", value = 0, no_refresh = false },
	{ config_id = 11, name = "finishRmd11", value = 0, no_refresh = false },
	{ config_id = 12, name = "finishRmd12", value = 0, no_refresh = false },
	{ config_id = 13, name = "questFinishPart1", value = 0, no_refresh = true }
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
		regions = { 9001, 9002, 9003, 9004, 9005, 9008, 9009, 9010, 9011, 9012 },
		triggers = { "ENTER_REGION_9001", "ENTER_REGION_9002", "ENTER_REGION_9003", "ENTER_REGION_9004", "ENTER_REGION_9005", "GROUP_LOAD_9006", "GROUP_REFRESH_9007", "ENTER_REGION_9008", "ENTER_REGION_9009", "ENTER_REGION_9010", "ENTER_REGION_9011", "ENTER_REGION_9012", "QUEST_FINISH_9014", "GROUP_LOAD_9015", "QUEST_START_9017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_9016", "QUEST_START_9017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_9001(context, evt)
	if evt.param1 ~= 9001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"finishRmd1"为0
	if ScriptLib.GetGroupVariableValue(context, "finishRmd1") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9001(context, evt)
	-- 调用提示id为 1110538 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110538) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "finishRmd1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9002(context, evt)
	if evt.param1 ~= 9002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"finishRmd2"为0
	if ScriptLib.GetGroupVariableValue(context, "finishRmd2") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9002(context, evt)
	-- 调用提示id为 1110542 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110542) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "finishRmd2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9003(context, evt)
	if evt.param1 ~= 9003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"finishRmd3"为0
	if ScriptLib.GetGroupVariableValue(context, "finishRmd3") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9003(context, evt)
	-- 调用提示id为 1110549 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110549) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "finishRmd3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9004(context, evt)
	if evt.param1 ~= 9004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"finishRmd4"为0
	if ScriptLib.GetGroupVariableValue(context, "finishRmd4") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9004(context, evt)
	-- 调用提示id为 1110540 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110540) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "finishRmd4" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9005(context, evt)
	if evt.param1 ~= 9005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"finishRmd5"为0
	if ScriptLib.GetGroupVariableValue(context, "finishRmd5") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9005(context, evt)
	-- 调用提示id为 1110543 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110543) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "finishRmd5" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd5", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_9006(context, evt)
	-- 将本组内变量名为 "finishRmd1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd2", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd3" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd3", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd4" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd4", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd5" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd5", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd8" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd8", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd9" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd9", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd10" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd10", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd11" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd11", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd12" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd12", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_9007(context, evt)
	-- 将本组内变量名为 "finishRmd1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd2", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd3" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd3", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd4" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd4", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd5" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd5", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd8" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd8", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd9" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd9", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd10" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd10", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd11" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd11", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd12" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd12", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9008(context, evt)
	if evt.param1 ~= 9008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"finishRmd8"为0
	if ScriptLib.GetGroupVariableValue(context, "finishRmd8") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9008(context, evt)
	-- 调用提示id为 1110546 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110546) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "finishRmd8" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd8", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9009(context, evt)
	if evt.param1 ~= 9009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"finishRmd9"为0
	if ScriptLib.GetGroupVariableValue(context, "finishRmd9") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9009(context, evt)
	-- 调用提示id为 1110547 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110547) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "finishRmd9" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd9", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9010(context, evt)
	if evt.param1 ~= 9010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"finishRmd10"为0
	if ScriptLib.GetGroupVariableValue(context, "finishRmd10") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9010(context, evt)
	-- 调用提示id为 1110548 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110548) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "finishRmd10" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd10", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9011(context, evt)
	if evt.param1 ~= 9011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"finishRmd11"为0
	if ScriptLib.GetGroupVariableValue(context, "finishRmd11") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9011(context, evt)
	-- 调用提示id为 1110550 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110550) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "finishRmd11" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd11", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_9012(context, evt)
	if evt.param1 ~= 9012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"finishRmd12"为0
	if ScriptLib.GetGroupVariableValue(context, "finishRmd12") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_9012(context, evt)
	-- 调用提示id为 1110551 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110551) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "finishRmd12" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd12", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_9014(context, evt)
	--检查ID为4007408的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 4007408 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_9014(context, evt)
	-- 将本组内变量名为 "questFinishPart1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questFinishPart1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220136009, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_9015(context, evt)
	-- 判断变量"questFinishPart1"为1
	if ScriptLib.GetGroupVariableValue(context, "questFinishPart1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_9015(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220136009, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_9016(context, evt)
			    if ScriptLib.GetHostQuestState(context,4007408)==2 then
				ScriptLib.RefreshGroup(context, { group_id = 220136009, suite = 1 }) 
				end
			
			return 0
end

-- 触发操作
function action_EVENT_QUEST_START_9017(context, evt)
	-- 将本组内变量名为 "finishRmd1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd2", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd3" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd3", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd4" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd4", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd5" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd5", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd8" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd8", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd9" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd9", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd10" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd10", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd11" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd11", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd12" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd12", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "questFinishPart1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questFinishPart1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220136009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end
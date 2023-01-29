-- 基础信息
local base_info = {
	group_id = 220136011
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
	-- 语音——不过这件事始终
	{ config_id = 11001, shape = RegionShape.SPHERE, radius = 5, pos = { x = 772.592, y = 7.704, z = 781.736 } },
	-- 语音——占星术，令真实
	{ config_id = 11002, shape = RegionShape.SPHERE, radius = 5, pos = { x = 750.988, y = 0.000, z = 661.545 } },
	-- 语音——在山上遇见了冒险家
	{ config_id = 11004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 798.306, y = 0.000, z = 659.416 } },
	-- 语音——他沉默了
	{ config_id = 11005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 776.205, y = 0.000, z = 690.946 } },
	-- 语音——他一次都没回头
	{ config_id = 11006, shape = RegionShape.SPHERE, radius = 5, pos = { x = 773.072, y = 0.000, z = 712.526 } },
	-- 语音——毫无必要
	{ config_id = 11007, shape = RegionShape.CUBIC, size = { x = 50.000, y = 10.000, z = 10.000 }, pos = { x = 774.625, y = 3.073, z = 746.222 } }
}

-- 触发器
triggers = {
	-- 语音——不过这件事始终
	{ config_id = 1011001, name = "ENTER_REGION_11001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11001", action = "action_EVENT_ENTER_REGION_11001", trigger_count = 0 },
	-- 语音——占星术，令真实
	{ config_id = 1011002, name = "ENTER_REGION_11002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11002", action = "action_EVENT_ENTER_REGION_11002", trigger_count = 0 },
	-- 任务开始清变量
	{ config_id = 1011003, name = "QUEST_START_11003", event = EventType.EVENT_QUEST_START, source = "4007506", condition = "", action = "action_EVENT_QUEST_START_11003", trigger_count = 0 },
	-- 语音——在山上遇见了冒险家
	{ config_id = 1011004, name = "ENTER_REGION_11004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11004", action = "action_EVENT_ENTER_REGION_11004", trigger_count = 0 },
	-- 语音——他沉默了
	{ config_id = 1011005, name = "ENTER_REGION_11005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11005", action = "action_EVENT_ENTER_REGION_11005", trigger_count = 0 },
	-- 语音——他一次都没回头
	{ config_id = 1011006, name = "ENTER_REGION_11006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11006", action = "action_EVENT_ENTER_REGION_11006", trigger_count = 0 },
	-- 语音——毫无必要
	{ config_id = 1011007, name = "ENTER_REGION_11007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11007", action = "action_EVENT_ENTER_REGION_11007", trigger_count = 0 },
	-- 结束改变量+切
	{ config_id = 1011008, name = "QUEST_FINISH_11008", event = EventType.EVENT_QUEST_FINISH, source = "4007506", condition = "condition_EVENT_QUEST_FINISH_11008", action = "action_EVENT_QUEST_FINISH_11008", trigger_count = 0 },
	-- 任务已结束判断
	{ config_id = 1011009, name = "GROUP_LOAD_11009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_11009", action = "action_EVENT_GROUP_LOAD_11009", trigger_count = 0 },
	-- 清变量
	{ config_id = 1011010, name = "QUEST_START_11010", event = EventType.EVENT_QUEST_START, source = "4007507", condition = "", action = "action_EVENT_QUEST_START_11010", trigger_count = 0 },
	{ config_id = 1011011, name = "QUEST_FINISH_11011", event = EventType.EVENT_QUEST_FINISH, source = "4007507", condition = "condition_EVENT_QUEST_FINISH_11011", action = "action_EVENT_QUEST_FINISH_11011", trigger_count = 0 },
	-- 在后续任务中退出，回滚
	{ config_id = 1011012, name = "GROUP_LOAD_11012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_11012", trigger_count = 0 },
	-- group重载清变量
	{ config_id = 1011013, name = "GROUP_LOAD_11013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_11013", trigger_count = 0 },
	-- 清变量
	{ config_id = 1011014, name = "GROUP_REFRESH_11014", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_11014", trigger_count = 0 },
	-- 回滚到suite1清变量
	{ config_id = 1011015, name = "GROUP_REFRESH_11015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_11015", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finishRmd1", value = 0, no_refresh = false },
	{ config_id = 2, name = "finishRmd2", value = 0, no_refresh = false },
	{ config_id = 3, name = "finishRmd3", value = 0, no_refresh = false },
	{ config_id = 4, name = "finishRmd4", value = 0, no_refresh = false },
	{ config_id = 5, name = "finishRmd5", value = 0, no_refresh = false },
	{ config_id = 6, name = "finishRmd6", value = 0, no_refresh = false },
	{ config_id = 7, name = "questFinishPart2a", value = 0, no_refresh = true },
	{ config_id = 8, name = "questFinishPart2b", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 3,
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
		regions = { 11002, 11004, 11005, 11006, 11007 },
		triggers = { "ENTER_REGION_11002", "QUEST_START_11003", "ENTER_REGION_11004", "ENTER_REGION_11005", "ENTER_REGION_11006", "ENTER_REGION_11007", "QUEST_FINISH_11008", "GROUP_LOAD_11009", "GROUP_LOAD_11013", "GROUP_REFRESH_11015" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 11001 },
		triggers = { "ENTER_REGION_11001", "QUEST_START_11003", "QUEST_START_11010", "QUEST_FINISH_11011", "GROUP_REFRESH_11014" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_11003", "GROUP_LOAD_11012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_11001(context, evt)
	if evt.param1 ~= 11001 then return false end
	
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
function action_EVENT_ENTER_REGION_11001(context, evt)
	-- 调用提示id为 1110970 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110970) then
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
function condition_EVENT_ENTER_REGION_11002(context, evt)
	if evt.param1 ~= 11002 then return false end
	
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
function action_EVENT_ENTER_REGION_11002(context, evt)
	-- 调用提示id为 1110958 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110958) then
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

-- 触发操作
function action_EVENT_QUEST_START_11003(context, evt)
	-- 将本组内变量名为 "finishRmd6" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd6", 0) then
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
	
	-- 将本组内变量名为 "finishRmd1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "questFinishPart2a" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questFinishPart2a", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220136011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11004(context, evt)
	if evt.param1 ~= 11004 then return false end
	
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
function action_EVENT_ENTER_REGION_11004(context, evt)
	-- 调用提示id为 1110962 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110962) then
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
function condition_EVENT_ENTER_REGION_11005(context, evt)
	if evt.param1 ~= 11005 then return false end
	
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
function action_EVENT_ENTER_REGION_11005(context, evt)
	-- 调用提示id为 1110965 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110965) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 针对当前group内变量名为 "finishRmd4" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "finishRmd4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11006(context, evt)
	if evt.param1 ~= 11006 then return false end
	
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
function action_EVENT_ENTER_REGION_11006(context, evt)
	-- 调用提示id为 1110968 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110968) then
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

-- 触发条件
function condition_EVENT_ENTER_REGION_11007(context, evt)
	if evt.param1 ~= 11007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"finishRmd6"为0
	if ScriptLib.GetGroupVariableValue(context, "finishRmd6") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11007(context, evt)
	-- 调用提示id为 1110969 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110969) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "finishRmd6" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd6", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_11008(context, evt)
	--检查ID为4007506的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 4007506 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_11008(context, evt)
	-- 将本组内变量名为 "questFinishPart2a" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questFinishPart2a", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220136011, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_11009(context, evt)
	-- 判断变量"questFinishPart2a"为1
	if ScriptLib.GetGroupVariableValue(context, "questFinishPart2a") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_11009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220136011, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_11010(context, evt)
	-- 将本组内变量名为 "questFinishPart2b" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questFinishPart2b", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "finishRmd1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_11011(context, evt)
	--检查ID为4007507的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 4007507 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_11011(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 220136011, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "questFinishPart2b" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "questFinishPart2b", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_11012(context, evt)
	if ScriptLib.GetHostQuestState(context,4007506) == 2 then
		ScriptLib.RefreshGroup(context, {group_id=0, refresh_level_revise=0, exclude_prev=false, is_force_random_suite=false, suite=1})
		
		ScriptLib.SetGroupVariableValue(context, "questFinishPart2a", 0)
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_11013(context, evt)
	-- 将本组内变量名为 "finishRmd6" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd6", 0) then
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
	
	-- 将本组内变量名为 "finishRmd1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_11014(context, evt)
	-- 将本组内变量名为 "finishRmd1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_11015(context, evt)
	-- 将本组内变量名为 "finishRmd6" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd6", 0) then
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
	
	-- 将本组内变量名为 "finishRmd1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finishRmd1", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end
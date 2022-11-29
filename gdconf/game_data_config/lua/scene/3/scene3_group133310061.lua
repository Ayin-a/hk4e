-- 基础信息
local base_info = {
	group_id = 133310061
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
	-- 进入攻击区域
	{ config_id = 61001, shape = RegionShape.CUBIC, size = { x = 100.000, y = 80.000, z = 100.000 }, pos = { x = -3027.269, y = 41.324, z = 4390.904 }, area_id = 28 },
	-- 进入洞窟内部
	{ config_id = 61003, shape = RegionShape.SPHERE, radius = 12, pos = { x = -2945.439, y = 29.803, z = 4455.347 }, area_id = 28 },
	-- 设法打开封印
	{ config_id = 61004, shape = RegionShape.SPHERE, radius = 15, pos = { x = -2946.780, y = 48.293, z = 4574.009 }, area_id = 28 }
}

-- 触发器
triggers = {
	-- 进入攻击区域
	{ config_id = 1061001, name = "ENTER_REGION_61001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_61001", action = "action_EVENT_ENTER_REGION_61001" },
	-- 打开门口碎石
	{ config_id = 1061002, name = "QUEST_START_61002", event = EventType.EVENT_QUEST_START, source = "7308404", condition = "", action = "action_EVENT_QUEST_START_61002" },
	-- 进入洞窟内部
	{ config_id = 1061003, name = "ENTER_REGION_61003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_61003", action = "action_EVENT_ENTER_REGION_61003" },
	-- 设法打开封印
	{ config_id = 1061004, name = "ENTER_REGION_61004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_61004", action = "action_EVENT_ENTER_REGION_61004" },
	-- 穿过机器手臂
	{ config_id = 1061005, name = "QUEST_START_61005", event = EventType.EVENT_QUEST_START, source = "7308407", condition = "", action = "action_EVENT_QUEST_START_61005" },
	-- 进入机器内部（未完成差分）
	{ config_id = 1061006, name = "QUEST_FINISH_61006", event = EventType.EVENT_QUEST_FINISH, source = "7308408", condition = "condition_EVENT_QUEST_FINISH_61006", action = "action_EVENT_QUEST_FINISH_61006" },
	-- 进入机器内部（完成）
	{ config_id = 1061007, name = "QUEST_FINISH_61007", event = EventType.EVENT_QUEST_FINISH, source = "7308408", condition = "condition_EVENT_QUEST_FINISH_61007", action = "action_EVENT_QUEST_FINISH_61007" },
	-- 调查驾驶舱
	{ config_id = 1061008, name = "QUEST_FINISH_61008", event = EventType.EVENT_QUEST_FINISH, source = "7308409", condition = "", action = "action_EVENT_QUEST_FINISH_61008" },
	-- 关闭驾驶舱
	{ config_id = 1061009, name = "QUEST_FINISH_61009", event = EventType.EVENT_QUEST_FINISH, source = "7308416", condition = "", action = "action_EVENT_QUEST_FINISH_61009" },
	-- 保底reminder
	{ config_id = 1061010, name = "TIME_AXIS_PASS_61010", event = EventType.EVENT_TIME_AXIS_PASS, source = "reminder", condition = "condition_EVENT_TIME_AXIS_PASS_61010", action = "action_EVENT_TIME_AXIS_PASS_61010" },
	-- 穿过机器手臂
	{ config_id = 1061011, name = "QUEST_START_61011", event = EventType.EVENT_QUEST_START, source = "7308415", condition = "", action = "action_EVENT_QUEST_START_61011" }
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
		regions = { 61001, 61003, 61004 },
		triggers = { "ENTER_REGION_61001", "QUEST_START_61002", "ENTER_REGION_61003", "ENTER_REGION_61004", "QUEST_START_61005", "QUEST_FINISH_61006", "QUEST_FINISH_61007", "QUEST_FINISH_61008", "QUEST_FINISH_61009", "TIME_AXIS_PASS_61010", "QUEST_START_61011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_61001(context, evt)
	if evt.param1 ~= 61001 then return false end
	
	local curQuestState = ScriptLib.GetHostQuestState(context,7308403)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_61001(context, evt)
	-- 调用提示id为 730840101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730840101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建标识为"reminder"，时间节点为{30}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "reminder", {30}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_61002(context, evt)
	-- 调用提示id为 730840201 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730840201) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_61003(context, evt)
	if evt.param1 ~= 61003 then return false end
	
	local curQuestState = ScriptLib.GetHostQuestState(context,7308404)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_61003(context, evt)
	-- 调用提示id为 730840301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730840301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_61004(context, evt)
	if evt.param1 ~= 61004 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_61004(context, evt)
	-- 调用提示id为 730840401 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730840401) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-2953.98, y=60.76698, z=4612.459}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2953.98, y=60.76698, z=4612.459}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_61005(context, evt)
	-- 调用提示id为 730840501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730840501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_61006(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7302613)
	if curQuestState == -1 then
	   return false
	end
	if curQuestState == 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_61006(context, evt)
	-- 调用提示id为 730840601 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730840601) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_61007(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7302613)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_61007(context, evt)
	-- 调用提示id为 730840701 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730840701) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_61008(context, evt)
	-- 调用提示id为 730840801 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730840801) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_61009(context, evt)
	-- 调用提示id为 730840901 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730840901) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_61010(context, evt)
	if "reminder" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	local curQuestState = ScriptLib.GetHostQuestState(context,7308403)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_61010(context, evt)
	-- 调用提示id为 730840103 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730840103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-2982.271, y=21.09952, z=4436.112}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2982.271, y=21.09952, z=4436.112}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 停止标识为"reminder"的时间轴
	ScriptLib.EndTimeAxis(context, "reminder")
	
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_61011(context, evt)
	-- 调用提示id为 730840803 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 730840803) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end
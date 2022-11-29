-- 基础信息
local base_info = {
	group_id = 133308154
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
	{ config_id = 154002, shape = RegionShape.CUBIC, size = { x = 50.000, y = 20.000, z = 30.000 }, pos = { x = -2147.288, y = 299.505, z = 4041.465 }, area_id = 26 },
	{ config_id = 154007, shape = RegionShape.CUBIC, size = { x = 20.000, y = 20.000, z = 20.000 }, pos = { x = -2121.256, y = 54.410, z = 4353.393 }, area_id = 26 },
	{ config_id = 154011, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2461.633, y = 28.736, z = 4317.543 }, area_id = 26 },
	{ config_id = 154015, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2147.284, y = 268.206, z = 4177.061 }, area_id = 26 }
}

-- 触发器
triggers = {
	{ config_id = 1154001, name = "QUEST_FINISH_154001", event = EventType.EVENT_QUEST_FINISH, source = "7305204", condition = "", action = "action_EVENT_QUEST_FINISH_154001" },
	{ config_id = 1154002, name = "ENTER_REGION_154002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_154002", action = "action_EVENT_ENTER_REGION_154002" },
	{ config_id = 1154003, name = "QUEST_FINISH_154003", event = EventType.EVENT_QUEST_FINISH, source = "7305206", condition = "", action = "action_EVENT_QUEST_FINISH_154003" },
	{ config_id = 1154004, name = "QUEST_FINISH_154004", event = EventType.EVENT_QUEST_FINISH, source = "7305208", condition = "", action = "action_EVENT_QUEST_FINISH_154004" },
	{ config_id = 1154005, name = "QUEST_FINISH_154005", event = EventType.EVENT_QUEST_FINISH, source = "7305212", condition = "", action = "action_EVENT_QUEST_FINISH_154005" },
	{ config_id = 1154006, name = "QUEST_FINISH_154006", event = EventType.EVENT_QUEST_FINISH, source = "7305248", condition = "", action = "action_EVENT_QUEST_FINISH_154006" },
	{ config_id = 1154007, name = "ENTER_REGION_154007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_154007", action = "action_EVENT_ENTER_REGION_154007" },
	{ config_id = 1154008, name = "QUEST_FINISH_154008", event = EventType.EVENT_QUEST_FINISH, source = "7305220", condition = "", action = "action_EVENT_QUEST_FINISH_154008" },
	{ config_id = 1154009, name = "QUEST_START_154009", event = EventType.EVENT_QUEST_START, source = "7305219", condition = "", action = "action_EVENT_QUEST_START_154009" },
	{ config_id = 1154010, name = "QUEST_FINISH_154010", event = EventType.EVENT_QUEST_FINISH, source = "7305219", condition = "", action = "action_EVENT_QUEST_FINISH_154010" },
	{ config_id = 1154011, name = "ENTER_REGION_154011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_154011", action = "action_EVENT_ENTER_REGION_154011" },
	{ config_id = 1154012, name = "QUEST_FINISH_154012", event = EventType.EVENT_QUEST_FINISH, source = "7305224", condition = "", action = "action_EVENT_QUEST_FINISH_154012" },
	{ config_id = 1154013, name = "QUEST_FINISH_154013", event = EventType.EVENT_QUEST_FINISH, source = "7305234", condition = "", action = "action_EVENT_QUEST_FINISH_154013" },
	{ config_id = 1154014, name = "QUEST_FINISH_154014", event = EventType.EVENT_QUEST_FINISH, source = "7305236", condition = "", action = "action_EVENT_QUEST_FINISH_154014" },
	{ config_id = 1154015, name = "ENTER_REGION_154015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_154015", action = "action_EVENT_ENTER_REGION_154015" }
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
		regions = { 154002, 154007, 154011, 154015 },
		triggers = { "QUEST_FINISH_154001", "ENTER_REGION_154002", "QUEST_FINISH_154003", "QUEST_FINISH_154004", "QUEST_FINISH_154005", "QUEST_FINISH_154006", "ENTER_REGION_154007", "QUEST_FINISH_154008", "QUEST_START_154009", "QUEST_FINISH_154010", "ENTER_REGION_154011", "QUEST_FINISH_154012", "QUEST_FINISH_154013", "QUEST_FINISH_154014", "ENTER_REGION_154015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_154001(context, evt)
	-- 调用提示id为 1000050000 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000050000) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_154002(context, evt)
	if evt.param1 ~= 154002 then return false end
	
	local curQuestState = ScriptLib.GetHostQuestState(context,7305205)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_154002(context, evt)
	-- 调用提示id为 1000050045 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000050045) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_154003(context, evt)
	-- 调用提示id为 1000050003 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000050003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标{x=-2088.326, y=153.7259, z=4408.542}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2088.326, y=153.7259, z=4408.542}
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
function action_EVENT_QUEST_FINISH_154004(context, evt)
	-- 调用提示id为 1000050006 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000050006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_154005(context, evt)
	-- 调用提示id为 1000050007 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000050007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_154006(context, evt)
	-- 调用提示id为 1000050009 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000050009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_154007(context, evt)
	if evt.param1 ~= 154007 then return false end
	
	local curQuestState = ScriptLib.GetHostQuestState(context,7305216)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_154007(context, evt)
	-- 调用提示id为 1000050010 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000050010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_154008(context, evt)
	-- 调用提示id为 1000050018 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000050018) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_154009(context, evt)
	-- 调用提示id为 1000050026 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000050026) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_154010(context, evt)
	-- 调用提示id为 1000050029 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000050029) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_154011(context, evt)
	if evt.param1 ~= 154011 then return false end
	
	local curQuestState = ScriptLib.GetHostQuestState(context,7305251)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_154011(context, evt)
	-- 调用提示id为 1000050032 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000050032) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_154012(context, evt)
	-- 调用提示id为 1000050035 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000050035) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_154013(context, evt)
	-- 调用提示id为 1000050040 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000050040) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_154014(context, evt)
	-- 调用提示id为 1000050042 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000050042) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_154015(context, evt)
	if evt.param1 ~= 154015 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	local curQuestState = ScriptLib.GetHostQuestState(context,7305204)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 3 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_154015(context, evt)
	-- 调用提示id为 1000050052 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1000050052) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end
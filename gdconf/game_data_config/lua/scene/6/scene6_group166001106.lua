-- 基础信息
local base_info = {
	group_id = 166001106
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 106016, monster_id = 26060101, pos = { x = 260.691, y = 165.998, z = 803.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "雷萤", area_id = 300 },
	{ config_id = 106017, monster_id = 26060101, pos = { x = 261.434, y = 167.230, z = 806.475 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "雷萤", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 106001, gadget_id = 70290366, pos = { x = 238.146, y = 158.204, z = 725.711 }, rot = { x = 341.269, y = 0.000, z = 0.000 }, level = 1, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 106003, gadget_id = 70290366, pos = { x = 325.999, y = 183.095, z = 790.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 106004, gadget_id = 70290366, pos = { x = 258.537, y = 166.958, z = 805.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 106005, gadget_id = 70290366, pos = { x = 180.566, y = 153.976, z = 787.092 }, rot = { x = 17.859, y = 44.113, z = 0.000 }, level = 32, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 106006, gadget_id = 70290366, pos = { x = 311.359, y = 164.854, z = 773.766 }, rot = { x = 0.000, y = 67.610, z = 20.085 }, level = 32, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 106019, gadget_id = 70290324, pos = { x = 305.963, y = 161.954, z = 776.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 106020, gadget_id = 70290324, pos = { x = 302.363, y = 157.780, z = 769.314 }, rot = { x = 16.123, y = 287.798, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 106021, gadget_id = 70290323, pos = { x = 305.885, y = 161.188, z = 773.909 }, rot = { x = 5.574, y = 319.575, z = 6.505 }, level = 36, area_id = 300 }
}

-- 区域
regions = {
	{ config_id = 106018, shape = RegionShape.SPHERE, radius = 10, pos = { x = 259.021, y = 166.699, z = 804.842 }, area_id = 300 }
}

-- 触发器
triggers = {
	{ config_id = 1106002, name = "GADGET_STATE_CHANGE_106002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_106002", action = "action_EVENT_GADGET_STATE_CHANGE_106002" },
	{ config_id = 1106007, name = "GADGET_STATE_CHANGE_106007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_106007", action = "action_EVENT_GADGET_STATE_CHANGE_106007" },
	{ config_id = 1106008, name = "GADGET_STATE_CHANGE_106008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_106008", action = "action_EVENT_GADGET_STATE_CHANGE_106008" },
	{ config_id = 1106009, name = "GADGET_STATE_CHANGE_106009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_106009", action = "action_EVENT_GADGET_STATE_CHANGE_106009" },
	{ config_id = 1106010, name = "GADGET_STATE_CHANGE_106010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_106010", action = "action_EVENT_GADGET_STATE_CHANGE_106010" },
	{ config_id = 1106011, name = "VARIABLE_CHANGE_106011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_106011", action = "action_EVENT_VARIABLE_CHANGE_106011" },
	{ config_id = 1106012, name = "VARIABLE_CHANGE_106012", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_106012", action = "action_EVENT_VARIABLE_CHANGE_106012" },
	{ config_id = 1106013, name = "VARIABLE_CHANGE_106013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_106013", action = "action_EVENT_VARIABLE_CHANGE_106013" },
	{ config_id = 1106014, name = "VARIABLE_CHANGE_106014", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_106014", action = "action_EVENT_VARIABLE_CHANGE_106014" },
	{ config_id = 1106015, name = "VARIABLE_CHANGE_106015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_106015", action = "action_EVENT_VARIABLE_CHANGE_106015" },
	{ config_id = 1106018, name = "ENTER_REGION_106018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_106018" }
}

-- 变量
variables = {
	{ config_id = 1, name = "mush", value = 0, no_refresh = true }
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
		gadgets = { 106001, 106003, 106004, 106005, 106006, 106019, 106020, 106021 },
		regions = { 106018 },
		triggers = { "GADGET_STATE_CHANGE_106002", "GADGET_STATE_CHANGE_106007", "GADGET_STATE_CHANGE_106008", "GADGET_STATE_CHANGE_106009", "GADGET_STATE_CHANGE_106010", "VARIABLE_CHANGE_106011", "VARIABLE_CHANGE_106012", "VARIABLE_CHANGE_106013", "VARIABLE_CHANGE_106014", "VARIABLE_CHANGE_106015", "ENTER_REGION_106018" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_106002(context, evt)
	if 106001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_106002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "16600110601") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7106106") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "mush" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "mush", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_106007(context, evt)
	if 106003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_106007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "16600110602") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7106106") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "mush" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "mush", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_106008(context, evt)
	if 106004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_106008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "16600110603") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7106106") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "mush" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "mush", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_106009(context, evt)
	if 106005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_106009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "16600110604") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7106106") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "mush" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "mush", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_106010(context, evt)
	if 106006 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_106010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "16600110605") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7106106") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 针对当前group内变量名为 "mush" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "mush", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_106011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"mush"为1
	if ScriptLib.GetGroupVariableValue(context, "mush") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_106011(context, evt)
	-- 调用提示id为 60010324 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010324) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_106012(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"mush"为2
	if ScriptLib.GetGroupVariableValue(context, "mush") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_106012(context, evt)
	-- 调用提示id为 60010325 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010325) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_106013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"mush"为3
	if ScriptLib.GetGroupVariableValue(context, "mush") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_106013(context, evt)
	-- 调用提示id为 60010326 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010326) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_106014(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"mush"为4
	if ScriptLib.GetGroupVariableValue(context, "mush") ~= 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_106014(context, evt)
	-- 调用提示id为 60010327 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010327) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_106015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"mush"为5
	if ScriptLib.GetGroupVariableValue(context, "mush") ~= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_106015(context, evt)
	-- 调用提示id为 60010328 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 60010328) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_106018(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 106016, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 106017, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133220002
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
	-- 荒神社进圈任务完成大
	{ config_id = 2001, shape = RegionShape.SPHERE, radius = 50, pos = { x = -2664.261, y = 242.303, z = -4346.382 }, area_id = 11 },
	-- 荒神社进圈任务完成大
	{ config_id = 2002, shape = RegionShape.SPHERE, radius = 50, pos = { x = -2669.354, y = 229.177, z = -4323.137 }, area_id = 11 },
	{ config_id = 2003, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2719.477, y = 217.407, z = -4314.317 }, area_id = 11 },
	-- 荒神社进圈任务完成小
	{ config_id = 2004, shape = RegionShape.SPHERE, radius = 30, pos = { x = -2662.433, y = 223.363, z = -4305.530 }, area_id = 11 },
	-- 荒神社进圈任务完成大reminder
	{ config_id = 2005, shape = RegionShape.SPHERE, radius = 70, pos = { x = -2654.343, y = 229.177, z = -4357.481 }, area_id = 11 },
	-- 注目+reminder
	{ config_id = 2006, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2719.416, y = 217.407, z = -4314.331 }, area_id = 11 },
	-- 荒神社进圈任务完成大reminder
	{ config_id = 2007, shape = RegionShape.SPHERE, radius = 25, pos = { x = -2668.722, y = 226.290, z = -4287.915 }, area_id = 11 },
	{ config_id = 2008, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2708.799, y = 215.300, z = -4345.346 }, area_id = 11 },
	-- 荒神社进圈任务完成大
	{ config_id = 2009, shape = RegionShape.SPHERE, radius = 50, pos = { x = -2686.782, y = 237.463, z = -4335.069 }, area_id = 11 },
	{ config_id = 2011, shape = RegionShape.SPHERE, radius = 4, pos = { x = -2696.770, y = 216.477, z = -4323.804 }, area_id = 11 }
}

-- 触发器
triggers = {
	-- 荒神社进圈任务完成大
	{ config_id = 1002001, name = "ENTER_REGION_2001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2001", action = "action_EVENT_ENTER_REGION_2001", trigger_count = 0 },
	-- 荒神社进圈任务完成大
	{ config_id = 1002002, name = "ENTER_REGION_2002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2002", action = "action_EVENT_ENTER_REGION_2002", trigger_count = 0 },
	{ config_id = 1002003, name = "ENTER_REGION_2003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2003", action = "action_EVENT_ENTER_REGION_2003", trigger_count = 0 },
	-- 荒神社进圈任务完成小
	{ config_id = 1002004, name = "ENTER_REGION_2004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2004", action = "action_EVENT_ENTER_REGION_2004", trigger_count = 0 },
	-- 荒神社进圈任务完成大reminder
	{ config_id = 1002005, name = "ENTER_REGION_2005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2005", action = "action_EVENT_ENTER_REGION_2005" },
	-- 注目+reminder
	{ config_id = 1002006, name = "ENTER_REGION_2006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2006", action = "action_EVENT_ENTER_REGION_2006" },
	-- 荒神社进圈任务完成大reminder
	{ config_id = 1002007, name = "ENTER_REGION_2007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2007", action = "action_EVENT_ENTER_REGION_2007" },
	{ config_id = 1002008, name = "ENTER_REGION_2008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2008", action = "action_EVENT_ENTER_REGION_2008", trigger_count = 0 },
	-- 荒神社进圈任务完成大
	{ config_id = 1002009, name = "ENTER_REGION_2009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2009", action = "action_EVENT_ENTER_REGION_2009", trigger_count = 0 },
	{ config_id = 1002010, name = "QUEST_FINISH_2010", event = EventType.EVENT_QUEST_FINISH, source = "7210630", condition = "", action = "action_EVENT_QUEST_FINISH_2010", trigger_count = 0 },
	{ config_id = 1002011, name = "ENTER_REGION_2011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2011", action = "action_EVENT_ENTER_REGION_2011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "reminder", value = 0, no_refresh = true },
	{ config_id = 2, name = "first", value = 0, no_refresh = true },
	{ config_id = 3, name = "finish", value = 0, no_refresh = true }
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
		regions = { 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2011 },
		triggers = { "ENTER_REGION_2001", "ENTER_REGION_2002", "ENTER_REGION_2003", "ENTER_REGION_2004", "ENTER_REGION_2005", "ENTER_REGION_2006", "ENTER_REGION_2007", "ENTER_REGION_2008", "ENTER_REGION_2009", "QUEST_FINISH_2010", "ENTER_REGION_2011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = var < 1 & item get,
		monsters = { },
		gadgets = { },
		regions = { 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2011 },
		triggers = { "ENTER_REGION_2001", "ENTER_REGION_2002", "ENTER_REGION_2003", "ENTER_REGION_2004", "ENTER_REGION_2005", "ENTER_REGION_2006", "ENTER_REGION_2007", "ENTER_REGION_2008", "QUEST_FINISH_2010", "ENTER_REGION_2011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = var = 1,
		monsters = { },
		gadgets = { },
		regions = { 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2011 },
		triggers = { "ENTER_REGION_2001", "ENTER_REGION_2002", "ENTER_REGION_2003", "ENTER_REGION_2004", "ENTER_REGION_2005", "ENTER_REGION_2006", "ENTER_REGION_2007", "ENTER_REGION_2008", "QUEST_FINISH_2010", "ENTER_REGION_2011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_2001(context, evt)
	if evt.param1 ~= 2001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2002(context, evt)
	if evt.param1 ~= 2002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2003(context, evt)
	if evt.param1 ~= 2003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210202") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2004(context, evt)
	if evt.param1 ~= 2004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2005(context, evt)
	if evt.param1 ~= 2005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"reminder"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder") ~= 1 then
			return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2005(context, evt)
	-- 调用提示id为 7210701 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7210701) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "first" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "first", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2006(context, evt)
	if evt.param1 ~= 2006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"reminder"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder") ~= 1 then
			return false
	end
	
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2006(context, evt)
	-- 调用提示id为 7210717 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7210717) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 触发镜头注目，注目位置为坐标（-2680.965，218.1211，-4332.765），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2680.965, y=218.1211, z=-4332.765}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2007(context, evt)
	if evt.param1 ~= 2007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"reminder"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder") ~= 1 then
			return false
	end
	
	-- 判断变量"first"为0
	if ScriptLib.GetGroupVariableValue(context, "first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2007(context, evt)
	-- 调用提示id为 7210701 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7210701) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "first" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "first", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2008(context, evt)
	if evt.param1 ~= 2008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210202") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2009(context, evt)
	if evt.param1 ~= 2009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_2010(context, evt)
	-- 将本组内变量名为 "reminder" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2011(context, evt)
	if evt.param1 ~= 2011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210202") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end
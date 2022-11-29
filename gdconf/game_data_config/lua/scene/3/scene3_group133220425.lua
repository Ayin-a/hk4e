-- 基础信息
local base_info = {
	group_id = 133220425
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
	-- 第一个触发1
	{ config_id = 425001, shape = RegionShape.SPHERE, radius = 50, pos = { x = -2785.736, y = 223.442, z = -4413.618 }, area_id = 11 },
	-- 第一个触发2
	{ config_id = 425002, shape = RegionShape.SPHERE, radius = 50, pos = { x = -2767.677, y = 223.252, z = -4509.177 }, area_id = 11 },
	-- 往里走第一段 黑屏派蒙说话
	{ config_id = 425003, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2788.720, y = 223.983, z = -4406.527 }, area_id = 11 },
	-- 往里走第二段
	{ config_id = 425004, shape = RegionShape.SPHERE, radius = 25, pos = { x = -2789.029, y = 226.513, z = -4484.045 }, area_id = 11 },
	-- 往里走第三段
	{ config_id = 425005, shape = RegionShape.SPHERE, radius = 50, pos = { x = -2691.352, y = 244.232, z = -4477.966 }, area_id = 11 },
	-- 往里走第四段
	{ config_id = 425006, shape = RegionShape.SPHERE, radius = 25, pos = { x = -2663.152, y = 248.212, z = -4476.033 }, area_id = 11 },
	-- 往里走第四段，派蒙提示打怪
	{ config_id = 425007, shape = RegionShape.SPHERE, radius = 15, pos = { x = -2656.035, y = 253.266, z = -4475.878 }, area_id = 11 },
	-- 往里走第一段 黑屏派蒙说话
	{ config_id = 425008, shape = RegionShape.SPHERE, radius = 10, pos = { x = -2799.066, y = 224.752, z = -4458.086 }, area_id = 11 },
	-- 往里走第一段 黑屏派蒙说话
	{ config_id = 425009, shape = RegionShape.SPHERE, radius = 20, pos = { x = -2766.674, y = 227.861, z = -4505.449 }, area_id = 11 },
	-- 往里走第二段
	{ config_id = 425010, shape = RegionShape.SPHERE, radius = 25, pos = { x = -2753.931, y = 225.883, z = -4455.559 }, area_id = 11 },
	-- 往里走第二段
	{ config_id = 425011, shape = RegionShape.SPHERE, radius = 25, pos = { x = -2762.398, y = 231.423, z = -4500.396 }, area_id = 11 }
}

-- 触发器
triggers = {
	-- 第一个触发1
	{ config_id = 1425001, name = "ENTER_REGION_425001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_425001", action = "action_EVENT_ENTER_REGION_425001", trigger_count = 0 },
	-- 第一个触发2
	{ config_id = 1425002, name = "ENTER_REGION_425002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_425002", action = "action_EVENT_ENTER_REGION_425002", trigger_count = 0 },
	-- 往里走第一段 黑屏派蒙说话
	{ config_id = 1425003, name = "ENTER_REGION_425003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_425003", action = "action_EVENT_ENTER_REGION_425003" },
	-- 往里走第二段
	{ config_id = 1425004, name = "ENTER_REGION_425004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_425004", action = "action_EVENT_ENTER_REGION_425004" },
	-- 往里走第三段
	{ config_id = 1425005, name = "ENTER_REGION_425005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_425005", action = "action_EVENT_ENTER_REGION_425005" },
	-- 往里走第四段
	{ config_id = 1425006, name = "ENTER_REGION_425006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_425006", action = "action_EVENT_ENTER_REGION_425006" },
	-- 往里走第四段，派蒙提示打怪
	{ config_id = 1425007, name = "ENTER_REGION_425007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_425007", action = "action_EVENT_ENTER_REGION_425007" },
	-- 往里走第一段 黑屏派蒙说话
	{ config_id = 1425008, name = "ENTER_REGION_425008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_425008", action = "action_EVENT_ENTER_REGION_425008" },
	-- 往里走第一段 黑屏派蒙说话
	{ config_id = 1425009, name = "ENTER_REGION_425009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_425009", action = "action_EVENT_ENTER_REGION_425009" },
	-- 往里走第二段
	{ config_id = 1425010, name = "ENTER_REGION_425010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_425010", action = "action_EVENT_ENTER_REGION_425010" },
	-- 往里走第二段
	{ config_id = 1425011, name = "ENTER_REGION_425011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_425011", action = "action_EVENT_ENTER_REGION_425011" }
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
	suite = 6,
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
		regions = { 425001, 425002 },
		triggers = { "ENTER_REGION_425001", "ENTER_REGION_425002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 425003, 425008, 425009 },
		triggers = { "ENTER_REGION_425003", "ENTER_REGION_425008", "ENTER_REGION_425009" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 425004, 425010, 425011 },
		triggers = { "ENTER_REGION_425004", "ENTER_REGION_425010", "ENTER_REGION_425011" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 425005 },
		triggers = { "ENTER_REGION_425005" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 425006, 425007 },
		triggers = { "ENTER_REGION_425006", "ENTER_REGION_425007" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
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
function condition_EVENT_ENTER_REGION_425001(context, evt)
	if evt.param1 ~= 425001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_425001(context, evt)
	-- 针对当前group内变量名为 "enter" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "enter", 1, 133220668) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210810") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_425002(context, evt)
	if evt.param1 ~= 425002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_425002(context, evt)
	-- 针对当前group内变量名为 "enter" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "enter", 1, 133220668) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "fin_7210810") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_425003(context, evt)
	if evt.param1 ~= 425003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_425003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7210801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_425004(context, evt)
	if evt.param1 ~= 425004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_425004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7210802") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 322072805 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322072805) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_425005(context, evt)
	if evt.param1 ~= 425005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_425005(context, evt)
	-- 调用提示id为 322072808 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322072808) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133220425, suite = 5 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_425006(context, evt)
	if evt.param1 ~= 425006 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_425006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7210812") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 322072810 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322072810) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_425007(context, evt)
	if evt.param1 ~= 425007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_425007(context, evt)
	-- 触发镜头注目，注目位置为坐标（-2654.37，253.77，-4474.47），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-2654.37, y=253.77, z=-4474.47}
	  local pos_follow = {x=-3, y=1, z=-3}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 322072812 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322072812) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_425008(context, evt)
	if evt.param1 ~= 425008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_425008(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7210801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_425009(context, evt)
	if evt.param1 ~= 425009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_425009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7210801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_425010(context, evt)
	if evt.param1 ~= 425010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_425010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7210802") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 322072805 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322072805) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_425011(context, evt)
	if evt.param1 ~= 425011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_425011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7210802") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 322072805 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 322072805) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end
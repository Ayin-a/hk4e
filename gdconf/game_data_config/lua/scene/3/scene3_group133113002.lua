-- 基础信息
local base_info = {
	group_id = 133113002
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
	{ config_id = 2001, shape = RegionShape.SPHERE, radius = 12, pos = { x = -379.472, y = 215.343, z = -1155.274 }, area_id = 7 },
	{ config_id = 2002, shape = RegionShape.SPHERE, radius = 6.2, pos = { x = -393.900, y = 212.645, z = -1149.540 }, area_id = 7 },
	{ config_id = 2003, shape = RegionShape.SPHERE, radius = 8, pos = { x = -399.985, y = 208.211, z = -1139.258 }, area_id = 7 },
	{ config_id = 2004, shape = RegionShape.SPHERE, radius = 6.7, pos = { x = -387.732, y = 212.432, z = -1141.675 }, area_id = 7 },
	{ config_id = 2005, shape = RegionShape.SPHERE, radius = 8, pos = { x = -411.109, y = 209.716, z = -1129.847 }, area_id = 7 },
	{ config_id = 2006, shape = RegionShape.SPHERE, radius = 9.1, pos = { x = -418.459, y = 213.368, z = -1123.924 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1002001, name = "ENTER_REGION_2001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_2001" },
	{ config_id = 1002002, name = "ENTER_REGION_2002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_2002" },
	{ config_id = 1002003, name = "ENTER_REGION_2003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_2003" },
	{ config_id = 1002004, name = "ENTER_REGION_2004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_2004" },
	{ config_id = 1002005, name = "ENTER_REGION_2005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_2005" },
	{ config_id = 1002006, name = "ENTER_REGION_2006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_2006" }
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
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 2001, 2002, 2003, 2004, 2005, 2006 },
		triggers = { "ENTER_REGION_2001", "ENTER_REGION_2002", "ENTER_REGION_2003", "ENTER_REGION_2004", "ENTER_REGION_2005", "ENTER_REGION_2006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_2001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13311300201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-379,y=215,z=-1155}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110169, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_2002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13311300201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-393,y=212,z=-1149}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110169, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_2003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13311300201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-400,y=208,z=-1139}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110169, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_2004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13311300201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-387,y=212,z=-1141}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110169, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_2005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13311300201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-411,y=209,z=-1129}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110169, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_2006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13311300201") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-418,y=213,z=-1123}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110169, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end
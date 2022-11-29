-- 基础信息
local base_info = {
	group_id = 133304124
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
	{ config_id = 124001, gadget_id = 70220008, pos = { x = -1340.786, y = 198.859, z = 3199.183 }, rot = { x = 12.290, y = 263.127, z = 354.555 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_NEARBY, area_id = 23 },
	{ config_id = 124002, gadget_id = 70220015, pos = { x = -1345.127, y = 197.622, z = 3199.991 }, rot = { x = 290.915, y = 327.873, z = 311.570 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 23 },
	{ config_id = 124003, gadget_id = 70220065, pos = { x = -1347.823, y = 196.639, z = 3204.633 }, rot = { x = 6.309, y = 354.377, z = 9.157 }, level = 30, area_id = 23 },
	{ config_id = 124004, gadget_id = 70220067, pos = { x = -1332.625, y = 199.382, z = 3199.725 }, rot = { x = 1.003, y = 353.262, z = 0.373 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 23 },
	{ config_id = 124005, gadget_id = 70360001, pos = { x = -1340.786, y = 198.859, z = 3199.183 }, rot = { x = 12.290, y = 263.127, z = 354.555 }, level = 30, area_id = 23 },
	{ config_id = 124006, gadget_id = 70360001, pos = { x = -1345.156, y = 197.759, z = 3200.035 }, rot = { x = 24.299, y = 358.059, z = 10.397 }, level = 30, area_id = 23 },
	{ config_id = 124007, gadget_id = 70360001, pos = { x = -1347.823, y = 196.639, z = 3204.633 }, rot = { x = 6.309, y = 354.377, z = 9.157 }, level = 30, area_id = 23 },
	{ config_id = 124008, gadget_id = 70360001, pos = { x = -1332.632, y = 199.427, z = 3199.963 }, rot = { x = 18.178, y = 356.991, z = 357.901 }, level = 30, area_id = 23 },
	{ config_id = 124009, gadget_id = 70211001, pos = { x = -1338.426, y = 198.142, z = 3202.966 }, rot = { x = 22.309, y = 2.032, z = 10.511 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 124010, gadget_id = 70220062, pos = { x = -1336.752, y = 199.417, z = 3198.552 }, rot = { x = 355.464, y = 351.831, z = 358.380 }, level = 30, area_id = 23 },
	{ config_id = 124011, gadget_id = 70360001, pos = { x = -1336.752, y = 199.417, z = 3198.552 }, rot = { x = 355.464, y = 351.831, z = 358.380 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1124012, name = "GADGET_CREATE_124012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_124012", action = "action_EVENT_GADGET_CREATE_124012", trigger_count = 0 },
	{ config_id = 1124013, name = "GADGET_CREATE_124013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_124013", action = "action_EVENT_GADGET_CREATE_124013", trigger_count = 0 },
	{ config_id = 1124014, name = "GADGET_CREATE_124014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_124014", action = "action_EVENT_GADGET_CREATE_124014", trigger_count = 0 },
	{ config_id = 1124015, name = "GADGET_CREATE_124015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_124015", action = "action_EVENT_GADGET_CREATE_124015", trigger_count = 0 },
	{ config_id = 1124016, name = "SELECT_OPTION_124016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_124016", action = "action_EVENT_SELECT_OPTION_124016" },
	{ config_id = 1124017, name = "SELECT_OPTION_124017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_124017", action = "action_EVENT_SELECT_OPTION_124017" },
	{ config_id = 1124018, name = "GADGET_CREATE_124018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_124018", action = "action_EVENT_GADGET_CREATE_124018" },
	{ config_id = 1124020, name = "SELECT_OPTION_124020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_124020", action = "action_EVENT_SELECT_OPTION_124020" },
	{ config_id = 1124021, name = "SELECT_OPTION_124021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_124021", action = "action_EVENT_SELECT_OPTION_124021" },
	{ config_id = 1124022, name = "SELECT_OPTION_124022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_124022", action = "action_EVENT_SELECT_OPTION_124022" },
	{ config_id = 1124023, name = "ANY_GADGET_DIE_124023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_124023" },
	{ config_id = 1124024, name = "TIME_AXIS_PASS_124024", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_124024", action = "action_EVENT_TIME_AXIS_PASS_124024" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1124019, name = "TIME_AXIS_PASS_124019", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_124019", action = "action_EVENT_TIME_AXIS_PASS_124019", trigger_count = 0 }
	}
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
		gadgets = { 124001, 124002, 124003, 124004, 124005, 124006, 124007, 124008, 124010, 124011 },
		regions = { },
		triggers = { "GADGET_CREATE_124012", "GADGET_CREATE_124013", "GADGET_CREATE_124014", "GADGET_CREATE_124015", "SELECT_OPTION_124016", "SELECT_OPTION_124017", "GADGET_CREATE_124018", "SELECT_OPTION_124020", "SELECT_OPTION_124021", "SELECT_OPTION_124022", "ANY_GADGET_DIE_124023", "TIME_AXIS_PASS_124024" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 124009 },
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
function condition_EVENT_GADGET_CREATE_124012(context, evt)
	if 124005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_124012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304124, 124005, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_124013(context, evt)
	if 124006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_124013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304124, 124006, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_124014(context, evt)
	if 124007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_124014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304124, 124007, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_124015(context, evt)
	if 124008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_124015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304124, 124008, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_124016(context, evt)
	-- 判断是gadgetid 124006 option_id 91
	if 124006 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_124016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7324902_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304124, EntityType.GADGET, 124006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_124017(context, evt)
	-- 判断是gadgetid 124005 option_id 91
	if 124005 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_124017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7324902_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304124, EntityType.GADGET, 124005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_124018(context, evt)
	if 124011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_124018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304124, 124011, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_124020(context, evt)
	-- 判断是gadgetid 124007 option_id 91
	if 124007 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_124020(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7324902_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304124, EntityType.GADGET, 124007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_124021(context, evt)
	-- 判断是gadgetid 124008 option_id 91
	if 124008 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_124021(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7324902_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304124, EntityType.GADGET, 124008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_124022(context, evt)
	-- 判断是gadgetid 124011 option_id 91
	if 124011 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_124022(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7324902_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304124, EntityType.GADGET, 124011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_124023(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "73249_destroy") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 创建标识为"rmd_trigger"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "rmd_trigger", {2}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_124024(context, evt)
	if "rmd_trigger" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_124024(context, evt)
	-- 调用提示id为 7308502 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7308502) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 停止标识为"rmd_trigger"的时间轴
	ScriptLib.EndTimeAxis(context, "rmd_trigger")
	
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133304066
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
	{ config_id = 66001, gadget_id = 70310001, pos = { x = -1656.800, y = 335.147, z = 2340.227 }, rot = { x = 359.245, y = 260.732, z = 326.465 }, level = 30, area_id = 21 },
	{ config_id = 66002, gadget_id = 70220015, pos = { x = -1661.467, y = 334.989, z = 2339.550 }, rot = { x = 309.287, y = 355.984, z = 209.114 }, level = 30, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 21 },
	{ config_id = 66003, gadget_id = 70220065, pos = { x = -1666.098, y = 334.306, z = 2340.962 }, rot = { x = 21.284, y = 358.776, z = 357.055 }, level = 30, area_id = 21 },
	{ config_id = 66004, gadget_id = 70220067, pos = { x = -1669.382, y = 333.020, z = 2344.182 }, rot = { x = 18.303, y = 357.905, z = 3.590 }, level = 30, area_id = 21 },
	{ config_id = 66008, gadget_id = 70360001, pos = { x = -1656.861, y = 335.011, z = 2340.653 }, rot = { x = 359.245, y = 260.732, z = 326.465 }, level = 30, area_id = 21 },
	{ config_id = 66010, gadget_id = 70360001, pos = { x = -1661.838, y = 335.496, z = 2339.595 }, rot = { x = 23.137, y = 358.292, z = 9.135 }, level = 30, area_id = 21 },
	{ config_id = 66011, gadget_id = 70360001, pos = { x = -1666.098, y = 334.306, z = 2340.962 }, rot = { x = 21.284, y = 358.776, z = 357.055 }, level = 30, area_id = 21 },
	{ config_id = 66012, gadget_id = 70360001, pos = { x = -1669.389, y = 332.919, z = 2344.420 }, rot = { x = 18.303, y = 357.905, z = 3.590 }, level = 30, area_id = 21 },
	{ config_id = 66015, gadget_id = 70211001, pos = { x = -1662.589, y = 332.462, z = 2346.956 }, rot = { x = 10.429, y = 55.410, z = 21.696 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 66017, gadget_id = 70220066, pos = { x = -1668.400, y = 331.710, z = 2347.995 }, rot = { x = 23.361, y = 1.957, z = 8.927 }, level = 30, area_id = 21 },
	{ config_id = 66019, gadget_id = 70360001, pos = { x = -1668.401, y = 331.710, z = 2347.996 }, rot = { x = 23.361, y = 1.957, z = 8.927 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1066005, name = "GADGET_CREATE_66005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_66005", action = "action_EVENT_GADGET_CREATE_66005", trigger_count = 0 },
	{ config_id = 1066006, name = "GADGET_CREATE_66006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_66006", action = "action_EVENT_GADGET_CREATE_66006", trigger_count = 0 },
	{ config_id = 1066007, name = "GADGET_CREATE_66007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_66007", action = "action_EVENT_GADGET_CREATE_66007", trigger_count = 0 },
	{ config_id = 1066009, name = "GADGET_CREATE_66009", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_66009", action = "action_EVENT_GADGET_CREATE_66009", trigger_count = 0 },
	{ config_id = 1066013, name = "SELECT_OPTION_66013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_66013", action = "action_EVENT_SELECT_OPTION_66013" },
	{ config_id = 1066014, name = "SELECT_OPTION_66014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_66014", action = "action_EVENT_SELECT_OPTION_66014" },
	{ config_id = 1066016, name = "ANY_GADGET_DIE_66016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_66016" },
	{ config_id = 1066018, name = "GADGET_CREATE_66018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_66018", action = "action_EVENT_GADGET_CREATE_66018" },
	{ config_id = 1066021, name = "SELECT_OPTION_66021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_66021", action = "action_EVENT_SELECT_OPTION_66021" },
	{ config_id = 1066022, name = "SELECT_OPTION_66022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_66022", action = "action_EVENT_SELECT_OPTION_66022" },
	{ config_id = 1066023, name = "SELECT_OPTION_66023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_66023", action = "action_EVENT_SELECT_OPTION_66023" },
	{ config_id = 1066024, name = "TIME_AXIS_PASS_66024", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_66024", action = "action_EVENT_TIME_AXIS_PASS_66024" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1066020, name = "TIME_AXIS_PASS_66020", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_66020", action = "action_EVENT_TIME_AXIS_PASS_66020", trigger_count = 0 }
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
		gadgets = { 66001, 66002, 66003, 66004, 66008, 66010, 66011, 66012, 66017, 66019 },
		regions = { },
		triggers = { "GADGET_CREATE_66005", "GADGET_CREATE_66006", "GADGET_CREATE_66007", "GADGET_CREATE_66009", "SELECT_OPTION_66013", "SELECT_OPTION_66014", "ANY_GADGET_DIE_66016", "GADGET_CREATE_66018", "SELECT_OPTION_66021", "SELECT_OPTION_66022", "SELECT_OPTION_66023", "TIME_AXIS_PASS_66024" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 66015 },
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
function condition_EVENT_GADGET_CREATE_66005(context, evt)
	if 66008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_66005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304066, 66008, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_66006(context, evt)
	if 66012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_66006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304066, 66012, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_66007(context, evt)
	if 66010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_66007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304066, 66010, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_66009(context, evt)
	if 66011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_66009(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304066, 66011, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_66013(context, evt)
	-- 判断是gadgetid 66008 option_id 91
	if 66008 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_66013(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7308503_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304066, EntityType.GADGET, 66008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_66014(context, evt)
	-- 判断是gadgetid 66010 option_id 91
	if 66010 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_66014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7308503_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304066, EntityType.GADGET, 66010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_66016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "73085_destroy") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 创建标识为"rmd_trigger"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "rmd_trigger", {2}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_66018(context, evt)
	if 66019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_66018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133304066, 66019, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_66021(context, evt)
	-- 判断是gadgetid 66011 option_id 91
	if 66011 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_66021(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7308503_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304066, EntityType.GADGET, 66011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_66022(context, evt)
	-- 判断是gadgetid 66012 option_id 91
	if 66012 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_66022(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7308503_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304066, EntityType.GADGET, 66012 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_66023(context, evt)
	-- 判断是gadgetid 66019 option_id 91
	if 66019 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_66023(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7308503_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304066, EntityType.GADGET, 66019 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_66024(context, evt)
	if "rmd_trigger" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_66024(context, evt)
	-- 调用提示id为 7308502 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7308502) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 停止标识为"rmd_trigger"的时间轴
	ScriptLib.EndTimeAxis(context, "rmd_trigger")
	
	
	return 0
end
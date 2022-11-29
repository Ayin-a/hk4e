-- 基础信息
local base_info = {
	group_id = 133315058
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
	{ config_id = 58001, gadget_id = 70220008, pos = { x = 345.588, y = 251.797, z = 2307.319 }, rot = { x = 7.374, y = 257.196, z = 352.092 }, level = 27, area_id = 20 },
	{ config_id = 58002, gadget_id = 70310001, pos = { x = 347.935, y = 251.634, z = 2321.996 }, rot = { x = 3.042, y = 356.463, z = 1.051 }, level = 27, area_id = 20 },
	{ config_id = 58003, gadget_id = 70220065, pos = { x = 358.512, y = 251.330, z = 2296.288 }, rot = { x = 359.745, y = 358.842, z = 359.478 }, level = 27, area_id = 20 },
	{ config_id = 58004, gadget_id = 70220067, pos = { x = 372.495, y = 251.802, z = 2300.123 }, rot = { x = 5.044, y = 357.487, z = 358.691 }, level = 27, area_id = 20 },
	{ config_id = 58005, gadget_id = 70360001, pos = { x = 345.588, y = 251.797, z = 2307.319 }, rot = { x = 7.260, y = 257.213, z = 351.964 }, level = 27, area_id = 20 },
	{ config_id = 58006, gadget_id = 70360001, pos = { x = 347.935, y = 251.634, z = 2321.996 }, rot = { x = 3.042, y = 356.463, z = 1.051 }, level = 27, area_id = 20 },
	{ config_id = 58007, gadget_id = 70360001, pos = { x = 358.567, y = 251.677, z = 2296.288 }, rot = { x = 0.167, y = 358.780, z = 351.643 }, level = 27, area_id = 20 },
	{ config_id = 58008, gadget_id = 70360001, pos = { x = 372.488, y = 251.783, z = 2300.361 }, rot = { x = 13.016, y = 357.846, z = 358.890 }, level = 27, area_id = 20 },
	{ config_id = 58009, gadget_id = 70211001, pos = { x = 378.499, y = 252.389, z = 2314.965 }, rot = { x = 355.667, y = 274.906, z = 6.040 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	{ config_id = 58010, gadget_id = 70220066, pos = { x = 366.436, y = 250.570, z = 2326.912 }, rot = { x = 357.346, y = 357.460, z = 9.728 }, level = 27, area_id = 20 },
	{ config_id = 58011, gadget_id = 70360001, pos = { x = 366.436, y = 250.570, z = 2326.912 }, rot = { x = 357.346, y = 357.460, z = 9.728 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1058012, name = "GADGET_CREATE_58012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_58012", action = "action_EVENT_GADGET_CREATE_58012", trigger_count = 0 },
	{ config_id = 1058013, name = "GADGET_CREATE_58013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_58013", action = "action_EVENT_GADGET_CREATE_58013", trigger_count = 0 },
	{ config_id = 1058014, name = "GADGET_CREATE_58014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_58014", action = "action_EVENT_GADGET_CREATE_58014", trigger_count = 0 },
	{ config_id = 1058015, name = "GADGET_CREATE_58015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_58015", action = "action_EVENT_GADGET_CREATE_58015", trigger_count = 0 },
	{ config_id = 1058016, name = "SELECT_OPTION_58016", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_58016", action = "action_EVENT_SELECT_OPTION_58016" },
	{ config_id = 1058017, name = "SELECT_OPTION_58017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_58017", action = "action_EVENT_SELECT_OPTION_58017" },
	{ config_id = 1058018, name = "GADGET_CREATE_58018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_58018", action = "action_EVENT_GADGET_CREATE_58018" },
	{ config_id = 1058020, name = "SELECT_OPTION_58020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_58020", action = "action_EVENT_SELECT_OPTION_58020" },
	{ config_id = 1058021, name = "SELECT_OPTION_58021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_58021", action = "action_EVENT_SELECT_OPTION_58021" },
	{ config_id = 1058022, name = "SELECT_OPTION_58022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_58022", action = "action_EVENT_SELECT_OPTION_58022" },
	{ config_id = 1058023, name = "ANY_GADGET_DIE_58023", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_58023" },
	{ config_id = 1058024, name = "TIME_AXIS_PASS_58024", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_58024", action = "action_EVENT_TIME_AXIS_PASS_58024" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1058019, name = "TIME_AXIS_PASS_58019", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_58019", action = "action_EVENT_TIME_AXIS_PASS_58019", trigger_count = 0 }
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
		gadgets = { 58001, 58002, 58003, 58004, 58005, 58006, 58007, 58008, 58010, 58011 },
		regions = { },
		triggers = { "GADGET_CREATE_58012", "GADGET_CREATE_58013", "GADGET_CREATE_58014", "GADGET_CREATE_58015", "SELECT_OPTION_58016", "SELECT_OPTION_58017", "GADGET_CREATE_58018", "SELECT_OPTION_58020", "SELECT_OPTION_58021", "SELECT_OPTION_58022", "ANY_GADGET_DIE_58023", "TIME_AXIS_PASS_58024" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 58009 },
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
function condition_EVENT_GADGET_CREATE_58012(context, evt)
	if 58005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_58012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133315058, 58005, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_58013(context, evt)
	if 58006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_58013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133315058, 58006, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_58014(context, evt)
	if 58007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_58014(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133315058, 58007, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_58015(context, evt)
	if 58008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_58015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133315058, 58008, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_58016(context, evt)
	-- 判断是gadgetid 58005 option_id 91
	if 58005 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_58016(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7325002_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133315058, EntityType.GADGET, 58005 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_58017(context, evt)
	-- 判断是gadgetid 58006 option_id 91
	if 58006 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_58017(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7325002_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133315058, EntityType.GADGET, 58006 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_58018(context, evt)
	if 58011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_58018(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133315058, 58011, {91}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_58020(context, evt)
	-- 判断是gadgetid 58007 option_id 91
	if 58007 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_58020(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7325002_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133315058, EntityType.GADGET, 58007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_58021(context, evt)
	-- 判断是gadgetid 58008 option_id 91
	if 58008 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_58021(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7325002_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133315058, EntityType.GADGET, 58008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_58022(context, evt)
	-- 判断是gadgetid 58011 option_id 91
	if 58011 ~= evt.param1 then
		return false	
	end
	
	if 91 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_58022(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7325002_fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133315058, EntityType.GADGET, 58011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_58023(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "73250_destroy") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 创建标识为"rmd_trigger"，时间节点为{2}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "rmd_trigger", {2}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_58024(context, evt)
	if "rmd_trigger" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_58024(context, evt)
	-- 调用提示id为 7308502 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7308502) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 停止标识为"rmd_trigger"的时间轴
	ScriptLib.EndTimeAxis(context, "rmd_trigger")
	
	
	return 0
end
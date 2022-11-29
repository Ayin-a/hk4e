-- 基础信息
local base_info = {
	group_id = 133302225
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
	{ config_id = 225001, gadget_id = 70360001, pos = { x = -160.131, y = 200.232, z = 2998.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 225002, gadget_id = 70360001, pos = { x = -164.979, y = 202.545, z = 2958.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 225003, gadget_id = 70360001, pos = { x = -170.397, y = 202.016, z = 2949.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 225007, gadget_id = 70300203, pos = { x = -160.131, y = 200.232, z = 2998.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 20 },
	{ config_id = 225008, gadget_id = 70300203, pos = { x = -164.896, y = 202.565, z = 2957.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 20 },
	{ config_id = 225009, gadget_id = 70300203, pos = { x = -170.372, y = 202.011, z = 2949.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1225004, name = "GADGET_CREATE_225004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_225004", action = "action_EVENT_GADGET_CREATE_225004", trigger_count = 0 },
	{ config_id = 1225005, name = "GADGET_CREATE_225005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_225005", action = "action_EVENT_GADGET_CREATE_225005", trigger_count = 0 },
	{ config_id = 1225006, name = "GADGET_CREATE_225006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_225006", action = "action_EVENT_GADGET_CREATE_225006", trigger_count = 0 },
	{ config_id = 1225010, name = "SELECT_OPTION_225010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_225010", action = "action_EVENT_SELECT_OPTION_225010", trigger_count = 0 },
	{ config_id = 1225011, name = "SELECT_OPTION_225011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_225011", action = "action_EVENT_SELECT_OPTION_225011", trigger_count = 0 },
	{ config_id = 1225012, name = "SELECT_OPTION_225012", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_225012", action = "action_EVENT_SELECT_OPTION_225012", trigger_count = 0 }
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
		gadgets = { 225001, 225002, 225003, 225007, 225008, 225009 },
		regions = { },
		triggers = { "GADGET_CREATE_225004", "GADGET_CREATE_225005", "GADGET_CREATE_225006", "SELECT_OPTION_225010", "SELECT_OPTION_225011", "SELECT_OPTION_225012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_225004(context, evt)
	if 225001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_225004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133302225, 225001, {39}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_225005(context, evt)
	if 225002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_225005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133302225, 225002, {39}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_225006(context, evt)
	if 225003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_225006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133302225, 225003, {39}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_225010(context, evt)
	-- 判断是gadgetid 225001 option_id 39
	if 225001 ~= evt.param1 then
		return false	
	end
	
	if 39 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_225010(context, evt)
	-- 调用提示id为 400207 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400207) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302225, EntityType.GADGET, 225007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除指定group： 133302225 ；指定config：225001；物件身上指定option：39；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133302225, 225001, 39) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_225011(context, evt)
	-- 判断是gadgetid 225002 option_id 39
	if 225002 ~= evt.param1 then
		return false	
	end
	
	if 39 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_225011(context, evt)
	-- 调用提示id为 400208 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400208) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302225, EntityType.GADGET, 225008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除指定group： 133302225 ；指定config：225002；物件身上指定option：39；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133302225, 225002, 39) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_225012(context, evt)
	-- 判断是gadgetid 225003 option_id 39
	if 225003 ~= evt.param1 then
		return false	
	end
	
	if 39 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_225012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7310902") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 400209 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400209) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302225, EntityType.GADGET, 225009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 删除指定group： 133302225 ；指定config：225003；物件身上指定option：39；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133302225, 225003, 39) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end
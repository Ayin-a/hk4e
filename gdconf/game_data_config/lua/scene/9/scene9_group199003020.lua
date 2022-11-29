-- 基础信息
local base_info = {
	group_id = 199003020
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
	{ config_id = 20001, gadget_id = 70950081, pos = { x = 10.383, y = 120.000, z = -366.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, drop_count = 1, area_id = 401 },
	{ config_id = 20003, gadget_id = 70360001, pos = { x = 10.623, y = 120.000, z = -366.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, worktop_config = { init_options = { 418 } }, area_id = 401 },
	{ config_id = 20004, gadget_id = 70211131, pos = { x = 15.187, y = 180.467, z = -353.713 }, rot = { x = 0.000, y = 237.764, z = 0.000 }, level = 16, chest_drop_id = 2004400, drop_count = 1, isOneoff = true, persistent = true, autopick = true, explore = { name = "chest", exp = 1 }, area_id = 401 },
	{ config_id = 20008, gadget_id = 70380316, pos = { x = 4.857, y = 120.711, z = -378.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	{ config_id = 20009, gadget_id = 70380316, pos = { x = 0.397, y = 123.993, z = -383.723 }, rot = { x = 0.000, y = 218.241, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	{ config_id = 20010, gadget_id = 70380315, pos = { x = -1.219, y = 130.211, z = -388.316 }, rot = { x = 0.000, y = 218.241, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	{ config_id = 20011, gadget_id = 70380316, pos = { x = 5.015, y = 128.361, z = -391.595 }, rot = { x = 0.000, y = 218.241, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	{ config_id = 20012, gadget_id = 70380315, pos = { x = 0.092, y = 132.525, z = -393.109 }, rot = { x = 0.000, y = 218.241, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	{ config_id = 20013, gadget_id = 70380316, pos = { x = -4.918, y = 134.706, z = -396.472 }, rot = { x = 0.000, y = 218.241, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	{ config_id = 20014, gadget_id = 70380316, pos = { x = -8.017, y = 138.902, z = -388.764 }, rot = { x = 0.000, y = 218.241, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	{ config_id = 20015, gadget_id = 70380316, pos = { x = -8.291, y = 143.367, z = -381.424 }, rot = { x = 0.000, y = 218.241, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	{ config_id = 20016, gadget_id = 70380316, pos = { x = -4.028, y = 148.551, z = -376.820 }, rot = { x = 0.000, y = 16.851, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	{ config_id = 20017, gadget_id = 70380315, pos = { x = -4.649, y = 152.736, z = -370.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	{ config_id = 20018, gadget_id = 70380316, pos = { x = 1.865, y = 154.548, z = -369.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	{ config_id = 20019, gadget_id = 70380316, pos = { x = 8.856, y = 158.883, z = -372.891 }, rot = { x = 0.000, y = 16.851, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	{ config_id = 20020, gadget_id = 70380316, pos = { x = 17.445, y = 163.013, z = -374.414 }, rot = { x = 0.000, y = 16.851, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	-- 最终
	{ config_id = 20021, gadget_id = 70360360, pos = { x = 15.114, y = 180.563, z = -353.542 }, rot = { x = 0.000, y = 352.585, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 20022, gadget_id = 70380316, pos = { x = 22.202, y = 166.455, z = -367.093 }, rot = { x = 0.000, y = 16.851, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	{ config_id = 20023, gadget_id = 70380316, pos = { x = 14.535, y = 170.494, z = -364.923 }, rot = { x = 0.000, y = 16.851, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	{ config_id = 20024, gadget_id = 70380315, pos = { x = 7.573, y = 173.996, z = -361.361 }, rot = { x = 0.000, y = 16.851, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	{ config_id = 20025, gadget_id = 70380316, pos = { x = 8.808, y = 175.867, z = -355.861 }, rot = { x = 0.000, y = 16.851, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
	{ config_id = 20030, gadget_id = 70290055, pos = { x = -4.693, y = 120.000, z = -367.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 20031, gadget_id = 70290055, pos = { x = 3.806, y = 120.000, z = -347.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 20032, gadget_id = 70290055, pos = { x = 36.349, y = 120.000, z = -336.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 20033, gadget_id = 70290055, pos = { x = 14.794, y = 120.000, z = -339.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 20034, gadget_id = 70290055, pos = { x = 25.554, y = 120.000, z = -360.157 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 20035, gadget_id = 70290055, pos = { x = 29.854, y = 120.000, z = -370.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 20036, gadget_id = 70290055, pos = { x = -18.287, y = 120.000, z = -379.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 },
	{ config_id = 20037, gadget_id = 70290055, pos = { x = 17.442, y = 120.000, z = -391.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401 }
}

-- 区域
regions = {
	{ config_id = 20006, shape = RegionShape.SPHERE, radius = 28, pos = { x = 10.303, y = 120.000, z = -366.909 }, area_id = 401 },
	{ config_id = 20038, shape = RegionShape.SPHERE, radius = 5, pos = { x = -7.245, y = 144.427, z = -377.870 }, area_id = 401 },
	{ config_id = 20040, shape = RegionShape.SPHERE, radius = 3.5, pos = { x = 4.415, y = 120.671, z = -379.088 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1020002, name = "SELECT_OPTION_20002", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_20002", action = "action_EVENT_SELECT_OPTION_20002", trigger_count = 0 },
	{ config_id = 1020005, name = "GROUP_LOAD_20005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_20005", trigger_count = 0 },
	{ config_id = 1020006, name = "ENTER_REGION_20006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_20006" },
	-- 出云平台
	{ config_id = 1020007, name = "SELECT_OPTION_20007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_20007", action = "action_EVENT_SELECT_OPTION_20007", trigger_count = 0 },
	{ config_id = 1020038, name = "ENTER_REGION_20038", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20038", action = "action_EVENT_ENTER_REGION_20038", trigger_count = 0 },
	{ config_id = 1020039, name = "GADGET_STATE_CHANGE_20039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_20039", action = "action_EVENT_GADGET_STATE_CHANGE_20039", trigger_count = 0 },
	{ config_id = 1020040, name = "ENTER_REGION_20040", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_20040", action = "action_EVENT_ENTER_REGION_20040", trigger_count = 0 },
	{ config_id = 1020041, name = "GROUP_LOAD_20041", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_20041", action = "action_EVENT_GROUP_LOAD_20041", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 1, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 20026, gadget_id = 70380315, pos = { x = -15.012, y = 138.509, z = -365.229 }, rot = { x = 0.000, y = 16.851, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
		{ config_id = 20027, gadget_id = 70380315, pos = { x = -12.428, y = 142.624, z = -379.195 }, rot = { x = 0.000, y = 16.851, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 },
		{ config_id = 20028, gadget_id = 70380316, pos = { x = -7.886, y = 144.294, z = -385.257 }, rot = { x = 0.000, y = 16.851, z = 0.000 }, level = 20, is_use_point_array = true, area_id = 401 }
	},
	triggers = {
		{ config_id = 1020029, name = "PLATFORM_REACH_POINT_20029", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_20029", action = "action_EVENT_PLATFORM_REACH_POINT_20029", trigger_count = 0 }
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
		gadgets = { 20001, 20003, 20030, 20031, 20032, 20033, 20034, 20035, 20036, 20037 },
		regions = { 20006, 20038 },
		triggers = { "SELECT_OPTION_20002", "GROUP_LOAD_20005", "ENTER_REGION_20006", "SELECT_OPTION_20007", "ENTER_REGION_20038", "GADGET_STATE_CHANGE_20039", "GROUP_LOAD_20041" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 20004, 20021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 20009, 20010, 20011, 20012, 20013, 20014, 20015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 20016, 20017, 20018, 20019, 20020, 20022, 20023, 20024, 20025 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 20008 },
		regions = { 20040 },
		triggers = { "ENTER_REGION_20040" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_20002(context, evt)
	-- 判断是gadgetid 20003 option_id 418
	if 20003 ~= evt.param1 then
		return false	
	end
	
	if 418 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_20002(context, evt)
	-- 删除指定group： 199003020 ；指定config：20003；物件身上指定option：418；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 199003020, 20003, 418) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 20001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_20005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 199003020, 20003, {418}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_20006(context, evt)
	-- 调用提示id为 1111237 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1111237) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_20007(context, evt)
	-- 判断是gadgetid 20003 option_id 418
	if 20003 ~= evt.param1 then
		return false	
	end
	
	if 418 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_20007(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003020, 5)
	
	-- 调用提示id为 1110993 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110993) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_20038(context, evt)
	if evt.param1 ~= 20038 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_20038(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003020, 4)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003020, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_20039(context, evt)
	if 20004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_20039(context, evt)
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7902011finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_20040(context, evt)
	if evt.param1 ~= 20040 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_20040(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003020, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_20041(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_20041(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q7902011finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133212292
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
	-- 正常水面
	{ config_id = 292003, gadget_id = 70380284, pos = { x = -3794.862, y = 254.812, z = -2334.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 321200114, start_route = false, persistent = true, area_id = 13 },
	-- 正常水面
	{ config_id = 292004, gadget_id = 70380284, pos = { x = -3826.912, y = 260.638, z = -2332.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
	-- 正常水面
	{ config_id = 292005, gadget_id = 70380284, pos = { x = -3812.868, y = 259.922, z = -2371.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 321200115, start_route = false, persistent = true, area_id = 13 },
	-- 带电水面
	{ config_id = 292008, gadget_id = 70380280, pos = { x = -3812.495, y = 259.922, z = -2371.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 292012, gadget_id = 70330105, pos = { x = -3820.436, y = 261.877, z = -2373.649 }, rot = { x = 5.594, y = 245.499, z = 359.415 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 292015, gadget_id = 70350081, pos = { x = -3823.127, y = 261.440, z = -2369.555 }, rot = { x = 0.000, y = 67.006, z = 0.000 }, level = 27, persistent = true, area_id = 13 },
	{ config_id = 292026, gadget_id = 70500000, pos = { x = -3809.433, y = 239.770, z = -2339.570 }, rot = { x = 0.000, y = 38.445, z = 0.000 }, level = 27, point_type = 9168, isOneoff = true, persistent = true, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1292001, name = "VARIABLE_CHANGE_292001", event = EventType.EVENT_VARIABLE_CHANGE, source = "292005_down", condition = "condition_EVENT_VARIABLE_CHANGE_292001", action = "action_EVENT_VARIABLE_CHANGE_292001" },
	{ config_id = 1292002, name = "GROUP_LOAD_292002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_292002", action = "action_EVENT_GROUP_LOAD_292002", trigger_count = 0 },
	{ config_id = 1292006, name = "GATHER_292006", event = EventType.EVENT_GATHER, source = "292026", condition = "condition_EVENT_GATHER_292006", action = "action_EVENT_GATHER_292006", trigger_count = 0 },
	{ config_id = 1292007, name = "QUEST_START_292007", event = EventType.EVENT_QUEST_START, source = "7213008", condition = "", action = "action_EVENT_QUEST_START_292007", trigger_count = 0 },
	-- 去掉山顶遗迹的带电水面
	{ config_id = 1292014, name = "GADGET_STATE_CHANGE_292014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_292014", action = "action_EVENT_GADGET_STATE_CHANGE_292014", trigger_count = 0 },
	-- 给按钮
	{ config_id = 1292016, name = "GADGET_CREATE_292016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_292016", action = "action_EVENT_GADGET_CREATE_292016", trigger_count = 0 },
	-- 开始山顶遗迹移动水面
	{ config_id = 1292017, name = "SELECT_OPTION_292017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_292017", action = "action_EVENT_SELECT_OPTION_292017", trigger_count = 0 },
	{ config_id = 1292023, name = "QUEST_START_292023", event = EventType.EVENT_QUEST_START, source = "7217001", condition = "condition_EVENT_QUEST_START_292023", action = "action_EVENT_QUEST_START_292023", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "292005_down", value = 0, no_refresh = true },
	{ config_id = 2, name = "allclear_1", value = 0, no_refresh = true },
	{ config_id = 3, name = "reminder", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 292013, gadget_id = 70330064, pos = { x = -3790.579, y = 278.978, z = -2404.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
		{ config_id = 292025, gadget_id = 70330064, pos = { x = -3852.568, y = 277.326, z = -2342.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 }
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
		gadgets = { 292003, 292004, 292005, 292008, 292012, 292015, 292026 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_292001", "GROUP_LOAD_292002", "GATHER_292006", "QUEST_START_292007", "GADGET_STATE_CHANGE_292014", "GADGET_CREATE_292016", "SELECT_OPTION_292017", "QUEST_START_292023" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_292001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"292005_down"为1
	if ScriptLib.GetGroupVariableValue(context, "292005_down") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_292001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7217005_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_292002(context, evt)
	-- 判断变量"292005_down"为1
	if ScriptLib.GetGroupVariableValue(context, "292005_down") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_292002(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 292005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_292006(context, evt)
	-- 判断变量"reminder"为1
	if ScriptLib.GetGroupVariableValue(context, "reminder") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_292006(context, evt)
	-- 调用提示id为 321230071 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321230071) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_292007(context, evt)
	-- 将本组内变量名为 "reminder" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "reminder", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_292014(context, evt)
	if 292012 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_292014(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 292008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_292016(context, evt)
	if 292015 ~= evt.param1 then
		return false
	end
	
	if 292015 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_292016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212292, 292015, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_292017(context, evt)
	-- 判断是gadgetid 292015 option_id 7
	if 292015 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_292017(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 292005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "292005_down" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "292005_down", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "allclear_1" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "allclear_1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 将configid为 292015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 292015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 133212292 ；指定config：292015；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133212292, 292015, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 292004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 292003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 292008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "default" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "default", 1, 133212269) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将configid为 292012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 292012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_292023(context, evt)
	-- 判断变量"292005_down"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "292005_down", 133212292) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_292023(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7217005_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133210100
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
	{ config_id = 100001, gadget_id = 70360185, pos = { x = -3782.270, y = 151.977, z = -1112.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 100005, gadget_id = 70360001, pos = { x = -3782.193, y = 152.050, z = -1112.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 100002, shape = RegionShape.SPHERE, radius = 50, pos = { x = -3782.270, y = 151.906, z = -1112.200 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1100002, name = "ENTER_REGION_100002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_100002", action = "action_EVENT_ENTER_REGION_100002" },
	{ config_id = 1100003, name = "GADGET_CREATE_100003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_100003", action = "action_EVENT_GADGET_CREATE_100003", trigger_count = 0 },
	{ config_id = 1100004, name = "QUEST_START_100004", event = EventType.EVENT_QUEST_START, source = "7214905", condition = "", action = "action_EVENT_QUEST_START_100004", trigger_count = 0 },
	{ config_id = 1100006, name = "SELECT_OPTION_100006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_100006", action = "action_EVENT_SELECT_OPTION_100006", trigger_count = 0 },
	{ config_id = 1100007, name = "TIME_AXIS_PASS_100007", event = EventType.EVENT_TIME_AXIS_PASS, source = "playreminder", condition = "condition_EVENT_TIME_AXIS_PASS_100007", action = "action_EVENT_TIME_AXIS_PASS_100007" },
	{ config_id = 1100008, name = "VARIABLE_CHANGE_100008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_100008", action = "action_EVENT_VARIABLE_CHANGE_100008", trigger_count = 0 },
	{ config_id = 1100026, name = "QUEST_START_100026", event = EventType.EVENT_QUEST_START, source = "7214904", condition = "", action = "action_EVENT_QUEST_START_100026", trigger_count = 0 },
	{ config_id = 1100027, name = "VARIABLE_CHANGE_100027", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_100027", action = "action_EVENT_VARIABLE_CHANGE_100027" },
	{ config_id = 1100032, name = "GADGET_STATE_CHANGE_100032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_100032", action = "action_EVENT_GADGET_STATE_CHANGE_100032" }
}

-- 变量
variables = {
	{ config_id = 1, name = "Gadget_Count1", value = 0, no_refresh = true },
	{ config_id = 2, name = "Gadget_Count2", value = 0, no_refresh = true },
	{ config_id = 3, name = "Gadget_Count3", value = 0, no_refresh = true },
	{ config_id = 4, name = "Gadget_Count4", value = 0, no_refresh = true },
	{ config_id = 5, name = "Success", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 100001, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_100026" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Gadget_Count1", value = 0, no_refresh = true },
			{ config_id = 2, name = "Gadget_Count2", value = 0, no_refresh = true },
			{ config_id = 3, name = "Gadget_Count3", value = 0, no_refresh = true },
			{ config_id = 4, name = "Gadget_Count4", value = 0, no_refresh = true },
			{ config_id = 5, name = "Success", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 100001, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Gadget_Count1", value = 0, no_refresh = true },
			{ config_id = 2, name = "Gadget_Count2", value = 0, no_refresh = true },
			{ config_id = 3, name = "Gadget_Count3", value = 0, no_refresh = true },
			{ config_id = 4, name = "Gadget_Count4", value = 0, no_refresh = true },
			{ config_id = 5, name = "Success", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 100001, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_100004", "TIME_AXIS_PASS_100007", "VARIABLE_CHANGE_100008", "VARIABLE_CHANGE_100027" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Gadget_Count1", value = 0, no_refresh = true },
			{ config_id = 2, name = "Gadget_Count2", value = 0, no_refresh = true },
			{ config_id = 3, name = "Gadget_Count3", value = 0, no_refresh = true },
			{ config_id = 4, name = "Gadget_Count4", value = 0, no_refresh = true },
			{ config_id = 5, name = "Success", value = 0, no_refresh = true }
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 100001, state = 201 },
			{ config_id = 100005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_CREATE_100003", "SELECT_OPTION_100006", "GADGET_STATE_CHANGE_100032" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Gadget_Count1", value = 0, no_refresh = true },
			{ config_id = 2, name = "Gadget_Count2", value = 0, no_refresh = true },
			{ config_id = 3, name = "Gadget_Count3", value = 0, no_refresh = true },
			{ config_id = 4, name = "Gadget_Count4", value = 0, no_refresh = true },
			{ config_id = 5, name = "Success", value = 0, no_refresh = true }
		}
	},
	[5] = {
		gadgets = {
			{ config_id = 100001, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Gadget_Count1", value = 0, no_refresh = true },
			{ config_id = 2, name = "Gadget_Count2", value = 0, no_refresh = true },
			{ config_id = 3, name = "Gadget_Count3", value = 0, no_refresh = true },
			{ config_id = 4, name = "Gadget_Count4", value = 0, no_refresh = true },
			{ config_id = 5, name = "Success", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_100002(context, evt)
	if evt.param1 ~= 100002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_100002(context, evt)
	-- 调用提示id为 32100115 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100115) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210100, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_100003(context, evt)
	if 100005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_100003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210100, 100005, {64}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_100004(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210100, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_100006(context, evt)
	-- 判断是gadgetid 100005 option_id 64
	if 100005 ~= evt.param1 then
		return false	
	end
	
	if 64 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_100006(context, evt)
	-- 将configid为 100001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 100001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_100007(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_100007(context, evt)
	-- 调用提示id为 32100116 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100116) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "Success" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Success", 2, 133210388) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Success" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Success", 2, 133210389) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Success" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Success", 2, 133210390) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Success" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Success", 2, 133210391) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_100008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Gadget_Count1"为1
	if ScriptLib.GetGroupVariableValue(context, "Gadget_Count1") ~= 1 then
			return false
	end
	
	-- 判断变量"Gadget_Count2"为1
	if ScriptLib.GetGroupVariableValue(context, "Gadget_Count2") ~= 1 then
			return false
	end
	
	-- 判断变量"Gadget_Count3"为1
	if ScriptLib.GetGroupVariableValue(context, "Gadget_Count3") ~= 1 then
			return false
	end
	
	-- 判断变量"Gadget_Count4"为1
	if ScriptLib.GetGroupVariableValue(context, "Gadget_Count4") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_100008(context, evt)
	-- 将本组内变量名为 "Success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Success", 1, 133210514) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_100026(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210100, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_100027(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Success"为1
	if ScriptLib.GetGroupVariableValue(context, "Success") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_100027(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214904") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "Success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Success", 1, 133210388) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Success", 1, 133210389) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Success", 1, 133210390) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Success", 1, 133210391) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 创建标识为"playreminder"，时间节点为{28}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "playreminder", {28}, false)
	
	
	-- 将本组内变量名为 "reminder" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "reminder", 1, 133210469) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_100032(context, evt)
	-- 检测config_id为100001的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 100001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_100032(context, evt)
	-- 删除指定group： 133210100 ；指定config：100005；物件身上指定option：64；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210100, 100005, 64) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 调用提示id为 32100117 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100117) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214905") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210100, 5)
	
	return 0
end
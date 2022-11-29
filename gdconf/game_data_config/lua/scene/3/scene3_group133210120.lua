-- 基础信息
local base_info = {
	group_id = 133210120
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
	{ config_id = 120022, npc_id = 20313, pos = { x = -3468.357, y = 214.500, z = -798.132 }, rot = { x = 0.000, y = 154.586, z = 0.000 }, area_id = 17 }
}

-- 装置
gadgets = {
	{ config_id = 120001, gadget_id = 70290083, pos = { x = -3465.162, y = 214.794, z = -794.259 }, rot = { x = 0.000, y = 183.925, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 120005, gadget_id = 70360001, pos = { x = -3465.272, y = 215.960, z = -795.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 120008, gadget_id = 70710091, pos = { x = -3468.100, y = 213.360, z = -797.950 }, rot = { x = 0.000, y = 145.073, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 120012, shape = RegionShape.SPHERE, radius = 50, pos = { x = -3478.751, y = 201.641, z = -827.571 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1120002, name = "GADGET_CREATE_120002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_120002", action = "action_EVENT_GADGET_CREATE_120002", trigger_count = 0 },
	{ config_id = 1120003, name = "QUEST_START_120003", event = EventType.EVENT_QUEST_START, source = "7214704", condition = "", action = "action_EVENT_QUEST_START_120003", trigger_count = 0 },
	{ config_id = 1120004, name = "SELECT_OPTION_120004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_120004", action = "action_EVENT_SELECT_OPTION_120004", trigger_count = 0 },
	{ config_id = 1120006, name = "QUEST_FINISH_120006", event = EventType.EVENT_QUEST_FINISH, source = "7214701", condition = "", action = "action_EVENT_QUEST_FINISH_120006", trigger_count = 0 },
	{ config_id = 1120007, name = "TIME_AXIS_PASS_120007", event = EventType.EVENT_TIME_AXIS_PASS, source = "changesuite", condition = "condition_EVENT_TIME_AXIS_PASS_120007", action = "action_EVENT_TIME_AXIS_PASS_120007", trigger_count = 0 },
	{ config_id = 1120009, name = "QUEST_FINISH_120009", event = EventType.EVENT_QUEST_FINISH, source = "7214704", condition = "", action = "action_EVENT_QUEST_FINISH_120009", trigger_count = 0 },
	{ config_id = 1120012, name = "ENTER_REGION_120012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_120012", action = "action_EVENT_ENTER_REGION_120012", trigger_count = 0 },
	{ config_id = 1120016, name = "QUEST_START_120016", event = EventType.EVENT_QUEST_START, source = "7214703", condition = "", action = "action_EVENT_QUEST_START_120016", trigger_count = 0 },
	{ config_id = 1120017, name = "GROUP_LOAD_120017", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_120017", trigger_count = 0 },
	{ config_id = 1120019, name = "VARIABLE_CHANGE_120019", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_120019", action = "action_EVENT_VARIABLE_CHANGE_120019", trigger_count = 0 },
	{ config_id = 1120020, name = "GADGET_STATE_CHANGE_120020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_120020", action = "action_EVENT_GADGET_STATE_CHANGE_120020" },
	{ config_id = 1120021, name = "QUEST_START_120021", event = EventType.EVENT_QUEST_START, source = "7214701", condition = "", action = "action_EVENT_QUEST_START_120021", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Gadget_Count", value = 0, no_refresh = true }
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
			{ config_id = 120001, state = 0 },
			{ config_id = 120008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_120021" },
		npcs = { 120022 },
		variables = {
			{ config_id = 1, name = "Gadget_Count", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 120001, state = 202 },
			{ config_id = 120008, state = 0 }
		},
		monsters = {
		},
		regions = { 120012 },
		triggers = { "QUEST_FINISH_120006", "ENTER_REGION_120012", "QUEST_START_120016" },
		npcs = { 120022 },
		variables = {
			{ config_id = 1, name = "Gadget_Count", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 120001, state = 202 },
			{ config_id = 120008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_120003", "VARIABLE_CHANGE_120019" },
		npcs = { 120022 },
		variables = {
			{ config_id = 1, name = "Gadget_Count", value = 0, no_refresh = true }
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 120001, state = 201 },
			{ config_id = 120005, state = 0 },
			{ config_id = 120008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_CREATE_120002", "SELECT_OPTION_120004", "QUEST_FINISH_120009", "GADGET_STATE_CHANGE_120020" },
		npcs = { 120022 },
		variables = {
			{ config_id = 1, name = "Gadget_Count", value = 0, no_refresh = true }
		}
	},
	[5] = {
		gadgets = {
			{ config_id = 120001, state = 0 },
			{ config_id = 120008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { 120022 },
		variables = {
			{ config_id = 1, name = "Gadget_Count", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_120002(context, evt)
	if 120005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_120002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210120, 120005, {63}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_120003(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210120, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_120004(context, evt)
	-- 判断是gadgetid 120005 option_id 63
	if 120005 ~= evt.param1 then
		return false	
	end
	
	if 63 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_120004(context, evt)
	-- 将configid为 120001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 120001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_120006(context, evt)
	-- 调用提示id为 32100103 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_120007(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_120007(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210120, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_120009(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210120, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_120012(context, evt)
	if evt.param1 ~= 120012 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_120012(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214701") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_120016(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210120, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_120017(context, evt)
	-- 判断变量"Gadget_Count"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "Gadget_Count", 133210121) == 3 then
	    ScriptLib.ChangeGroupVariableValue(context, "Gadget_Count", 1)
	end
	-- 判断变量"Gadget_Count"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "Gadget_Count", 133210261) == 3 then
	    ScriptLib.ChangeGroupVariableValue(context, "Gadget_Count", 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_120019(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Gadget_Count"为2
	if ScriptLib.GetGroupVariableValue(context, "Gadget_Count") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_120019(context, evt)
	-- 调用提示id为 32100108 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100108) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "Success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Success", 1, 133210121) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "Success" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Success", 1, 133210261) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214703") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_120020(context, evt)
	-- 检测config_id为120001的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 120001 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_120020(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214704") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133210120 ；指定config：120005；物件身上指定option：63；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210120, 120005, 63) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "SucCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "SucCount", 1, 133210416) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210120, 5)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_120021(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210120, 2)
	
	return 0
end
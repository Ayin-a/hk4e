-- 基础信息
local base_info = {
	group_id = 133210114
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
	{ config_id = 114036, npc_id = 20311, pos = { x = -3761.787, y = 200.968, z = -317.044 }, rot = { x = 0.000, y = 237.587, z = 0.000 }, area_id = 17 }
}

-- 装置
gadgets = {
	{ config_id = 114004, gadget_id = 70290083, pos = { x = -3756.903, y = 200.147, z = -319.535 }, rot = { x = 0.000, y = 200.433, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 114007, gadget_id = 70360001, pos = { x = -3757.489, y = 201.266, z = -321.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 114010, gadget_id = 70710091, pos = { x = -3761.783, y = 199.771, z = -317.128 }, rot = { x = 0.000, y = 238.293, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 114009, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3755.550, y = 202.682, z = -316.623 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1114001, name = "VARIABLE_CHANGE_114001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_114001", action = "", trigger_count = 0 },
	{ config_id = 1114002, name = "TIME_AXIS_PASS_114002", event = EventType.EVENT_TIME_AXIS_PASS, source = "active", condition = "condition_EVENT_TIME_AXIS_PASS_114002", action = "action_EVENT_TIME_AXIS_PASS_114002", trigger_count = 0 },
	{ config_id = 1114003, name = "GADGET_CREATE_114003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_114003", action = "action_EVENT_GADGET_CREATE_114003", trigger_count = 0 },
	{ config_id = 1114005, name = "QUEST_START_114005", event = EventType.EVENT_QUEST_START, source = "7214507", condition = "", action = "action_EVENT_QUEST_START_114005", trigger_count = 0 },
	{ config_id = 1114006, name = "SELECT_OPTION_114006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_114006", action = "action_EVENT_SELECT_OPTION_114006", trigger_count = 0 },
	{ config_id = 1114008, name = "QUEST_START_114008", event = EventType.EVENT_QUEST_START, source = "7214503", condition = "", action = "action_EVENT_QUEST_START_114008", trigger_count = 0 },
	{ config_id = 1114009, name = "ENTER_REGION_114009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_114009", action = "action_EVENT_ENTER_REGION_114009", trigger_count = 0 },
	{ config_id = 1114011, name = "QUEST_FINISH_114011", event = EventType.EVENT_QUEST_FINISH, source = "7214507", condition = "", action = "action_EVENT_QUEST_FINISH_114011", trigger_count = 0 },
	{ config_id = 1114024, name = "QUEST_FINISH_114024", event = EventType.EVENT_QUEST_FINISH, source = "7214501", condition = "", action = "action_EVENT_QUEST_FINISH_114024", trigger_count = 0 },
	{ config_id = 1114034, name = "GADGET_STATE_CHANGE_114034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_114034", action = "action_EVENT_GADGET_STATE_CHANGE_114034" },
	{ config_id = 1114035, name = "QUEST_START_114035", event = EventType.EVENT_QUEST_START, source = "7214501", condition = "", action = "action_EVENT_QUEST_START_114035", trigger_count = 0 }
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
			{ config_id = 114004, state = 0 },
			{ config_id = 114010, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_114035" },
		npcs = { 114036 },
		variables = {
			{ config_id = 1, name = "Gadget_Count", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 114004, state = 202 },
			{ config_id = 114010, state = 0 }
		},
		monsters = {
		},
		regions = { 114009 },
		triggers = { "QUEST_START_114008", "ENTER_REGION_114009", "QUEST_FINISH_114024" },
		npcs = { 114036 },
		variables = {
			{ config_id = 1, name = "Gadget_Count", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 114004, state = 202 },
			{ config_id = 114010, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_114001", "TIME_AXIS_PASS_114002", "QUEST_START_114005" },
		npcs = { 114036 },
		variables = {
			{ config_id = 1, name = "Gadget_Count", value = 0, no_refresh = true }
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 114004, state = 201 },
			{ config_id = 114007, state = 0 },
			{ config_id = 114010, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_CREATE_114003", "SELECT_OPTION_114006", "QUEST_FINISH_114011", "GADGET_STATE_CHANGE_114034" },
		npcs = { 114036 },
		variables = {
			{ config_id = 1, name = "Gadget_Count", value = 3, no_refresh = true }
		}
	},
	[5] = {
		gadgets = {
			{ config_id = 114004, state = 0 },
			{ config_id = 114010, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { 114036 },
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
function condition_EVENT_VARIABLE_CHANGE_114001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Gadget_Count"为3
	if ScriptLib.GetGroupVariableValue(context, "Gadget_Count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_114002(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_114002(context, evt)
	-- 调用提示id为 32100156 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100156) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_114003(context, evt)
	if 114007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_114003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210114, 114007, {63}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_114005(context, evt)
	-- 创建标识为"active"，时间节点为{4}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "active", {4}, false)
	
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210005, 4)
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210006, 5)
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210010, 5)
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133210114, 4, FlowSuiteOperatePolicy.COMPLETE)
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210114, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_114006(context, evt)
	-- 判断是gadgetid 114007 option_id 63
	if 114007 ~= evt.param1 then
		return false	
	end
	
	if 63 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_114006(context, evt)
	-- 将configid为 114004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 114004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_114008(context, evt)
	-- 将本组内变量名为 "QuestStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "QuestStart", 1, 133210005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "QuestStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "QuestStart", 1, 133210006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "QuestStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "QuestStart", 1, 133210010) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210114, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_114009(context, evt)
	if evt.param1 ~= 114009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_114009(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214501") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_114011(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210114, 5)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_114024(context, evt)
	-- 调用提示id为 32100101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_114034(context, evt)
	-- 检测config_id为114004的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 114004 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_114034(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214507") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133210114 ；指定config：114007；物件身上指定option：63；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210114, 114007, 63) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "SucCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "SucCount", 1, 133210416) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210114, 5)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_114035(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210114, 2)
	
	return 0
end
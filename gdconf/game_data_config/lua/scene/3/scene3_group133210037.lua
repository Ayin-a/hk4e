-- 基础信息
local base_info = {
	group_id = 133210037
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
	{ config_id = 37019, npc_id = 20314, pos = { x = -4103.326, y = 215.290, z = -1167.203 }, rot = { x = 0.000, y = 68.070, z = 0.000 }, area_id = 17 }
}

-- 装置
gadgets = {
	{ config_id = 37004, gadget_id = 70360001, pos = { x = -4100.918, y = 215.014, z = -1164.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 37006, gadget_id = 70290083, pos = { x = -4102.463, y = 213.793, z = -1163.643 }, rot = { x = 0.000, y = 105.180, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 37008, gadget_id = 70710091, pos = { x = -4103.354, y = 214.225, z = -1167.135 }, rot = { x = 0.000, y = 73.757, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 37010, shape = RegionShape.SPHERE, radius = 40, pos = { x = -4070.221, y = 206.718, z = -1173.127 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1037001, name = "SELECT_OPTION_37001", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_37001", action = "action_EVENT_SELECT_OPTION_37001", trigger_count = 0 },
	{ config_id = 1037002, name = "GADGET_CREATE_37002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_37002", action = "action_EVENT_GADGET_CREATE_37002", trigger_count = 0 },
	{ config_id = 1037003, name = "QUEST_START_37003", event = EventType.EVENT_QUEST_START, source = "7214804", condition = "", action = "action_EVENT_QUEST_START_37003", trigger_count = 0 },
	{ config_id = 1037005, name = "QUEST_FINISH_37005", event = EventType.EVENT_QUEST_FINISH, source = "7214801", condition = "", action = "action_EVENT_QUEST_FINISH_37005", trigger_count = 0 },
	{ config_id = 1037007, name = "QUEST_START_37007", event = EventType.EVENT_QUEST_START, source = "7214805", condition = "", action = "action_EVENT_QUEST_START_37007", trigger_count = 0 },
	{ config_id = 1037009, name = "QUEST_FINISH_37009", event = EventType.EVENT_QUEST_FINISH, source = "7214805", condition = "", action = "action_EVENT_QUEST_FINISH_37009", trigger_count = 0 },
	{ config_id = 1037010, name = "ENTER_REGION_37010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_37010", action = "action_EVENT_ENTER_REGION_37010", trigger_count = 0 },
	{ config_id = 1037011, name = "QUEST_START_37011", event = EventType.EVENT_QUEST_START, source = "7214801", condition = "", action = "action_EVENT_QUEST_START_37011", trigger_count = 0 },
	{ config_id = 1037012, name = "QUEST_START_37012", event = EventType.EVENT_QUEST_START, source = "7214803", condition = "", action = "action_EVENT_QUEST_START_37012", trigger_count = 0 },
	{ config_id = 1037015, name = "VARIABLE_CHANGE_37015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_37015", action = "action_EVENT_VARIABLE_CHANGE_37015" },
	{ config_id = 1037018, name = "GADGET_STATE_CHANGE_37018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_37018", action = "action_EVENT_GADGET_STATE_CHANGE_37018" }
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
			{ config_id = 37006, state = 0 },
			{ config_id = 37008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_37011" },
		npcs = { 37019 },
		variables = {
			{ config_id = 1, name = "Gadget_Count", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 37006, state = 202 },
			{ config_id = 37008, state = 0 }
		},
		monsters = {
		},
		regions = { 37010 },
		triggers = { "QUEST_FINISH_37005", "ENTER_REGION_37010", "QUEST_START_37012" },
		npcs = { 37019 },
		variables = {
			{ config_id = 1, name = "Gadget_Count", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 37006, state = 202 },
			{ config_id = 37008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_37003", "VARIABLE_CHANGE_37015" },
		npcs = { 37019 },
		variables = {
			{ config_id = 1, name = "Gadget_Count", value = 0, no_refresh = true }
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 37006, state = 0 },
			{ config_id = 37008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_37007" },
		npcs = { 37019 },
		variables = {
			{ config_id = 1, name = "Gadget_Count", value = 2, no_refresh = true }
		}
	},
	[5] = {
		gadgets = {
			{ config_id = 37004, state = 0 },
			{ config_id = 37006, state = 201 },
			{ config_id = 37008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "SELECT_OPTION_37001", "GADGET_CREATE_37002", "QUEST_FINISH_37009", "GADGET_STATE_CHANGE_37018" },
		npcs = { 37019 },
		variables = {
			{ config_id = 1, name = "Gadget_Count", value = 0, no_refresh = true }
		}
	},
	[6] = {
		gadgets = {
			{ config_id = 37006, state = 0 },
			{ config_id = 37008, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { 37019 },
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
function condition_EVENT_SELECT_OPTION_37001(context, evt)
	-- 判断是gadgetid 37004 option_id 63
	if 37004 ~= evt.param1 then
		return false	
	end
	
	if 63 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_37001(context, evt)
	-- 将configid为 37006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 37006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_37002(context, evt)
	if 37004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_37002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210037, 37004, {63}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_37003(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210037, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_37005(context, evt)
	-- 调用提示id为 32100104 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100104) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_37007(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210037, 5)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_37009(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210037, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_37010(context, evt)
	if evt.param1 ~= 37010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_37010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_37011(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210037, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_37012(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210037, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_37015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Gadget_Count"为6
	if ScriptLib.GetGroupVariableValue(context, "Gadget_Count") ~= 6 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_37015(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214803") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_37018(context, evt)
	-- 检测config_id为37006的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 37006 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_37018(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214805") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133210037 ；指定config：37004；物件身上指定option：63；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210037, 37004, 63) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "SucCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "SucCount", 1, 133210416) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210037, 6)
	
	return 0
end
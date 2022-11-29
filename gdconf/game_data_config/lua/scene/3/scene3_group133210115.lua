-- 基础信息
local base_info = {
	group_id = 133210115
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
	{ config_id = 115003, gadget_id = 70290083, pos = { x = -3542.065, y = 221.435, z = -545.605 }, rot = { x = 0.000, y = 208.618, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 115005, gadget_id = 70360001, pos = { x = -3542.848, y = 222.705, z = -546.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 115001, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3561.211, y = 203.882, z = -564.294 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1115001, name = "ENTER_REGION_115001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_115001", action = "action_EVENT_ENTER_REGION_115001", trigger_count = 0 },
	{ config_id = 1115002, name = "GADGET_CREATE_115002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_115002", action = "action_EVENT_GADGET_CREATE_115002", trigger_count = 0 },
	{ config_id = 1115004, name = "SELECT_OPTION_115004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_115004", action = "action_EVENT_SELECT_OPTION_115004", trigger_count = 0 },
	{ config_id = 1115006, name = "QUEST_START_115006", event = EventType.EVENT_QUEST_START, source = "7214604", condition = "", action = "action_EVENT_QUEST_START_115006", trigger_count = 0 },
	{ config_id = 1115007, name = "GADGET_STATE_CHANGE_115007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_115007", action = "action_EVENT_GADGET_STATE_CHANGE_115007" },
	{ config_id = 1115008, name = "QUEST_START_115008", event = EventType.EVENT_QUEST_START, source = "7214601", condition = "", action = "action_EVENT_QUEST_START_115008", trigger_count = 0 },
	{ config_id = 1115009, name = "QUEST_FINISH_115009", event = EventType.EVENT_QUEST_FINISH, source = "7214601", condition = "", action = "action_EVENT_QUEST_FINISH_115009", trigger_count = 0 },
	{ config_id = 1115010, name = "TIME_AXIS_PASS_115010", event = EventType.EVENT_TIME_AXIS_PASS, source = "changesuite", condition = "condition_EVENT_TIME_AXIS_PASS_115010", action = "action_EVENT_TIME_AXIS_PASS_115010", trigger_count = 0 },
	{ config_id = 1115011, name = "QUEST_FINISH_115011", event = EventType.EVENT_QUEST_FINISH, source = "7214604", condition = "", action = "action_EVENT_QUEST_FINISH_115011", trigger_count = 0 }
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
			{ config_id = 115003, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_115008" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 115003, state = 202 }
		},
		monsters = {
		},
		regions = { 115001 },
		triggers = { "ENTER_REGION_115001", "QUEST_START_115006", "QUEST_FINISH_115009" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 115003, state = 201 },
			{ config_id = 115005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_CREATE_115002", "SELECT_OPTION_115004", "GADGET_STATE_CHANGE_115007", "QUEST_FINISH_115011" },
		npcs = { },
		variables = {
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 115003, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_115001(context, evt)
	if evt.param1 ~= 115001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_115001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214601") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_115002(context, evt)
	if 115005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_115002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210115, 115005, {63}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_115004(context, evt)
	-- 判断是gadgetid 115005 option_id 63
	if 115005 ~= evt.param1 then
		return false	
	end
	
	if 63 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_115004(context, evt)
	-- 将configid为 115003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 115003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_115006(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210115, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_115007(context, evt)
	-- 检测config_id为115003的gadget是否从GadgetState.GearStart变为GadgetState.Default
	if 115003 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStart ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_115007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214604") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133210115 ；指定config：115005；物件身上指定option：63；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210115, 115005, 63) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 针对当前group内变量名为 "SucCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "SucCount", 1, 133210416) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210115, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_115008(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210115, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_115009(context, evt)
	-- 调用提示id为 32100102 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_115010(context, evt)
	if evt.param1 ~= 1 then
	   return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_115010(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210115, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_115011(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210115, 4)
	
	return 0
end
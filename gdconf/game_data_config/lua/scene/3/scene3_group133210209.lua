-- 基础信息
local base_info = {
	group_id = 133210209
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 209016, monster_id = 20011001, pos = { x = -3507.718, y = 116.500, z = -988.354 }, rot = { x = 0.000, y = 173.811, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 17 },
	{ config_id = 209017, monster_id = 20060101, pos = { x = -3502.594, y = 116.500, z = -993.529 }, rot = { x = 0.000, y = 269.247, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 17 },
	{ config_id = 209018, monster_id = 20060101, pos = { x = -3504.003, y = 116.500, z = -996.942 }, rot = { x = 0.000, y = 313.284, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 17 },
	{ config_id = 209019, monster_id = 20011001, pos = { x = -3510.514, y = 116.500, z = -992.326 }, rot = { x = 0.000, y = 102.095, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 17 },
	{ config_id = 209020, monster_id = 20011001, pos = { x = -3509.034, y = 116.732, z = -996.101 }, rot = { x = 0.000, y = 49.564, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 17 },
	{ config_id = 209021, monster_id = 20011101, pos = { x = -3581.020, y = 116.500, z = -996.901 }, rot = { x = 0.000, y = 242.531, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 17 },
	{ config_id = 209022, monster_id = 20011101, pos = { x = -3586.175, y = 116.500, z = -995.205 }, rot = { x = 0.000, y = 151.806, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 209003, gadget_id = 70210102, pos = { x = -3527.136, y = 115.660, z = -1025.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 17 },
	{ config_id = 209004, gadget_id = 70210102, pos = { x = -3507.348, y = 116.288, z = -993.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 17 },
	{ config_id = 209005, gadget_id = 70210102, pos = { x = -3584.510, y = 116.268, z = -998.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 17 },
	{ config_id = 209006, gadget_id = 70210102, pos = { x = -3592.050, y = 116.288, z = -945.921 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, persistent = true, area_id = 17 },
	{ config_id = 209013, gadget_id = 70900388, pos = { x = -3593.210, y = 116.263, z = -947.416 }, rot = { x = 0.000, y = 42.781, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 209014, gadget_id = 70900388, pos = { x = -3593.267, y = 116.288, z = -944.252 }, rot = { x = 0.000, y = 42.781, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 209015, gadget_id = 70900388, pos = { x = -3590.508, y = 116.226, z = -946.711 }, rot = { x = 0.000, y = 67.340, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 209001, shape = RegionShape.SPHERE, radius = 60, pos = { x = -3550.146, y = 116.858, z = -965.372 }, area_id = 17 },
	{ config_id = 209023, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3599.384, y = 120.131, z = -870.356 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1209001, name = "ENTER_REGION_209001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_209001", action = "action_EVENT_ENTER_REGION_209001", trigger_count = 0 },
	{ config_id = 1209002, name = "QUEST_START_209002", event = EventType.EVENT_QUEST_START, source = "7215006", condition = "", action = "action_EVENT_QUEST_START_209002", trigger_count = 0 },
	{ config_id = 1209007, name = "GADGET_STATE_CHANGE_209007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_209007", action = "action_EVENT_GADGET_STATE_CHANGE_209007" },
	{ config_id = 1209008, name = "VARIABLE_CHANGE_209008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_209008", action = "action_EVENT_VARIABLE_CHANGE_209008" },
	{ config_id = 1209009, name = "VARIABLE_CHANGE_209009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_209009", action = "action_EVENT_VARIABLE_CHANGE_209009" },
	{ config_id = 1209010, name = "GADGET_STATE_CHANGE_209010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_209010", action = "action_EVENT_GADGET_STATE_CHANGE_209010" },
	{ config_id = 1209011, name = "GADGET_STATE_CHANGE_209011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_209011", action = "action_EVENT_GADGET_STATE_CHANGE_209011" },
	{ config_id = 1209012, name = "GADGET_STATE_CHANGE_209012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_209012", action = "action_EVENT_GADGET_STATE_CHANGE_209012" },
	{ config_id = 1209023, name = "ENTER_REGION_209023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_209023", action = "action_EVENT_ENTER_REGION_209023", trigger_count = 0 },
	{ config_id = 1209024, name = "QUEST_START_209024", event = EventType.EVENT_QUEST_START, source = "7215006", condition = "", action = "action_EVENT_QUEST_START_209024", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Chest_Open", value = 0, no_refresh = true }
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
		},
		monsters = {
		},
		regions = { 209001, 209023 },
		triggers = { "ENTER_REGION_209001", "QUEST_START_209002", "ENTER_REGION_209023" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Chest_Open", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 209003, state = 0 },
			{ config_id = 209004, state = 0 },
			{ config_id = 209005, state = 0 },
			{ config_id = 209006, state = 0 },
			{ config_id = 209013, state = 0 },
			{ config_id = 209014, state = 0 },
			{ config_id = 209015, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_209007", "VARIABLE_CHANGE_209009", "GADGET_STATE_CHANGE_209010", "GADGET_STATE_CHANGE_209011", "GADGET_STATE_CHANGE_209012" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Chest_Open", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
		},
		monsters = {
			{ config_id = 209016 },
			{ config_id = 209017 },
			{ config_id = 209018 },
			{ config_id = 209019 },
			{ config_id = 209020 }
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Chest_Open", value = 0, no_refresh = true }
		}
	},
	[4] = {
		gadgets = {
		},
		monsters = {
			{ config_id = 209021 },
			{ config_id = 209022 }
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Chest_Open", value = 0, no_refresh = true }
		}
	},
	[5] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_209024" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "Chest_Open", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_209001(context, evt)
	if evt.param1 ~= 209001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_209001(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215005") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_209002(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210209, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_209007(context, evt)
	if 209003 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_209007(context, evt)
	-- 将本组内变量名为 "Chest_Open" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Chest_Open", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_209008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Chest_Open"为1
	if ScriptLib.GetGroupVariableValue(context, "Chest_Open") ~= 1 then
			return false
	end
	
	-- 判断指定group组剩余怪物数量是否是1 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133210210) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_209008(context, evt)
	-- 通知groupid为133210210中,configid为：210001的怪物入战或者脱战，set为1是入战，为0是脱战
	if 0 ~= ScriptLib.SetMonsterBattleByGroup(context, 210001, 133210210) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_monster_battle_by_group")
	  return -1
	end
	
	-- 调用提示id为 32100122 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100122) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215006") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "Chest_Open" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Chest_Open", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_209009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Chest_Open"为1
	if ScriptLib.GetGroupVariableValue(context, "Chest_Open") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_209009(context, evt)
	-- 调用提示id为 32100121 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100121) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215006") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "Chest_Open" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "Chest_Open", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210209, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_209010(context, evt)
	if 209004 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_209010(context, evt)
	-- 调用提示id为 32100124 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100124) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133210209, 3, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_209011(context, evt)
	if 209005 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_209011(context, evt)
	-- 调用提示id为 32100125 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100125) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133210209, 4, FlowSuiteOperatePolicy.COMPLETE)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_209012(context, evt)
	if 209006 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_209012(context, evt)
	-- 调用提示id为 32100126 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100126) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_209023(context, evt)
	if evt.param1 ~= 209023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_209023(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215005") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_209024(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215006") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end
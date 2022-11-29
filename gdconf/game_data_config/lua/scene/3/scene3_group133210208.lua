-- 基础信息
local base_info = {
	group_id = 133210208
}

-- Trigger变量
local defs = {
	duration = 120,
	group_id = 133210208
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
	{ config_id = 208004, gadget_id = 70360001, pos = { x = -3859.403, y = 256.168, z = -518.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 208007, gadget_id = 70290083, pos = { x = -3976.380, y = 169.783, z = -903.760 }, rot = { x = 0.000, y = 0.371, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 208009, gadget_id = 70900201, pos = { x = -3979.962, y = 170.688, z = -897.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
	{ config_id = 208008, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3980.200, y = 170.005, z = -899.261 }, area_id = 17 },
	{ config_id = 208021, shape = RegionShape.SPHERE, radius = 10, pos = { x = -3853.503, y = 255.735, z = -516.848 }, area_id = 17 }
}

-- 触发器
triggers = {
	{ config_id = 1208001, name = "QUEST_START_208001", event = EventType.EVENT_QUEST_START, source = "7215002", condition = "", action = "action_EVENT_QUEST_START_208001", trigger_count = 0 },
	{ config_id = 1208002, name = "GADGET_CREATE_208002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_208002", action = "action_EVENT_GADGET_CREATE_208002", trigger_count = 0 },
	{ config_id = 1208003, name = "SELECT_OPTION_208003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_208003", action = "action_EVENT_SELECT_OPTION_208003", trigger_count = 0 },
	{ config_id = 1208005, name = "CHALLENGE_SUCCESS_208005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_208005" },
	{ config_id = 1208006, name = "CHALLENGE_FAIL_208006", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_208006", trigger_count = 0 },
	{ config_id = 1208008, name = "ENTER_REGION_208008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_208008", action = "", trigger_count = 0, tag = "250" },
	{ config_id = 1208010, name = "QUEST_START_208010", event = EventType.EVENT_QUEST_START, source = "7215003", condition = "", action = "action_EVENT_QUEST_START_208010", trigger_count = 0 },
	{ config_id = 1208020, name = "QUEST_START_208020", event = EventType.EVENT_QUEST_START, source = "7215003", condition = "", action = "action_EVENT_QUEST_START_208020", trigger_count = 0 },
	{ config_id = 1208021, name = "ENTER_REGION_208021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_208021", action = "action_EVENT_ENTER_REGION_208021", trigger_count = 0 }
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
			{ config_id = 208007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_208001" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 208007, state = 0 }
		},
		monsters = {
		},
		regions = { 208021 },
		triggers = { "QUEST_START_208020", "ENTER_REGION_208021" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 208004, state = 0 },
			{ config_id = 208007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_CREATE_208002", "SELECT_OPTION_208003", "CHALLENGE_SUCCESS_208005", "CHALLENGE_FAIL_208006" },
		npcs = { },
		variables = {
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 208009, state = 0 }
		},
		monsters = {
		},
		regions = { 208008 },
		triggers = { "ENTER_REGION_208008" },
		npcs = { },
		variables = {
		}
	},
	[5] = {
		gadgets = {
			{ config_id = 208007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_208010" },
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

-- 触发操作
function action_EVENT_QUEST_START_208001(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210208, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_208002(context, evt)
	if 208004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_208002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210208, 208004, {87}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_208003(context, evt)
	-- 判断是gadgetid 208004 option_id 87
	if 208004 ~= evt.param1 then
		return false	
	end
	
	if 87 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_208003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215003") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	
	-- 删除指定group： 133210208 ；指定config：208004；物件身上指定option：87；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133210208, 208004, 87) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 202号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 250, defs.duration, 4, 250, 1) then
	return -1
	end
	
	ScriptLib.SetGroupVariableValueByGroup(context, "GadgetCreate", 1, 133210106)
	
	-- 调用提示id为 32100119 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100119) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	--添加某个flowSuite里的要素，如果当前与目标suite属性不一样，会纠正为目标属性，同时触发相应Trigger
	  ScriptLib.AddExtraFlowSuite(context, 133210208, 4, FlowSuiteOperatePolicy.COMPLETE)
	
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_208005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215008") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 32100128 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100128) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "GadgetCreate" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "GadgetCreate", 0, 133210106) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210208, 5)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_208006(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "721500801") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将本组内变量名为 "GadgetCreate" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "GadgetCreate", 0, 133210106) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 将flowGroup的某个flowSuite移除，不会触发物件和怪物死亡
	  ScriptLib.RemoveExtraFlowSuite(context, 133210208, 4, FlowSuiteOperatePolicy.DEFAULT)
	
	-- 调用提示id为 32100127 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100127) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133210208, 208004, {87}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_208008(context, evt)
	if evt.param1 ~= 208008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_208010(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210208, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_208020(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210208, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_208021(context, evt)
	if evt.param1 ~= 208021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_208021(context, evt)
	-- 调用提示id为 32100118 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100118) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7215002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end
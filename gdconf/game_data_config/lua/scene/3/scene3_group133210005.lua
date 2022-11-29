-- 基础信息
local base_info = {
	group_id = 133210005
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
	{ config_id = 5002, gadget_id = 70330114, pos = { x = -3744.282, y = 200.869, z = -325.482 }, rot = { x = 0.000, y = 102.641, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 5003, gadget_id = 70330114, pos = { x = -3729.078, y = 200.869, z = -329.695 }, rot = { x = 0.000, y = 102.641, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 5005, gadget_id = 70330078, pos = { x = -3706.213, y = 202.009, z = -337.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 5007, gadget_id = 70330114, pos = { x = -3753.038, y = 200.869, z = -320.875 }, rot = { x = 0.000, y = 114.008, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005001, name = "VARIABLE_CHANGE_5001", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_5001", action = "action_EVENT_VARIABLE_CHANGE_5001" },
	{ config_id = 1005004, name = "ANY_GADGET_DIE_5004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_5004", action = "action_EVENT_ANY_GADGET_DIE_5004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "QuestStart", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 5008, gadget_id = 70330077, pos = { x = -3752.793, y = 201.950, z = -323.580 }, rot = { x = 0.000, y = 190.140, z = 0.000 }, level = 30, area_id = 17 }
	},
	triggers = {
		{ config_id = 1005006, name = "GROUP_LOAD_5006", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_5006", trigger_count = 0 }
	}
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
		regions = { },
		triggers = { "VARIABLE_CHANGE_5001" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "QuestStart", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 5002, state = 0 },
			{ config_id = 5003, state = 0 },
			{ config_id = 5005, state = 0 },
			{ config_id = 5007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "ANY_GADGET_DIE_5004" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "QuestStart", value = 1, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "QuestStart", value = 2, no_refresh = true }
		}
	},
	[4] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "QuestStart", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_5001(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"QuestStart"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestStart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_5001(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210005, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_5004(context, evt)
	if 5005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_5004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214504") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 32100155 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100155) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210005, 3)
	
	return 0
end
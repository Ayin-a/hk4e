-- 基础信息
local base_info = {
	group_id = 133210006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 20010701, pos = { x = -3831.033, y = 199.714, z = -313.040 }, rot = { x = 0.000, y = 75.795, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 17 },
	{ config_id = 6006, monster_id = 20010701, pos = { x = -3823.728, y = 199.895, z = -307.063 }, rot = { x = 0.000, y = 207.790, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 17 },
	{ config_id = 6007, monster_id = 20010501, pos = { x = -3830.734, y = 199.802, z = -317.362 }, rot = { x = 0.000, y = 43.656, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 17 },
	{ config_id = 6008, monster_id = 20010501, pos = { x = -3824.032, y = 199.708, z = -304.134 }, rot = { x = 0.000, y = 213.265, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 17 },
	{ config_id = 6009, monster_id = 20010501, pos = { x = -3821.190, y = 199.779, z = -304.771 }, rot = { x = 0.000, y = 203.701, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 17 },
	{ config_id = 6010, monster_id = 20010501, pos = { x = -3826.492, y = 199.903, z = -320.881 }, rot = { x = 0.000, y = 12.914, z = 0.000 }, level = 30, drop_id = 1000100, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6002, gadget_id = 70330078, pos = { x = -3825.099, y = 200.977, z = -312.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 17 },
	{ config_id = 6012, gadget_id = 70330114, pos = { x = -3761.523, y = 200.890, z = -318.900 }, rot = { x = 0.000, y = 272.420, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 6013, gadget_id = 70330114, pos = { x = -3788.566, y = 200.890, z = -316.371 }, rot = { x = 0.000, y = 272.420, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 6014, gadget_id = 70330114, pos = { x = -3807.668, y = 200.890, z = -316.605 }, rot = { x = 0.000, y = 272.420, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 6016, gadget_id = 70330114, pos = { x = -3774.010, y = 200.890, z = -318.372 }, rot = { x = 0.000, y = 272.420, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006004, name = "VARIABLE_CHANGE_6004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_6004", action = "action_EVENT_VARIABLE_CHANGE_6004" },
	{ config_id = 1006005, name = "ANY_GADGET_DIE_6005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_6005", action = "action_EVENT_ANY_GADGET_DIE_6005", trigger_count = 0 },
	{ config_id = 1006011, name = "GROUP_LOAD_6011", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_6011", action = "action_EVENT_GROUP_LOAD_6011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "QuestStart", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 6003, gadget_id = 70330077, pos = { x = -3763.369, y = 202.319, z = -319.799 }, rot = { x = 0.000, y = 190.140, z = 0.000 }, level = 30, persistent = true, area_id = 17 }
	},
	triggers = {
		{ config_id = 1006015, name = "GROUP_LOAD_6015", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_6015", trigger_count = 0 }
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
		triggers = { "VARIABLE_CHANGE_6004", "GROUP_LOAD_6011" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "QuestStart", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 6002, state = 0 },
			{ config_id = 6012, state = 0 },
			{ config_id = 6013, state = 0 },
			{ config_id = 6014, state = 0 },
			{ config_id = 6016, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "ANY_GADGET_DIE_6005" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "QuestStart", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
		},
		monsters = {
			{ config_id = 6001 },
			{ config_id = 6006 },
			{ config_id = 6007 },
			{ config_id = 6008 },
			{ config_id = 6009 },
			{ config_id = 6010 }
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "QuestStart", value = 0, no_refresh = true }
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
			{ config_id = 1, name = "QuestStart", value = 2, no_refresh = true }
		}
	},
	[5] = {
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
function condition_EVENT_VARIABLE_CHANGE_6004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"QuestStart"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestStart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_6004(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210006, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_6005(context, evt)
	if 6002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_6005(context, evt)
	-- 将本组内变量名为 "QuestStart" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "QuestStart", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133210006, EntityType.GADGET, 6012 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133210006, EntityType.GADGET, 6013 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133210006, EntityType.GADGET, 6014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133210006, EntityType.GADGET, 6016 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214505") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 32100154 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100154) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133210006, 3, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210006, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_6011(context, evt)
	-- 判断变量"QuestStart"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestStart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_6011(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210006, 2)
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133210010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10001, monster_id = 20060301, pos = { x = -3782.874, y = 223.007, z = -286.057 }, rot = { x = 0.000, y = 180.163, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 17 },
	{ config_id = 10006, monster_id = 20060301, pos = { x = -3785.506, y = 224.760, z = -294.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 17 },
	{ config_id = 10007, monster_id = 20060301, pos = { x = -3790.293, y = 223.504, z = -291.239 }, rot = { x = 0.000, y = 91.022, z = 0.000 }, level = 30, drop_id = 1000100, pose_id = 101, area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 10002, gadget_id = 70330078, pos = { x = -3784.739, y = 225.710, z = -290.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 10009, gadget_id = 70330114, pos = { x = -3732.424, y = 200.858, z = -320.983 }, rot = { x = 0.000, y = 38.764, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 10010, gadget_id = 70330114, pos = { x = -3718.194, y = 203.958, z = -305.616 }, rot = { x = 351.321, y = 313.586, z = 359.042 }, level = 30, area_id = 17 },
	{ config_id = 10011, gadget_id = 70330114, pos = { x = -3733.988, y = 217.737, z = -293.019 }, rot = { x = 321.109, y = 286.357, z = 2.190 }, level = 30, area_id = 17 },
	{ config_id = 10012, gadget_id = 70330114, pos = { x = -3755.014, y = 221.915, z = -289.142 }, rot = { x = 336.179, y = 263.719, z = 356.322 }, level = 30, area_id = 17 },
	{ config_id = 10014, gadget_id = 70330114, pos = { x = -3745.436, y = 200.858, z = -322.878 }, rot = { x = 0.000, y = 77.677, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 10015, gadget_id = 70330114, pos = { x = -3769.025, y = 228.155, z = -290.828 }, rot = { x = 336.809, y = 271.274, z = 353.305 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1010004, name = "VARIABLE_CHANGE_10004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_10004", action = "action_EVENT_VARIABLE_CHANGE_10004" },
	{ config_id = 1010005, name = "ANY_GADGET_DIE_10005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_10005", action = "action_EVENT_ANY_GADGET_DIE_10005", trigger_count = 0 },
	{ config_id = 1010008, name = "GROUP_LOAD_10008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_10008", action = "action_EVENT_GROUP_LOAD_10008", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "QuestStart", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 10003, gadget_id = 70330077, pos = { x = -3759.254, y = 202.063, z = -325.634 }, rot = { x = 0.000, y = 190.140, z = 0.000 }, level = 30, area_id = 17 }
	},
	triggers = {
		{ config_id = 1010013, name = "GROUP_LOAD_10013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_10013", trigger_count = 0 }
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
		triggers = { "VARIABLE_CHANGE_10004", "GROUP_LOAD_10008" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "QuestStart", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 10002, state = 0 },
			{ config_id = 10009, state = 0 },
			{ config_id = 10010, state = 0 },
			{ config_id = 10011, state = 0 },
			{ config_id = 10012, state = 0 },
			{ config_id = 10014, state = 0 },
			{ config_id = 10015, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "ANY_GADGET_DIE_10005" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "QuestStart", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
		},
		monsters = {
			{ config_id = 10001 },
			{ config_id = 10006 },
			{ config_id = 10007 }
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
function condition_EVENT_VARIABLE_CHANGE_10004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"QuestStart"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestStart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_10004(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210010, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_10005(context, evt)
	if 10002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_10005(context, evt)
	-- 将本组内变量名为 "QuestStart" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "QuestStart", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133210010, EntityType.GADGET, 10009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133210010, EntityType.GADGET, 10010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133210010, EntityType.GADGET, 10011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133210010, EntityType.GADGET, 10012 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133210010, EntityType.GADGET, 10014 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133210010, EntityType.GADGET, 10015 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7214506") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 32100153 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32100153) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 添加某个flowSuite里的要素，不会更改当前场上已存在的物件/怪物状态
	  ScriptLib.AddExtraFlowSuite(context, 133210010, 3, FlowSuiteOperatePolicy.DEFAULT)
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210010, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_10008(context, evt)
	-- 判断变量"QuestStart"为1
	if ScriptLib.GetGroupVariableValue(context, "QuestStart") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_10008(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210010, 2)
	
	return 0
end
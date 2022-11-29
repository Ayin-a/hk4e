-- 基础信息
local base_info = {
	group_id = 155005024
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
	{ config_id = 24001, gadget_id = 70360339, pos = { x = 136.154, y = 215.827, z = 1139.297 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, interact_id = 82, area_id = 200 },
	{ config_id = 24002, gadget_id = 70290292, pos = { x = 143.384, y = 215.783, z = 1137.312 }, rot = { x = 0.000, y = 340.062, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 24003, gadget_id = 70350081, pos = { x = 136.137, y = 215.679, z = 1139.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1024004, name = "GROUP_LOAD_24004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_24004", trigger_count = 0 },
	-- 7224214[14] Start 跳转Suite-2
	{ config_id = 1024005, name = "QUEST_START_24005", event = EventType.EVENT_QUEST_START, source = "7224214", condition = "", action = "action_EVENT_QUEST_START_24005", trigger_count = 0 },
	-- 接收延迟消息开启大门
	{ config_id = 1024006, name = "QUEST_FINISH_24006", event = EventType.EVENT_QUEST_FINISH, source = "7227701", condition = "", action = "action_EVENT_QUEST_FINISH_24006", trigger_count = 0 },
	{ config_id = 1024007, name = "GADGET_STATE_CHANGE_24007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_24007", action = "action_EVENT_GADGET_STATE_CHANGE_24007", trigger_count = 0 },
	-- Finish
	{ config_id = 1024008, name = "QUEST_FINISH_24008", event = EventType.EVENT_QUEST_FINISH, source = "7224214", condition = "", action = "action_EVENT_QUEST_FINISH_24008", trigger_count = 0 },
	{ config_id = 1024009, name = "QUEST_START_24009", event = EventType.EVENT_QUEST_START, source = "7224211", condition = "", action = "action_EVENT_QUEST_START_24009", trigger_count = 0 },
	{ config_id = 1024010, name = "QUEST_START_24010", event = EventType.EVENT_QUEST_START, source = "7224214", condition = "", action = "action_EVENT_QUEST_START_24010", trigger_count = 0 }
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
	end_suite = 2,
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
			{ config_id = 24002, state = 0 },
			{ config_id = 24003, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_24009" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 24001, state = 0 },
			{ config_id = 24002, state = 0 },
			{ config_id = 24003, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_24005", "GADGET_STATE_CHANGE_24007" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 24002, state = 0 },
			{ config_id = 24003, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GROUP_LOAD_24004", "QUEST_FINISH_24006", "QUEST_FINISH_24008", "QUEST_START_24010" },
		npcs = { },
		variables = {
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 24002, state = 101 },
			{ config_id = 24003, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
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
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_24004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72242_OpenGate") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_24005(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155005024, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_24006(context, evt)
	-- 将configid为 24002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 24002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_24007(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 155005024, 24001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_24007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72242_OpenGate") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155005024, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_24008(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155005024, 4)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_24009(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155005024, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_24010(context, evt)
	-- 将configid为 24002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 24002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
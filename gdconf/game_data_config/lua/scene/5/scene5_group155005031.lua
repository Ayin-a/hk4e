-- 基础信息
local base_info = {
	group_id = 155005031
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
	{ config_id = 31001, gadget_id = 70290283, pos = { x = 269.465, y = 225.391, z = 212.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 31006, gadget_id = 70210102, pos = { x = 270.249, y = 225.486, z = 211.803 }, rot = { x = 0.000, y = 96.369, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 7217748[44] Start 跳转
	{ config_id = 1031002, name = "QUEST_START_31002", event = EventType.EVENT_QUEST_START, source = "7217748", condition = "", action = "action_EVENT_QUEST_START_31002", trigger_count = 0 },
	-- 7217744[48] start 添加Option
	{ config_id = 1031003, name = "QUEST_START_31003", event = EventType.EVENT_QUEST_START, source = "7217744", condition = "", action = "action_EVENT_QUEST_START_31003", trigger_count = 0 },
	{ config_id = 1031004, name = "GADGET_STATE_CHANGE_31004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_31004", action = "action_EVENT_GADGET_STATE_CHANGE_31004", trigger_count = 0 },
	-- 7217745[50] Start 跳转
	{ config_id = 1031005, name = "QUEST_START_31005", event = EventType.EVENT_QUEST_START, source = "7217749", condition = "", action = "action_EVENT_QUEST_START_31005", trigger_count = 0 }
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
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_31002" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 31001, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_31003" },
		npcs = { },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 31001, state = 0 },
			{ config_id = 31006, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_31004", "QUEST_START_31005" },
		npcs = { },
		variables = {
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
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_31002(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155005031, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_31003(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155005031, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_31004(context, evt)
	if GadgetState.ChestOpened ~= ScriptLib.GetGadgetStateByConfigId(context, 155005031, 31006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_31004(context, evt)
	-- 将configid为 31001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "72177_GetCoral") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_31005(context, evt)
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 155005031, 4)
	
	return 0
end
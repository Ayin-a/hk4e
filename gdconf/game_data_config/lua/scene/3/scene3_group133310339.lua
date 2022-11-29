-- 基础信息
local base_info = {
	group_id = 133310339
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
	{ config_id = 339001, gadget_id = 70330430, pos = { x = -2508.164, y = 115.111, z = 4797.594 }, rot = { x = 1.986, y = 326.334, z = 359.753 }, level = 32, persistent = true, area_id = 27 },
	{ config_id = 339002, gadget_id = 70330430, pos = { x = -2469.684, y = 114.473, z = 4785.271 }, rot = { x = 7.159, y = 34.145, z = 0.549 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1339003, name = "QUEST_START_339003", event = EventType.EVENT_QUEST_START, source = "7305310", condition = "", action = "action_EVENT_QUEST_START_339003", trigger_count = 0 },
	{ config_id = 1339004, name = "QUEST_START_339004", event = EventType.EVENT_QUEST_START, source = "7305437", condition = "", action = "action_EVENT_QUEST_START_339004", trigger_count = 0 }
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
		triggers = { "QUEST_START_339003" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 339001, state = 0 },
			{ config_id = 339002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_339004" },
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
function action_EVENT_QUEST_START_339003(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133310339, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_339004(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133310339, 1)
	
	return 0
end
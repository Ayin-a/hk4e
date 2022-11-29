-- 基础信息
local base_info = {
	group_id = 133309816
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
	{ config_id = 816001, gadget_id = 70330467, pos = { x = -2345.399, y = -267.249, z = 5552.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1816002, name = "QUEST_FINISH_816002", event = EventType.EVENT_QUEST_FINISH, source = "7308316", condition = "", action = "action_EVENT_QUEST_FINISH_816002" },
	{ config_id = 1816003, name = "QUEST_START_816003", event = EventType.EVENT_QUEST_START, source = "7308317", condition = "", action = "action_EVENT_QUEST_START_816003", trigger_count = 0 }
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
		triggers = { "QUEST_FINISH_816002" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 816001, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_816003" },
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
function action_EVENT_QUEST_FINISH_816002(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133309816, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_816003(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133309816, 1)
	
	return 0
end
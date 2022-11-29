-- 基础信息
local base_info = {
	group_id = 155006049
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
	{ config_id = 49001, gadget_id = 70290248, pos = { x = 247.489, y = 144.032, z = -285.960 }, rot = { x = 0.000, y = 341.349, z = 0.000 }, level = 36, persistent = true, area_id = 200 },
	{ config_id = 49007, gadget_id = 70290235, pos = { x = 250.506, y = 143.243, z = -267.523 }, rot = { x = 359.675, y = 358.263, z = 0.009 }, level = 36, persistent = true, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 7224411 Start 出现祝仪之路
	{ config_id = 1049002, name = "QUEST_START_49002", event = EventType.EVENT_QUEST_START, source = "7224411", condition = "", action = "action_EVENT_QUEST_START_49002", trigger_count = 0 },
	-- 7224413[13] Start 跳转 Cutsscene播放完毕平台出现
	{ config_id = 1049006, name = "QUEST_START_49006", event = EventType.EVENT_QUEST_START, source = "7224413", condition = "", action = "action_EVENT_QUEST_START_49006", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 0, no_refresh = true }
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
		triggers = { "QUEST_START_49002" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "gameplayState", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 49007, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_49006" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "gameplayState", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 49001, state = 201 },
			{ config_id = 49007, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "gameplayState", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_49002(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155006049, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_49006(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 155006049, 3)
	
	return 0
end
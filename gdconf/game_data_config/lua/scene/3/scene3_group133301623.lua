-- 基础信息
local base_info = {
	group_id = 133301623
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
	{ config_id = 623001, gadget_id = 70290500, pos = { x = -217.528, y = 210.280, z = 3658.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearAction1, area_id = 29 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初始化苗圃
	{ config_id = 1623002, name = "QUEST_START_623002", event = EventType.EVENT_QUEST_START, source = "7306807", condition = "", action = "action_EVENT_QUEST_START_623002", trigger_count = 0 },
	-- 加载树苗
	{ config_id = 1623003, name = "QUEST_FINISH_623003", event = EventType.EVENT_QUEST_FINISH, source = "7306807", condition = "", action = "action_EVENT_QUEST_FINISH_623003", trigger_count = 0 },
	-- 任务完成关闭表现用的树苗
	{ config_id = 1623004, name = "QUEST_START_623004", event = EventType.EVENT_QUEST_START, source = "7306805", condition = "", action = "action_EVENT_QUEST_START_623004", trigger_count = 0 }
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
		triggers = { "QUEST_START_623002", "QUEST_FINISH_623003" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 623001, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_623002", "QUEST_START_623004" },
		npcs = { },
		variables = {
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
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_623002(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133301623, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_623003(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133301623, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_623004(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133301623, 3)
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 199005004
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
	{ config_id = 4001, gadget_id = 70310332, pos = { x = 940.002, y = 121.242, z = -798.380 }, rot = { x = 0.000, y = 22.486, z = 0.000 }, level = 20, area_id = 401, is_enable_interact = false },
	{ config_id = 4002, gadget_id = 70310332, pos = { x = 960.670, y = 133.218, z = -803.640 }, rot = { x = 0.000, y = 314.627, z = 0.000 }, level = 20, area_id = 401, is_enable_interact = false }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1004003, name = "QUEST_START_4003", event = EventType.EVENT_QUEST_START, source = "7902903", condition = "", action = "action_EVENT_QUEST_START_4003", trigger_count = 0 },
	{ config_id = 1004004, name = "QUEST_START_4004", event = EventType.EVENT_QUEST_START, source = "7902904", condition = "", action = "action_EVENT_QUEST_START_4004", trigger_count = 0 },
	{ config_id = 1004006, name = "QUEST_START_4006", event = EventType.EVENT_QUEST_START, source = "7902905", condition = "", action = "action_EVENT_QUEST_START_4006", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 4005, gadget_id = 70310332, pos = { x = 945.853, y = 99.184, z = -796.911 }, rot = { x = 0.000, y = 47.897, z = 0.000 }, level = 20, area_id = 401, is_enable_interact = false }
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
	secure_suite_index = 1,
	suite = 1,
	end_suite = 3,
	rand_suite = false,
	father_quest = 79029,
	quest_config = {
		[7902908] = {
			{
				state = 2,
				suite = 1
			}
		},
		[7902903] = {
			{
				state = 2,
				suite = 2
			}
		},
		[7902904] = {
			{
				state = 3,
				suite = 3
			}
		}
	}
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 4001, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_4003", "QUEST_START_4004", "QUEST_START_4006" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 4002, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_4003", "QUEST_START_4004", "QUEST_START_4006" },
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
		triggers = { "QUEST_START_4003", "QUEST_START_4004", "QUEST_START_4006" },
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
		triggers = { "QUEST_START_4003", "QUEST_START_4004", "QUEST_START_4006" },
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
function action_EVENT_QUEST_START_4003(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 199005004, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_4004(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 199005004, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_4006(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 199005004, 4)
	
	return 0
end
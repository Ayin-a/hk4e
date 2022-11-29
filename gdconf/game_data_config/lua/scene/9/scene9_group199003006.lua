-- 基础信息
local base_info = {
	group_id = 199003006
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
	{ config_id = 6001, npc_id = 20619, pos = { x = -712.129, y = 128.122, z = -15.082 }, rot = { x = 0.000, y = 10.364, z = 0.000 }, area_id = 403 },
	{ config_id = 6007, npc_id = 20853, pos = { x = -712.129, y = 128.122, z = -15.082 }, rot = { x = 0.000, y = 10.364, z = 0.000 }, area_id = 403 }
}

-- 装置
gadgets = {
	{ config_id = 6004, gadget_id = 71700288, pos = { x = -711.909, y = 126.491, z = -14.444 }, rot = { x = 299.819, y = 10.364, z = 4.177 }, level = 1, area_id = 403 },
	{ config_id = 6005, gadget_id = 70230100, pos = { x = -711.980, y = 128.039, z = -14.963 }, rot = { x = 299.819, y = 10.364, z = 4.177 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 6006, gadget_id = 70230100, pos = { x = -712.004, y = 128.362, z = -15.008 }, rot = { x = 299.819, y = 10.364, z = 4.177 }, level = 20, state = GadgetState.GearStart, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006002, name = "QUEST_START_6002", event = EventType.EVENT_QUEST_START, source = "7901307", condition = "", action = "action_EVENT_QUEST_START_6002", trigger_count = 0 },
	{ config_id = 1006003, name = "QUEST_START_6003", event = EventType.EVENT_QUEST_START, source = "7901308", condition = "", action = "action_EVENT_QUEST_START_6003", trigger_count = 0 }
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
	end_suite = 3,
	rand_suite = false,
	father_quest = 79013,
	quest_config = {
		[7901301] = {
			{
				state = 2,
				suite = 1
			},
			{
				state = 3,
				suite = 1
			}
		},
		[7901307] = {
			{
				state = 2,
				suite = 2
			}
		},
		[7901308] = {
			{
				state = 2,
				suite = 3
			},
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
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_6002", "QUEST_START_6003" },
		npcs = { 6001, 6007 },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 6004, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_6002", "QUEST_START_6003" },
		npcs = { 6001, 6007 },
		variables = {
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 6005, state = 201 },
			{ config_id = 6006, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_6002", "QUEST_START_6003" },
		npcs = { 6001, 6007 },
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
function action_EVENT_QUEST_START_6002(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 199003006, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_6003(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 199003006, 3)
	
	return 0
end
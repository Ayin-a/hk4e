-- 基础信息
local base_info = {
	group_id = 199003003
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
	{ config_id = 3002, npc_id = 20609, pos = { x = -724.891, y = 168.471, z = 11.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 403 },
	{ config_id = 3004, npc_id = 20619, pos = { x = -727.362, y = 177.924, z = 10.599 }, rot = { x = 0.000, y = 151.285, z = 0.000 }, area_id = 403 },
	{ config_id = 3008, npc_id = 20853, pos = { x = -727.362, y = 177.924, z = 10.599 }, rot = { x = 0.000, y = 151.285, z = 0.000 }, area_id = 403 }
}

-- 装置
gadgets = {
	{ config_id = 3001, gadget_id = 70710136, pos = { x = -724.882, y = 168.235, z = 11.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403, is_enable_interact = false },
	{ config_id = 3003, gadget_id = 70230100, pos = { x = -727.311, y = 177.970, z = 10.539 }, rot = { x = 0.000, y = 101.225, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 3007, gadget_id = 70230100, pos = { x = -727.311, y = 177.766, z = 10.539 }, rot = { x = 0.000, y = 101.225, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003005, name = "GROUP_LOAD_3005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_3005", trigger_count = 0 },
	{ config_id = 1003006, name = "QUEST_START_3006", event = EventType.EVENT_QUEST_START, source = "7901308", condition = "", action = "action_EVENT_QUEST_START_3006", trigger_count = 0 }
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
	rand_suite = false,
	father_quest = 79013,
	quest_config = {
		[7901307] = {
			{
				state = 3,
				suite = 2
			}
		},
		[7901301] = {
			{
				state = 2,
				suite = 1
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
			{ config_id = 3001, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GROUP_LOAD_3005", "QUEST_START_3006" },
		npcs = { 3002, 3008 },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 3001, state = 0 },
			{ config_id = 3003, state = 201 },
			{ config_id = 3007, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GROUP_LOAD_3005" },
		npcs = { 3002, 3004, 3008 },
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
function action_EVENT_GROUP_LOAD_3005(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	
	if ScriptLib.GetHostQuestState(context,7901307)==3 then
	  ScriptLib.GoToFlowSuite(context, 199003003, 2)
	
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_3006(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 199003003, 2)
	
	return 0
end
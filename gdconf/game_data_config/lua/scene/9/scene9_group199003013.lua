-- 基础信息
local base_info = {
	group_id = 199003013
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
	{ config_id = 13002, npc_id = 20611, pos = { x = -813.710, y = 126.517, z = 283.057 }, rot = { x = 0.000, y = 323.776, z = 0.000 }, area_id = 403 }
}

-- 装置
gadgets = {
	{ config_id = 13001, gadget_id = 70230100, pos = { x = -813.460, y = 126.447, z = 282.780 }, rot = { x = 0.000, y = 10.471, z = 38.565 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 13004, gadget_id = 70230100, pos = { x = -813.514, y = 126.560, z = 282.790 }, rot = { x = 0.000, y = 10.471, z = 38.565 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 13005, gadget_id = 70230100, pos = { x = -813.553, y = 126.695, z = 282.798 }, rot = { x = 0.000, y = 10.471, z = 38.565 }, level = 20, state = GadgetState.GearStart, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1013003, name = "QUEST_START_13003", event = EventType.EVENT_QUEST_START, source = "7901318", condition = "", action = "action_EVENT_QUEST_START_13003", trigger_count = 0 }
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
	rand_suite = false,
	quest_config = {
		[7901301] = {
			{
				state = 2,
				suite = 1
			}
		},
		[7901318] = {
			{
				state = 2,
				suite = 2
			},
			{
				state = 3,
				suite = 2
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
		triggers = { "QUEST_START_13003" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 13001, state = 201 },
			{ config_id = 13004, state = 201 },
			{ config_id = 13005, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { 13002 },
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
function action_EVENT_QUEST_START_13003(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 199003013, 2)
	
	return 0
end
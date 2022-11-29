-- 基础信息
local base_info = {
	group_id = 199003024
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
	{ config_id = 24001, gadget_id = 71700288, pos = { x = -727.949, y = 232.387, z = -48.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 24002, gadget_id = 71700288, pos = { x = -726.237, y = 232.953, z = -29.409 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 24003, gadget_id = 71700288, pos = { x = -729.318, y = 231.927, z = -7.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 24004, gadget_id = 70230100, pos = { x = -728.063, y = 232.917, z = -48.615 }, rot = { x = 0.000, y = 32.854, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 24005, gadget_id = 70360001, pos = { x = -736.504, y = 231.927, z = -33.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 24006, gadget_id = 70230100, pos = { x = -728.063, y = 233.073, z = -48.615 }, rot = { x = 0.000, y = 32.854, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 7901315开始去2
	{ config_id = 1024010, name = "QUEST_START_24010", event = EventType.EVENT_QUEST_START, source = "7901315", condition = "", action = "action_EVENT_QUEST_START_24010", trigger_count = 0 },
	-- 7901316开始去3
	{ config_id = 1024011, name = "QUEST_START_24011", event = EventType.EVENT_QUEST_START, source = "7901316", condition = "", action = "action_EVENT_QUEST_START_24011", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "seen", value = 0, no_refresh = true }
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
		[7901315] = {
			{
				state = 2,
				suite = 2
			},
			{
				state = 3,
				suite = 3
			}
		},
		[7901313] = {
			{
				state = 2,
				suite = 1
			}
		},
		[7901314] = {
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
			{ config_id = 24005, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_24010", "QUEST_START_24011" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "seen", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 24001, state = 0 },
			{ config_id = 24002, state = 0 },
			{ config_id = 24003, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_24010", "QUEST_START_24011" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "seen", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 24004, state = 0 },
			{ config_id = 24006, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "QUEST_START_24010", "QUEST_START_24011" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "seen", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_24010(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 199003024, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_24011(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 199003024, 3)
	
	return 0
end
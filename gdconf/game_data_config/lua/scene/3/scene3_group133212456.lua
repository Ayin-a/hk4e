-- 基础信息
local base_info = {
	group_id = 133212456
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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 456001, monster_id = 28020801, pos = { x = -4233.504, y = 197.890, z = -2470.532 }, rot = { x = 0.000, y = 120.707, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 1, area_id = 13 }
	},
	gadgets = {
		{ config_id = 456002, gadget_id = 70360273, pos = { x = -4244.451, y = 200.034, z = -2497.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 1, area_id = 13 },
		{ config_id = 456003, gadget_id = 70360273, pos = { x = -4231.833, y = 198.174, z = -2499.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 2, area_id = 13 },
		{ config_id = 456004, gadget_id = 70360274, pos = { x = -4164.611, y = 197.809, z = -2476.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 7, area_id = 13 },
		{ config_id = 456005, gadget_id = 70350292, pos = { x = -4164.448, y = 197.553, z = -2476.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 13 },
		{ config_id = 456006, gadget_id = 70210101, pos = { x = -4156.412, y = 197.552, z = -2479.272 }, rot = { x = 0.000, y = 287.912, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", area_id = 13 },
		{ config_id = 456007, gadget_id = 70360276, pos = { x = -4164.605, y = 197.822, z = -2476.690 }, rot = { x = 88.787, y = 238.167, z = 238.694 }, level = 30, area_id = 13 },
		{ config_id = 456010, gadget_id = 70360273, pos = { x = -4219.112, y = 199.826, z = -2490.666 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 3, area_id = 13 },
		{ config_id = 456011, gadget_id = 70360273, pos = { x = -4205.177, y = 201.307, z = -2484.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 4, area_id = 13 },
		{ config_id = 456012, gadget_id = 70360273, pos = { x = -4188.126, y = 197.481, z = -2474.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 5, area_id = 13 },
		{ config_id = 456013, gadget_id = 70360273, pos = { x = -4172.684, y = 195.820, z = -2474.858 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, mark_flag = 6, area_id = 13 }
	},
	triggers = {
		{ config_id = 1456008, name = "ANY_MONSTER_DIE_456008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_456008", action = "action_EVENT_ANY_MONSTER_DIE_456008" },
		{ config_id = 1456009, name = "GADGET_STATE_CHANGE_456009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_456009", action = "action_EVENT_GADGET_STATE_CHANGE_456009" }
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
		triggers = { },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
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
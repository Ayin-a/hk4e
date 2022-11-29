-- 基础信息
local base_info = {
	group_id = 133217219
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
		{ config_id = 219001, monster_id = 28020801, pos = { x = -5071.040, y = 199.936, z = -3763.703 }, rot = { x = 0.000, y = 88.027, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 14 }
	},
	gadgets = {
		{ config_id = 219002, gadget_id = 70360273, pos = { x = -5062.884, y = 200.936, z = -3768.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 1, area_id = 14 },
		{ config_id = 219003, gadget_id = 70360273, pos = { x = -5050.853, y = 199.624, z = -3756.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 2, area_id = 14 },
		{ config_id = 219004, gadget_id = 70360274, pos = { x = -5006.194, y = 200.160, z = -3771.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 5, area_id = 14 },
		{ config_id = 219005, gadget_id = 70220052, pos = { x = -5006.194, y = 200.160, z = -3771.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 219006, gadget_id = 70210101, pos = { x = -5006.194, y = 200.160, z = -3771.496 }, rot = { x = 0.000, y = 287.912, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", persistent = true, area_id = 14 },
		{ config_id = 219007, gadget_id = 70360276, pos = { x = -5006.194, y = 200.160, z = -3771.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 219011, gadget_id = 70360273, pos = { x = -5046.390, y = 200.843, z = -3769.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 14 },
		{ config_id = 219012, gadget_id = 70360273, pos = { x = -5029.891, y = 202.042, z = -3780.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 4, area_id = 14 }
	},
	triggers = {
		{ config_id = 1219008, name = "GADGET_STATE_CHANGE_219008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_219008", action = "action_EVENT_GADGET_STATE_CHANGE_219008" },
		{ config_id = 1219009, name = "ANY_MONSTER_DIE_219009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_219009", action = "action_EVENT_ANY_MONSTER_DIE_219009" },
		{ config_id = 1219010, name = "ANY_GADGET_DIE_219010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_219010", action = "action_EVENT_ANY_GADGET_DIE_219010" }
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
	},
	[4] = {
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
-- 基础信息
local base_info = {
	group_id = 133222182
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
		{ config_id = 182001, monster_id = 28020801, pos = { x = -5186.220, y = 199.936, z = -4309.348 }, rot = { x = 0.000, y = 120.707, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 14 }
	},
	gadgets = {
		{ config_id = 182002, gadget_id = 70360273, pos = { x = -5192.430, y = 203.029, z = -4296.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 1, area_id = 14 },
		{ config_id = 182003, gadget_id = 70360273, pos = { x = -5212.780, y = 201.128, z = -4292.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 2, area_id = 14 },
		{ config_id = 182004, gadget_id = 70360274, pos = { x = -5218.460, y = 206.713, z = -4259.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 14 },
		{ config_id = 182005, gadget_id = 70330064, pos = { x = -5218.460, y = 206.616, z = -4259.624 }, rot = { x = 0.000, y = 350.333, z = 0.000 }, level = 30, interact_id = 35, area_id = 14 },
		{ config_id = 182006, gadget_id = 70210101, pos = { x = -5218.460, y = 206.713, z = -4259.624 }, rot = { x = 0.000, y = 287.912, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物稻妻", persistent = true, area_id = 14 },
		{ config_id = 182007, gadget_id = 70360276, pos = { x = -5218.460, y = 206.713, z = -4259.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 182011, gadget_id = 70360273, pos = { x = -5216.548, y = 202.846, z = -4279.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 14 }
	},
	triggers = {
		{ config_id = 1182008, name = "GADGET_STATE_CHANGE_182008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_182008", action = "action_EVENT_GADGET_STATE_CHANGE_182008" },
		{ config_id = 1182009, name = "ANY_MONSTER_DIE_182009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_182009", action = "action_EVENT_ANY_MONSTER_DIE_182009" },
		{ config_id = 1182010, name = "GADGET_STATE_CHANGE_182010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_182010", action = "action_EVENT_GADGET_STATE_CHANGE_182010" }
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

require "V2_0/ElectricCore"
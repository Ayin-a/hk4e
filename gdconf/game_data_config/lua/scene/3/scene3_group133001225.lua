-- 基础信息
local base_info = {
	group_id = 133001225
}

-- Trigger变量
local defs = {
	gadget_id = 225003
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
	{ config_id = 1, name = "start", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 225001, gadget_id = 70310200, pos = { x = 1908.820, y = 195.587, z = -1345.511 }, rot = { x = 0.000, y = 248.715, z = 0.000 }, level = 5, persistent = true, area_id = 2 },
		{ config_id = 225002, gadget_id = 70310200, pos = { x = 1903.053, y = 194.334, z = -1345.043 }, rot = { x = 0.000, y = 318.032, z = 0.000 }, level = 5, persistent = true, area_id = 2 },
		{ config_id = 225003, gadget_id = 70211101, pos = { x = 1908.349, y = 189.163, z = -1336.558 }, rot = { x = 14.565, y = 293.853, z = 354.383 }, level = 1, drop_tag = "解谜低级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
		{ config_id = 225004, gadget_id = 70310200, pos = { x = 1906.404, y = 194.445, z = -1343.282 }, rot = { x = 0.000, y = 354.975, z = 0.000 }, level = 5, persistent = true, area_id = 2 },
		{ config_id = 225005, gadget_id = 70310198, pos = { x = 1907.404, y = 194.445, z = -1344.282 }, rot = { x = 0.000, y = 354.975, z = 0.000 }, level = 5, persistent = true, area_id = 2 }
	},
	triggers = {
		{ config_id = 1225006, name = "GADGET_STATE_CHANGE_225006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_225006", action = "action_EVENT_GADGET_STATE_CHANGE_225006", trigger_count = 0 },
		{ config_id = 1225007, name = "GADGET_STATE_CHANGE_225007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_225007", action = "action_EVENT_GADGET_STATE_CHANGE_225007", trigger_count = 0 }
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
	end_suite = 3,
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
			{ config_id = 1, name = "start", value = 0, no_refresh = true }
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
			{ config_id = 1, name = "start", value = 0, no_refresh = true }
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
			{ config_id = 1, name = "start", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================
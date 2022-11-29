-- 基础信息
local base_info = {
	group_id = 133106534
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
	gadgets = {
		{ config_id = 534001, gadget_id = 70220008, pos = { x = -816.823, y = 165.231, z = 1858.318 }, rot = { x = 12.379, y = 359.203, z = 352.662 }, level = 36, persistent = true, area_id = 19 },
		{ config_id = 534002, gadget_id = 70220008, pos = { x = -812.193, y = 164.344, z = 1866.415 }, rot = { x = 349.782, y = 359.728, z = 3.041 }, level = 36, persistent = true, area_id = 19 },
		{ config_id = 534003, gadget_id = 70220008, pos = { x = -810.970, y = 163.898, z = 1855.571 }, rot = { x = 354.754, y = 0.007, z = 359.846 }, level = 36, persistent = true, area_id = 19 },
		{ config_id = 534005, gadget_id = 70211101, pos = { x = -820.776, y = 167.166, z = 1860.369 }, rot = { x = 340.773, y = 72.466, z = 7.670 }, level = 26, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
	},
	triggers = {
		{ config_id = 1534004, name = "ANY_GADGET_DIE_534004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_534004", action = "action_EVENT_ANY_GADGET_DIE_534004", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================
-- 基础信息
local base_info = {
	group_id = 133106543
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
		{ config_id = 543001, gadget_id = 70290198, pos = { x = -518.371, y = 178.069, z = 1840.084 }, rot = { x = 0.000, y = 276.121, z = 0.000 }, level = 36, persistent = true, area_id = 19 },
		{ config_id = 543004, gadget_id = 70211111, pos = { x = -519.420, y = 177.908, z = 1839.258 }, rot = { x = 351.957, y = 265.662, z = 3.180 }, level = 26, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
	},
	triggers = {
		{ config_id = 1543006, name = "ANY_GADGET_DIE_543006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_543006", action = "action_EVENT_ANY_GADGET_DIE_543006" }
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================
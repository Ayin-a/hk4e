-- 基础信息
local base_info = {
	group_id = 144001054
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
		{ config_id = 54001, monster_id = 22010201, pos = { x = 313.261, y = 84.774, z = 182.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "深渊法师", disableWander = true, area_id = 102 },
		{ config_id = 54004, monster_id = 21011001, pos = { x = 318.324, y = 85.073, z = 180.981 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 102 },
		{ config_id = 54005, monster_id = 21011001, pos = { x = 310.362, y = 84.912, z = 183.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 102 }
	},
	gadgets = {
		{ config_id = 54002, gadget_id = 70360001, pos = { x = 314.760, y = 85.407, z = 181.234 }, rot = { x = 359.508, y = 333.069, z = 0.359 }, level = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 102 }
	},
	triggers = {
		{ config_id = 1054003, name = "ANY_MONSTER_DIE_54003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_54003", action = "action_EVENT_ANY_MONSTER_DIE_54003" }
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
-- 基础信息
local base_info = {
	group_id = 155005278
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
		{ config_id = 278001, monster_id = 22010301, pos = { x = 370.604, y = 230.360, z = 149.562 }, rot = { x = 0.000, y = 21.717, z = 0.000 }, level = 36, drop_tag = "深渊法师", area_id = 200 },
		{ config_id = 278002, monster_id = 22010201, pos = { x = 368.814, y = 230.658, z = 154.502 }, rot = { x = 0.000, y = 91.604, z = 0.000 }, level = 36, drop_tag = "深渊法师", area_id = 200 }
	},
	gadgets = {
		{ config_id = 278004, gadget_id = 70211102, pos = { x = 366.660, y = 230.718, z = 150.812 }, rot = { x = 0.000, y = 62.439, z = 0.000 }, level = 16, drop_tag = "解谜低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
	},
	regions = {
		{ config_id = 278005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 368.882, y = 230.267, z = 152.129 }, area_id = 200 }
	},
	triggers = {
		{ config_id = 1278005, name = "ENTER_REGION_278005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_278005", action = "action_EVENT_ENTER_REGION_278005" },
		{ config_id = 1278006, name = "ANY_MONSTER_DIE_278006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_278006", action = "action_EVENT_ANY_MONSTER_DIE_278006" }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
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
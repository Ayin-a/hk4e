-- 基础信息
local base_info = {
	group_id = 155005157
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
		{ config_id = 157001, monster_id = 20011501, pos = { x = 655.600, y = 196.624, z = 319.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "大史莱姆", area_id = 200 },
		{ config_id = 157002, monster_id = 20011401, pos = { x = 657.362, y = 197.270, z = 317.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 },
		{ config_id = 157003, monster_id = 20011401, pos = { x = 653.769, y = 195.921, z = 316.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 200 }
	},
	gadgets = {
		{ config_id = 157004, gadget_id = 70211102, pos = { x = 655.718, y = 196.652, z = 316.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
	},
	regions = {
		{ config_id = 157005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 655.492, y = 196.614, z = 317.834 }, area_id = 200 }
	},
	triggers = {
		{ config_id = 1157005, name = "ENTER_REGION_157005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_157005", action = "action_EVENT_ENTER_REGION_157005" },
		{ config_id = 1157006, name = "ANY_MONSTER_DIE_157006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_157006", action = "action_EVENT_ANY_MONSTER_DIE_157006" }
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
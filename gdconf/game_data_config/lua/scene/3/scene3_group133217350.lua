-- 基础信息
local base_info = {
	group_id = 133217350
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
		{ config_id = 350001, monster_id = 20011101, pos = { x = -5094.838, y = 197.664, z = -4466.451 }, rot = { x = 0.000, y = 248.141, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 14 },
		{ config_id = 350002, monster_id = 20011101, pos = { x = -5095.095, y = 197.215, z = -4476.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 14 },
		{ config_id = 350003, monster_id = 20010901, pos = { x = -5108.663, y = 196.008, z = -4465.429 }, rot = { x = 0.000, y = 116.352, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 14 },
		{ config_id = 350007, monster_id = 20010901, pos = { x = -5107.135, y = 196.008, z = -4477.490 }, rot = { x = 0.000, y = 40.871, z = 0.000 }, level = 30, drop_tag = "大史莱姆", area_id = 14 }
	},
	gadgets = {
		{ config_id = 350004, gadget_id = 70211102, pos = { x = -5101.401, y = 196.407, z = -4471.588 }, rot = { x = 0.000, y = 76.934, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
	},
	regions = {
		{ config_id = 350005, shape = RegionShape.SPHERE, radius = 15, pos = { x = -5099.915, y = 196.651, z = -4471.146 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1350005, name = "ENTER_REGION_350005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_350005", action = "action_EVENT_ENTER_REGION_350005" },
		{ config_id = 1350006, name = "ANY_MONSTER_DIE_350006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_350006", action = "action_EVENT_ANY_MONSTER_DIE_350006" }
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
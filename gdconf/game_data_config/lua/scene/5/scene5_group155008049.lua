-- 基础信息
local base_info = {
	group_id = 155008049
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
		{ config_id = 49002, monster_id = 20060101, pos = { x = -148.098, y = 193.020, z = 415.220 }, rot = { x = 0.000, y = 224.783, z = 0.000 }, level = 36, drop_tag = "飘浮灵", pose_id = 101, area_id = 200 },
		{ config_id = 49003, monster_id = 20060101, pos = { x = -147.638, y = 194.142, z = 408.915 }, rot = { x = 0.000, y = 316.506, z = 0.000 }, level = 36, drop_tag = "飘浮灵", pose_id = 101, area_id = 200 }
	},
	gadgets = {
		{ config_id = 49004, gadget_id = 70211102, pos = { x = -152.224, y = 193.403, z = 412.163 }, rot = { x = 0.000, y = 101.859, z = 0.000 }, level = 16, drop_tag = "解谜低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
	},
	regions = {
		{ config_id = 49005, shape = RegionShape.SPHERE, radius = 3, pos = { x = -152.130, y = 194.193, z = 412.160 }, area_id = 200 }
	},
	triggers = {
		{ config_id = 1049005, name = "ENTER_REGION_49005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_49005", action = "action_EVENT_ENTER_REGION_49005" },
		{ config_id = 1049006, name = "ANY_MONSTER_DIE_49006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_49006", action = "action_EVENT_ANY_MONSTER_DIE_49006" }
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
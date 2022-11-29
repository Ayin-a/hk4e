-- 基础信息
local base_info = {
	group_id = 133222169
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
		{ config_id = 169012, monster_id = 23050101, pos = { x = -5212.034, y = 199.824, z = -4312.718 }, rot = { x = 0.000, y = 130.195, z = 0.000 }, level = 30, drop_tag = "藏镜侍女", area_id = 14 },
		{ config_id = 169013, monster_id = 23020101, pos = { x = -5211.790, y = 199.806, z = -4320.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "债务处理人", area_id = 14 }
	},
	gadgets = {
		{ config_id = 169004, gadget_id = 70211102, pos = { x = -5208.801, y = 199.573, z = -4316.270 }, rot = { x = 323.558, y = 257.518, z = 25.198 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
		{ config_id = 169007, gadget_id = 70300094, pos = { x = -5207.379, y = 199.847, z = -4312.711 }, rot = { x = 15.475, y = 30.580, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 169008, gadget_id = 70220051, pos = { x = -5207.645, y = 199.579, z = -4321.538 }, rot = { x = 326.463, y = 358.928, z = 22.951 }, level = 30, area_id = 14 },
		{ config_id = 169009, gadget_id = 70220051, pos = { x = -5208.539, y = 199.555, z = -4312.098 }, rot = { x = 40.598, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 169010, gadget_id = 70300104, pos = { x = -5207.873, y = 198.939, z = -4323.737 }, rot = { x = 0.000, y = 56.157, z = 334.316 }, level = 30, area_id = 14 },
		{ config_id = 169011, gadget_id = 70220048, pos = { x = -5206.754, y = 199.495, z = -4320.111 }, rot = { x = 358.853, y = 0.000, z = 342.272 }, level = 30, area_id = 14 }
	},
	regions = {
		{ config_id = 169005, shape = RegionShape.SPHERE, radius = 3, pos = { x = -5208.801, y = 199.573, z = -4316.270 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1169001, name = "GADGET_STATE_CHANGE_169001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_169001", action = "action_EVENT_GADGET_STATE_CHANGE_169001" },
		{ config_id = 1169005, name = "ENTER_REGION_169005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_169005", action = "action_EVENT_ENTER_REGION_169005" },
		{ config_id = 1169006, name = "ANY_MONSTER_DIE_169006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_169006", action = "action_EVENT_ANY_MONSTER_DIE_169006" }
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
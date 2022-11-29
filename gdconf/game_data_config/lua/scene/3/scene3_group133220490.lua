-- 基础信息
local base_info = {
	group_id = 133220490
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
		{ config_id = 490001, monster_id = 24020301, pos = { x = -2293.769, y = 200.318, z = -4270.660 }, rot = { x = 0.000, y = 155.850, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 11 },
		{ config_id = 490007, monster_id = 24020301, pos = { x = -2287.125, y = 200.318, z = -4285.198 }, rot = { x = 0.000, y = 333.922, z = 0.000 }, level = 27, drop_tag = "拟生机关", pose_id = 100, area_id = 11 },
		{ config_id = 490008, monster_id = 24020201, pos = { x = -2283.916, y = 200.316, z = -4277.910 }, rot = { x = 358.508, y = 305.065, z = 5.467 }, level = 27, drop_tag = "拟生机关", isOneoff = true, pose_id = 100, area_id = 11 },
		{ config_id = 490009, monster_id = 24020201, pos = { x = -2294.420, y = 200.318, z = -4281.761 }, rot = { x = 0.000, y = 29.180, z = 0.000 }, level = 27, drop_tag = "拟生机关", isOneoff = true, pose_id = 100, area_id = 11 }
	},
	gadgets = {
		{ config_id = 490004, gadget_id = 70211102, pos = { x = -2288.185, y = 200.318, z = -4282.863 }, rot = { x = 0.000, y = 336.578, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
	},
	regions = {
		{ config_id = 490005, shape = RegionShape.CUBIC, size = { x = 9.000, y = 3.000, z = 9.000 }, pos = { x = -2288.648, y = 201.692, z = -4282.086 }, area_id = 11 }
	},
	triggers = {
		{ config_id = 1490005, name = "ENTER_REGION_490005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_490005", action = "action_EVENT_ENTER_REGION_490005", trigger_count = 0 },
		{ config_id = 1490006, name = "ANY_MONSTER_DIE_490006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_490006", action = "action_EVENT_ANY_MONSTER_DIE_490006" }
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
	end_suite = 2,
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
-- 基础信息
local base_info = {
	group_id = 133307318
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
		{ config_id = 318002, monster_id = 28060504, pos = { x = -1343.811, y = 51.883, z = 5208.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 2, area_id = 32 },
		{ config_id = 318006, monster_id = 28060401, pos = { x = -1341.519, y = 51.914, z = 5214.028 }, rot = { x = 0.000, y = 211.652, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 },
		{ config_id = 318007, monster_id = 28060401, pos = { x = -1344.438, y = 51.305, z = 5213.150 }, rot = { x = 0.000, y = 169.133, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 },
		{ config_id = 318008, monster_id = 28060401, pos = { x = -1347.630, y = 51.065, z = 5210.793 }, rot = { x = 0.000, y = 104.734, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 },
		{ config_id = 318009, monster_id = 28060401, pos = { x = -1340.887, y = 50.670, z = 5222.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 1, area_id = 32 }
	},
	gadgets = {
		{ config_id = 318001, gadget_id = 70211002, pos = { x = -1335.046, y = 53.495, z = 5212.476 }, rot = { x = 7.546, y = 264.818, z = 355.475 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
		{ config_id = 318003, gadget_id = 70560001, pos = { x = -1342.201, y = 52.021, z = 5209.771 }, rot = { x = 5.720, y = 0.415, z = 8.290 }, level = 32, area_id = 32 },
		{ config_id = 318004, gadget_id = 70560001, pos = { x = -1345.763, y = 51.522, z = 5209.364 }, rot = { x = 6.334, y = 0.498, z = 8.976 }, level = 32, area_id = 32 },
		{ config_id = 318005, gadget_id = 70560001, pos = { x = -1341.777, y = 52.272, z = 5207.900 }, rot = { x = 5.720, y = 0.415, z = 8.290 }, level = 32, area_id = 32 }
	},
	regions = {
		{ config_id = 318011, shape = RegionShape.SPHERE, radius = 6.5, pos = { x = -1342.878, y = 51.854, z = 5210.433 }, area_id = 32 }
	},
	triggers = {
		{ config_id = 1318010, name = "ANY_MONSTER_DIE_318010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_318010", action = "action_EVENT_ANY_MONSTER_DIE_318010", trigger_count = 0 },
		{ config_id = 1318011, name = "ENTER_REGION_318011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_318011", action = "action_EVENT_ENTER_REGION_318011" },
		{ config_id = 1318012, name = "MONSTER_BATTLE_318012", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_318012", action = "action_EVENT_MONSTER_BATTLE_318012" }
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
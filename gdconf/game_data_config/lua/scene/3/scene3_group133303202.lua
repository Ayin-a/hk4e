-- 基础信息
local base_info = {
	group_id = 133303202
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
		{ config_id = 202001, monster_id = 26090101, pos = { x = -1688.225, y = 96.067, z = 3279.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
		{ config_id = 202002, monster_id = 26090101, pos = { x = -1686.725, y = 96.067, z = 3277.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
		{ config_id = 202003, monster_id = 26090101, pos = { x = -1687.727, y = 97.049, z = 3276.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 }
	},
	gadgets = {
		{ config_id = 202004, gadget_id = 70211102, pos = { x = -1688.205, y = 96.067, z = 3277.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestTrap, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
	},
	regions = {
		{ config_id = 202005, shape = RegionShape.SPHERE, radius = 3, pos = { x = -1688.102, y = 96.111, z = 3277.273 }, area_id = 23 }
	},
	triggers = {
		{ config_id = 1202005, name = "ENTER_REGION_202005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_202005", action = "action_EVENT_ENTER_REGION_202005" },
		{ config_id = 1202006, name = "ANY_MONSTER_DIE_202006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_202006", action = "action_EVENT_ANY_MONSTER_DIE_202006" }
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
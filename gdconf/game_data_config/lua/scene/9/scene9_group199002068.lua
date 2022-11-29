-- 基础信息
local base_info = {
	group_id = 199002068
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
		{ config_id = 68001, monster_id = 21010101, pos = { x = 428.675, y = 120.970, z = -619.794 }, rot = { x = 0.000, y = 126.638, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9015, area_id = 401 },
		{ config_id = 68002, monster_id = 21020101, pos = { x = 430.079, y = 120.667, z = -617.017 }, rot = { x = 0.000, y = 171.243, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 401 }
	},
	gadgets = {
		{ config_id = 68003, gadget_id = 70211002, pos = { x = 429.867, y = 120.140, z = -620.363 }, rot = { x = 13.887, y = 287.840, z = 11.813 }, level = 16, drop_tag = "战斗低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 }
	},
	triggers = {
		{ config_id = 1068004, name = "ANY_MONSTER_DIE_68004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_68004", action = "action_EVENT_ANY_MONSTER_DIE_68004" }
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
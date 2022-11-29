-- 基础信息
local base_info = {
	group_id = 155007042
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
		{ config_id = 42001, monster_id = 24010101, pos = { x = -390.863, y = 183.790, z = 1615.982 }, rot = { x = 0.000, y = 169.049, z = 0.000 }, level = 36, drop_tag = "遗迹守卫", pose_id = 101, area_id = 200 }
	},
	gadgets = {
		{ config_id = 42003, gadget_id = 70211002, pos = { x = -386.490, y = 183.389, z = 1616.543 }, rot = { x = 359.106, y = 231.756, z = 7.500 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
	},
	triggers = {
		{ config_id = 1042004, name = "ANY_MONSTER_DIE_42004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_42004", action = "action_EVENT_ANY_MONSTER_DIE_42004" }
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
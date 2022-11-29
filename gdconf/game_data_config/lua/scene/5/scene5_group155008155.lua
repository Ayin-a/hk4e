-- 基础信息
local base_info = {
	group_id = 155008155
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
		{ config_id = 155001, monster_id = 24020301, pos = { x = -171.226, y = 169.420, z = 139.748 }, rot = { x = 0.000, y = 305.991, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, pose_id = 101, area_id = 200 },
		{ config_id = 155004, monster_id = 24020301, pos = { x = -165.433, y = 169.180, z = 144.143 }, rot = { x = 0.000, y = 30.741, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, pose_id = 100, area_id = 200 }
	},
	gadgets = {
		{ config_id = 155002, gadget_id = 70211002, pos = { x = -169.287, y = 169.666, z = 142.956 }, rot = { x = 15.961, y = 123.758, z = 1.212 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
	},
	triggers = {
		{ config_id = 1155003, name = "ANY_MONSTER_DIE_155003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_155003", action = "action_EVENT_ANY_MONSTER_DIE_155003" }
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
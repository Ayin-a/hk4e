-- 基础信息
local base_info = {
	group_id = 155005263
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
		{ config_id = 263001, monster_id = 24020301, pos = { x = 654.538, y = 197.464, z = 322.189 }, rot = { x = 0.000, y = 226.381, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, pose_id = 100, area_id = 200 },
		{ config_id = 263004, monster_id = 24020301, pos = { x = 648.522, y = 196.766, z = 329.111 }, rot = { x = 0.000, y = 226.381, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, pose_id = 100, area_id = 200 }
	},
	gadgets = {
		{ config_id = 263002, gadget_id = 70211012, pos = { x = 648.327, y = 196.101, z = 320.440 }, rot = { x = 0.000, y = 241.635, z = 0.000 }, level = 16, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
	},
	triggers = {
		{ config_id = 1263003, name = "ANY_MONSTER_DIE_263003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_263003", action = "action_EVENT_ANY_MONSTER_DIE_263003" }
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
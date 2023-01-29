-- 基础信息
local base_info = {
	group_id = 133307257
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
		{ config_id = 257001, monster_id = 21011202, pos = { x = -1300.754, y = 43.464, z = 5279.835 }, rot = { x = 0.000, y = 91.696, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 32 },
		{ config_id = 257004, monster_id = 21010601, pos = { x = -1300.999, y = 43.768, z = 5277.701 }, rot = { x = 0.000, y = 88.491, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9012, area_id = 32 },
		{ config_id = 257005, monster_id = 25210202, pos = { x = -1304.624, y = 41.191, z = 5299.729 }, rot = { x = 0.000, y = 189.187, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9001, area_id = 32 },
		{ config_id = 257006, monster_id = 25210203, pos = { x = -1309.824, y = 41.715, z = 5298.302 }, rot = { x = 0.000, y = 185.719, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9001, area_id = 32 },
		{ config_id = 257007, monster_id = 21011201, pos = { x = -1349.844, y = 45.076, z = 5278.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9016, area_id = 32 },
		{ config_id = 257008, monster_id = 21011201, pos = { x = -1346.630, y = 45.406, z = 5281.155 }, rot = { x = 0.000, y = 286.565, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9016, area_id = 32 }
	},
	gadgets = {
		{ config_id = 257002, gadget_id = 70211012, pos = { x = -1307.575, y = 41.501, z = 5299.818 }, rot = { x = 353.588, y = 0.277, z = 355.058 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 }
	},
	triggers = {
		{ config_id = 1257003, name = "ANY_MONSTER_DIE_257003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_257003", action = "action_EVENT_ANY_MONSTER_DIE_257003" }
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
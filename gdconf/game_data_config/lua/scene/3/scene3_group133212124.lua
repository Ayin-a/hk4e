-- 基础信息
local base_info = {
	group_id = 133212124
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
		{ config_id = 124001, monster_id = 25010201, pos = { x = -4245.018, y = 199.078, z = -2513.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, affix = { 1101 }, pose_id = 9003, area_id = 13 },
		{ config_id = 124004, monster_id = 25100201, pos = { x = -4248.488, y = 196.679, z = -2530.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1001, area_id = 13 },
		{ config_id = 124005, monster_id = 25010701, pos = { x = -4245.066, y = 196.347, z = -2526.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "盗宝团", affix = { 1101 }, pose_id = 2, area_id = 13 },
		{ config_id = 124007, monster_id = 25010201, pos = { x = -4250.451, y = 200.416, z = -2515.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, affix = { 1101 }, pose_id = 9003, area_id = 13 }
	},
	gadgets = {
		{ config_id = 124002, gadget_id = 70211002, pos = { x = -4244.245, y = 195.994, z = -2532.720 }, rot = { x = 350.939, y = 343.673, z = 346.448 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
	},
	triggers = {
		{ config_id = 1124003, name = "ANY_MONSTER_DIE_124003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_124003", action = "action_EVENT_ANY_MONSTER_DIE_124003" }
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
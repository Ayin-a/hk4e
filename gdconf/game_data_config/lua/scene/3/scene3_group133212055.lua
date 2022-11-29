-- 基础信息
local base_info = {
	group_id = 133212055
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
		{ config_id = 55001, monster_id = 25010201, pos = { x = -4086.999, y = 202.686, z = -2651.323 }, rot = { x = 0.000, y = 172.972, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, affix = { 1101 }, pose_id = 9003, area_id = 13 },
		{ config_id = 55004, monster_id = 25010701, pos = { x = -4083.274, y = 202.056, z = -2644.002 }, rot = { x = 0.000, y = 163.140, z = 0.000 }, level = 27, drop_tag = "盗宝团", affix = { 1101 }, pose_id = 9002, area_id = 13 },
		{ config_id = 55007, monster_id = 25010201, pos = { x = -4091.836, y = 203.812, z = -2651.960 }, rot = { x = 0.000, y = 133.709, z = 0.000 }, level = 27, drop_tag = "盗宝团", affix = { 1101 }, pose_id = 9003, area_id = 13 }
	},
	triggers = {
		{ config_id = 1055003, name = "ANY_MONSTER_DIE_55003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_55003", action = "action_EVENT_ANY_MONSTER_DIE_55003" },
		{ config_id = 1055006, name = "MONSTER_BATTLE_55006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_55006", action = "action_EVENT_MONSTER_BATTLE_55006" }
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
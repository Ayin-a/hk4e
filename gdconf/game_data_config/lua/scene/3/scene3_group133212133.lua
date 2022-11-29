-- 基础信息
local base_info = {
	group_id = 133212133
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
		{ config_id = 133001, monster_id = 25080301, pos = { x = -4187.874, y = 197.202, z = -2504.799 }, rot = { x = 0.000, y = 234.697, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, affix = { 1101 }, pose_id = 1004, area_id = 13 },
		{ config_id = 133004, monster_id = 25100101, pos = { x = -4200.669, y = 201.216, z = -2516.341 }, rot = { x = 0.000, y = 0.000, z = 338.694 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1002, area_id = 13 },
		{ config_id = 133005, monster_id = 25080201, pos = { x = -4196.430, y = 199.150, z = -2508.099 }, rot = { x = 348.102, y = 247.647, z = 3.056 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1, area_id = 13 }
	},
	gadgets = {
		{ config_id = 133002, gadget_id = 70211002, pos = { x = -4197.193, y = 199.218, z = -2500.170 }, rot = { x = 6.362, y = 163.748, z = 8.485 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
	},
	triggers = {
		{ config_id = 1133003, name = "ANY_MONSTER_DIE_133003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_133003", action = "action_EVENT_ANY_MONSTER_DIE_133003" },
		{ config_id = 1133006, name = "MONSTER_BATTLE_133006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_133006", action = "action_EVENT_MONSTER_BATTLE_133006" }
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
-- 基础信息
local base_info = {
	group_id = 133212064
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
		{ config_id = 64001, monster_id = 25010301, pos = { x = -4264.596, y = 209.066, z = -2517.272 }, rot = { x = 0.000, y = 34.393, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, affix = { 1101 }, pose_id = 9003, area_id = 13 },
		{ config_id = 64004, monster_id = 25010201, pos = { x = -4268.733, y = 209.753, z = -2521.416 }, rot = { x = 0.000, y = 269.935, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, affix = { 1101 }, area_id = 13 },
		{ config_id = 64005, monster_id = 25010201, pos = { x = -4267.057, y = 208.907, z = -2525.875 }, rot = { x = 356.266, y = 9.894, z = 347.478 }, level = 27, drop_tag = "盗宝团", disableWander = true, affix = { 1101 }, area_id = 13 },
		{ config_id = 64007, monster_id = 25030201, pos = { x = -4264.423, y = 208.585, z = -2522.569 }, rot = { x = 0.000, y = 230.370, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, affix = { 1101 }, pose_id = 9003, area_id = 13 },
		{ config_id = 64008, monster_id = 25010701, pos = { x = -4263.311, y = 208.135, z = -2525.170 }, rot = { x = 0.000, y = 297.960, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, affix = { 1101 }, area_id = 13 },
		{ config_id = 64009, monster_id = 25010701, pos = { x = -4261.432, y = 207.803, z = -2523.812 }, rot = { x = 0.000, y = 268.102, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, affix = { 1101 }, area_id = 13 },
		{ config_id = 64010, monster_id = 25010701, pos = { x = -4262.428, y = 208.391, z = -2519.685 }, rot = { x = 351.445, y = 234.851, z = 11.919 }, level = 27, drop_tag = "盗宝团", disableWander = true, affix = { 1101 }, area_id = 13 },
		{ config_id = 64011, monster_id = 25010701, pos = { x = -4259.297, y = 207.662, z = -2519.991 }, rot = { x = 0.000, y = 296.510, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, affix = { 1101 }, area_id = 13 }
	},
	gadgets = {
		{ config_id = 64002, gadget_id = 70211002, pos = { x = -4270.147, y = 210.173, z = -2520.739 }, rot = { x = 15.053, y = 113.383, z = 1.173 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
		{ config_id = 64012, gadget_id = 70900393, pos = { x = -4271.120, y = 210.354, z = -2518.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 13 }
	},
	triggers = {
		{ config_id = 1064003, name = "ANY_MONSTER_DIE_64003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_64003", action = "action_EVENT_ANY_MONSTER_DIE_64003" },
		{ config_id = 1064006, name = "ANY_MONSTER_DIE_64006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_64006", action = "action_EVENT_ANY_MONSTER_DIE_64006" }
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
-- 基础信息
local base_info = {
	group_id = 133302140
}

-- Trigger变量
local defs = {
	levelType = 1,
	challenge_id = 2010045,
	target_count = 12,
	small_region_id = 140015,
	big_region_id = 140016
}

-- DEFS_MISCS
-- 仅怪物潮模式配置，按顺序列举所有的monsterConfigId
local tideMonsters = {140001, 140002, 140003,140004,140005,140006,140007,140008,140009,140010,140011,140012,}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 140001, monster_id = 25210401, pos = { x = -799.997, y = 303.335, z = 3294.414 }, rot = { x = 0.000, y = 76.327, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9504, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 140002, monster_id = 25210401, pos = { x = -799.295, y = 303.025, z = 3296.176 }, rot = { x = 0.000, y = 105.301, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9503, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 140003, monster_id = 25210501, pos = { x = -792.089, y = 301.097, z = 3299.896 }, rot = { x = 0.000, y = 226.781, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9511, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 140004, monster_id = 25210501, pos = { x = -789.016, y = 300.626, z = 3297.951 }, rot = { x = 0.000, y = 271.313, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9001, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 140005, monster_id = 25210401, pos = { x = -798.365, y = 305.352, z = 3288.990 }, rot = { x = 0.000, y = 17.308, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 140006, monster_id = 25210302, pos = { x = -795.625, y = 303.336, z = 3291.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 140007, monster_id = 25210302, pos = { x = -790.741, y = 302.417, z = 3292.561 }, rot = { x = 0.000, y = 304.259, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 140008, monster_id = 25210401, pos = { x = -790.053, y = 301.629, z = 3294.658 }, rot = { x = 0.000, y = 274.824, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 140009, monster_id = 25210501, pos = { x = -798.320, y = 302.916, z = 3294.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 140010, monster_id = 25210302, pos = { x = -797.731, y = 303.171, z = 3292.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 140011, monster_id = 25210401, pos = { x = -792.392, y = 301.338, z = 3296.607 }, rot = { x = 0.000, y = 219.978, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 140012, monster_id = 25210401, pos = { x = -792.616, y = 302.273, z = 3293.308 }, rot = { x = 0.000, y = 281.847, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, area_id = 23, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 140013, gadget_id = 70290196, pos = { x = -795.718, y = 301.983, z = 3296.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 }
}

-- 区域
regions = {
	-- 保底起挑战
	{ config_id = 140015, shape = RegionShape.SPHERE, radius = 50, pos = { x = -795.137, y = 302.017, z = 3295.239 }, area_id = 23, ability_group_list = { "ActivityAbility_GravenCamp_GrassReaction_Impact_Avatar" } },
	-- 脱战关挑战
	{ config_id = 140016, shape = RegionShape.SPHERE, radius = 50, pos = { x = -795.137, y = 302.017, z = 3295.239 }, area_id = 23 }
}

-- 触发器
triggers = {
}

-- 变量
variables = {
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
		-- description = 摆设物件,
		monsters = { },
		gadgets = { 140013 },
		regions = { 140015, 140016 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 波次1,
		monsters = { 140001, 140002, 140003, 140004, 140005, 140006, 140007, 140008, 140009, 140010, 140011, 140012 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 波次2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 波次3,
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

require "V3_0/Activity_MonsterCamp"
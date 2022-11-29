-- 基础信息
local base_info = {
	group_id = 133302141
}

-- Trigger变量
local defs = {
	levelType = 1,
	challenge_id = 2010045,
	target_count = 12,
	small_region_id = 141015,
	big_region_id = 141016
}

-- DEFS_MISCS
-- 仅怪物潮模式配置，按顺序列举所有的monsterConfigId
local tideMonsters = {141001, 141002, 141003,141004,141005,141006,141007,141008,141009,141010,141011,141012,}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 141001, monster_id = 25210301, pos = { x = -703.503, y = 260.897, z = 3272.296 }, rot = { x = 0.000, y = 111.172, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9504, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 141002, monster_id = 25210301, pos = { x = -702.800, y = 261.019, z = 3274.058 }, rot = { x = 0.000, y = 111.172, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9504, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 141003, monster_id = 25210401, pos = { x = -695.594, y = 260.454, z = 3277.778 }, rot = { x = 0.000, y = 216.520, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9001, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 141004, monster_id = 25210401, pos = { x = -692.521, y = 261.005, z = 3275.834 }, rot = { x = 0.000, y = 252.307, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9001, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 141005, monster_id = 25210301, pos = { x = -701.275, y = 261.248, z = 3267.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 141006, monster_id = 25210501, pos = { x = -699.131, y = 261.635, z = 3269.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 141007, monster_id = 25210501, pos = { x = -694.245, y = 261.651, z = 3270.442 }, rot = { x = 0.000, y = 327.819, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 141008, monster_id = 25210301, pos = { x = -693.556, y = 261.453, z = 3272.540 }, rot = { x = 0.000, y = 293.337, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 141009, monster_id = 25210501, pos = { x = -701.824, y = 261.269, z = 3271.889 }, rot = { x = 0.000, y = 41.316, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 141010, monster_id = 25210501, pos = { x = -701.236, y = 261.301, z = 3270.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 141011, monster_id = 25210301, pos = { x = -695.897, y = 261.323, z = 3274.491 }, rot = { x = 0.000, y = 258.316, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 141012, monster_id = 25210301, pos = { x = -695.850, y = 261.328, z = 3273.114 }, rot = { x = 0.000, y = 316.850, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, area_id = 23, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 141013, gadget_id = 70290196, pos = { x = -697.209, y = 261.222, z = 3273.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 }
}

-- 区域
regions = {
	-- 保底起挑战
	{ config_id = 141015, shape = RegionShape.SPHERE, radius = 50, pos = { x = -697.850, y = 261.142, z = 3274.698 }, area_id = 23, ability_group_list = { "ActivityAbility_GravenCamp_GrassReaction_Impact_Avatar" } },
	-- 脱战关挑战
	{ config_id = 141016, shape = RegionShape.SPHERE, radius = 50, pos = { x = -697.850, y = 261.142, z = 3274.698 }, area_id = 23 }
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
		gadgets = { 141013 },
		regions = { 141015, 141016 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 波次1,
		monsters = { 141001, 141002, 141003, 141004, 141005, 141006, 141007, 141008, 141009, 141010, 141011, 141012 },
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
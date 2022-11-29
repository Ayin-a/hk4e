-- 基础信息
local base_info = {
	group_id = 133302154
}

-- Trigger变量
local defs = {
	levelType = 1,
	challenge_id = 2010045,
	target_count = 12,
	small_region_id = 154015,
	big_region_id = 154016
}

-- DEFS_MISCS
-- 仅怪物潮模式配置，按顺序列举所有的monsterConfigId
local tideMonsters = {154001, 154002, 154003,154004,154005,154006,154007,154008,154009,154010,154011,154012,}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 154001, monster_id = 25210501, pos = { x = -899.884, y = 201.348, z = 2745.566 }, rot = { x = 0.000, y = 42.754, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9503, area_id = 24, guest_ban_drop = 63 },
	{ config_id = 154002, monster_id = 25210501, pos = { x = -900.466, y = 201.975, z = 2748.826 }, rot = { x = 0.000, y = 110.000, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9503, area_id = 24, guest_ban_drop = 63 },
	{ config_id = 154003, monster_id = 25210401, pos = { x = -897.798, y = 201.631, z = 2750.780 }, rot = { x = 0.000, y = 181.787, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9503, area_id = 24, guest_ban_drop = 63 },
	{ config_id = 154004, monster_id = 25210401, pos = { x = -894.691, y = 200.270, z = 2744.509 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9001, area_id = 24, guest_ban_drop = 63 },
	{ config_id = 154005, monster_id = 25210301, pos = { x = -900.413, y = 201.831, z = 2747.322 }, rot = { x = 0.000, y = 75.465, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, area_id = 24, guest_ban_drop = 63 },
	{ config_id = 154006, monster_id = 25210201, pos = { x = -899.255, y = 200.824, z = 2742.907 }, rot = { x = 0.000, y = 24.482, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, area_id = 24, guest_ban_drop = 63 },
	{ config_id = 154007, monster_id = 25210201, pos = { x = -897.077, y = 200.518, z = 2742.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, area_id = 24, guest_ban_drop = 63 },
	{ config_id = 154008, monster_id = 25210301, pos = { x = -893.596, y = 200.465, z = 2747.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, area_id = 24, guest_ban_drop = 63 },
	{ config_id = 154009, monster_id = 25210303, pos = { x = -895.011, y = 201.381, z = 2751.048 }, rot = { x = 0.000, y = 211.000, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, area_id = 24, guest_ban_drop = 63 },
	{ config_id = 154010, monster_id = 25210303, pos = { x = -894.422, y = 201.010, z = 2749.464 }, rot = { x = 0.000, y = 220.000, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, area_id = 24, guest_ban_drop = 63 },
	{ config_id = 154011, monster_id = 25210501, pos = { x = -897.446, y = 201.938, z = 2753.389 }, rot = { x = 0.000, y = 118.854, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, area_id = 24, guest_ban_drop = 63 },
	{ config_id = 154012, monster_id = 25210501, pos = { x = -901.601, y = 201.292, z = 2743.902 }, rot = { x = 0.000, y = 63.921, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, area_id = 24, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 154013, gadget_id = 70220107, pos = { x = -902.123, y = 202.199, z = 2749.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 154014, gadget_id = 70220107, pos = { x = -892.089, y = 200.321, z = 2745.966 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 154017, gadget_id = 70290196, pos = { x = -891.644, y = 200.940, z = 2750.260 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 }
}

-- 区域
regions = {
	-- 保底起挑战
	{ config_id = 154015, shape = RegionShape.SPHERE, radius = 50, pos = { x = -891.267, y = 200.963, z = 2750.541 }, area_id = 24, ability_group_list = { "ActivityAbility_GravenCamp_GrassReaction_Impact_Avatar" } },
	-- 脱战关挑战
	{ config_id = 154016, shape = RegionShape.SPHERE, radius = 50, pos = { x = -891.267, y = 200.963, z = 2750.541 }, area_id = 24 }
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
		gadgets = { 154013, 154014, 154017 },
		regions = { 154015, 154016 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 波次1,
		monsters = { 154001, 154002, 154003, 154004, 154005, 154006, 154007, 154008, 154009, 154010, 154011, 154012 },
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
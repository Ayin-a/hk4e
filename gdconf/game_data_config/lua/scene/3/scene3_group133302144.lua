-- 基础信息
local base_info = {
	group_id = 133302144
}

-- Trigger变量
local defs = {
	levelType = 0,
	challenge_id = 2010045,
	target_count = 7,
	small_region_id = 144015,
	big_region_id = 144016
}

-- DEFS_MISCS
-- 仅波次刷怪模式配置，列举所有怪物所在的suite编号。suite1不放怪！
local monsterSuites = {2, 3}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 144001, monster_id = 25210303, pos = { x = -837.509, y = 231.187, z = 3526.302 }, rot = { x = 0.000, y = 79.124, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9001, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 144002, monster_id = 25210303, pos = { x = -829.254, y = 231.779, z = 3523.756 }, rot = { x = 0.000, y = 325.554, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9001, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 144003, monster_id = 25210401, pos = { x = -833.619, y = 231.352, z = 3530.150 }, rot = { x = 0.000, y = 192.114, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9001, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 144004, monster_id = 25210401, pos = { x = -830.757, y = 231.452, z = 3529.515 }, rot = { x = 0.000, y = 213.063, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9001, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 144005, monster_id = 25310101, pos = { x = -837.124, y = 231.454, z = 3523.583 }, rot = { x = 0.000, y = 46.526, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", affix = { 9009 }, isOneoff = true, pose_id = 1, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 144006, monster_id = 25310301, pos = { x = -833.134, y = 231.746, z = 3523.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", affix = { 9009 }, isOneoff = true, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 144017, monster_id = 25210401, pos = { x = -829.101, y = 231.468, z = 3527.941 }, rot = { x = 0.000, y = 274.283, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9001, area_id = 23, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 144007, gadget_id = 70290196, pos = { x = -831.237, y = 231.414, z = 3528.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 }
}

-- 区域
regions = {
	-- 保底起挑战
	{ config_id = 144015, shape = RegionShape.SPHERE, radius = 50, pos = { x = -831.855, y = 231.405, z = 3528.704 }, area_id = 23, ability_group_list = { "ActivityAbility_GravenCamp_GrassReaction_Impact_Avatar" } },
	-- 脱战关挑战
	{ config_id = 144016, shape = RegionShape.SPHERE, radius = 50, pos = { x = -831.855, y = 231.405, z = 3528.704 }, area_id = 23 }
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
		gadgets = { 144007 },
		regions = { 144015, 144016 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 波次1,
		monsters = { 144001, 144002, 144003, 144004, 144017 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 波次2,
		monsters = { 144005, 144006 },
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
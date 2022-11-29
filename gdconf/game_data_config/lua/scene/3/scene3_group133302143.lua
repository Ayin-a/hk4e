-- 基础信息
local base_info = {
	group_id = 133302143
}

-- Trigger变量
local defs = {
	levelType = 0,
	challenge_id = 2010045,
	target_count = 7,
	small_region_id = 143015,
	big_region_id = 143016
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
	{ config_id = 143001, monster_id = 25210503, pos = { x = -741.585, y = 241.553, z = 3444.497 }, rot = { x = 0.000, y = 101.035, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9001, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 143002, monster_id = 25210403, pos = { x = -741.575, y = 239.843, z = 3449.061 }, rot = { x = 0.000, y = 101.035, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9001, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 143003, monster_id = 25210503, pos = { x = -731.505, y = 238.784, z = 3452.842 }, rot = { x = 0.000, y = 261.055, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9001, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 143004, monster_id = 25210401, pos = { x = -730.613, y = 238.867, z = 3448.039 }, rot = { x = 0.000, y = 319.118, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9503, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 143005, monster_id = 25310201, pos = { x = -733.885, y = 238.761, z = 3444.670 }, rot = { x = 0.000, y = 328.328, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", affix = { 9009 }, isOneoff = true, pose_id = 1, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 143006, monster_id = 25310201, pos = { x = -736.721, y = 238.862, z = 3443.726 }, rot = { x = 0.000, y = 4.806, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", affix = { 9009 }, isOneoff = true, pose_id = 1, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 143017, monster_id = 25210501, pos = { x = -737.302, y = 237.764, z = 3451.743 }, rot = { x = 0.000, y = 129.031, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9511, area_id = 23, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 143007, gadget_id = 70290196, pos = { x = -735.349, y = 238.639, z = 3445.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 143013, gadget_id = 70220107, pos = { x = -729.017, y = 239.023, z = 3443.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 143014, gadget_id = 70220107, pos = { x = -741.787, y = 239.272, z = 3450.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 }
}

-- 区域
regions = {
	-- 保底起挑战
	{ config_id = 143015, shape = RegionShape.SPHERE, radius = 50, pos = { x = -735.940, y = 238.482, z = 3446.903 }, area_id = 23, ability_group_list = { "ActivityAbility_GravenCamp_GrassReaction_Impact_Avatar" } },
	-- 脱战关挑战
	{ config_id = 143016, shape = RegionShape.SPHERE, radius = 50, pos = { x = -735.940, y = 238.482, z = 3446.903 }, area_id = 23 }
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
		gadgets = { 143007, 143013, 143014 },
		regions = { 143015, 143016 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 波次1,
		monsters = { 143001, 143002, 143003, 143004, 143017 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 波次2,
		monsters = { 143005, 143006 },
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
-- 基础信息
local base_info = {
	group_id = 133302155
}

-- Trigger变量
local defs = {
	levelType = 0,
	challenge_id = 2010045,
	target_count = 3,
	small_region_id = 155015,
	big_region_id = 155016
}

-- DEFS_MISCS
-- 仅波次刷怪模式配置，列举所有怪物所在的suite编号。suite1不放怪！
local monsterSuites = {2}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 155001, monster_id = 25310101, pos = { x = -992.561, y = 201.935, z = 2635.034 }, rot = { x = 0.000, y = 115.682, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9001, area_id = 24, guest_ban_drop = 63 },
	{ config_id = 155002, monster_id = 25310201, pos = { x = -991.175, y = 202.177, z = 2634.121 }, rot = { x = 0.000, y = 329.884, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9001, area_id = 24, guest_ban_drop = 63 },
	{ config_id = 155003, monster_id = 25310301, pos = { x = -988.207, y = 201.801, z = 2636.486 }, rot = { x = 0.000, y = 327.812, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 9003, area_id = 24, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 155004, gadget_id = 70290196, pos = { x = -990.610, y = 200.900, z = 2639.525 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 155013, gadget_id = 70220107, pos = { x = -988.678, y = 202.910, z = 2631.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 155014, gadget_id = 70220107, pos = { x = -996.975, y = 201.509, z = 2637.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 }
}

-- 区域
regions = {
	-- 保底起挑战
	{ config_id = 155015, shape = RegionShape.SPHERE, radius = 50, pos = { x = -990.218, y = 200.829, z = 2639.841 }, area_id = 24, ability_group_list = { "ActivityAbility_GravenCamp_GrassReaction_Impact_Avatar" } },
	-- 脱战关挑战
	{ config_id = 155016, shape = RegionShape.SPHERE, radius = 50, pos = { x = -990.218, y = 200.829, z = 2639.841 }, area_id = 24 }
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
		gadgets = { 155004, 155013, 155014 },
		regions = { 155015, 155016 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 波次1,
		monsters = { 155001, 155002, 155003 },
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
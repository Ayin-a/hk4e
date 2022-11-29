-- 基础信息
local base_info = {
	group_id = 133302145
}

-- Trigger变量
local defs = {
	levelType = 0,
	challenge_id = 2010045,
	target_count = 3,
	small_region_id = 145015,
	big_region_id = 145016
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
	{ config_id = 145001, monster_id = 25310101, pos = { x = -760.894, y = 194.548, z = 3620.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", affix = { 9009 }, isOneoff = true, pose_id = 9001, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 145002, monster_id = 25310201, pos = { x = -764.486, y = 193.921, z = 3621.181 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", affix = { 9009 }, isOneoff = true, pose_id = 9001, area_id = 23, guest_ban_drop = 63 },
	{ config_id = 145003, monster_id = 25310301, pos = { x = -757.281, y = 193.964, z = 3624.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", affix = { 9009 }, isOneoff = true, pose_id = 9001, area_id = 23, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 145004, gadget_id = 70290196, pos = { x = -758.911, y = 194.686, z = 3620.847 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 145013, gadget_id = 70220107, pos = { x = -753.535, y = 194.549, z = 3623.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 145014, gadget_id = 70220107, pos = { x = -757.514, y = 193.595, z = 3629.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 }
}

-- 区域
regions = {
	-- 保底起挑战
	{ config_id = 145015, shape = RegionShape.SPHERE, radius = 50, pos = { x = -759.536, y = 194.293, z = 3621.820 }, area_id = 23, ability_group_list = { "ActivityAbility_GravenCamp_GrassReaction_Impact_Avatar" } },
	-- 脱战关挑战
	{ config_id = 145016, shape = RegionShape.SPHERE, radius = 50, pos = { x = -759.536, y = 194.293, z = 3621.820 }, area_id = 23 }
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
		gadgets = { 145004, 145013, 145014 },
		regions = { 145015, 145016 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 波次1,
		monsters = { 145001, 145002, 145003 },
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
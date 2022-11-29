-- 基础信息
local base_info = {
	group_id = 133302146
}

-- Trigger变量
local defs = {
	levelType = 0,
	challenge_id = 2010045,
	target_count = 1,
	small_region_id = 146015,
	big_region_id = 146016
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
	{ config_id = 146001, monster_id = 24030201, pos = { x = -1460.209, y = 226.865, z = 2556.730 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "遗迹龙兽", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 102, area_id = 21, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 146002, gadget_id = 70290196, pos = { x = -1459.118, y = 226.766, z = 2556.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
	-- 保底起挑战
	{ config_id = 146015, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1460.283, y = 226.088, z = 2557.186 }, area_id = 21, ability_group_list = { "ActivityAbility_GravenCamp_GrassReaction_Impact_Avatar" } },
	-- 脱战关挑战
	{ config_id = 146016, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1460.283, y = 226.088, z = 2557.186 }, area_id = 21 }
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
		gadgets = { 146002 },
		regions = { 146015, 146016 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 波次1,
		monsters = { 146001 },
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
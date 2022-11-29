-- 基础信息
local base_info = {
	group_id = 133302147
}

-- Trigger变量
local defs = {
	levelType = 0,
	challenge_id = 2010045,
	target_count = 3,
	small_region_id = 147015,
	big_region_id = 147016
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
	{ config_id = 147001, monster_id = 24020401, pos = { x = -1419.938, y = 201.611, z = 2514.935 }, rot = { x = 0.000, y = 150.063, z = 0.000 }, level = 1, drop_tag = "拟生机关", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 147002, monster_id = 24020401, pos = { x = -1418.910, y = 199.449, z = 2509.836 }, rot = { x = 0.000, y = 150.063, z = 0.000 }, level = 1, drop_tag = "拟生机关", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 147005, monster_id = 24030201, pos = { x = -1403.354, y = 204.185, z = 2513.792 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_tag = "遗迹龙兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 147003, gadget_id = 70290196, pos = { x = -1409.073, y = 201.734, z = 2505.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
	-- 保底起挑战
	{ config_id = 147015, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1409.883, y = 202.091, z = 2506.367 }, area_id = 21, ability_group_list = { "ActivityAbility_GravenCamp_GrassReaction_Impact_Avatar" } },
	-- 脱战关挑战
	{ config_id = 147016, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1409.883, y = 202.091, z = 2506.367 }, area_id = 21 }
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
		gadgets = { 147003 },
		regions = { 147015, 147016 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 波次1,
		monsters = { 147001, 147002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 波次2,
		monsters = { 147005 },
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
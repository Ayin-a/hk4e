-- 基础信息
local base_info = {
	group_id = 133302150
}

-- Trigger变量
local defs = {
	levelType = 0,
	challenge_id = 2010045,
	target_count = 3,
	small_region_id = 150015,
	big_region_id = 150016
}

-- DEFS_MISCS
-- 仅波次刷怪模式配置，列举所有怪物所在的suite编号。suite1不放怪！
local monsterSuites = {2,3}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 150001, monster_id = 24020401, pos = { x = -1260.611, y = 178.885, z = 2404.953 }, rot = { x = 0.000, y = 54.472, z = 0.000 }, level = 1, drop_tag = "拟生机关", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 150002, monster_id = 24020401, pos = { x = -1257.132, y = 180.242, z = 2401.481 }, rot = { x = 0.000, y = 265.885, z = 0.000 }, level = 1, drop_tag = "拟生机关", disableWander = true, affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 150005, monster_id = 24030201, pos = { x = -1252.962, y = 181.998, z = 2406.068 }, rot = { x = 0.000, y = 229.978, z = 0.000 }, level = 1, drop_tag = "遗迹龙兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 150003, gadget_id = 70290196, pos = { x = -1258.154, y = 179.529, z = 2399.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
	-- 保底起挑战
	{ config_id = 150015, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1259.098, y = 180.102, z = 2400.233 }, area_id = 21, ability_group_list = { "ActivityAbility_GravenCamp_GrassReaction_Impact_Avatar" } },
	-- 脱战关挑战
	{ config_id = 150016, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1259.098, y = 180.102, z = 2400.233 }, area_id = 21 }
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
		gadgets = { 150003 },
		regions = { 150015, 150016 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 波次1,
		monsters = { 150001, 150002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 波次2,
		monsters = { 150005 },
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
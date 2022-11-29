-- 基础信息
local base_info = {
	group_id = 133302138
}

-- Trigger变量
local defs = {
	levelType = 0,
	challenge_id = 2010045,
	target_count = 12,
	small_region_id = 138015,
	big_region_id = 138016
}

-- DEFS_MISCS
-- 仅波次刷怪模式配置，列举所有怪物所在的suite编号。suite1不放怪！
local monsterSuites = {2, 3, 4}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 138001, monster_id = 26090401, pos = { x = -1566.765, y = 258.374, z = 2989.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 138002, monster_id = 26090401, pos = { x = -1566.061, y = 258.797, z = 2990.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 138003, monster_id = 26090201, pos = { x = -1562.474, y = 258.379, z = 2992.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 138004, monster_id = 26090201, pos = { x = -1553.531, y = 255.733, z = 2990.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 138005, monster_id = 26090501, pos = { x = -1564.537, y = 256.107, z = 2984.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 138006, monster_id = 26090901, pos = { x = -1562.393, y = 256.115, z = 2985.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 138007, monster_id = 26090901, pos = { x = -1557.505, y = 255.348, z = 2987.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 138008, monster_id = 26090501, pos = { x = -1556.820, y = 255.736, z = 2989.428 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 138009, monster_id = 26090101, pos = { x = -1565.087, y = 257.780, z = 2988.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 138010, monster_id = 26120301, pos = { x = -1564.499, y = 257.066, z = 2987.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 138011, monster_id = 26090201, pos = { x = -1559.160, y = 256.990, z = 2991.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 138012, monster_id = 26090201, pos = { x = -1559.112, y = 256.581, z = 2990.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 138013, gadget_id = 70220109, pos = { x = -1569.409, y = 260.142, z = 2992.425 }, rot = { x = 340.000, y = 0.000, z = 350.000 }, level = 1, area_id = 21 },
	{ config_id = 138014, gadget_id = 70220109, pos = { x = -1563.071, y = 258.215, z = 2991.462 }, rot = { x = 340.000, y = 0.000, z = 345.000 }, level = 1, area_id = 21 },
	{ config_id = 138017, gadget_id = 70290196, pos = { x = -1561.412, y = 257.395, z = 2990.601 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
	-- 保底起挑战
	{ config_id = 138015, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1561.115, y = 257.657, z = 2991.585 }, area_id = 21, ability_group_list = { "ActivityAbility_GravenCamp_GrassReaction_Impact_Avatar" } },
	-- 脱战关挑战
	{ config_id = 138016, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1561.113, y = 257.657, z = 2991.585 }, area_id = 21 }
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
		gadgets = { 138013, 138014, 138017 },
		regions = { 138015, 138016 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 波次1,
		monsters = { 138001, 138002, 138003, 138004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 波次2,
		monsters = { 138005, 138006, 138007, 138008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 波次3,
		monsters = { 138009, 138010, 138011, 138012 },
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
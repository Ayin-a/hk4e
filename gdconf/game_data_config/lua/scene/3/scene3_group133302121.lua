-- 基础信息
local base_info = {
	group_id = 133302121
}

-- Trigger变量
local defs = {
	levelType = 0,
	challenge_id = 2010045,
	target_count = 12,
	small_region_id = 121015,
	big_region_id = 121016
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
	{ config_id = 121001, monster_id = 26090101, pos = { x = -1656.240, y = 219.257, z = 3016.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 121002, monster_id = 26090101, pos = { x = -1655.529, y = 219.819, z = 3018.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 121003, monster_id = 26090801, pos = { x = -1648.336, y = 223.742, z = 3022.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 121004, monster_id = 26090401, pos = { x = -1645.267, y = 223.596, z = 3020.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 121005, monster_id = 26090501, pos = { x = -1654.012, y = 218.736, z = 3012.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 121006, monster_id = 26090901, pos = { x = -1651.870, y = 219.361, z = 3013.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 121007, monster_id = 26090901, pos = { x = -1646.988, y = 220.812, z = 3015.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 121008, monster_id = 26120201, pos = { x = -1646.293, y = 221.747, z = 3017.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 201, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 121009, monster_id = 26090101, pos = { x = -1654.562, y = 219.493, z = 3016.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 121010, monster_id = 26090101, pos = { x = -1653.973, y = 219.237, z = 3014.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 121011, monster_id = 26090201, pos = { x = -1648.638, y = 222.046, z = 3019.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 121012, monster_id = 26120101, pos = { x = -1648.590, y = 221.423, z = 3017.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 201, area_id = 21, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 121013, gadget_id = 70220109, pos = { x = -1646.258, y = 220.378, z = 3012.985 }, rot = { x = 340.000, y = 0.000, z = 10.000 }, level = 1, area_id = 21 },
	{ config_id = 121014, gadget_id = 70220109, pos = { x = -1653.586, y = 220.904, z = 3020.061 }, rot = { x = 340.000, y = 0.000, z = 20.000 }, level = 1, area_id = 21 },
	{ config_id = 121017, gadget_id = 70290196, pos = { x = -1650.653, y = 221.221, z = 3018.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
	-- 保底起挑战
	{ config_id = 121015, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1650.583, y = 221.517, z = 3019.388 }, area_id = 21, ability_group_list = { "ActivityAbility_GravenCamp_GrassReaction_Impact_Avatar" } },
	-- 脱战关挑战
	{ config_id = 121016, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1650.583, y = 221.517, z = 3019.388 }, area_id = 21 }
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
		gadgets = { 121013, 121014, 121017 },
		regions = { 121015, 121016 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 波次1,
		monsters = { 121001, 121002, 121003, 121004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 波次2,
		monsters = { 121005, 121006, 121007, 121008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 波次3,
		monsters = { 121009, 121010, 121011, 121012 },
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
-- 基础信息
local base_info = {
	group_id = 133302095
}

-- Trigger变量
local defs = {
	levelType = 1,
	challenge_id = 2010045,
	target_count = 12,
	small_region_id = 95013,
	big_region_id = 95014
}

-- DEFS_MISCS
-- 仅怪物潮模式配置，按顺序列举所有的monsterConfigId
local tideMonsters = {95001, 95002, 95003,95004,95005,95006,95007,95008,95009,95010,95011,95012,}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 95001, monster_id = 26090801, pos = { x = -1442.642, y = 262.061, z = 2858.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 95002, monster_id = 26090801, pos = { x = -1441.936, y = 262.342, z = 2859.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 95003, monster_id = 26090701, pos = { x = -1434.732, y = 262.505, z = 2863.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 95004, monster_id = 26090701, pos = { x = -1431.656, y = 261.841, z = 2861.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 95005, monster_id = 26090101, pos = { x = -1440.411, y = 260.513, z = 2853.558 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 95006, monster_id = 26090701, pos = { x = -1438.266, y = 260.391, z = 2854.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 95007, monster_id = 26090701, pos = { x = -1433.382, y = 260.050, z = 2856.170 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 95008, monster_id = 26090101, pos = { x = -1432.692, y = 260.807, z = 2858.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 95009, monster_id = 26090801, pos = { x = -1439.612, y = 262.544, z = 2861.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 95010, monster_id = 26090801, pos = { x = -1439.027, y = 261.987, z = 2860.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 95011, monster_id = 26090101, pos = { x = -1437.658, y = 263.127, z = 2864.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 95012, monster_id = 26090101, pos = { x = -1437.607, y = 262.663, z = 2863.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 95015, gadget_id = 70290196, pos = { x = -1438.069, y = 261.893, z = 2860.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
	-- 保底起挑战
	{ config_id = 95013, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1438.182, y = 261.981, z = 2860.821 }, area_id = 21, ability_group_list = { "ActivityAbility_GravenCamp_GrassReaction_Impact_Avatar" } },
	-- 脱战关挑战
	{ config_id = 95014, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1438.184, y = 261.982, z = 2860.821 }, area_id = 21 }
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
		gadgets = { 95015 },
		regions = { 95013, 95014 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 波次1,
		monsters = { 95001, 95002, 95003, 95004, 95005, 95006, 95007, 95008, 95009, 95010, 95011, 95012 },
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
-- 基础信息
local base_info = {
	group_id = 133302136
}

-- Trigger变量
local defs = {
	levelType = 1,
	challenge_id = 2010045,
	target_count = 12,
	small_region_id = 136015,
	big_region_id = 136016
}

-- DEFS_MISCS
-- 仅怪物潮模式配置，按顺序列举所有的monsterConfigId
local tideMonsters = {136001, 136002, 136003,136004,136005,136006,136007,136008,136009,136010,136011,136012,}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 136001, monster_id = 26090101, pos = { x = -1315.631, y = 284.691, z = 2786.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 136002, monster_id = 26090101, pos = { x = -1313.012, y = 284.442, z = 2783.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 136003, monster_id = 26090701, pos = { x = -1310.717, y = 286.033, z = 2790.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 136004, monster_id = 26090701, pos = { x = -1307.649, y = 285.960, z = 2788.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 136005, monster_id = 26090901, pos = { x = -1318.255, y = 284.305, z = 2789.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 136006, monster_id = 26090701, pos = { x = -1314.246, y = 283.587, z = 2781.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 136007, monster_id = 26090701, pos = { x = -1310.929, y = 283.736, z = 2781.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 136008, monster_id = 26090901, pos = { x = -1308.685, y = 285.114, z = 2784.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 136009, monster_id = 26090901, pos = { x = -1315.642, y = 283.509, z = 2781.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 136010, monster_id = 26090901, pos = { x = -1317.701, y = 283.581, z = 2783.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 136011, monster_id = 26090101, pos = { x = -1313.462, y = 285.395, z = 2790.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 },
	{ config_id = 136012, monster_id = 26090101, pos = { x = -1310.977, y = 285.315, z = 2785.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 21, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 136013, gadget_id = 70290196, pos = { x = -1312.971, y = 285.401, z = 2787.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
	-- 保底起挑战
	{ config_id = 136015, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1312.971, y = 285.401, z = 2787.151 }, area_id = 21, ability_group_list = { "ActivityAbility_GravenCamp_GrassReaction_Impact_Avatar" } },
	-- 脱战关挑战
	{ config_id = 136016, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1312.971, y = 285.401, z = 2787.151 }, area_id = 21 }
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
		gadgets = { 136013 },
		regions = { 136015, 136016 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 波次1,
		monsters = { 136001, 136002, 136003, 136004, 136005, 136006, 136007, 136008, 136009, 136010, 136011, 136012 },
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
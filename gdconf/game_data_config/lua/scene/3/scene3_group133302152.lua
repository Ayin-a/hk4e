-- 基础信息
local base_info = {
	group_id = 133302152
}

-- Trigger变量
local defs = {
	levelType = 1,
	challenge_id = 2010045,
	target_count = 12,
	small_region_id = 152015,
	big_region_id = 152016
}

-- DEFS_MISCS
-- 仅怪物潮模式配置，按顺序列举所有的monsterConfigId
local tideMonsters = {152001, 152002, 152003,152004,152005,152006,152007,152008,152009,152010,152011,152012,}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 152001, monster_id = 26090901, pos = { x = -724.771, y = 167.688, z = 2667.055 }, rot = { x = 0.000, y = 64.485, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 24, guest_ban_drop = 63 },
	{ config_id = 152002, monster_id = 26090901, pos = { x = -724.067, y = 167.541, z = 2668.817 }, rot = { x = 0.000, y = 46.792, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 24, guest_ban_drop = 63 },
	{ config_id = 152003, monster_id = 26090701, pos = { x = -716.862, y = 165.855, z = 2672.536 }, rot = { x = 0.000, y = 305.224, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 24, guest_ban_drop = 63 },
	{ config_id = 152004, monster_id = 26090701, pos = { x = -713.789, y = 165.130, z = 2670.592 }, rot = { x = 0.000, y = 268.233, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 24, guest_ban_drop = 63 },
	{ config_id = 152005, monster_id = 26090401, pos = { x = -727.986, y = 169.814, z = 2672.713 }, rot = { x = 0.000, y = 80.915, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 24, guest_ban_drop = 63 },
	{ config_id = 152006, monster_id = 26090501, pos = { x = -727.284, y = 169.530, z = 2674.477 }, rot = { x = 0.000, y = 145.709, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 24, guest_ban_drop = 63 },
	{ config_id = 152007, monster_id = 26090501, pos = { x = -720.079, y = 167.855, z = 2678.196 }, rot = { x = 0.000, y = 104.214, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 24, guest_ban_drop = 63 },
	{ config_id = 152008, monster_id = 26090401, pos = { x = -717.005, y = 166.488, z = 2676.252 }, rot = { x = 0.000, y = 229.885, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 24, guest_ban_drop = 63 },
	{ config_id = 152009, monster_id = 26090701, pos = { x = -723.368, y = 167.303, z = 2664.274 }, rot = { x = 0.000, y = 21.830, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 24, guest_ban_drop = 63 },
	{ config_id = 152010, monster_id = 26090701, pos = { x = -722.665, y = 167.109, z = 2666.036 }, rot = { x = 0.000, y = 36.024, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 24, guest_ban_drop = 63 },
	{ config_id = 152011, monster_id = 26090401, pos = { x = -715.459, y = 165.316, z = 2669.755 }, rot = { x = 0.000, y = 271.349, z = 0.000 }, level = 1, drop_tag = "蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 24, guest_ban_drop = 63 },
	{ config_id = 152012, monster_id = 26120301, pos = { x = -712.385, y = 164.596, z = 2667.812 }, rot = { x = 0.000, y = 288.980, z = 0.000 }, level = 1, drop_tag = "大蕈兽", affix = { 9009 }, isOneoff = true, pose_id = 101, area_id = 24, guest_ban_drop = 63 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 152013, gadget_id = 70220109, pos = { x = -723.645, y = 168.595, z = 2676.010 }, rot = { x = 350.000, y = 0.000, z = 355.000 }, level = 1, area_id = 24 },
	{ config_id = 152014, gadget_id = 70220109, pos = { x = -715.330, y = 165.469, z = 2665.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 152017, gadget_id = 70290196, pos = { x = -719.191, y = 166.202, z = 2671.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 }
}

-- 区域
regions = {
	-- 保底起挑战
	{ config_id = 152015, shape = RegionShape.SPHERE, radius = 50, pos = { x = -718.434, y = 166.065, z = 2671.573 }, area_id = 24, ability_group_list = { "ActivityAbility_GravenCamp_GrassReaction_Impact_Avatar" } },
	-- 脱战关挑战
	{ config_id = 152016, shape = RegionShape.SPHERE, radius = 50, pos = { x = -718.434, y = 166.065, z = 2671.573 }, area_id = 24 }
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
		gadgets = { 152013, 152014, 152017 },
		regions = { 152015, 152016 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 波次1,
		monsters = { 152001, 152002, 152003, 152004, 152005, 152006, 152007, 152008, 152009, 152010, 152011, 152012 },
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
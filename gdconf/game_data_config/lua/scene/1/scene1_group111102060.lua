-- 基础信息
local base_info = {
	group_id = 111102060
}

-- Trigger变量
local defs = {
	levelType = 1,
	challenge_id = 2010045,
	target_count = 10,
	small_region_id = 60007,
	big_region_id = 60008
}

-- DEFS_MISCS
local monsterSuites = {2, 3, 4, 5}

local tideMonsters = {60001, 60006, 60002, 60003, 60004, 60005, 60009, 60011, 60012, 60013}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 60001, monster_id = 21010101, pos = { x = 1295.340, y = 301.275, z = -1736.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", isOneoff = true, guest_ban_drop = 1 },
	{ config_id = 60002, monster_id = 20011201, pos = { x = 1299.402, y = 301.476, z = -1739.189 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", isOneoff = true },
	{ config_id = 60003, monster_id = 20011201, pos = { x = 1294.817, y = 301.366, z = -1738.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", isOneoff = true },
	{ config_id = 60004, monster_id = 20010301, pos = { x = 1299.469, y = 301.560, z = -1741.424 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", isOneoff = true },
	{ config_id = 60005, monster_id = 20010301, pos = { x = 1298.782, y = 301.401, z = -1737.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", isOneoff = true },
	{ config_id = 60006, monster_id = 21010101, pos = { x = 1295.340, y = 301.275, z = -1742.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", isOneoff = true },
	{ config_id = 60009, monster_id = 20011001, pos = { x = 1300.599, y = 301.427, z = -1737.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", isOneoff = true },
	{ config_id = 60011, monster_id = 20011001, pos = { x = 1298.663, y = 301.310, z = -1735.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", isOneoff = true },
	{ config_id = 60012, monster_id = 20011001, pos = { x = 1301.412, y = 301.553, z = -1740.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", isOneoff = true },
	{ config_id = 60013, monster_id = 20011001, pos = { x = 1300.075, y = 301.664, z = -1743.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "史莱姆", isOneoff = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 60010, gadget_id = 70310156, pos = { x = 1297.131, y = 301.412, z = -1738.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- small region
	{ config_id = 60007, shape = RegionShape.SPHERE, radius = 10, pos = { x = 1297.131, y = 301.412, z = -1738.520 } },
	-- big region
	{ config_id = 60008, shape = RegionShape.SPHERE, radius = 30, pos = { x = 1297.131, y = 301.412, z = -1738.520 } }
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
		-- description = ,
		monsters = { },
		gadgets = { 60010 },
		regions = { 60007, 60008 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 60001, 60006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 60002, 60003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 60004, 60005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 60009, 60011, 60012, 60013 },
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
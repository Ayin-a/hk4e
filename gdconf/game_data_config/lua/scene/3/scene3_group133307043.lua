-- 基础信息
local base_info = {
	group_id = 133307043
}

-- Trigger变量
local defs = {
	operator_1 = 43007,
	operator_2 = 43008,
	chest = 43009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 43001, monster_id = 26090901, pos = { x = -1993.069, y = 150.140, z = 5784.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 43002, monster_id = 26090901, pos = { x = -1988.754, y = 150.436, z = 5792.713 }, rot = { x = 0.000, y = 237.418, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 43003, monster_id = 26090901, pos = { x = -1995.722, y = 151.097, z = 5790.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 43004, monster_id = 26090701, pos = { x = -1987.519, y = 149.765, z = 5787.534 }, rot = { x = 0.000, y = 184.493, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 43005, monster_id = 26120401, pos = { x = -1994.764, y = 150.229, z = 5783.650 }, rot = { x = 0.000, y = 31.454, z = 0.000 }, level = 1, drop_tag = "大蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 43006, monster_id = 26090601, pos = { x = -1988.570, y = 149.668, z = 5784.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 27 },
	{ config_id = 43010, monster_id = 26090601, pos = { x = -1995.236, y = 151.199, z = 5792.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 43007, gadget_id = 70360056, pos = { x = -1991.974, y = 150.386, z = 5788.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 27 },
	{ config_id = 43008, gadget_id = 70360057, pos = { x = -1991.746, y = 150.383, z = 5788.088 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 27 },
	{ config_id = 43009, gadget_id = 70210106, pos = { x = -1992.238, y = 150.433, z = 5787.921 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 43001, 43002, 43003, 43004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 43005, 43006, 43010 },
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

require "V2_0/BlossomGroup"
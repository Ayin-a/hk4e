-- 基础信息
local base_info = {
	group_id = 133105346
}

-- DEFS_MISCS
local regionsearch_region_id = 3105001

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 346003, monster_id = 20050201, pos = { x = 534.127, y = 200.225, z = -126.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 3, area_id = 9 },
	{ config_id = 346004, monster_id = 20050801, pos = { x = 553.704, y = 200.000, z = -132.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 2, area_id = 9 },
	{ config_id = 346005, monster_id = 20050801, pos = { x = 571.949, y = 200.000, z = -152.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 2, area_id = 9 },
	{ config_id = 346006, monster_id = 20050201, pos = { x = 590.814, y = 200.254, z = -144.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 3, area_id = 9 },
	{ config_id = 346007, monster_id = 20050801, pos = { x = 555.708, y = 200.489, z = -176.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 2, area_id = 9 },
	{ config_id = 346008, monster_id = 20050701, pos = { x = 548.774, y = 202.417, z = -108.025 }, rot = { x = 0.000, y = 90.924, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 3, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 346001, gadget_id = 70290008, pos = { x = 535.437, y = 200.238, z = -125.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, isOneoff = true, persistent = true, area_id = 9 },
	{ config_id = 346002, gadget_id = 70500000, pos = { x = 535.437, y = 200.238, z = -125.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 3008, owner = 346001, area_id = 9 }
}

-- 区域
regions = {
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
		monsters = { 346003, 346004, 346005, 346006, 346007, 346008 },
		gadgets = { 346001, 346002 },
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

require "Activity_Endora"
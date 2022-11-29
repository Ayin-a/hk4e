-- 基础信息
local base_info = {
	group_id = 133102110
}

-- DEFS_MISCS
local regionsearch_region_id = 3102001

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 110001, monster_id = 20050601, pos = { x = 1786.632, y = 200.000, z = -6.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 3, area_id = 5 },
	{ config_id = 110002, monster_id = 20050601, pos = { x = 1794.965, y = 200.000, z = -9.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 3, area_id = 5 },
	{ config_id = 110003, monster_id = 20050201, pos = { x = 1809.213, y = 200.221, z = 19.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 2, area_id = 5 },
	{ config_id = 110004, monster_id = 20050201, pos = { x = 1796.036, y = 200.288, z = 29.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 2, area_id = 5 },
	{ config_id = 110005, monster_id = 20050601, pos = { x = 1789.657, y = 200.000, z = 1.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 3, area_id = 5 },
	{ config_id = 110006, monster_id = 28020301, pos = { x = 1816.545, y = 201.049, z = 6.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", isOneoff = true, area_id = 5 },
	{ config_id = 110007, monster_id = 28020301, pos = { x = 1802.699, y = 200.262, z = 24.662 }, rot = { x = 0.000, y = 35.766, z = 0.000 }, level = 1, drop_tag = "走兽", isOneoff = true, area_id = 5 },
	{ config_id = 110008, monster_id = 20050201, pos = { x = 1769.558, y = 200.000, z = 27.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 2, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 110009, gadget_id = 70290008, pos = { x = 1768.659, y = 200.000, z = 30.077 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 110010, gadget_id = 70500000, pos = { x = 1768.659, y = 200.000, z = 30.077 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 3008, owner = 110009, area_id = 5 }
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
		monsters = { 110001, 110002, 110003, 110004, 110005, 110006, 110007, 110008 },
		gadgets = { 110009, 110010 },
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
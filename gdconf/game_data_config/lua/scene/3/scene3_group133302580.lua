-- 基础信息
local base_info = {
	group_id = 133302580
}

-- Trigger变量
local defs = {
	play_region = 580005,
	group_bundle_id = 20150136
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 580001, monster_id = 28060101, pos = { x = -204.586, y = 200.000, z = 2689.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "走兽", ban_excel_drop = true, pose_id = 1, area_id = 20 },
	{ config_id = 580002, monster_id = 28060101, pos = { x = -240.840, y = 201.369, z = 2714.509 }, rot = { x = 0.000, y = 158.758, z = 0.000 }, level = 1, drop_tag = "走兽", ban_excel_drop = true, pose_id = 1, area_id = 20 },
	{ config_id = 580003, monster_id = 28060101, pos = { x = -204.668, y = 200.004, z = 2715.100 }, rot = { x = 0.000, y = 219.735, z = 0.000 }, level = 1, drop_tag = "走兽", ban_excel_drop = true, pose_id = 1, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 580005, shape = RegionShape.SPHERE, radius = 100, pos = { x = -204.586, y = 200.000, z = 2686.829 }, area_id = 20 }
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
		monsters = { 580001, 580002, 580003 },
		gadgets = { },
		regions = { 580005 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V3_0/Activity_Photo"
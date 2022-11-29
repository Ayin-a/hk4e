-- 基础信息
local base_info = {
	group_id = 133209085
}

-- Trigger变量
local defs = {
	challenge_time = 180,
	hard_challenge_time = 75,
	father_challenge_id = 2005016,
	normal_challenge_id = 2005017,
	hard_challenge_id = 2005018,
	gallery_id = 17002,
	airwall_id = 85004,
	region_id = 85005,
	NPC_group_id = 133209080,
	weather_id = 3500,
	swordmaster_reminder_id = 1110472
}

-- DEFS_MISCS
swordmaster_id = {
85001,85002,85003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 难度1
	{ config_id = 85001, monster_id = 25080402, pos = { x = -2182.269, y = 200.368, z = -3487.950 }, rot = { x = 0.000, y = 310.000, z = 0.000 }, level = 70, drop_id = 1000100, disableWander = true, affix = { 5162 }, pose_id = 1, title_id = 10094, special_name_id = 10127, area_id = 11 },
	-- 难度2
	{ config_id = 85002, monster_id = 25080402, pos = { x = -2182.269, y = 200.368, z = -3487.950 }, rot = { x = 0.000, y = 310.000, z = 0.000 }, level = 80, drop_id = 1000100, disableWander = true, affix = { 5163 }, pose_id = 1, title_id = 10094, special_name_id = 10127, area_id = 11 },
	-- 难度3
	{ config_id = 85003, monster_id = 25080402, pos = { x = -2182.269, y = 200.368, z = -3487.950 }, rot = { x = 0.000, y = 310.000, z = 0.000 }, level = 90, drop_id = 1000100, disableWander = true, affix = { 5164 }, pose_id = 1, title_id = 10094, special_name_id = 10127, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 85004, gadget_id = 70950060, pos = { x = -2188.346, y = 196.425, z = -3480.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
	{ config_id = 85005, shape = RegionShape.SPHERE, radius = 30, pos = { x = -2186.786, y = 200.404, z = -3480.135 }, area_id = 11 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 85006, pos = { x = -2193.967, y = 200.323, z = -3477.926 }, rot = { x = 0.000, y = 130.000, z = 0.000 }, area_id = 11 }
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
		gadgets = { },
		regions = { 85005 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_6/IrodoriMaster"
-- 基础信息
local base_info = {
	group_id = 133220478
}

-- Trigger变量
local defs = {
	operator_1 = 478007,
	operator_2 = 478008,
	chest = 478009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 478001, monster_id = 25080101, pos = { x = -2332.220, y = 200.000, z = -4515.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 11 },
	{ config_id = 478002, monster_id = 25080201, pos = { x = -2336.840, y = 200.000, z = -4513.278 }, rot = { x = 0.000, y = 44.557, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 11 },
	{ config_id = 478003, monster_id = 25080301, pos = { x = -2338.610, y = 200.137, z = -4508.824 }, rot = { x = 21.432, y = 96.595, z = 0.614 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 478007, gadget_id = 70360056, pos = { x = -2332.465, y = 200.164, z = -4509.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 478008, gadget_id = 70360057, pos = { x = -2332.465, y = 200.164, z = -4509.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 478009, gadget_id = 70210106, pos = { x = -2332.465, y = 200.164, z = -4509.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 11 }
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
		monsters = { 478001, 478002, 478003 },
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
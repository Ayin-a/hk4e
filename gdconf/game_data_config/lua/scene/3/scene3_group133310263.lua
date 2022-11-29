-- 基础信息
local base_info = {
	group_id = 133310263
}

-- Trigger变量
local defs = {
	operator_1 = 263007,
	operator_2 = 263008,
	chest = 263009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 263001, monster_id = 25210101, pos = { x = -3052.581, y = 353.322, z = 4693.686 }, rot = { x = 0.000, y = 319.406, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, area_id = 28 },
	{ config_id = 263002, monster_id = 25210302, pos = { x = -3057.261, y = 352.727, z = 4692.740 }, rot = { x = 0.000, y = 6.983, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, area_id = 28 },
	{ config_id = 263003, monster_id = 25210301, pos = { x = -3051.561, y = 353.269, z = 4698.350 }, rot = { x = 0.000, y = 266.068, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, area_id = 28 },
	{ config_id = 263004, monster_id = 25010301, pos = { x = -3050.188, y = 353.713, z = 4690.830 }, rot = { x = 0.000, y = 310.970, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, area_id = 28 },
	{ config_id = 263006, monster_id = 25310201, pos = { x = -3058.319, y = 352.394, z = 4698.353 }, rot = { x = 0.000, y = 138.361, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 1, area_id = 28 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 263007, gadget_id = 70360056, pos = { x = -3055.942, y = 352.777, z = 4696.391 }, rot = { x = 2.134, y = 0.141, z = 7.572 }, level = 1, area_id = 28 },
	{ config_id = 263008, gadget_id = 70360057, pos = { x = -3055.713, y = 352.810, z = 4696.334 }, rot = { x = 2.134, y = 0.141, z = 7.572 }, level = 1, area_id = 28 },
	{ config_id = 263009, gadget_id = 70210106, pos = { x = -3056.204, y = 352.751, z = 4696.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 28 }
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
		monsters = { 263001, 263002, 263003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 263004, 263006 },
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
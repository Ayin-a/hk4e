-- 基础信息
local base_info = {
	group_id = 133210454
}

-- Trigger变量
local defs = {
	operator_1 = 454007,
	operator_2 = 454008,
	chest = 454009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 454001, monster_id = 23010101, pos = { x = -3840.984, y = 199.553, z = -1258.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "先遣队", area_id = 17 },
	{ config_id = 454002, monster_id = 23010401, pos = { x = -3833.629, y = 199.655, z = -1256.891 }, rot = { x = 0.000, y = 284.924, z = 0.000 }, level = 1, drop_tag = "先遣队", area_id = 17 },
	{ config_id = 454003, monster_id = 23010501, pos = { x = -3837.185, y = 199.588, z = -1256.032 }, rot = { x = 1.253, y = 306.894, z = 359.822 }, level = 1, drop_tag = "先遣队", area_id = 17 },
	{ config_id = 454004, monster_id = 23050101, pos = { x = -3835.836, y = 199.628, z = -1248.603 }, rot = { x = 0.000, y = 206.976, z = 0.000 }, level = 1, drop_tag = "藏镜侍女", area_id = 17 },
	{ config_id = 454005, monster_id = 23030101, pos = { x = -3841.285, y = 199.576, z = -1246.619 }, rot = { x = 0.000, y = 185.931, z = 0.000 }, level = 1, drop_tag = "召唤师", area_id = 17 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 454007, gadget_id = 70360056, pos = { x = -3840.480, y = 199.867, z = -1253.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 454008, gadget_id = 70360057, pos = { x = -3840.252, y = 199.880, z = -1253.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 17 },
	{ config_id = 454009, gadget_id = 70210106, pos = { x = -3840.744, y = 200.000, z = -1253.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 17 }
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
		monsters = { 454001, 454002, 454003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 454004, 454005 },
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
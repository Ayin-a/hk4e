-- 基础信息
local base_info = {
	group_id = 133301098
}

-- Trigger变量
local defs = {
	operator_1 = 98007,
	operator_2 = 98008,
	chest = 98009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 98001, monster_id = 25210102, pos = { x = -658.039, y = 228.383, z = 3320.386 }, rot = { x = 0.000, y = 354.313, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 22 },
	{ config_id = 98002, monster_id = 25210401, pos = { x = -663.647, y = 228.397, z = 3323.641 }, rot = { x = 0.000, y = 79.466, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 22 },
	{ config_id = 98003, monster_id = 25210302, pos = { x = -662.709, y = 227.591, z = 3329.008 }, rot = { x = 0.000, y = 140.395, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 22 },
	{ config_id = 98004, monster_id = 25210503, pos = { x = -655.844, y = 226.787, z = 3326.709 }, rot = { x = 0.000, y = 231.667, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 22 },
	{ config_id = 98005, monster_id = 25210403, pos = { x = -657.181, y = 226.548, z = 3328.126 }, rot = { x = 0.000, y = 219.258, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 22 },
	{ config_id = 98006, monster_id = 25210202, pos = { x = -663.608, y = 229.246, z = 3318.517 }, rot = { x = 0.000, y = 24.464, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 22 },
	{ config_id = 98010, monster_id = 25210201, pos = { x = -656.357, y = 228.534, z = 3316.785 }, rot = { x = 0.000, y = 284.130, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 98007, gadget_id = 70360056, pos = { x = -659.771, y = 227.779, z = 3324.655 }, rot = { x = 12.897, y = 358.600, z = 347.660 }, level = 1, area_id = 22 },
	{ config_id = 98008, gadget_id = 70360057, pos = { x = -659.543, y = 227.743, z = 3324.598 }, rot = { x = 12.897, y = 358.600, z = 347.660 }, level = 1, area_id = 22 },
	{ config_id = 98009, gadget_id = 70210106, pos = { x = -660.035, y = 227.886, z = 3324.431 }, rot = { x = 13.116, y = 359.282, z = 353.758 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 22 }
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
		monsters = { 98001, 98002, 98003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 98004, 98005, 98006, 98010 },
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
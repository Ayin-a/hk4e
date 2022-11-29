-- 基础信息
local base_info = {
	group_id = 133301120
}

-- Trigger变量
local defs = {
	operator_1 = 120007,
	operator_2 = 120008,
	chest = 120009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 120001, monster_id = 26120201, pos = { x = -744.301, y = 253.837, z = 3238.498 }, rot = { x = 0.000, y = 133.744, z = 0.000 }, level = 1, drop_tag = "大蕈兽", pose_id = 201, area_id = 23 },
	{ config_id = 120002, monster_id = 26090201, pos = { x = -740.389, y = 253.959, z = 3239.024 }, rot = { x = 0.000, y = 158.359, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 120003, monster_id = 26090201, pos = { x = -745.330, y = 253.564, z = 3234.822 }, rot = { x = 0.000, y = 101.489, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 120004, monster_id = 26120301, pos = { x = -746.471, y = 253.914, z = 3237.054 }, rot = { x = 0.000, y = 122.861, z = 0.000 }, level = 1, drop_tag = "大蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 120005, monster_id = 26120101, pos = { x = -742.832, y = 254.356, z = 3241.126 }, rot = { x = 0.000, y = 162.853, z = 0.000 }, level = 1, drop_tag = "大蕈兽", pose_id = 201, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 120006, gadget_id = 70220004, pos = { x = -742.191, y = 253.477, z = 3236.740 }, rot = { x = 354.200, y = 10.819, z = 357.082 }, level = 1, area_id = 23 },
	{ config_id = 120007, gadget_id = 70360056, pos = { x = -739.597, y = 253.462, z = 3234.343 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 120008, gadget_id = 70360057, pos = { x = -739.369, y = 253.487, z = 3234.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 120009, gadget_id = 70210106, pos = { x = -739.862, y = 253.415, z = 3234.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 23 },
	{ config_id = 120010, gadget_id = 70220004, pos = { x = -739.973, y = 253.741, z = 3230.244 }, rot = { x = 2.976, y = 35.886, z = 6.538 }, level = 1, area_id = 23 },
	{ config_id = 120011, gadget_id = 70220004, pos = { x = -735.886, y = 254.044, z = 3235.659 }, rot = { x = 356.349, y = 331.457, z = 10.018 }, level = 1, area_id = 23 }
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
		gadgets = { 120006, 120010, 120011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 120001, 120002, 120003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 120004, 120005 },
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
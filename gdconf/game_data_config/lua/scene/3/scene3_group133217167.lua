-- 基础信息
local base_info = {
	group_id = 133217167
}

-- Trigger变量
local defs = {
	operator_1 = 167007,
	operator_2 = 167008,
	chest = 167009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 167001, monster_id = 23010101, pos = { x = -4418.766, y = 199.633, z = -3675.122 }, rot = { x = 0.000, y = 56.297, z = 0.000 }, level = 1, drop_tag = "先遣队", area_id = 14 },
	{ config_id = 167002, monster_id = 23010301, pos = { x = -4407.827, y = 199.550, z = -3670.269 }, rot = { x = 0.000, y = 283.814, z = 0.000 }, level = 1, drop_tag = "先遣队", area_id = 14 },
	{ config_id = 167003, monster_id = 23010401, pos = { x = -4419.845, y = 199.637, z = -3667.341 }, rot = { x = 0.000, y = 117.796, z = 0.000 }, level = 1, drop_tag = "先遣队", area_id = 14 },
	{ config_id = 167005, monster_id = 23010201, pos = { x = -4412.093, y = 199.560, z = -3664.847 }, rot = { x = 0.000, y = 222.516, z = 0.000 }, level = 1, drop_tag = "先遣队", area_id = 14 },
	{ config_id = 167006, monster_id = 23010501, pos = { x = -4410.870, y = 199.719, z = -3675.909 }, rot = { x = 0.000, y = 324.868, z = 0.000 }, level = 1, drop_tag = "先遣队", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 167007, gadget_id = 70360056, pos = { x = -4413.776, y = 200.000, z = -3670.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 167008, gadget_id = 70360057, pos = { x = -4413.549, y = 200.000, z = -3671.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 167009, gadget_id = 70210106, pos = { x = -4414.041, y = 199.717, z = -3671.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 14 }
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
		monsters = { 167001, 167002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 167003, 167005, 167006 },
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
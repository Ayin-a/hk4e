-- 基础信息
local base_info = {
	group_id = 133307047
}

-- Trigger变量
local defs = {
	operator_1 = 47007,
	operator_2 = 47008,
	chest = 47009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 47001, monster_id = 25410101, pos = { x = -1890.663, y = 155.845, z = 5435.024 }, rot = { x = 0.000, y = 246.548, z = 0.000 }, level = 1, drop_tag = "高级镀金旅团", area_id = 27 },
	{ config_id = 47002, monster_id = 25310301, pos = { x = -1887.691, y = 156.718, z = 5429.498 }, rot = { x = 0.000, y = 323.238, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", area_id = 27 },
	{ config_id = 47005, monster_id = 25310101, pos = { x = -1899.757, y = 156.076, z = 5431.950 }, rot = { x = 0.000, y = 135.081, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", pose_id = 1, area_id = 27 },
	{ config_id = 47006, monster_id = 25410201, pos = { x = -1899.579, y = 156.933, z = 5425.768 }, rot = { x = 0.000, y = 48.194, z = 0.000 }, level = 1, drop_tag = "高级镀金旅团", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 47007, gadget_id = 70360056, pos = { x = -1892.000, y = 155.974, z = 5432.823 }, rot = { x = 12.268, y = 0.000, z = 0.000 }, level = 1, area_id = 27 },
	{ config_id = 47008, gadget_id = 70360057, pos = { x = -1891.772, y = 156.000, z = 5432.769 }, rot = { x = 12.268, y = 0.000, z = 0.000 }, level = 1, area_id = 27 },
	{ config_id = 47009, gadget_id = 70210106, pos = { x = -1892.264, y = 156.044, z = 5432.607 }, rot = { x = 12.268, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 27 }
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
		monsters = { 47001, 47002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 47005, 47006 },
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
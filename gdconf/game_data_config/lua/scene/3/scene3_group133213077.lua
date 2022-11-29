-- 基础信息
local base_info = {
	group_id = 133213077
}

-- Trigger变量
local defs = {
	operator_1 = 77007,
	operator_2 = 77008,
	chest = 77009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 77001, monster_id = 25010401, pos = { x = -3561.806, y = 200.256, z = -3331.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, area_id = 12 },
	{ config_id = 77002, monster_id = 25010401, pos = { x = -3555.746, y = 200.113, z = -3330.934 }, rot = { x = 0.000, y = 280.132, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, area_id = 12 },
	{ config_id = 77003, monster_id = 25030301, pos = { x = -3562.443, y = 200.677, z = -3326.961 }, rot = { x = 0.000, y = 121.150, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, area_id = 12 },
	{ config_id = 77004, monster_id = 25030301, pos = { x = -3557.484, y = 200.614, z = -3324.354 }, rot = { x = 0.000, y = 184.880, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, area_id = 12 },
	{ config_id = 77005, monster_id = 25030201, pos = { x = -3560.866, y = 200.956, z = -3323.970 }, rot = { x = 0.000, y = 147.050, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, area_id = 12 },
	{ config_id = 77006, monster_id = 25070101, pos = { x = -3554.152, y = 200.390, z = -3325.750 }, rot = { x = 0.000, y = 232.907, z = 0.000 }, level = 1, drop_tag = "盗宝团", disableWander = true, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 77007, gadget_id = 70360056, pos = { x = -3560.983, y = 200.404, z = -3328.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 77008, gadget_id = 70360057, pos = { x = -3560.755, y = 200.381, z = -3328.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 77009, gadget_id = 70210106, pos = { x = -3561.247, y = 200.407, z = -3328.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 12 }
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
		monsters = { 77001, 77002, 77003, 77004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 77005, 77006 },
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
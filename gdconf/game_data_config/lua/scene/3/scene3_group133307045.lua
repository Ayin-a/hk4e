-- 基础信息
local base_info = {
	group_id = 133307045
}

-- Trigger变量
local defs = {
	operator_1 = 45007,
	operator_2 = 45008,
	chest = 45009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 45001, monster_id = 24040101, pos = { x = -2014.402, y = 150.454, z = 5638.383 }, rot = { x = 0.000, y = 350.539, z = 0.000 }, level = 1, drop_tag = "元能构装体", pose_id = 1, area_id = 27 },
	{ config_id = 45006, monster_id = 24040301, pos = { x = -2006.657, y = 148.717, z = 5647.236 }, rot = { x = 0.000, y = 241.795, z = 0.000 }, level = 1, drop_tag = "元能构装体", pose_id = 1, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 45007, gadget_id = 70360056, pos = { x = -2016.075, y = 150.540, z = 5643.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 27 },
	{ config_id = 45008, gadget_id = 70360057, pos = { x = -2015.847, y = 150.537, z = 5643.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 27 },
	{ config_id = 45009, gadget_id = 70210106, pos = { x = -2016.339, y = 150.587, z = 5643.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 27 }
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
		monsters = { 45001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 45006 },
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
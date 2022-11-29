-- 基础信息
local base_info = {
	group_id = 133212083
}

-- Trigger变量
local defs = {
	operator_1 = 83007,
	operator_2 = 83008,
	chest = 83009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 83001, monster_id = 25080101, pos = { x = -4074.833, y = 201.251, z = -2163.444 }, rot = { x = 0.000, y = 226.728, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 13 },
	{ config_id = 83002, monster_id = 25080201, pos = { x = -4068.570, y = 201.918, z = -2169.187 }, rot = { x = 0.000, y = 260.309, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 13 },
	{ config_id = 83003, monster_id = 25080301, pos = { x = -4070.694, y = 201.575, z = -2165.147 }, rot = { x = 0.000, y = 216.181, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 13 },
	{ config_id = 83004, monster_id = 25080101, pos = { x = -4068.521, y = 201.787, z = -2169.728 }, rot = { x = 0.000, y = 281.860, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 13 },
	{ config_id = 83005, monster_id = 25080201, pos = { x = -4075.272, y = 201.652, z = -2163.636 }, rot = { x = 359.337, y = 161.650, z = 357.799 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 13 },
	{ config_id = 83006, monster_id = 25080301, pos = { x = -4071.248, y = 202.174, z = -2165.708 }, rot = { x = 0.000, y = 237.540, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 83007, gadget_id = 70360056, pos = { x = -4075.942, y = 200.651, z = -2169.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 83008, gadget_id = 70360057, pos = { x = -4075.714, y = 200.649, z = -2169.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 83009, gadget_id = 70210106, pos = { x = -4076.206, y = 200.360, z = -2169.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 13 }
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
		monsters = { 83001, 83002, 83003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 83004, 83005, 83006 },
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
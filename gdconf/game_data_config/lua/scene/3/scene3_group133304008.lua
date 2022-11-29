-- 基础信息
local base_info = {
	group_id = 133304008
}

-- Trigger变量
local defs = {
	operator_1 = 8007,
	operator_2 = 8008,
	chest = 8009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 26090501, pos = { x = -1814.739, y = 243.687, z = 2902.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 8002, monster_id = 26090501, pos = { x = -1810.455, y = 242.592, z = 2904.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 8003, monster_id = 26090801, pos = { x = -1815.376, y = 243.803, z = 2907.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 8004, monster_id = 26120201, pos = { x = -1811.444, y = 242.415, z = 2908.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大蕈兽", pose_id = 201, area_id = 21 },
	{ config_id = 8005, monster_id = 26120301, pos = { x = -1814.721, y = 242.566, z = 2912.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 8006, monster_id = 26120301, pos = { x = -1808.526, y = 241.523, z = 2910.951 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大蕈兽", pose_id = 101, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8007, gadget_id = 70360056, pos = { x = -1818.395, y = 243.948, z = 2910.323 }, rot = { x = 19.403, y = 358.031, z = 348.517 }, level = 1, area_id = 21 },
	{ config_id = 8008, gadget_id = 70360057, pos = { x = -1818.281, y = 243.993, z = 2910.133 }, rot = { x = 19.403, y = 358.031, z = 348.517 }, level = 1, area_id = 21 },
	{ config_id = 8009, gadget_id = 70210106, pos = { x = -1818.967, y = 244.241, z = 2909.742 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 21 }
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
		monsters = { 8001, 8002, 8003, 8004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 8005, 8006 },
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
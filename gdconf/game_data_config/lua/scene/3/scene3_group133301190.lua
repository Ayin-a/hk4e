-- 基础信息
local base_info = {
	group_id = 133301190
}

-- Trigger变量
local defs = {
	operator_1 = 190007,
	operator_2 = 190008,
	chest = 190009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 190001, monster_id = 24030201, pos = { x = -814.974, y = 300.361, z = 3199.771 }, rot = { x = 0.000, y = 129.185, z = 0.000 }, level = 1, drop_tag = "遗迹龙兽", pose_id = 101, area_id = 23 },
	{ config_id = 190002, monster_id = 24030101, pos = { x = -807.252, y = 299.383, z = 3205.258 }, rot = { x = 0.000, y = 172.914, z = 0.000 }, level = 1, drop_tag = "遗迹龙兽", pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 190007, gadget_id = 70360056, pos = { x = -806.249, y = 298.546, z = 3196.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 190008, gadget_id = 70360057, pos = { x = -806.020, y = 298.520, z = 3196.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 190009, gadget_id = 70210106, pos = { x = -806.512, y = 298.591, z = 3196.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 23 }
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
		monsters = { 190001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 190002 },
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
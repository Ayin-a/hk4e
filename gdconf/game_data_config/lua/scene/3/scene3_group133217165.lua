-- 基础信息
local base_info = {
	group_id = 133217165
}

-- Trigger变量
local defs = {
	operator_1 = 165007,
	operator_2 = 165008,
	chest = 165009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 165001, monster_id = 25080101, pos = { x = -4260.880, y = 202.331, z = -3766.651 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 14 },
	{ config_id = 165002, monster_id = 25080201, pos = { x = -4258.017, y = 201.937, z = -3766.515 }, rot = { x = 0.000, y = 358.563, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 14 },
	{ config_id = 165003, monster_id = 25080101, pos = { x = -4256.724, y = 201.819, z = -3769.698 }, rot = { x = 0.000, y = 351.893, z = 0.000 }, level = 1, drop_tag = "浪人武士", pose_id = 1, area_id = 14 },
	{ config_id = 165005, monster_id = 25100101, pos = { x = -4263.240, y = 202.153, z = -3759.563 }, rot = { x = 0.000, y = 116.207, z = 0.000 }, level = 1, drop_tag = "高阶武士", pose_id = 1, area_id = 14 },
	{ config_id = 165006, monster_id = 25100201, pos = { x = -4252.183, y = 201.139, z = -3763.361 }, rot = { x = 0.000, y = 282.432, z = 0.000 }, level = 1, drop_tag = "高阶武士", pose_id = 1, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 165007, gadget_id = 70360056, pos = { x = -4258.770, y = 201.824, z = -3762.787 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 165008, gadget_id = 70360057, pos = { x = -4258.542, y = 201.782, z = -3762.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 14 },
	{ config_id = 165009, gadget_id = 70210106, pos = { x = -4259.034, y = 201.894, z = -3763.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 14 }
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
		monsters = { 165001, 165002, 165003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 165005, 165006 },
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
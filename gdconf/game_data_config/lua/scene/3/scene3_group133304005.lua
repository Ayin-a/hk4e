-- 基础信息
local base_info = {
	group_id = 133304005
}

-- Trigger变量
local defs = {
	operator_1 = 5007,
	operator_2 = 5008,
	chest = 5009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 26090701, pos = { x = -1752.624, y = 223.496, z = 2967.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 5002, monster_id = 26090701, pos = { x = -1748.340, y = 222.447, z = 2969.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 5003, monster_id = 26090901, pos = { x = -1753.261, y = 221.465, z = 2971.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "蕈兽", pose_id = 101, area_id = 21 },
	{ config_id = 5004, monster_id = 26120101, pos = { x = -1749.329, y = 220.332, z = 2973.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大蕈兽", pose_id = 201, area_id = 21 },
	{ config_id = 5005, monster_id = 26120201, pos = { x = -1752.383, y = 222.939, z = 2968.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大蕈兽", pose_id = 201, area_id = 21 },
	{ config_id = 5006, monster_id = 26120201, pos = { x = -1746.411, y = 218.919, z = 2975.549 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大蕈兽", pose_id = 201, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5007, gadget_id = 70360056, pos = { x = -1758.277, y = 219.597, z = 2980.531 }, rot = { x = 7.104, y = 0.823, z = 351.542 }, level = 1, area_id = 21 },
	{ config_id = 5008, gadget_id = 70360057, pos = { x = -1758.049, y = 219.570, z = 2980.474 }, rot = { x = 7.177, y = 1.320, z = 351.604 }, level = 1, area_id = 21 },
	{ config_id = 5009, gadget_id = 70210106, pos = { x = -1758.584, y = 219.641, z = 2980.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 21 }
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
		monsters = { 5001, 5002, 5003, 5004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 5005, 5006 },
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
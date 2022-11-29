-- 基础信息
local base_info = {
	group_id = 133303005
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
	{ config_id = 5001, monster_id = 25310301, pos = { x = -1499.414, y = 201.358, z = 3503.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", area_id = 23 },
	{ config_id = 5005, monster_id = 25310201, pos = { x = -1497.717, y = 202.858, z = 3507.285 }, rot = { x = 0.000, y = 215.540, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", pose_id = 1, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5007, gadget_id = 70360056, pos = { x = -1499.209, y = 202.217, z = 3505.922 }, rot = { x = 338.084, y = 358.448, z = 8.005 }, level = 1, area_id = 23 },
	{ config_id = 5008, gadget_id = 70360057, pos = { x = -1498.981, y = 202.226, z = 3505.866 }, rot = { x = 338.084, y = 358.448, z = 8.005 }, level = 1, area_id = 23 },
	{ config_id = 5009, gadget_id = 70210106, pos = { x = -1499.473, y = 202.210, z = 3505.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 23 }
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
		monsters = { 5001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 5005 },
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
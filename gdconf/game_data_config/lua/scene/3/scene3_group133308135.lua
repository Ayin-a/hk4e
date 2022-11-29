-- 基础信息
local base_info = {
	group_id = 133308135
}

-- Trigger变量
local defs = {
	operator_1 = 135007,
	operator_2 = 135008,
	chest = 135009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 135001, monster_id = 25310201, pos = { x = -2282.503, y = 357.739, z = 4313.342 }, rot = { x = 0.000, y = 159.977, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 1, area_id = 26 },
	{ config_id = 135002, monster_id = 25310301, pos = { x = -2286.116, y = 357.579, z = 4310.359 }, rot = { x = 0.000, y = 113.186, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", disableWander = true, area_id = 26 },
	{ config_id = 135006, monster_id = 25310101, pos = { x = -2281.116, y = 357.477, z = 4308.509 }, rot = { x = 0.000, y = 138.699, z = 0.000 }, level = 1, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 1, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 135007, gadget_id = 70360056, pos = { x = -2276.467, y = 357.310, z = 4304.930 }, rot = { x = 0.000, y = 275.261, z = 0.000 }, level = 1, area_id = 26 },
	{ config_id = 135008, gadget_id = 70360057, pos = { x = -2276.390, y = 357.315, z = 4305.152 }, rot = { x = 0.000, y = 275.261, z = 0.000 }, level = 1, area_id = 26 },
	{ config_id = 135009, gadget_id = 70210106, pos = { x = -2284.555, y = 357.705, z = 4312.348 }, rot = { x = 1.079, y = 103.954, z = 355.665 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 26 }
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
		monsters = { 135006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 135001, 135002 },
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
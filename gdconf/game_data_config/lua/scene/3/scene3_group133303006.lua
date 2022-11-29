-- 基础信息
local base_info = {
	group_id = 133303006
}

-- Trigger变量
local defs = {
	operator_1 = 6007,
	operator_2 = 6008,
	chest = 6009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 25210103, pos = { x = -1512.147, y = 240.997, z = 3721.053 }, rot = { x = 0.000, y = 90.710, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 23 },
	{ config_id = 6002, monster_id = 25210202, pos = { x = -1505.469, y = 241.465, z = 3725.569 }, rot = { x = 0.000, y = 212.946, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 23 },
	{ config_id = 6003, monster_id = 25210401, pos = { x = -1509.289, y = 241.150, z = 3725.990 }, rot = { x = 0.000, y = 145.050, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 23 },
	{ config_id = 6005, monster_id = 25210303, pos = { x = -1510.656, y = 241.097, z = 3724.987 }, rot = { x = 0.000, y = 130.549, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 23 },
	{ config_id = 6006, monster_id = 25210503, pos = { x = -1505.153, y = 241.050, z = 3719.145 }, rot = { x = 0.000, y = 336.049, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6007, gadget_id = 70360056, pos = { x = -1507.557, y = 240.990, z = 3722.594 }, rot = { x = 357.328, y = 359.875, z = 5.356 }, level = 1, area_id = 23 },
	{ config_id = 6008, gadget_id = 70360057, pos = { x = -1507.329, y = 241.005, z = 3722.538 }, rot = { x = 355.541, y = 359.861, z = 3.577 }, level = 1, area_id = 23 },
	{ config_id = 6009, gadget_id = 70210106, pos = { x = -1507.821, y = 241.017, z = 3722.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 23 }
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
		monsters = { 6001, 6002, 6003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 6005, 6006 },
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
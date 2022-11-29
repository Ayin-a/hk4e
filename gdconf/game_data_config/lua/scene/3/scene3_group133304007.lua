-- 基础信息
local base_info = {
	group_id = 133304007
}

-- Trigger变量
local defs = {
	operator_1 = 7007,
	operator_2 = 7008,
	chest = 7009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 25210302, pos = { x = -1588.323, y = 231.233, z = 2959.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 21 },
	{ config_id = 7002, monster_id = 25210501, pos = { x = -1582.153, y = 234.587, z = 2962.202 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 21 },
	{ config_id = 7003, monster_id = 25210202, pos = { x = -1583.549, y = 233.886, z = 2969.013 }, rot = { x = 0.000, y = 212.187, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 21 },
	{ config_id = 7005, monster_id = 25210203, pos = { x = -1590.530, y = 230.493, z = 2966.900 }, rot = { x = 0.000, y = 119.552, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 21 },
	{ config_id = 7006, monster_id = 25210202, pos = { x = -1581.369, y = 234.901, z = 2967.940 }, rot = { x = 0.000, y = 230.921, z = 0.000 }, level = 1, drop_tag = "镀金旅团", area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7007, gadget_id = 70360056, pos = { x = -1585.387, y = 232.706, z = 2963.404 }, rot = { x = 2.760, y = 353.112, z = 27.866 }, level = 1, area_id = 21 },
	{ config_id = 7008, gadget_id = 70360057, pos = { x = -1585.386, y = 232.706, z = 2963.407 }, rot = { x = 359.209, y = 359.803, z = 27.981 }, level = 1, area_id = 21 },
	{ config_id = 7009, gadget_id = 70210106, pos = { x = -1585.878, y = 232.442, z = 2963.240 }, rot = { x = 359.209, y = 359.803, z = 27.981 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 21 }
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
		monsters = { 7001, 7002, 7003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 7005, 7006 },
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
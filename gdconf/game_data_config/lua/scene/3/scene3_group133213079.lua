-- 基础信息
local base_info = {
	group_id = 133213079
}

-- Trigger变量
local defs = {
	operator_1 = 79007,
	operator_2 = 79008,
	chest = 79009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 79001, monster_id = 23050101, pos = { x = -3513.195, y = 200.000, z = -3010.304 }, rot = { x = 0.000, y = 315.795, z = 0.000 }, level = 1, drop_tag = "藏镜侍女", disableWander = true, area_id = 12 },
	{ config_id = 79002, monster_id = 23030101, pos = { x = -3516.774, y = 200.000, z = -3011.367 }, rot = { x = 0.000, y = 345.563, z = 0.000 }, level = 1, drop_tag = "召唤师", disableWander = true, area_id = 12 },
	{ config_id = 79005, monster_id = 23050101, pos = { x = -3513.950, y = 200.000, z = -3004.865 }, rot = { x = 0.000, y = 213.902, z = 0.000 }, level = 1, drop_tag = "藏镜侍女", disableWander = true, area_id = 12 },
	{ config_id = 79006, monster_id = 23040101, pos = { x = -3517.475, y = 200.000, z = -3004.986 }, rot = { x = 0.000, y = 158.924, z = 0.000 }, level = 1, drop_tag = "召唤师", disableWander = true, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 79003, gadget_id = 70220035, pos = { x = -3509.379, y = 199.494, z = -3003.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 79004, gadget_id = 70220035, pos = { x = -3510.073, y = 199.650, z = -3011.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 79007, gadget_id = 70360056, pos = { x = -3514.752, y = 199.691, z = -3007.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 79008, gadget_id = 70360057, pos = { x = -3514.524, y = 199.702, z = -3007.293 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 79009, gadget_id = 70210106, pos = { x = -3515.017, y = 199.697, z = -3007.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, isOneoff = true, persistent = true, is_blossom_chest = true, area_id = 12 }
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
		gadgets = { 79003, 79004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 79001, 79002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 79005, 79006 },
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
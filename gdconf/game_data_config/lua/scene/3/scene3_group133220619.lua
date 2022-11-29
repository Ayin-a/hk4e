-- 基础信息
local base_info = {
	group_id = 133220619
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 619001, gadget_id = 70500000, pos = { x = -2734.081, y = 215.532, z = -4330.891 }, rot = { x = 0.000, y = 119.486, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 11 },
	{ config_id = 619002, gadget_id = 70500000, pos = { x = -2731.899, y = 215.933, z = -4326.953 }, rot = { x = 0.000, y = 294.294, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 11 },
	{ config_id = 619003, gadget_id = 70500000, pos = { x = -2737.437, y = 215.434, z = -4330.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1008, persistent = true, area_id = 11 },
	{ config_id = 619004, gadget_id = 70500000, pos = { x = -2741.618, y = 215.592, z = -4322.091 }, rot = { x = 0.000, y = 239.812, z = 0.000 }, level = 1, point_type = 1008, persistent = true, area_id = 11 },
	{ config_id = 619005, gadget_id = 70500000, pos = { x = -2743.454, y = 216.222, z = -4321.645 }, rot = { x = 354.770, y = 315.621, z = 8.728 }, level = 1, point_type = 1008, persistent = true, area_id = 11 },
	{ config_id = 619006, gadget_id = 70360001, pos = { x = -2737.304, y = 215.941, z = -4330.224 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 11 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 在suite3内添加魔晶矿,
		monsters = { },
		gadgets = { 619001, 619002, 619003, 619004, 619005, 619006 },
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

require "V2_0/OreBlossomGroup"
-- 基础信息
local base_info = {
	group_id = 133212509
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
	{ config_id = 509001, gadget_id = 70500000, pos = { x = -3759.304, y = 236.000, z = -2271.625 }, rot = { x = 0.000, y = 25.322, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 13 },
	{ config_id = 509002, gadget_id = 70500000, pos = { x = -3768.141, y = 237.227, z = -2276.568 }, rot = { x = 4.935, y = 324.031, z = 347.254 }, level = 1, point_type = 1008, persistent = true, area_id = 13 },
	{ config_id = 509003, gadget_id = 70500000, pos = { x = -3780.026, y = 236.727, z = -2272.868 }, rot = { x = 33.580, y = 47.648, z = 21.514 }, level = 1, point_type = 1005, persistent = true, area_id = 13 },
	{ config_id = 509004, gadget_id = 70360001, pos = { x = -3779.282, y = 238.085, z = -2272.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 13 }
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
		gadgets = { 509001, 509002, 509003, 509004 },
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
-- 基础信息
local base_info = {
	group_id = 133212507
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
	{ config_id = 507001, gadget_id = 70500000, pos = { x = -4053.069, y = 264.317, z = -2215.446 }, rot = { x = 0.000, y = 302.975, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 13 },
	{ config_id = 507002, gadget_id = 70500000, pos = { x = -4045.345, y = 262.620, z = -2213.708 }, rot = { x = 0.000, y = 0.000, z = 346.873 }, level = 1, point_type = 1008, persistent = true, area_id = 13 },
	{ config_id = 507003, gadget_id = 70500000, pos = { x = -4045.727, y = 262.924, z = -2215.471 }, rot = { x = 356.075, y = 293.390, z = 358.304 }, level = 1, point_type = 1005, persistent = true, area_id = 13 },
	{ config_id = 507004, gadget_id = 70500000, pos = { x = -4051.394, y = 264.264, z = -2218.269 }, rot = { x = 350.082, y = 180.416, z = 20.631 }, level = 1, point_type = 1008, persistent = true, area_id = 13 },
	{ config_id = 507005, gadget_id = 70360001, pos = { x = -4045.129, y = 263.093, z = -2213.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 13 }
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
		gadgets = { 507001, 507002, 507003, 507004, 507005 },
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
-- 基础信息
local base_info = {
	group_id = 133303382
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
	{ config_id = 382001, gadget_id = 70500000, pos = { x = -1434.540, y = 131.182, z = 3336.083 }, rot = { x = 357.578, y = 256.200, z = 324.471 }, level = 1, point_type = 1005, persistent = true, area_id = 23 },
	{ config_id = 382002, gadget_id = 70500000, pos = { x = -1438.669, y = 129.685, z = 3335.570 }, rot = { x = 355.493, y = 300.194, z = 3.155 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 382003, gadget_id = 70500000, pos = { x = -1435.314, y = 133.319, z = 3332.041 }, rot = { x = 8.666, y = 296.390, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 23 },
	{ config_id = 382004, gadget_id = 70500000, pos = { x = -1433.880, y = 132.824, z = 3333.493 }, rot = { x = 11.933, y = 316.214, z = 1.816 }, level = 1, point_type = 1005, persistent = true, area_id = 23 },
	{ config_id = 382005, gadget_id = 70360001, pos = { x = -1436.470, y = 132.922, z = 3331.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 23 }
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
		-- description = ,
		monsters = { },
		gadgets = { 382001, 382002, 382003, 382004, 382005 },
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
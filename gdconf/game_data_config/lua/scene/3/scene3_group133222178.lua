-- 基础信息
local base_info = {
	group_id = 133222178
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
	{ config_id = 178001, gadget_id = 70500000, pos = { x = -4301.741, y = 201.355, z = -4308.355 }, rot = { x = 1.025, y = 328.542, z = 2.176 }, level = 1, point_type = 1005, persistent = true, area_id = 14 },
	{ config_id = 178002, gadget_id = 70500000, pos = { x = -4305.492, y = 201.788, z = -4304.475 }, rot = { x = 2.240, y = 7.101, z = 7.664 }, level = 1, point_type = 1008, persistent = true, area_id = 14 },
	{ config_id = 178003, gadget_id = 70500000, pos = { x = -4307.913, y = 201.328, z = -4297.750 }, rot = { x = 359.798, y = 303.909, z = 24.459 }, level = 1, point_type = 1005, persistent = true, area_id = 14 },
	{ config_id = 178004, gadget_id = 70500000, pos = { x = -4305.564, y = 200.994, z = -4308.315 }, rot = { x = 340.456, y = 6.443, z = 355.777 }, level = 1, point_type = 1008, persistent = true, area_id = 14 },
	{ config_id = 178005, gadget_id = 70360001, pos = { x = -4302.612, y = 201.302, z = -4306.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 14 }
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
		gadgets = { 178001, 178002, 178003, 178004, 178005 },
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
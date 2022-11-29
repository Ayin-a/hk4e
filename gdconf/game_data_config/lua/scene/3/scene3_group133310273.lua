-- 基础信息
local base_info = {
	group_id = 133310273
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
	{ config_id = 273001, gadget_id = 70500000, pos = { x = -2287.477, y = 281.398, z = 4361.226 }, rot = { x = 17.644, y = 1.356, z = 22.261 }, level = 1, point_type = 1003, persistent = true, area_id = 26 },
	{ config_id = 273002, gadget_id = 70500000, pos = { x = -2286.885, y = 281.074, z = 4364.604 }, rot = { x = 14.745, y = 359.677, z = 358.018 }, level = 1, point_type = 1003, persistent = true, area_id = 26 },
	{ config_id = 273003, gadget_id = 70360001, pos = { x = -2288.300, y = 280.325, z = 4364.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 26 }
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
		gadgets = { 273001, 273002, 273003 },
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
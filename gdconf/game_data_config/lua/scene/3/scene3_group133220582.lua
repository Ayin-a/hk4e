-- 基础信息
local base_info = {
	group_id = 133220582
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
	{ config_id = 582001, gadget_id = 70500000, pos = { x = -2444.677, y = 201.860, z = -4565.696 }, rot = { x = 0.000, y = 194.647, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 11 },
	{ config_id = 582002, gadget_id = 70500000, pos = { x = -2442.941, y = 201.457, z = -4565.290 }, rot = { x = 0.000, y = 276.668, z = 0.000 }, level = 1, point_type = 1008, persistent = true, area_id = 11 },
	{ config_id = 582003, gadget_id = 70500000, pos = { x = -2450.755, y = 201.937, z = -4570.657 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 11 },
	{ config_id = 582004, gadget_id = 70500000, pos = { x = -2435.589, y = 200.477, z = -4561.745 }, rot = { x = 0.267, y = 195.162, z = 18.842 }, level = 1, point_type = 1008, persistent = true, area_id = 11 },
	{ config_id = 582005, gadget_id = 70360001, pos = { x = -2435.112, y = 200.529, z = -4561.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 11 }
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
		gadgets = { 582001, 582002, 582003, 582004, 582005 },
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
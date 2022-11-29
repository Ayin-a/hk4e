-- 基础信息
local base_info = {
	group_id = 133304347
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
	{ config_id = 347001, gadget_id = 70500000, pos = { x = -1419.768, y = 256.499, z = 2219.128 }, rot = { x = 357.502, y = 293.038, z = 1.642 }, level = 1, point_type = 1005, persistent = true, area_id = 21 },
	{ config_id = 347002, gadget_id = 70500000, pos = { x = -1409.711, y = 255.607, z = 2219.230 }, rot = { x = 7.656, y = 292.672, z = 0.280 }, level = 1, point_type = 1003, persistent = true, area_id = 21 },
	{ config_id = 347003, gadget_id = 70500000, pos = { x = -1406.083, y = 256.257, z = 2216.844 }, rot = { x = 0.000, y = 293.818, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 21 },
	{ config_id = 347004, gadget_id = 70500000, pos = { x = -1425.529, y = 255.961, z = 2220.826 }, rot = { x = 7.636, y = 358.828, z = 342.571 }, level = 1, point_type = 1005, persistent = true, area_id = 21 },
	{ config_id = 347005, gadget_id = 70360001, pos = { x = -1444.045, y = 257.841, z = 2226.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 }
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
		gadgets = { 347001, 347002, 347003, 347004, 347005 },
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
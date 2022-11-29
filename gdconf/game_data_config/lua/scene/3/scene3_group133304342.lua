-- 基础信息
local base_info = {
	group_id = 133304342
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
	{ config_id = 342001, gadget_id = 70500000, pos = { x = -1516.716, y = 134.610, z = 2465.788 }, rot = { x = 355.030, y = 236.873, z = 352.442 }, level = 1, point_type = 1003, persistent = true, area_id = 21 },
	{ config_id = 342002, gadget_id = 70500000, pos = { x = -1494.598, y = 135.210, z = 2462.539 }, rot = { x = 39.545, y = 6.827, z = 16.648 }, level = 1, point_type = 1003, persistent = true, area_id = 21 },
	{ config_id = 342003, gadget_id = 70360001, pos = { x = -1513.767, y = 135.460, z = 2461.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 }
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
		gadgets = { 342001, 342002, 342003 },
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
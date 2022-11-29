-- 基础信息
local base_info = {
	group_id = 133210447
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
	{ config_id = 447001, gadget_id = 70500000, pos = { x = -3915.034, y = 150.170, z = -1043.619 }, rot = { x = 352.517, y = 84.772, z = 19.096 }, level = 1, point_type = 1005, persistent = true, area_id = 17 },
	{ config_id = 447002, gadget_id = 70500000, pos = { x = -3922.535, y = 150.039, z = -1046.391 }, rot = { x = 11.261, y = 0.386, z = 3.911 }, level = 1, point_type = 1008, persistent = true, area_id = 17 },
	{ config_id = 447003, gadget_id = 70500000, pos = { x = -3910.136, y = 151.984, z = -1044.296 }, rot = { x = 354.396, y = 112.499, z = 4.820 }, level = 1, point_type = 1005, persistent = true, area_id = 17 },
	{ config_id = 447004, gadget_id = 70360001, pos = { x = -3916.346, y = 150.528, z = -1045.411 }, rot = { x = 0.000, y = 183.903, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 447005, gadget_id = 70500000, pos = { x = -3922.962, y = 150.639, z = -1048.324 }, rot = { x = 346.703, y = 182.577, z = 4.699 }, level = 1, point_type = 1008, persistent = true, area_id = 17 }
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
		gadgets = { 447001, 447002, 447003, 447004, 447005 },
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
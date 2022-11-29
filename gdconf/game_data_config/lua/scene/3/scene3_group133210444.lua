-- 基础信息
local base_info = {
	group_id = 133210444
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
	{ config_id = 444001, gadget_id = 70500000, pos = { x = -3577.922, y = 203.051, z = -929.635 }, rot = { x = 353.828, y = 256.968, z = 0.278 }, level = 1, point_type = 1005, persistent = true, area_id = 17 },
	{ config_id = 444002, gadget_id = 70500000, pos = { x = -3578.302, y = 203.025, z = -927.748 }, rot = { x = 357.371, y = 184.628, z = 5.875 }, level = 1, point_type = 1008, persistent = true, area_id = 17 },
	{ config_id = 444003, gadget_id = 70500000, pos = { x = -3579.946, y = 203.140, z = -926.349 }, rot = { x = 6.089, y = 69.418, z = 0.030 }, level = 1, point_type = 1005, persistent = true, area_id = 17 },
	{ config_id = 444004, gadget_id = 70360001, pos = { x = -3577.542, y = 202.933, z = -927.455 }, rot = { x = 0.000, y = 310.388, z = 0.000 }, level = 1, persistent = true, area_id = 17 },
	{ config_id = 444005, gadget_id = 70500000, pos = { x = -3582.998, y = 203.002, z = -922.479 }, rot = { x = 5.964, y = 298.477, z = 7.374 }, level = 1, point_type = 1008, persistent = true, area_id = 17 }
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
		gadgets = { 444001, 444002, 444003, 444004, 444005 },
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
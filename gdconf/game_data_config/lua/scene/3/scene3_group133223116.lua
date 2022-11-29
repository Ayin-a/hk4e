-- 基础信息
local base_info = {
	group_id = 133223116
}

-- DEFS_MISCS
defs = {
        time_axis_decal = {0.3,0.6,0.9,1.2,1.5}, --decal出现的时间，不用改
        decalsList = {116001,116002,116003,116004,116005}--decal出现的configID，按顺序填
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
	{ config_id = 116001, gadget_id = 70230052, pos = { x = -6381.591, y = 214.562, z = -2812.569 }, rot = { x = 66.297, y = 288.311, z = 31.922 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 116002, gadget_id = 70230055, pos = { x = -6380.892, y = 214.381, z = -2813.834 }, rot = { x = 68.174, y = 100.752, z = 213.275 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 116003, gadget_id = 70230057, pos = { x = -6380.281, y = 214.011, z = -2814.814 }, rot = { x = 75.704, y = 5.014, z = 125.039 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 116004, gadget_id = 70230051, pos = { x = -6379.722, y = 213.789, z = -2815.960 }, rot = { x = 67.265, y = 355.923, z = 122.277 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 116005, gadget_id = 70230054, pos = { x = -6378.803, y = 213.641, z = -2816.870 }, rot = { x = 75.799, y = 41.806, z = 153.913 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 116006, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6391.180, y = 212.346, z = -2818.422 }, area_id = 18 }
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "Finished", value = 0, no_refresh = true },
	{ config_id = 2, name = "isNeedNotify", value = 1, no_refresh = false }
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
		regions = { 116006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 116001, 116002, 116003, 116004, 116005 },
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

require "V2_2/ShowDecals"
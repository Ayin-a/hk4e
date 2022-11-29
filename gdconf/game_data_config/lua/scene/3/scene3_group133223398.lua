-- 基础信息
local base_info = {
	group_id = 133223398
}

-- DEFS_MISCS
defs = {
        time_axis_decal = {0.2,0.4,0.6,0.8,1}, --decal出现的时间，不用改
        decalsList = {398001,398002,398003,398004,398005}--decal出现的configID，按顺序填
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
	{ config_id = 398001, gadget_id = 70230052, pos = { x = -6422.972, y = 220.140, z = -2813.150 }, rot = { x = 70.612, y = 214.952, z = 186.179 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 398002, gadget_id = 70230054, pos = { x = -6424.388, y = 221.023, z = -2812.601 }, rot = { x = 84.583, y = 215.713, z = 222.577 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 398003, gadget_id = 70230057, pos = { x = -6425.672, y = 220.598, z = -2812.539 }, rot = { x = 82.543, y = 86.961, z = 94.436 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 398004, gadget_id = 70230056, pos = { x = -6426.991, y = 220.983, z = -2813.319 }, rot = { x = 82.957, y = 32.890, z = 35.886 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 },
	{ config_id = 398005, gadget_id = 70230051, pos = { x = -6428.688, y = 220.266, z = -2814.057 }, rot = { x = 74.693, y = 73.358, z = 57.201 }, level = 33, state = GadgetState.GearStart, persistent = true, area_id = 18 }
}

-- 区域
regions = {
	{ config_id = 398006, shape = RegionShape.SPHERE, radius = 5, pos = { x = -6417.075, y = 223.505, z = -2827.073 }, area_id = 18 }
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
		regions = { 398006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 398001, 398002, 398003, 398004, 398005 },
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
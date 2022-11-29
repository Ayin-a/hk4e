-- 基础信息
local base_info = {
	group_id = 133301161
}

-- DEFS_MISCS
local defs = {
	flowerList01 = {161003},
	flowerList02 = {161004},
	flowerList03 = {161005},
	flowerList04 = {161006},
	flowerList05 = {161007},
	flowerList06 = {161008},
	flowerList07 = {161009},
	flowerList08 = {161010},
	flowerList09 = {161011},
	flowerList10 = {161012},
	flowerList11 = {161013},
	flowerList12 = {161014},
	flowerList13 = {161002},
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
	[161002] = { config_id = 161002, gadget_id = 70500000, pos = { x = -217.551, y = 210.000, z = 3658.708 }, rot = { x = 341.832, y = 0.000, z = 8.344 }, level = 27, state = GadgetState.GearStart, point_type = 2058, persistent = true, area_id = 29 },
	[161003] = { config_id = 161003, gadget_id = 70500000, pos = { x = -222.406, y = 210.173, z = 3665.722 }, rot = { x = 337.548, y = 1.667, z = 351.618 }, level = 27, state = GadgetState.GearStart, point_type = 2058, persistent = true, area_id = 29 },
	[161004] = { config_id = 161004, gadget_id = 70500000, pos = { x = -219.365, y = 210.064, z = 3664.030 }, rot = { x = 14.632, y = 352.996, z = 352.412 }, level = 27, state = GadgetState.GearStart, point_type = 2058, persistent = true, area_id = 29 },
	[161005] = { config_id = 161005, gadget_id = 70500000, pos = { x = -220.906, y = 209.906, z = 3661.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, point_type = 2058, persistent = true, area_id = 29 },
	[161006] = { config_id = 161006, gadget_id = 70500000, pos = { x = -223.289, y = 210.181, z = 3663.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, point_type = 2058, persistent = true, area_id = 29 },
	[161007] = { config_id = 161007, gadget_id = 70500000, pos = { x = -214.727, y = 210.159, z = 3663.805 }, rot = { x = 350.494, y = 17.213, z = 357.070 }, level = 27, state = GadgetState.GearStart, point_type = 2058, persistent = true, area_id = 29 },
	[161008] = { config_id = 161008, gadget_id = 70500000, pos = { x = -214.983, y = 209.943, z = 3658.735 }, rot = { x = 4.981, y = 272.558, z = 339.949 }, level = 27, state = GadgetState.GearStart, point_type = 2058, persistent = true, area_id = 29 },
	[161009] = { config_id = 161009, gadget_id = 70500000, pos = { x = -221.066, y = 210.118, z = 3659.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, point_type = 2058, persistent = true, area_id = 29 },
	[161010] = { config_id = 161010, gadget_id = 70500000, pos = { x = -219.244, y = 210.392, z = 3656.850 }, rot = { x = 349.334, y = 8.178, z = 337.804 }, level = 27, state = GadgetState.GearStart, point_type = 2058, persistent = true, area_id = 29 },
	[161011] = { config_id = 161011, gadget_id = 70500000, pos = { x = -211.022, y = 209.981, z = 3657.384 }, rot = { x = 0.474, y = 183.335, z = 351.913 }, level = 27, state = GadgetState.GearStart, point_type = 2058, persistent = true, area_id = 29 },
	[161012] = { config_id = 161012, gadget_id = 70500000, pos = { x = -213.087, y = 209.995, z = 3660.407 }, rot = { x = 351.305, y = 241.487, z = 358.931 }, level = 27, state = GadgetState.GearStart, point_type = 2058, persistent = true, area_id = 29 },
	[161013] = { config_id = 161013, gadget_id = 70500000, pos = { x = -212.204, y = 210.136, z = 3655.012 }, rot = { x = 0.089, y = 242.533, z = 347.174 }, level = 27, state = GadgetState.GearStart, point_type = 2058, persistent = true, area_id = 29 },
	[161014] = { config_id = 161014, gadget_id = 70500000, pos = { x = -213.801, y = 209.916, z = 3656.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, point_type = 2058, persistent = true, area_id = 29 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
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
		gadgets = { 161002, 161003, 161004, 161005, 161006, 161007, 161008, 161009, 161010, 161011, 161012, 161013, 161014 },
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

require "V3_0/SumeruFarmSub"
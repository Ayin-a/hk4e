-- 基础信息
local base_info = {
	group_id = 133301162
}

-- DEFS_MISCS
local defs = {
	flowerList01 = {162003},
	flowerList02 = {162004},
	flowerList03 = {162005},
	flowerList04 = {162006},
	flowerList05 = {162007},
	flowerList06 = {162008},
	flowerList07 = {162009},
	flowerList08 = {162010},
	flowerList09 = {162011},
	flowerList10 = {162012},
	flowerList11 = {162013},
	flowerList12 = {162014},
	flowerList13 = {162002},
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
	[162002] = { config_id = 162002, gadget_id = 70500000, pos = { x = -217.551, y = 210.000, z = 3658.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, point_type = 2057, persistent = true, area_id = 29 },
	[162003] = { config_id = 162003, gadget_id = 70500000, pos = { x = -222.406, y = 210.024, z = 3665.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, point_type = 2057, persistent = true, area_id = 29 },
	[162004] = { config_id = 162004, gadget_id = 70500000, pos = { x = -219.365, y = 210.064, z = 3664.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, point_type = 2057, persistent = true, area_id = 29 },
	[162005] = { config_id = 162005, gadget_id = 70500000, pos = { x = -220.906, y = 209.906, z = 3661.696 }, rot = { x = 10.040, y = 339.047, z = 8.295 }, level = 27, state = GadgetState.GearStart, point_type = 2057, persistent = true, area_id = 29 },
	[162006] = { config_id = 162006, gadget_id = 70500000, pos = { x = -223.289, y = 210.181, z = 3663.213 }, rot = { x = 0.000, y = 287.297, z = 0.000 }, level = 27, state = GadgetState.GearStart, point_type = 2057, persistent = true, area_id = 29 },
	[162007] = { config_id = 162007, gadget_id = 70500000, pos = { x = -214.727, y = 210.159, z = 3663.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, point_type = 2057, persistent = true, area_id = 29 },
	[162008] = { config_id = 162008, gadget_id = 70500000, pos = { x = -214.985, y = 209.964, z = 3658.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, point_type = 2057, persistent = true, area_id = 29 },
	[162009] = { config_id = 162009, gadget_id = 70500000, pos = { x = -221.066, y = 210.118, z = 3659.779 }, rot = { x = 0.000, y = 70.197, z = 0.000 }, level = 27, state = GadgetState.GearStart, point_type = 2057, persistent = true, area_id = 29 },
	[162010] = { config_id = 162010, gadget_id = 70500000, pos = { x = -219.449, y = 210.066, z = 3656.981 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, point_type = 2057, persistent = true, area_id = 29 },
	[162011] = { config_id = 162011, gadget_id = 70500000, pos = { x = -211.022, y = 209.981, z = 3657.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, point_type = 2057, persistent = true, area_id = 29 },
	[162012] = { config_id = 162012, gadget_id = 70500000, pos = { x = -213.087, y = 209.995, z = 3660.407 }, rot = { x = -0.002, y = 64.422, z = 346.856 }, level = 27, state = GadgetState.GearStart, point_type = 2057, persistent = true, area_id = 29 },
	[162013] = { config_id = 162013, gadget_id = 70500000, pos = { x = -212.204, y = 210.136, z = 3655.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, point_type = 2057, persistent = true, area_id = 29 },
	[162014] = { config_id = 162014, gadget_id = 70500000, pos = { x = -213.801, y = 209.999, z = 3656.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, point_type = 2057, persistent = true, area_id = 29 }
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
		gadgets = { 162002, 162003, 162004, 162005, 162006, 162007, 162008, 162009, 162010, 162011, 162012, 162013, 162014 },
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
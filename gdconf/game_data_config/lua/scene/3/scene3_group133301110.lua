-- 基础信息
local base_info = {
	group_id = 133301110
}

-- Trigger变量
local defs = {
	gadget_StarCid = 110082,
	gadget_TreeCid = 110083,
	gadget_FloorCid = 110001,
	region_InitRegion = 110085,
	region_PlayRegion = 110084,
	quest_id = 7310607,
	gadget_Volume01 = 110087,
	gadget_Volume02 = 110086,
	cutSceneId = 80,
	gadget_Chest = 110089
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
	-- 11，这个是第一块地板，记得填 DEFS_MISCS 中的 FloorCid
	[110001] = { config_id = 110001, gadget_id = 70330241, pos = { x = -1237.677, y = 225.326, z = 3806.445 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 12
	[110002] = { config_id = 110002, gadget_id = 70330241, pos = { x = -1235.700, y = 225.326, z = 3805.734 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 13
	[110003] = { config_id = 110003, gadget_id = 70330241, pos = { x = -1233.724, y = 225.326, z = 3805.024 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 14
	[110004] = { config_id = 110004, gadget_id = 70330241, pos = { x = -1231.748, y = 225.326, z = 3804.314 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 15
	[110005] = { config_id = 110005, gadget_id = 70330241, pos = { x = -1229.772, y = 225.326, z = 3803.603 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 16
	[110006] = { config_id = 110006, gadget_id = 70330241, pos = { x = -1227.796, y = 225.326, z = 3802.893 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 17
	[110007] = { config_id = 110007, gadget_id = 70330241, pos = { x = -1225.819, y = 225.326, z = 3802.182 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 18
	[110008] = { config_id = 110008, gadget_id = 70330241, pos = { x = -1223.843, y = 225.326, z = 3801.471 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 19
	[110009] = { config_id = 110009, gadget_id = 70330241, pos = { x = -1221.867, y = 225.326, z = 3800.761 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 21
	[110010] = { config_id = 110010, gadget_id = 70330241, pos = { x = -1238.387, y = 225.326, z = 3804.469 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 22
	[110011] = { config_id = 110011, gadget_id = 70330241, pos = { x = -1236.411, y = 225.326, z = 3803.759 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 23
	[110012] = { config_id = 110012, gadget_id = 70330241, pos = { x = -1234.434, y = 225.326, z = 3803.048 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 24
	[110013] = { config_id = 110013, gadget_id = 70330241, pos = { x = -1232.458, y = 225.326, z = 3802.337 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 25
	[110014] = { config_id = 110014, gadget_id = 70330241, pos = { x = -1230.482, y = 225.326, z = 3801.627 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 26
	[110015] = { config_id = 110015, gadget_id = 70330241, pos = { x = -1228.506, y = 225.326, z = 3800.916 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 27
	[110016] = { config_id = 110016, gadget_id = 70330241, pos = { x = -1226.530, y = 225.326, z = 3800.205 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 28
	[110017] = { config_id = 110017, gadget_id = 70330241, pos = { x = -1224.554, y = 225.326, z = 3799.495 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 29
	[110018] = { config_id = 110018, gadget_id = 70330241, pos = { x = -1222.578, y = 225.326, z = 3798.785 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 31
	[110019] = { config_id = 110019, gadget_id = 70330241, pos = { x = -1239.097, y = 225.326, z = 3802.492 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 32
	[110020] = { config_id = 110020, gadget_id = 70330241, pos = { x = -1237.121, y = 225.326, z = 3801.782 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 33
	[110021] = { config_id = 110021, gadget_id = 70330241, pos = { x = -1235.145, y = 225.326, z = 3801.071 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 34
	[110022] = { config_id = 110022, gadget_id = 70330241, pos = { x = -1233.169, y = 225.326, z = 3800.361 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 35
	[110023] = { config_id = 110023, gadget_id = 70330241, pos = { x = -1231.193, y = 225.326, z = 3799.651 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 36
	[110024] = { config_id = 110024, gadget_id = 70330241, pos = { x = -1229.216, y = 225.326, z = 3798.940 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 37
	[110025] = { config_id = 110025, gadget_id = 70330241, pos = { x = -1227.240, y = 225.326, z = 3798.230 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 38
	[110026] = { config_id = 110026, gadget_id = 70330241, pos = { x = -1225.264, y = 225.326, z = 3797.520 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 39
	[110027] = { config_id = 110027, gadget_id = 70330241, pos = { x = -1223.288, y = 225.326, z = 3796.809 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 41
	[110028] = { config_id = 110028, gadget_id = 70330241, pos = { x = -1239.808, y = 225.326, z = 3800.516 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 42
	[110029] = { config_id = 110029, gadget_id = 70330241, pos = { x = -1237.831, y = 225.326, z = 3799.806 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 43
	[110030] = { config_id = 110030, gadget_id = 70330241, pos = { x = -1235.855, y = 225.326, z = 3799.095 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 44
	[110031] = { config_id = 110031, gadget_id = 70330241, pos = { x = -1233.879, y = 225.326, z = 3798.385 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 45
	[110032] = { config_id = 110032, gadget_id = 70330241, pos = { x = -1231.903, y = 225.326, z = 3797.675 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 46
	[110033] = { config_id = 110033, gadget_id = 70330241, pos = { x = -1229.927, y = 225.326, z = 3796.964 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 47
	[110034] = { config_id = 110034, gadget_id = 70330241, pos = { x = -1227.951, y = 225.326, z = 3796.253 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 48
	[110035] = { config_id = 110035, gadget_id = 70330241, pos = { x = -1225.974, y = 225.326, z = 3795.543 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 49
	[110036] = { config_id = 110036, gadget_id = 70330241, pos = { x = -1223.999, y = 225.326, z = 3794.833 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 51
	[110037] = { config_id = 110037, gadget_id = 70330241, pos = { x = -1240.518, y = 225.326, z = 3798.540 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 52
	[110038] = { config_id = 110038, gadget_id = 70330241, pos = { x = -1238.542, y = 225.326, z = 3797.830 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 53
	[110039] = { config_id = 110039, gadget_id = 70330241, pos = { x = -1236.566, y = 225.326, z = 3797.119 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 54
	[110040] = { config_id = 110040, gadget_id = 70330241, pos = { x = -1234.590, y = 225.326, z = 3796.409 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 55
	[110041] = { config_id = 110041, gadget_id = 70330241, pos = { x = -1232.614, y = 225.326, z = 3795.698 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 56
	[110042] = { config_id = 110042, gadget_id = 70330241, pos = { x = -1230.637, y = 225.326, z = 3794.988 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 57
	[110043] = { config_id = 110043, gadget_id = 70330241, pos = { x = -1228.661, y = 225.326, z = 3794.278 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 58
	[110044] = { config_id = 110044, gadget_id = 70330241, pos = { x = -1226.685, y = 225.326, z = 3793.567 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 59
	[110045] = { config_id = 110045, gadget_id = 70330241, pos = { x = -1224.709, y = 225.326, z = 3792.856 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 61
	[110046] = { config_id = 110046, gadget_id = 70330241, pos = { x = -1241.229, y = 225.326, z = 3796.564 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 62
	[110047] = { config_id = 110047, gadget_id = 70330241, pos = { x = -1239.252, y = 225.326, z = 3795.854 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 63
	[110048] = { config_id = 110048, gadget_id = 70330241, pos = { x = -1237.276, y = 225.326, z = 3795.144 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 64
	[110049] = { config_id = 110049, gadget_id = 70330241, pos = { x = -1235.300, y = 225.326, z = 3794.433 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 65
	[110050] = { config_id = 110050, gadget_id = 70330241, pos = { x = -1233.324, y = 225.326, z = 3793.722 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 66
	[110051] = { config_id = 110051, gadget_id = 70330241, pos = { x = -1231.348, y = 225.326, z = 3793.012 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 67
	[110052] = { config_id = 110052, gadget_id = 70330241, pos = { x = -1229.372, y = 225.326, z = 3792.301 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 68
	[110053] = { config_id = 110053, gadget_id = 70330241, pos = { x = -1227.395, y = 225.326, z = 3791.591 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 69
	[110054] = { config_id = 110054, gadget_id = 70330241, pos = { x = -1225.420, y = 225.326, z = 3790.880 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 71
	[110055] = { config_id = 110055, gadget_id = 70330241, pos = { x = -1241.939, y = 225.326, z = 3794.588 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 72
	[110056] = { config_id = 110056, gadget_id = 70330241, pos = { x = -1239.963, y = 225.326, z = 3793.877 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 73
	[110057] = { config_id = 110057, gadget_id = 70330241, pos = { x = -1237.987, y = 225.326, z = 3793.167 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 74
	[110058] = { config_id = 110058, gadget_id = 70330241, pos = { x = -1236.011, y = 225.326, z = 3792.456 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 75
	[110059] = { config_id = 110059, gadget_id = 70330241, pos = { x = -1234.035, y = 225.326, z = 3791.746 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 76
	[110060] = { config_id = 110060, gadget_id = 70330241, pos = { x = -1232.058, y = 225.326, z = 3791.035 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 77
	[110061] = { config_id = 110061, gadget_id = 70330241, pos = { x = -1230.082, y = 225.326, z = 3790.325 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 78
	[110062] = { config_id = 110062, gadget_id = 70330241, pos = { x = -1228.106, y = 225.326, z = 3789.615 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 79
	[110063] = { config_id = 110063, gadget_id = 70330241, pos = { x = -1226.130, y = 225.326, z = 3788.904 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 81
	[110064] = { config_id = 110064, gadget_id = 70330241, pos = { x = -1242.650, y = 225.326, z = 3792.612 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 82
	[110065] = { config_id = 110065, gadget_id = 70330241, pos = { x = -1240.674, y = 225.326, z = 3791.901 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 83
	[110066] = { config_id = 110066, gadget_id = 70330241, pos = { x = -1238.697, y = 225.326, z = 3791.191 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 84
	[110067] = { config_id = 110067, gadget_id = 70330241, pos = { x = -1236.721, y = 225.326, z = 3790.481 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 85
	[110068] = { config_id = 110068, gadget_id = 70330241, pos = { x = -1234.745, y = 225.326, z = 3789.770 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 86
	[110069] = { config_id = 110069, gadget_id = 70330241, pos = { x = -1232.769, y = 225.326, z = 3789.059 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 87
	[110070] = { config_id = 110070, gadget_id = 70330241, pos = { x = -1230.792, y = 225.326, z = 3788.349 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 88
	[110071] = { config_id = 110071, gadget_id = 70330241, pos = { x = -1228.816, y = 225.326, z = 3787.639 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 89
	[110072] = { config_id = 110072, gadget_id = 70330241, pos = { x = -1226.840, y = 225.326, z = 3786.928 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 91
	[110073] = { config_id = 110073, gadget_id = 70330241, pos = { x = -1243.360, y = 225.326, z = 3790.636 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 92
	[110074] = { config_id = 110074, gadget_id = 70330241, pos = { x = -1241.384, y = 225.326, z = 3789.926 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 93
	[110075] = { config_id = 110075, gadget_id = 70330241, pos = { x = -1239.408, y = 225.326, z = 3789.214 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 94
	[110076] = { config_id = 110076, gadget_id = 70330241, pos = { x = -1237.432, y = 225.326, z = 3788.504 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 95
	[110077] = { config_id = 110077, gadget_id = 70330241, pos = { x = -1235.455, y = 225.326, z = 3787.793 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 96
	[110078] = { config_id = 110078, gadget_id = 70330241, pos = { x = -1233.479, y = 225.326, z = 3787.083 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 97
	[110079] = { config_id = 110079, gadget_id = 70330241, pos = { x = -1231.503, y = 225.326, z = 3786.373 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 98
	[110080] = { config_id = 110080, gadget_id = 70330241, pos = { x = -1229.527, y = 225.326, z = 3785.662 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 99，这边验证用的，务必保证FloorCid + 80 等于这个 cid
	[110081] = { config_id = 110081, gadget_id = 70330241, pos = { x = -1227.551, y = 225.326, z = 3784.952 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 起始点,一定要配置，位置不是很重要，不要放任何Suite中
	[110082] = { config_id = 110082, gadget_id = 70330240, pos = { x = -1223.222, y = 224.349, z = 3787.106 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 树终点,一定要配置，位置不是很重要，不要放任何Suite中
	[110083] = { config_id = 110083, gadget_id = 70330242, pos = { x = -1220.828, y = 224.320, z = 3792.267 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 苗圃草Volume 后，尽量放在中间
	[110086] = { config_id = 110086, gadget_id = 70290530, pos = { x = -1232.614, y = 225.526, z = 3795.698 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 27, area_id = 23 },
	-- 苗圃草Volume 前，位置跟着树走
	[110087] = { config_id = 110087, gadget_id = 70290518, pos = { x = -1232.614, y = 225.526, z = 3795.698 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 27, area_id = 23 },
	[110088] = { config_id = 110088, gadget_id = 70290593, pos = { x = -1232.614, y = 225.526, z = 3795.698 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 27, area_id = 23 },
	[110089] = { config_id = 110089, gadget_id = 70211101, pos = { x = -1232.614, y = 225.326, z = 3795.698 }, rot = { x = 0.000, y = 19.774, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
	-- PlayRegion，离开时会失败
	[110084] = { config_id = 110084, shape = RegionShape.SPHERE, radius = 15, pos = { x = -1232.738, y = 224.494, z = 3795.793 }, area_id = 23 },
	-- InitRegion，进入时会加载玩法
	[110085] = { config_id = 110085, shape = RegionShape.SPHERE, radius = 100, pos = { x = -1232.738, y = 224.494, z = 3795.793 }, area_id = 23 }
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
		gadgets = { 110087 },
		regions = { 110084, 110085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 110087 },
		regions = { 110084, 110085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 110087 },
		regions = { 110084, 110085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 110087 },
		regions = { 110084, 110085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 110087 },
		regions = { 110084, 110085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 110087 },
		regions = { 110084, 110085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 110087 },
		regions = { 110084, 110085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 110087 },
		regions = { 110084, 110085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 110087 },
		regions = { 110084, 110085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 110087 },
		regions = { 110084, 110085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 110087 },
		regions = { 110084, 110085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 110087 },
		regions = { 110084, 110085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 110088, 110089 },
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

require "V3_0/SumeruOneLineDraw"
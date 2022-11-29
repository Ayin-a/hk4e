-- 基础信息
local base_info = {
	group_id = 133301114
}

-- Trigger变量
local defs = {
	gadget_StarCid = 114082,
	gadget_TreeCid = 114083,
	gadget_FloorCid = 114001,
	region_InitRegion = 114085,
	region_PlayRegion = 114084,
	quest_id = 7310611,
	gadget_Volume01 = 114087,
	gadget_Volume02 = 114086,
	cutSceneId = 84,
	gadget_Chest = 114089
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
	[114001] = { config_id = 114001, gadget_id = 70330241, pos = { x = -987.791, y = 225.813, z = 2510.277 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 12
	[114002] = { config_id = 114002, gadget_id = 70330241, pos = { x = -985.881, y = 225.813, z = 2509.402 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 13
	[114003] = { config_id = 114003, gadget_id = 70330241, pos = { x = -983.972, y = 225.813, z = 2508.527 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 14
	[114004] = { config_id = 114004, gadget_id = 70330241, pos = { x = -982.063, y = 225.813, z = 2507.653 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 15
	[114005] = { config_id = 114005, gadget_id = 70330241, pos = { x = -980.154, y = 225.813, z = 2506.777 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 16
	[114006] = { config_id = 114006, gadget_id = 70330241, pos = { x = -978.245, y = 225.813, z = 2505.902 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 17
	[114007] = { config_id = 114007, gadget_id = 70330241, pos = { x = -976.336, y = 225.813, z = 2505.027 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 18
	[114008] = { config_id = 114008, gadget_id = 70330241, pos = { x = -974.427, y = 225.813, z = 2504.152 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 19
	[114009] = { config_id = 114009, gadget_id = 70330241, pos = { x = -972.518, y = 225.813, z = 2503.277 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 21
	[114010] = { config_id = 114010, gadget_id = 70330241, pos = { x = -988.665, y = 225.813, z = 2508.369 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 22
	[114011] = { config_id = 114011, gadget_id = 70330241, pos = { x = -986.756, y = 225.813, z = 2507.495 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 23
	[114012] = { config_id = 114012, gadget_id = 70330241, pos = { x = -984.847, y = 225.813, z = 2506.619 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 24
	[114013] = { config_id = 114013, gadget_id = 70330241, pos = { x = -982.938, y = 225.813, z = 2505.744 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 25
	[114014] = { config_id = 114014, gadget_id = 70330241, pos = { x = -981.029, y = 225.813, z = 2504.869 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 26
	[114015] = { config_id = 114015, gadget_id = 70330241, pos = { x = -979.120, y = 225.813, z = 2503.994 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 27
	[114016] = { config_id = 114016, gadget_id = 70330241, pos = { x = -977.211, y = 225.813, z = 2503.119 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 28
	[114017] = { config_id = 114017, gadget_id = 70330241, pos = { x = -975.302, y = 225.813, z = 2502.244 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 29
	[114018] = { config_id = 114018, gadget_id = 70330241, pos = { x = -973.393, y = 225.813, z = 2501.369 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 31
	[114019] = { config_id = 114019, gadget_id = 70330241, pos = { x = -989.540, y = 225.813, z = 2506.460 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 32
	[114020] = { config_id = 114020, gadget_id = 70330241, pos = { x = -987.631, y = 225.813, z = 2505.585 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 33
	[114021] = { config_id = 114021, gadget_id = 70330241, pos = { x = -985.722, y = 225.813, z = 2504.710 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 34
	[114022] = { config_id = 114022, gadget_id = 70330241, pos = { x = -983.813, y = 225.813, z = 2503.835 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 35
	[114023] = { config_id = 114023, gadget_id = 70330241, pos = { x = -981.904, y = 225.813, z = 2502.959 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 36
	[114024] = { config_id = 114024, gadget_id = 70330241, pos = { x = -979.995, y = 225.813, z = 2502.084 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 37
	[114025] = { config_id = 114025, gadget_id = 70330241, pos = { x = -978.086, y = 225.813, z = 2501.210 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 38
	[114026] = { config_id = 114026, gadget_id = 70330241, pos = { x = -976.177, y = 225.813, z = 2500.335 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 39
	[114027] = { config_id = 114027, gadget_id = 70330241, pos = { x = -974.268, y = 225.813, z = 2499.459 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 41
	[114028] = { config_id = 114028, gadget_id = 70330241, pos = { x = -990.415, y = 225.813, z = 2504.551 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 42
	[114029] = { config_id = 114029, gadget_id = 70330241, pos = { x = -988.506, y = 225.813, z = 2503.676 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 43
	[114030] = { config_id = 114030, gadget_id = 70330241, pos = { x = -986.597, y = 225.813, z = 2502.801 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 44
	[114031] = { config_id = 114031, gadget_id = 70330241, pos = { x = -984.688, y = 225.813, z = 2501.926 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 45
	[114032] = { config_id = 114032, gadget_id = 70330241, pos = { x = -982.779, y = 225.813, z = 2501.051 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 46
	[114033] = { config_id = 114033, gadget_id = 70330241, pos = { x = -980.870, y = 225.813, z = 2500.176 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 47
	[114034] = { config_id = 114034, gadget_id = 70330241, pos = { x = -978.961, y = 225.813, z = 2499.301 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 48
	[114035] = { config_id = 114035, gadget_id = 70330241, pos = { x = -977.052, y = 225.813, z = 2498.426 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 49
	[114036] = { config_id = 114036, gadget_id = 70330241, pos = { x = -975.143, y = 225.813, z = 2497.551 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 51
	[114037] = { config_id = 114037, gadget_id = 70330241, pos = { x = -991.290, y = 225.813, z = 2502.642 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 52
	[114038] = { config_id = 114038, gadget_id = 70330241, pos = { x = -989.381, y = 225.813, z = 2501.767 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 53
	[114039] = { config_id = 114039, gadget_id = 70330241, pos = { x = -987.472, y = 225.813, z = 2500.892 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 54
	[114040] = { config_id = 114040, gadget_id = 70330241, pos = { x = -985.563, y = 225.813, z = 2500.017 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 55
	[114041] = { config_id = 114041, gadget_id = 70330241, pos = { x = -983.654, y = 225.813, z = 2499.142 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 56
	[114042] = { config_id = 114042, gadget_id = 70330241, pos = { x = -981.745, y = 225.813, z = 2498.267 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 57
	[114043] = { config_id = 114043, gadget_id = 70330241, pos = { x = -979.836, y = 225.813, z = 2497.392 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 58
	[114044] = { config_id = 114044, gadget_id = 70330241, pos = { x = -977.927, y = 225.813, z = 2496.517 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 59
	[114045] = { config_id = 114045, gadget_id = 70330241, pos = { x = -976.018, y = 225.813, z = 2495.642 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 61
	[114046] = { config_id = 114046, gadget_id = 70330241, pos = { x = -992.166, y = 225.813, z = 2500.732 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 62
	[114047] = { config_id = 114047, gadget_id = 70330241, pos = { x = -990.256, y = 225.813, z = 2499.857 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 63
	[114048] = { config_id = 114048, gadget_id = 70330241, pos = { x = -988.347, y = 225.813, z = 2498.982 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 64
	[114049] = { config_id = 114049, gadget_id = 70330241, pos = { x = -986.439, y = 225.813, z = 2498.107 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 65
	[114050] = { config_id = 114050, gadget_id = 70330241, pos = { x = -984.530, y = 225.813, z = 2497.232 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 66
	[114051] = { config_id = 114051, gadget_id = 70330241, pos = { x = -982.621, y = 225.813, z = 2496.357 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 67
	[114052] = { config_id = 114052, gadget_id = 70330241, pos = { x = -980.711, y = 225.813, z = 2495.482 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 68
	[114053] = { config_id = 114053, gadget_id = 70330241, pos = { x = -978.803, y = 225.813, z = 2494.606 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 69
	[114054] = { config_id = 114054, gadget_id = 70330241, pos = { x = -976.893, y = 225.813, z = 2493.732 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 71
	[114055] = { config_id = 114055, gadget_id = 70330241, pos = { x = -993.040, y = 225.813, z = 2498.824 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 72
	[114056] = { config_id = 114056, gadget_id = 70330241, pos = { x = -991.131, y = 225.813, z = 2497.949 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 73
	[114057] = { config_id = 114057, gadget_id = 70330241, pos = { x = -989.222, y = 225.813, z = 2497.074 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 74
	[114058] = { config_id = 114058, gadget_id = 70330241, pos = { x = -987.313, y = 225.813, z = 2496.198 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 75
	[114059] = { config_id = 114059, gadget_id = 70330241, pos = { x = -985.404, y = 225.813, z = 2495.324 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 76
	[114060] = { config_id = 114060, gadget_id = 70330241, pos = { x = -983.495, y = 225.813, z = 2494.449 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 77
	[114061] = { config_id = 114061, gadget_id = 70330241, pos = { x = -981.586, y = 225.813, z = 2493.574 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 78
	[114062] = { config_id = 114062, gadget_id = 70330241, pos = { x = -979.677, y = 225.813, z = 2492.699 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 79
	[114063] = { config_id = 114063, gadget_id = 70330241, pos = { x = -977.768, y = 225.813, z = 2491.824 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 81
	[114064] = { config_id = 114064, gadget_id = 70330241, pos = { x = -993.915, y = 225.813, z = 2496.916 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 82
	[114065] = { config_id = 114065, gadget_id = 70330241, pos = { x = -992.006, y = 225.813, z = 2496.040 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 83
	[114066] = { config_id = 114066, gadget_id = 70330241, pos = { x = -990.097, y = 225.813, z = 2495.165 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 84
	[114067] = { config_id = 114067, gadget_id = 70330241, pos = { x = -988.188, y = 225.813, z = 2494.290 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 85
	[114068] = { config_id = 114068, gadget_id = 70330241, pos = { x = -986.279, y = 225.813, z = 2493.415 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 86
	[114069] = { config_id = 114069, gadget_id = 70330241, pos = { x = -984.370, y = 225.813, z = 2492.540 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 87
	[114070] = { config_id = 114070, gadget_id = 70330241, pos = { x = -982.461, y = 225.813, z = 2491.665 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 88
	[114071] = { config_id = 114071, gadget_id = 70330241, pos = { x = -980.552, y = 225.813, z = 2490.790 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 89
	[114072] = { config_id = 114072, gadget_id = 70330241, pos = { x = -978.643, y = 225.813, z = 2489.915 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 91
	[114073] = { config_id = 114073, gadget_id = 70330241, pos = { x = -994.790, y = 225.813, z = 2495.006 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 92
	[114074] = { config_id = 114074, gadget_id = 70330241, pos = { x = -992.881, y = 225.813, z = 2494.131 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 93
	[114075] = { config_id = 114075, gadget_id = 70330241, pos = { x = -990.972, y = 225.813, z = 2493.256 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 94
	[114076] = { config_id = 114076, gadget_id = 70330241, pos = { x = -989.063, y = 225.813, z = 2492.381 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 95
	[114077] = { config_id = 114077, gadget_id = 70330241, pos = { x = -987.154, y = 225.813, z = 2491.506 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 96
	[114078] = { config_id = 114078, gadget_id = 70330241, pos = { x = -985.245, y = 225.813, z = 2490.631 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 97
	[114079] = { config_id = 114079, gadget_id = 70330241, pos = { x = -983.336, y = 225.813, z = 2489.756 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 98
	[114080] = { config_id = 114080, gadget_id = 70330241, pos = { x = -981.427, y = 225.813, z = 2488.881 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 99，这边验证用的，务必保证FloorCid + 80 等于这个 cid
	[114081] = { config_id = 114081, gadget_id = 70330241, pos = { x = -979.518, y = 225.813, z = 2488.005 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 起始点,一定要配置，位置不是很重要，不要放任何Suite中
	[114082] = { config_id = 114082, gadget_id = 70330240, pos = { x = -975.022, y = 224.892, z = 2489.787 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 树终点,一定要配置，位置不是很重要，不要放任何Suite中
	[114083] = { config_id = 114083, gadget_id = 70330242, pos = { x = -972.200, y = 224.863, z = 2494.726 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 苗圃草Volume 后，尽量放在中间
	[114086] = { config_id = 114086, gadget_id = 70290530, pos = { x = -983.654, y = 226.013, z = 2499.142 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24 },
	-- 苗圃草Volume 前，位置跟着树走
	[114087] = { config_id = 114087, gadget_id = 70290518, pos = { x = -983.654, y = 226.013, z = 2499.142 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24 },
	[114088] = { config_id = 114088, gadget_id = 70290593, pos = { x = -983.654, y = 226.013, z = 2499.142 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 27, area_id = 24 },
	[114089] = { config_id = 114089, gadget_id = 70211101, pos = { x = -983.654, y = 225.813, z = 2499.142 }, rot = { x = 0.000, y = 24.626, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
}

-- 区域
regions = {
	-- PlayRegion，离开时会失败
	[114084] = { config_id = 114084, shape = RegionShape.SPHERE, radius = 15, pos = { x = -983.770, y = 225.037, z = 2499.247 }, area_id = 24 },
	-- InitRegion，进入时会加载玩法
	[114085] = { config_id = 114085, shape = RegionShape.SPHERE, radius = 100, pos = { x = -983.770, y = 225.037, z = 2499.247 }, area_id = 24 }
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
		gadgets = { 114087 },
		regions = { 114084, 114085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 114087 },
		regions = { 114084, 114085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 114087 },
		regions = { 114084, 114085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 114087 },
		regions = { 114084, 114085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 114087 },
		regions = { 114084, 114085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 114087 },
		regions = { 114084, 114085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 114087 },
		regions = { 114084, 114085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 114087 },
		regions = { 114084, 114085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 114087 },
		regions = { 114084, 114085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 114087 },
		regions = { 114084, 114085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 114087 },
		regions = { 114084, 114085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 114087 },
		regions = { 114084, 114085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 114088, 114089 },
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
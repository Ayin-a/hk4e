-- 基础信息
local base_info = {
	group_id = 133301105
}

-- Trigger变量
local defs = {
	gadget_StarCid = 105082,
	gadget_TreeCid = 105083,
	gadget_FloorCid = 105001,
	region_InitRegion = 105085,
	region_PlayRegion = 105084,
	quest_id = 7310603,
	gadget_Volume01 = 105087,
	gadget_Volume02 = 105086,
	cutSceneId = 76,
	gadget_Chest = 105089
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
	[105001] = { config_id = 105001, gadget_id = 70330241, pos = { x = -918.620, y = 196.262, z = 3628.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 12
	[105002] = { config_id = 105002, gadget_id = 70330241, pos = { x = -916.520, y = 196.262, z = 3628.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 13
	[105003] = { config_id = 105003, gadget_id = 70330241, pos = { x = -914.420, y = 196.262, z = 3628.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 14
	[105004] = { config_id = 105004, gadget_id = 70330241, pos = { x = -912.320, y = 196.262, z = 3628.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 15
	[105005] = { config_id = 105005, gadget_id = 70330241, pos = { x = -910.220, y = 196.262, z = 3628.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 16
	[105006] = { config_id = 105006, gadget_id = 70330241, pos = { x = -908.120, y = 196.262, z = 3628.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 17
	[105007] = { config_id = 105007, gadget_id = 70330241, pos = { x = -906.020, y = 196.262, z = 3628.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 18
	[105008] = { config_id = 105008, gadget_id = 70330241, pos = { x = -903.920, y = 196.262, z = 3628.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 19
	[105009] = { config_id = 105009, gadget_id = 70330241, pos = { x = -901.820, y = 196.262, z = 3628.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 21
	[105010] = { config_id = 105010, gadget_id = 70330241, pos = { x = -918.620, y = 196.262, z = 3626.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 22
	[105011] = { config_id = 105011, gadget_id = 70330241, pos = { x = -916.520, y = 196.262, z = 3626.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 23
	[105012] = { config_id = 105012, gadget_id = 70330241, pos = { x = -914.420, y = 196.262, z = 3626.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 24
	[105013] = { config_id = 105013, gadget_id = 70330241, pos = { x = -912.320, y = 196.262, z = 3626.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 25
	[105014] = { config_id = 105014, gadget_id = 70330241, pos = { x = -910.220, y = 196.262, z = 3626.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 26
	[105015] = { config_id = 105015, gadget_id = 70330241, pos = { x = -908.120, y = 196.262, z = 3626.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 27
	[105016] = { config_id = 105016, gadget_id = 70330241, pos = { x = -906.020, y = 196.262, z = 3626.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 28
	[105017] = { config_id = 105017, gadget_id = 70330241, pos = { x = -903.920, y = 196.262, z = 3626.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 29
	[105018] = { config_id = 105018, gadget_id = 70330241, pos = { x = -901.820, y = 196.262, z = 3626.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 31
	[105019] = { config_id = 105019, gadget_id = 70330241, pos = { x = -918.620, y = 196.262, z = 3624.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 32
	[105020] = { config_id = 105020, gadget_id = 70330241, pos = { x = -916.520, y = 196.262, z = 3624.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 33
	[105021] = { config_id = 105021, gadget_id = 70330241, pos = { x = -914.420, y = 196.262, z = 3624.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 34
	[105022] = { config_id = 105022, gadget_id = 70330241, pos = { x = -912.320, y = 196.262, z = 3624.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 35
	[105023] = { config_id = 105023, gadget_id = 70330241, pos = { x = -910.220, y = 196.262, z = 3624.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 36
	[105024] = { config_id = 105024, gadget_id = 70330241, pos = { x = -908.120, y = 196.262, z = 3624.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 37
	[105025] = { config_id = 105025, gadget_id = 70330241, pos = { x = -906.020, y = 196.262, z = 3624.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 38
	[105026] = { config_id = 105026, gadget_id = 70330241, pos = { x = -903.920, y = 196.262, z = 3624.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 39
	[105027] = { config_id = 105027, gadget_id = 70330241, pos = { x = -901.820, y = 196.262, z = 3624.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 41
	[105028] = { config_id = 105028, gadget_id = 70330241, pos = { x = -918.620, y = 196.262, z = 3622.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 42
	[105029] = { config_id = 105029, gadget_id = 70330241, pos = { x = -916.520, y = 196.262, z = 3622.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 43
	[105030] = { config_id = 105030, gadget_id = 70330241, pos = { x = -914.420, y = 196.262, z = 3622.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 44
	[105031] = { config_id = 105031, gadget_id = 70330241, pos = { x = -912.320, y = 196.262, z = 3622.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 45
	[105032] = { config_id = 105032, gadget_id = 70330241, pos = { x = -910.220, y = 196.262, z = 3622.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 46
	[105033] = { config_id = 105033, gadget_id = 70330241, pos = { x = -908.120, y = 196.262, z = 3622.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 47
	[105034] = { config_id = 105034, gadget_id = 70330241, pos = { x = -906.020, y = 196.262, z = 3622.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 48
	[105035] = { config_id = 105035, gadget_id = 70330241, pos = { x = -903.920, y = 196.262, z = 3622.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 49
	[105036] = { config_id = 105036, gadget_id = 70330241, pos = { x = -901.820, y = 196.262, z = 3622.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 51
	[105037] = { config_id = 105037, gadget_id = 70330241, pos = { x = -918.620, y = 196.262, z = 3620.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 52
	[105038] = { config_id = 105038, gadget_id = 70330241, pos = { x = -916.520, y = 196.262, z = 3620.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 53
	[105039] = { config_id = 105039, gadget_id = 70330241, pos = { x = -914.420, y = 196.262, z = 3620.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 54
	[105040] = { config_id = 105040, gadget_id = 70330241, pos = { x = -912.320, y = 196.262, z = 3620.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 55
	[105041] = { config_id = 105041, gadget_id = 70330241, pos = { x = -910.220, y = 196.262, z = 3620.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 56
	[105042] = { config_id = 105042, gadget_id = 70330241, pos = { x = -908.120, y = 196.262, z = 3620.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 57
	[105043] = { config_id = 105043, gadget_id = 70330241, pos = { x = -906.020, y = 196.262, z = 3620.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 58
	[105044] = { config_id = 105044, gadget_id = 70330241, pos = { x = -903.920, y = 196.262, z = 3620.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 59
	[105045] = { config_id = 105045, gadget_id = 70330241, pos = { x = -901.820, y = 196.262, z = 3620.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 61
	[105046] = { config_id = 105046, gadget_id = 70330241, pos = { x = -918.620, y = 196.262, z = 3618.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 62
	[105047] = { config_id = 105047, gadget_id = 70330241, pos = { x = -916.520, y = 196.262, z = 3618.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 63
	[105048] = { config_id = 105048, gadget_id = 70330241, pos = { x = -914.420, y = 196.262, z = 3618.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 64
	[105049] = { config_id = 105049, gadget_id = 70330241, pos = { x = -912.320, y = 196.262, z = 3618.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 65
	[105050] = { config_id = 105050, gadget_id = 70330241, pos = { x = -910.220, y = 196.262, z = 3618.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 66
	[105051] = { config_id = 105051, gadget_id = 70330241, pos = { x = -908.120, y = 196.262, z = 3618.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 67
	[105052] = { config_id = 105052, gadget_id = 70330241, pos = { x = -906.020, y = 196.262, z = 3618.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 68
	[105053] = { config_id = 105053, gadget_id = 70330241, pos = { x = -903.920, y = 196.262, z = 3618.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 69
	[105054] = { config_id = 105054, gadget_id = 70330241, pos = { x = -901.820, y = 196.262, z = 3618.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 71
	[105055] = { config_id = 105055, gadget_id = 70330241, pos = { x = -918.620, y = 196.262, z = 3616.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 72
	[105056] = { config_id = 105056, gadget_id = 70330241, pos = { x = -916.520, y = 196.262, z = 3616.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 73
	[105057] = { config_id = 105057, gadget_id = 70330241, pos = { x = -914.420, y = 196.262, z = 3616.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 74
	[105058] = { config_id = 105058, gadget_id = 70330241, pos = { x = -912.320, y = 196.262, z = 3616.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 75
	[105059] = { config_id = 105059, gadget_id = 70330241, pos = { x = -910.220, y = 196.262, z = 3616.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 76
	[105060] = { config_id = 105060, gadget_id = 70330241, pos = { x = -908.120, y = 196.262, z = 3616.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 77
	[105061] = { config_id = 105061, gadget_id = 70330241, pos = { x = -906.020, y = 196.262, z = 3616.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 78
	[105062] = { config_id = 105062, gadget_id = 70330241, pos = { x = -903.920, y = 196.262, z = 3616.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 79
	[105063] = { config_id = 105063, gadget_id = 70330241, pos = { x = -901.820, y = 196.262, z = 3616.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 81
	[105064] = { config_id = 105064, gadget_id = 70330241, pos = { x = -918.620, y = 196.262, z = 3613.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 82
	[105065] = { config_id = 105065, gadget_id = 70330241, pos = { x = -916.520, y = 196.262, z = 3613.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 83
	[105066] = { config_id = 105066, gadget_id = 70330241, pos = { x = -914.420, y = 196.262, z = 3613.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 84
	[105067] = { config_id = 105067, gadget_id = 70330241, pos = { x = -912.320, y = 196.262, z = 3613.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 85
	[105068] = { config_id = 105068, gadget_id = 70330241, pos = { x = -910.220, y = 196.262, z = 3613.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 86
	[105069] = { config_id = 105069, gadget_id = 70330241, pos = { x = -908.120, y = 196.262, z = 3613.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 87
	[105070] = { config_id = 105070, gadget_id = 70330241, pos = { x = -906.020, y = 196.262, z = 3613.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 88
	[105071] = { config_id = 105071, gadget_id = 70330241, pos = { x = -903.920, y = 196.262, z = 3613.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 89
	[105072] = { config_id = 105072, gadget_id = 70330241, pos = { x = -901.820, y = 196.262, z = 3613.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 91
	[105073] = { config_id = 105073, gadget_id = 70330241, pos = { x = -918.620, y = 196.262, z = 3611.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 92
	[105074] = { config_id = 105074, gadget_id = 70330241, pos = { x = -916.520, y = 196.262, z = 3611.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 93
	[105075] = { config_id = 105075, gadget_id = 70330241, pos = { x = -914.420, y = 196.262, z = 3611.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 94
	[105076] = { config_id = 105076, gadget_id = 70330241, pos = { x = -912.320, y = 196.262, z = 3611.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 95
	[105077] = { config_id = 105077, gadget_id = 70330241, pos = { x = -910.220, y = 196.262, z = 3611.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 96
	[105078] = { config_id = 105078, gadget_id = 70330241, pos = { x = -908.120, y = 196.262, z = 3611.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 97
	[105079] = { config_id = 105079, gadget_id = 70330241, pos = { x = -906.020, y = 196.262, z = 3611.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 98
	[105080] = { config_id = 105080, gadget_id = 70330241, pos = { x = -903.920, y = 196.262, z = 3611.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 99，这边验证用的，务必保证FloorCid + 80 等于这个 cid
	[105081] = { config_id = 105081, gadget_id = 70330241, pos = { x = -901.820, y = 196.262, z = 3611.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 起始点,一定要配置，位置不是很重要，不要放任何Suite中
	[105082] = { config_id = 105082, gadget_id = 70330240, pos = { x = -898.475, y = 195.189, z = 3615.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 树终点,一定要配置，位置不是很重要，不要放任何Suite中
	[105083] = { config_id = 105083, gadget_id = 70330242, pos = { x = -897.968, y = 195.159, z = 3621.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23, is_enable_interact = false },
	-- 苗圃草Volume 后，尽量放在中间
	[105086] = { config_id = 105086, gadget_id = 70290530, pos = { x = -910.220, y = 196.462, z = 3620.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 23 },
	-- 苗圃草Volume 前，位置跟着树走
	[105087] = { config_id = 105087, gadget_id = 70290518, pos = { x = -910.220, y = 196.462, z = 3620.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 23 },
	[105088] = { config_id = 105088, gadget_id = 70290593, pos = { x = -910.220, y = 196.462, z = 3620.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 23 },
	[105089] = { config_id = 105089, gadget_id = 70211101, pos = { x = -910.220, y = 196.262, z = 3620.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
	-- PlayRegion，离开时会失败
	[105084] = { config_id = 105084, shape = RegionShape.SPHERE, radius = 15, pos = { x = -910.369, y = 195.333, z = 3620.303 }, area_id = 23 },
	-- InitRegion，进入时会加载玩法
	[105085] = { config_id = 105085, shape = RegionShape.SPHERE, radius = 100, pos = { x = -910.369, y = 195.333, z = 3620.303 }, area_id = 23 }
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
		gadgets = { 105087 },
		regions = { 105084, 105085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 105087 },
		regions = { 105084, 105085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 105087 },
		regions = { 105084, 105085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 105087 },
		regions = { 105084, 105085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 105087 },
		regions = { 105084, 105085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 105087 },
		regions = { 105084, 105085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 105087 },
		regions = { 105084, 105085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 105087 },
		regions = { 105084, 105085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 105087 },
		regions = { 105084, 105085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 105087 },
		regions = { 105084, 105085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 105087 },
		regions = { 105084, 105085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 105087 },
		regions = { 105084, 105085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 105088, 105089 },
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
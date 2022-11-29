-- 基础信息
local base_info = {
	group_id = 133301106
}

-- Trigger变量
local defs = {
	gadget_StarCid = 106082,
	gadget_TreeCid = 106083,
	gadget_FloorCid = 106001,
	region_InitRegion = 106085,
	region_PlayRegion = 106084,
	quest_id = 7310604,
	gadget_Volume01 = 106087,
	gadget_Volume02 = 106086,
	cutSceneId = 77,
	gadget_Chest = 106089
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
	[106001] = { config_id = 106001, gadget_id = 70330241, pos = { x = -310.987, y = 292.040, z = 3321.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 12
	[106002] = { config_id = 106002, gadget_id = 70330241, pos = { x = -308.887, y = 292.040, z = 3321.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 13
	[106003] = { config_id = 106003, gadget_id = 70330241, pos = { x = -306.787, y = 292.040, z = 3321.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 14
	[106004] = { config_id = 106004, gadget_id = 70330241, pos = { x = -304.687, y = 292.040, z = 3321.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 15
	[106005] = { config_id = 106005, gadget_id = 70330241, pos = { x = -302.587, y = 292.040, z = 3321.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 16
	[106006] = { config_id = 106006, gadget_id = 70330241, pos = { x = -300.487, y = 292.040, z = 3321.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 17
	[106007] = { config_id = 106007, gadget_id = 70330241, pos = { x = -298.387, y = 292.040, z = 3321.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 18
	[106008] = { config_id = 106008, gadget_id = 70330241, pos = { x = -296.287, y = 292.040, z = 3321.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 19
	[106009] = { config_id = 106009, gadget_id = 70330241, pos = { x = -294.187, y = 292.040, z = 3321.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 21
	[106010] = { config_id = 106010, gadget_id = 70330241, pos = { x = -310.987, y = 292.040, z = 3319.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 22
	[106011] = { config_id = 106011, gadget_id = 70330241, pos = { x = -308.887, y = 292.040, z = 3319.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 23
	[106012] = { config_id = 106012, gadget_id = 70330241, pos = { x = -306.787, y = 292.040, z = 3319.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 24
	[106013] = { config_id = 106013, gadget_id = 70330241, pos = { x = -304.687, y = 292.040, z = 3319.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 25
	[106014] = { config_id = 106014, gadget_id = 70330241, pos = { x = -302.587, y = 292.040, z = 3319.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 26
	[106015] = { config_id = 106015, gadget_id = 70330241, pos = { x = -300.487, y = 292.040, z = 3319.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 27
	[106016] = { config_id = 106016, gadget_id = 70330241, pos = { x = -298.387, y = 292.040, z = 3319.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 28
	[106017] = { config_id = 106017, gadget_id = 70330241, pos = { x = -296.287, y = 292.040, z = 3319.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 29
	[106018] = { config_id = 106018, gadget_id = 70330241, pos = { x = -294.187, y = 292.040, z = 3319.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 31
	[106019] = { config_id = 106019, gadget_id = 70330241, pos = { x = -310.987, y = 292.040, z = 3317.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 32
	[106020] = { config_id = 106020, gadget_id = 70330241, pos = { x = -308.887, y = 292.040, z = 3317.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 33
	[106021] = { config_id = 106021, gadget_id = 70330241, pos = { x = -306.787, y = 292.040, z = 3317.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 34
	[106022] = { config_id = 106022, gadget_id = 70330241, pos = { x = -304.687, y = 292.040, z = 3317.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 35
	[106023] = { config_id = 106023, gadget_id = 70330241, pos = { x = -302.587, y = 292.040, z = 3317.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 36
	[106024] = { config_id = 106024, gadget_id = 70330241, pos = { x = -300.487, y = 292.040, z = 3317.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 37
	[106025] = { config_id = 106025, gadget_id = 70330241, pos = { x = -298.387, y = 292.040, z = 3317.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 38
	[106026] = { config_id = 106026, gadget_id = 70330241, pos = { x = -296.287, y = 292.040, z = 3317.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 39
	[106027] = { config_id = 106027, gadget_id = 70330241, pos = { x = -294.187, y = 292.040, z = 3317.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 41
	[106028] = { config_id = 106028, gadget_id = 70330241, pos = { x = -310.987, y = 292.040, z = 3315.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 42
	[106029] = { config_id = 106029, gadget_id = 70330241, pos = { x = -308.887, y = 292.040, z = 3315.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 43
	[106030] = { config_id = 106030, gadget_id = 70330241, pos = { x = -306.787, y = 292.040, z = 3315.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 44
	[106031] = { config_id = 106031, gadget_id = 70330241, pos = { x = -304.687, y = 292.040, z = 3315.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 45
	[106032] = { config_id = 106032, gadget_id = 70330241, pos = { x = -302.587, y = 292.040, z = 3315.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 46
	[106033] = { config_id = 106033, gadget_id = 70330241, pos = { x = -300.487, y = 292.040, z = 3315.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 47
	[106034] = { config_id = 106034, gadget_id = 70330241, pos = { x = -298.387, y = 292.040, z = 3315.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 48
	[106035] = { config_id = 106035, gadget_id = 70330241, pos = { x = -296.287, y = 292.040, z = 3315.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 49
	[106036] = { config_id = 106036, gadget_id = 70330241, pos = { x = -294.187, y = 292.040, z = 3315.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 51
	[106037] = { config_id = 106037, gadget_id = 70330241, pos = { x = -310.987, y = 292.040, z = 3313.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 52
	[106038] = { config_id = 106038, gadget_id = 70330241, pos = { x = -308.887, y = 292.040, z = 3313.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 53
	[106039] = { config_id = 106039, gadget_id = 70330241, pos = { x = -306.787, y = 292.040, z = 3313.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 54
	[106040] = { config_id = 106040, gadget_id = 70330241, pos = { x = -304.687, y = 292.040, z = 3313.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 55
	[106041] = { config_id = 106041, gadget_id = 70330241, pos = { x = -302.587, y = 292.040, z = 3313.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 56
	[106042] = { config_id = 106042, gadget_id = 70330241, pos = { x = -300.487, y = 292.040, z = 3313.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 57
	[106043] = { config_id = 106043, gadget_id = 70330241, pos = { x = -298.387, y = 292.040, z = 3313.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 58
	[106044] = { config_id = 106044, gadget_id = 70330241, pos = { x = -296.287, y = 292.040, z = 3313.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 59
	[106045] = { config_id = 106045, gadget_id = 70330241, pos = { x = -294.187, y = 292.040, z = 3313.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 61
	[106046] = { config_id = 106046, gadget_id = 70330241, pos = { x = -310.987, y = 292.040, z = 3311.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 62
	[106047] = { config_id = 106047, gadget_id = 70330241, pos = { x = -308.887, y = 292.040, z = 3311.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 63
	[106048] = { config_id = 106048, gadget_id = 70330241, pos = { x = -306.787, y = 292.040, z = 3311.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 64
	[106049] = { config_id = 106049, gadget_id = 70330241, pos = { x = -304.687, y = 292.040, z = 3311.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 65
	[106050] = { config_id = 106050, gadget_id = 70330241, pos = { x = -302.587, y = 292.040, z = 3311.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 66
	[106051] = { config_id = 106051, gadget_id = 70330241, pos = { x = -300.487, y = 292.040, z = 3311.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 67
	[106052] = { config_id = 106052, gadget_id = 70330241, pos = { x = -298.387, y = 292.040, z = 3311.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 68
	[106053] = { config_id = 106053, gadget_id = 70330241, pos = { x = -296.287, y = 292.040, z = 3311.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 69
	[106054] = { config_id = 106054, gadget_id = 70330241, pos = { x = -294.187, y = 292.040, z = 3311.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 71
	[106055] = { config_id = 106055, gadget_id = 70330241, pos = { x = -310.987, y = 292.040, z = 3309.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 72
	[106056] = { config_id = 106056, gadget_id = 70330241, pos = { x = -308.887, y = 292.040, z = 3309.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 73
	[106057] = { config_id = 106057, gadget_id = 70330241, pos = { x = -306.787, y = 292.040, z = 3309.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 74
	[106058] = { config_id = 106058, gadget_id = 70330241, pos = { x = -304.687, y = 292.040, z = 3309.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 75
	[106059] = { config_id = 106059, gadget_id = 70330241, pos = { x = -302.587, y = 292.040, z = 3309.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 76
	[106060] = { config_id = 106060, gadget_id = 70330241, pos = { x = -300.487, y = 292.040, z = 3309.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 77
	[106061] = { config_id = 106061, gadget_id = 70330241, pos = { x = -298.387, y = 292.040, z = 3309.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 78
	[106062] = { config_id = 106062, gadget_id = 70330241, pos = { x = -296.287, y = 292.040, z = 3309.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 79
	[106063] = { config_id = 106063, gadget_id = 70330241, pos = { x = -294.187, y = 292.040, z = 3309.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 81
	[106064] = { config_id = 106064, gadget_id = 70330241, pos = { x = -310.987, y = 292.040, z = 3307.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 82
	[106065] = { config_id = 106065, gadget_id = 70330241, pos = { x = -308.887, y = 292.040, z = 3307.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 83
	[106066] = { config_id = 106066, gadget_id = 70330241, pos = { x = -306.787, y = 292.040, z = 3307.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 84
	[106067] = { config_id = 106067, gadget_id = 70330241, pos = { x = -304.687, y = 292.040, z = 3307.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 85
	[106068] = { config_id = 106068, gadget_id = 70330241, pos = { x = -302.587, y = 292.040, z = 3307.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 86
	[106069] = { config_id = 106069, gadget_id = 70330241, pos = { x = -300.487, y = 292.040, z = 3307.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 87
	[106070] = { config_id = 106070, gadget_id = 70330241, pos = { x = -298.387, y = 292.040, z = 3307.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 88
	[106071] = { config_id = 106071, gadget_id = 70330241, pos = { x = -296.287, y = 292.040, z = 3307.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 89
	[106072] = { config_id = 106072, gadget_id = 70330241, pos = { x = -294.187, y = 292.040, z = 3307.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 91
	[106073] = { config_id = 106073, gadget_id = 70330241, pos = { x = -310.987, y = 292.040, z = 3305.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 92
	[106074] = { config_id = 106074, gadget_id = 70330241, pos = { x = -308.887, y = 292.040, z = 3305.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 93
	[106075] = { config_id = 106075, gadget_id = 70330241, pos = { x = -306.787, y = 292.040, z = 3305.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 94
	[106076] = { config_id = 106076, gadget_id = 70330241, pos = { x = -304.687, y = 292.040, z = 3305.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 95
	[106077] = { config_id = 106077, gadget_id = 70330241, pos = { x = -302.587, y = 292.040, z = 3305.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 96
	[106078] = { config_id = 106078, gadget_id = 70330241, pos = { x = -300.487, y = 292.040, z = 3305.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 97
	[106079] = { config_id = 106079, gadget_id = 70330241, pos = { x = -298.387, y = 292.040, z = 3305.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 98
	[106080] = { config_id = 106080, gadget_id = 70330241, pos = { x = -296.287, y = 292.040, z = 3305.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 99，这边验证用的，务必保证FloorCid + 80 等于这个 cid
	[106081] = { config_id = 106081, gadget_id = 70330241, pos = { x = -294.187, y = 292.040, z = 3305.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 起始点,一定要配置，位置不是很重要，不要放任何Suite中
	[106082] = { config_id = 106082, gadget_id = 70330240, pos = { x = -290.841, y = 291.145, z = 3308.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 树终点,一定要配置，位置不是很重要，不要放任何Suite中
	[106083] = { config_id = 106083, gadget_id = 70330242, pos = { x = -290.334, y = 291.115, z = 3314.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 苗圃草Volume 后，尽量放在中间
	[106086] = { config_id = 106086, gadget_id = 70290530, pos = { x = -302.569, y = 292.200, z = 3313.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	-- 苗圃草Volume 前，位置跟着树走
	[106087] = { config_id = 106087, gadget_id = 70290518, pos = { x = -302.569, y = 292.200, z = 3313.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	[106088] = { config_id = 106088, gadget_id = 70290593, pos = { x = -302.569, y = 292.200, z = 3313.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	[106089] = { config_id = 106089, gadget_id = 70211101, pos = { x = -302.569, y = 292.018, z = 3313.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 }
}

-- 区域
regions = {
	-- PlayRegion，离开时会失败
	[106084] = { config_id = 106084, shape = RegionShape.SPHERE, radius = 15, pos = { x = -302.735, y = 291.289, z = 3313.595 }, area_id = 22 },
	-- InitRegion，进入时会加载玩法
	[106085] = { config_id = 106085, shape = RegionShape.SPHERE, radius = 100, pos = { x = -302.735, y = 291.289, z = 3313.595 }, area_id = 22 }
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
		gadgets = { 106087 },
		regions = { 106084, 106085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 106087 },
		regions = { 106084, 106085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 106087 },
		regions = { 106084, 106085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 106087 },
		regions = { 106084, 106085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 106087 },
		regions = { 106084, 106085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 106087 },
		regions = { 106084, 106085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 106087 },
		regions = { 106084, 106085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 106087 },
		regions = { 106084, 106085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 106087 },
		regions = { 106084, 106085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 106087 },
		regions = { 106084, 106085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 106087 },
		regions = { 106084, 106085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 106087 },
		regions = { 106084, 106085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 106088, 106089 },
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
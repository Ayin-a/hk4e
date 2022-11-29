-- 基础信息
local base_info = {
	group_id = 133301115
}

-- Trigger变量
local defs = {
	gadget_StarCid = 115082,
	gadget_TreeCid = 115083,
	gadget_FloorCid = 115001,
	region_InitRegion = 115085,
	region_PlayRegion = 115084,
	quest_id = 7310612,
	gadget_Volume01 = 115087,
	gadget_Volume02 = 115086,
	cutSceneId = 85,
	gadget_Chest = 115089
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
	[115001] = { config_id = 115001, gadget_id = 70330241, pos = { x = -662.328, y = 217.035, z = 2420.983 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 12
	[115002] = { config_id = 115002, gadget_id = 70330241, pos = { x = -660.694, y = 217.035, z = 2419.664 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 13
	[115003] = { config_id = 115003, gadget_id = 70330241, pos = { x = -659.061, y = 217.035, z = 2418.345 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 14
	[115004] = { config_id = 115004, gadget_id = 70330241, pos = { x = -657.426, y = 217.035, z = 2417.026 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 15
	[115005] = { config_id = 115005, gadget_id = 70330241, pos = { x = -655.792, y = 217.035, z = 2415.707 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 16
	[115006] = { config_id = 115006, gadget_id = 70330241, pos = { x = -654.158, y = 217.035, z = 2414.388 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 17
	[115007] = { config_id = 115007, gadget_id = 70330241, pos = { x = -652.524, y = 217.035, z = 2413.069 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 18
	[115008] = { config_id = 115008, gadget_id = 70330241, pos = { x = -650.890, y = 217.035, z = 2411.750 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 19
	[115009] = { config_id = 115009, gadget_id = 70330241, pos = { x = -649.256, y = 217.035, z = 2410.431 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 21
	[115010] = { config_id = 115010, gadget_id = 70330241, pos = { x = -663.647, y = 217.035, z = 2419.350 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 22
	[115011] = { config_id = 115011, gadget_id = 70330241, pos = { x = -662.014, y = 217.035, z = 2418.030 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 23
	[115012] = { config_id = 115012, gadget_id = 70330241, pos = { x = -660.379, y = 217.035, z = 2416.712 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 24
	[115013] = { config_id = 115013, gadget_id = 70330241, pos = { x = -658.746, y = 217.035, z = 2415.392 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 25
	[115014] = { config_id = 115014, gadget_id = 70330241, pos = { x = -657.111, y = 217.035, z = 2414.073 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 26
	[115015] = { config_id = 115015, gadget_id = 70330241, pos = { x = -655.477, y = 217.035, z = 2412.754 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 27
	[115016] = { config_id = 115016, gadget_id = 70330241, pos = { x = -653.843, y = 217.035, z = 2411.436 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 28
	[115017] = { config_id = 115017, gadget_id = 70330241, pos = { x = -652.209, y = 217.035, z = 2410.116 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 29
	[115018] = { config_id = 115018, gadget_id = 70330241, pos = { x = -650.575, y = 217.035, z = 2408.798 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 31
	[115019] = { config_id = 115019, gadget_id = 70330241, pos = { x = -664.967, y = 217.035, z = 2417.716 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 32
	[115020] = { config_id = 115020, gadget_id = 70330241, pos = { x = -663.332, y = 217.035, z = 2416.396 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 33
	[115021] = { config_id = 115021, gadget_id = 70330241, pos = { x = -661.698, y = 217.035, z = 2415.078 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 34
	[115022] = { config_id = 115022, gadget_id = 70330241, pos = { x = -660.064, y = 217.035, z = 2413.758 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 35
	[115023] = { config_id = 115023, gadget_id = 70330241, pos = { x = -658.430, y = 217.035, z = 2412.439 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 36
	[115024] = { config_id = 115024, gadget_id = 70330241, pos = { x = -656.797, y = 217.035, z = 2411.120 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 37
	[115025] = { config_id = 115025, gadget_id = 70330241, pos = { x = -655.162, y = 217.035, z = 2409.801 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 38
	[115026] = { config_id = 115026, gadget_id = 70330241, pos = { x = -653.528, y = 217.035, z = 2408.482 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 39
	[115027] = { config_id = 115027, gadget_id = 70330241, pos = { x = -651.894, y = 217.035, z = 2407.162 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 41
	[115028] = { config_id = 115028, gadget_id = 70330241, pos = { x = -666.285, y = 217.035, z = 2416.081 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 42
	[115029] = { config_id = 115029, gadget_id = 70330241, pos = { x = -664.651, y = 217.035, z = 2414.763 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 43
	[115030] = { config_id = 115030, gadget_id = 70330241, pos = { x = -663.017, y = 217.035, z = 2413.443 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 44
	[115031] = { config_id = 115031, gadget_id = 70330241, pos = { x = -661.383, y = 217.035, z = 2412.124 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 45
	[115032] = { config_id = 115032, gadget_id = 70330241, pos = { x = -659.749, y = 217.035, z = 2410.805 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 46
	[115033] = { config_id = 115033, gadget_id = 70330241, pos = { x = -658.116, y = 217.035, z = 2409.486 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 47
	[115034] = { config_id = 115034, gadget_id = 70330241, pos = { x = -656.481, y = 217.035, z = 2408.167 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 48
	[115035] = { config_id = 115035, gadget_id = 70330241, pos = { x = -654.847, y = 217.035, z = 2406.848 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 49
	[115036] = { config_id = 115036, gadget_id = 70330241, pos = { x = -653.213, y = 217.035, z = 2405.529 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 51
	[115037] = { config_id = 115037, gadget_id = 70330241, pos = { x = -667.605, y = 217.035, z = 2414.448 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 52
	[115038] = { config_id = 115038, gadget_id = 70330241, pos = { x = -665.971, y = 217.035, z = 2413.128 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 53
	[115039] = { config_id = 115039, gadget_id = 70330241, pos = { x = -664.337, y = 217.035, z = 2411.809 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 54
	[115040] = { config_id = 115040, gadget_id = 70330241, pos = { x = -662.702, y = 217.035, z = 2410.491 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 55
	[115041] = { config_id = 115041, gadget_id = 70330241, pos = { x = -661.068, y = 217.035, z = 2409.171 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 56
	[115042] = { config_id = 115042, gadget_id = 70330241, pos = { x = -659.434, y = 217.035, z = 2407.852 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 57
	[115043] = { config_id = 115043, gadget_id = 70330241, pos = { x = -657.800, y = 217.035, z = 2406.533 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 58
	[115044] = { config_id = 115044, gadget_id = 70330241, pos = { x = -656.167, y = 217.035, z = 2405.214 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 59
	[115045] = { config_id = 115045, gadget_id = 70330241, pos = { x = -654.532, y = 217.035, z = 2403.895 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 61
	[115046] = { config_id = 115046, gadget_id = 70330241, pos = { x = -668.924, y = 217.035, z = 2412.813 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 62
	[115047] = { config_id = 115047, gadget_id = 70330241, pos = { x = -667.290, y = 217.035, z = 2411.495 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 63
	[115048] = { config_id = 115048, gadget_id = 70330241, pos = { x = -665.656, y = 217.035, z = 2410.175 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 64
	[115049] = { config_id = 115049, gadget_id = 70330241, pos = { x = -664.022, y = 217.035, z = 2408.856 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 65
	[115050] = { config_id = 115050, gadget_id = 70330241, pos = { x = -662.387, y = 217.035, z = 2407.537 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 66
	[115051] = { config_id = 115051, gadget_id = 70330241, pos = { x = -660.754, y = 217.035, z = 2406.218 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 67
	[115052] = { config_id = 115052, gadget_id = 70330241, pos = { x = -659.120, y = 217.035, z = 2404.899 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 68
	[115053] = { config_id = 115053, gadget_id = 70330241, pos = { x = -657.485, y = 217.035, z = 2403.580 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 69
	[115054] = { config_id = 115054, gadget_id = 70330241, pos = { x = -655.851, y = 217.035, z = 2402.261 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 71
	[115055] = { config_id = 115055, gadget_id = 70330241, pos = { x = -670.243, y = 217.035, z = 2411.179 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 72
	[115056] = { config_id = 115056, gadget_id = 70330241, pos = { x = -668.609, y = 217.035, z = 2409.860 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 73
	[115057] = { config_id = 115057, gadget_id = 70330241, pos = { x = -666.975, y = 217.035, z = 2408.542 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 74
	[115058] = { config_id = 115058, gadget_id = 70330241, pos = { x = -665.341, y = 217.035, z = 2407.223 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 75
	[115059] = { config_id = 115059, gadget_id = 70330241, pos = { x = -663.707, y = 217.035, z = 2405.904 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 76
	[115060] = { config_id = 115060, gadget_id = 70330241, pos = { x = -662.073, y = 217.035, z = 2404.584 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 77
	[115061] = { config_id = 115061, gadget_id = 70330241, pos = { x = -660.439, y = 217.035, z = 2403.265 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 78
	[115062] = { config_id = 115062, gadget_id = 70330241, pos = { x = -658.804, y = 217.035, z = 2401.947 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 79
	[115063] = { config_id = 115063, gadget_id = 70330241, pos = { x = -657.171, y = 217.035, z = 2400.626 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 81
	[115064] = { config_id = 115064, gadget_id = 70330241, pos = { x = -671.562, y = 217.035, z = 2409.546 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 82
	[115065] = { config_id = 115065, gadget_id = 70330241, pos = { x = -669.928, y = 217.035, z = 2408.226 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 83
	[115066] = { config_id = 115066, gadget_id = 70330241, pos = { x = -668.294, y = 217.035, z = 2406.907 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 84
	[115067] = { config_id = 115067, gadget_id = 70330241, pos = { x = -666.660, y = 217.035, z = 2405.588 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 85
	[115068] = { config_id = 115068, gadget_id = 70330241, pos = { x = -665.026, y = 217.035, z = 2404.269 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 86
	[115069] = { config_id = 115069, gadget_id = 70330241, pos = { x = -663.392, y = 217.035, z = 2402.951 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 87
	[115070] = { config_id = 115070, gadget_id = 70330241, pos = { x = -661.758, y = 217.035, z = 2401.631 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 88
	[115071] = { config_id = 115071, gadget_id = 70330241, pos = { x = -660.124, y = 217.035, z = 2400.312 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 89
	[115072] = { config_id = 115072, gadget_id = 70330241, pos = { x = -658.489, y = 217.035, z = 2398.993 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 91
	[115073] = { config_id = 115073, gadget_id = 70330241, pos = { x = -672.881, y = 217.035, z = 2407.911 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 92
	[115074] = { config_id = 115074, gadget_id = 70330241, pos = { x = -671.247, y = 217.035, z = 2406.592 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 93
	[115075] = { config_id = 115075, gadget_id = 70330241, pos = { x = -669.613, y = 217.035, z = 2405.273 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 94
	[115076] = { config_id = 115076, gadget_id = 70330241, pos = { x = -667.979, y = 217.035, z = 2403.954 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 95
	[115077] = { config_id = 115077, gadget_id = 70330241, pos = { x = -666.345, y = 217.035, z = 2402.635 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 96
	[115078] = { config_id = 115078, gadget_id = 70330241, pos = { x = -664.711, y = 217.035, z = 2401.316 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 97
	[115079] = { config_id = 115079, gadget_id = 70330241, pos = { x = -663.077, y = 217.035, z = 2399.997 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 98
	[115080] = { config_id = 115080, gadget_id = 70330241, pos = { x = -661.443, y = 217.035, z = 2398.677 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 99，这边验证用的，务必保证FloorCid + 80 等于这个 cid
	[115081] = { config_id = 115081, gadget_id = 70330241, pos = { x = -659.809, y = 217.035, z = 2397.359 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 起始点,一定要配置，位置不是很重要，不要放任何Suite中
	[115082] = { config_id = 115082, gadget_id = 70330240, pos = { x = -655.012, y = 216.140, z = 2397.975 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 树终点,一定要配置，位置不是很重要，不要放任何Suite中
	[115083] = { config_id = 115083, gadget_id = 70330242, pos = { x = -651.059, y = 216.111, z = 2402.065 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24, is_enable_interact = false },
	-- 苗圃草Volume 后，尽量放在中间
	[115086] = { config_id = 115086, gadget_id = 70290530, pos = { x = -661.068, y = 217.235, z = 2409.171 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24 },
	-- 苗圃草Volume 前，位置跟着树走
	[115087] = { config_id = 115087, gadget_id = 70290518, pos = { x = -661.068, y = 217.235, z = 2409.171 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24 },
	[115088] = { config_id = 115088, gadget_id = 70290593, pos = { x = -661.068, y = 217.235, z = 2409.171 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 27, area_id = 24 },
	[115089] = { config_id = 115089, gadget_id = 70211101, pos = { x = -661.068, y = 217.035, z = 2409.171 }, rot = { x = 0.000, y = 38.912, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
}

-- 区域
regions = {
	-- PlayRegion，离开时会失败
	[115084] = { config_id = 115084, shape = RegionShape.SPHERE, radius = 15, pos = { x = -661.155, y = 216.285, z = 2409.302 }, area_id = 24 },
	-- InitRegion，进入时会加载玩法
	[115085] = { config_id = 115085, shape = RegionShape.SPHERE, radius = 100, pos = { x = -661.155, y = 216.285, z = 2409.302 }, area_id = 24 }
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
		gadgets = { 115087 },
		regions = { 115084, 115085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 115087 },
		regions = { 115084, 115085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 115087 },
		regions = { 115084, 115085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 115087 },
		regions = { 115084, 115085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 115087 },
		regions = { 115084, 115085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 115087 },
		regions = { 115084, 115085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 115087 },
		regions = { 115084, 115085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 115087 },
		regions = { 115084, 115085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 115087 },
		regions = { 115084, 115085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 115087 },
		regions = { 115084, 115085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 115087 },
		regions = { 115084, 115085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 115087 },
		regions = { 115084, 115085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 115088, 115089 },
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
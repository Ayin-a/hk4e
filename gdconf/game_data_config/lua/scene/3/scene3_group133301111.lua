-- 基础信息
local base_info = {
	group_id = 133301111
}

-- Trigger变量
local defs = {
	gadget_StarCid = 111082,
	gadget_TreeCid = 111083,
	gadget_FloorCid = 111001,
	region_InitRegion = 111085,
	region_PlayRegion = 111084,
	quest_id = 7310608,
	gadget_Volume01 = 111087,
	gadget_Volume02 = 111086,
	cutSceneId = 81,
	gadget_Chest = 111089
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
	[111001] = { config_id = 111001, gadget_id = 70330241, pos = { x = -1657.289, y = 219.703, z = 2926.072 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 12
	[111002] = { config_id = 111002, gadget_id = 70330241, pos = { x = -1655.261, y = 219.703, z = 2925.527 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 13
	[111003] = { config_id = 111003, gadget_id = 70330241, pos = { x = -1653.234, y = 219.703, z = 2924.981 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 14
	[111004] = { config_id = 111004, gadget_id = 70330241, pos = { x = -1651.206, y = 219.703, z = 2924.434 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 15
	[111005] = { config_id = 111005, gadget_id = 70330241, pos = { x = -1649.178, y = 219.703, z = 2923.889 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 16
	[111006] = { config_id = 111006, gadget_id = 70330241, pos = { x = -1647.150, y = 219.703, z = 2923.343 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 17
	[111007] = { config_id = 111007, gadget_id = 70330241, pos = { x = -1645.123, y = 219.703, z = 2922.796 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 18
	[111008] = { config_id = 111008, gadget_id = 70330241, pos = { x = -1643.094, y = 219.703, z = 2922.250 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 19
	[111009] = { config_id = 111009, gadget_id = 70330241, pos = { x = -1641.067, y = 219.703, z = 2921.705 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 21
	[111010] = { config_id = 111010, gadget_id = 70330241, pos = { x = -1657.835, y = 219.703, z = 2924.044 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 22
	[111011] = { config_id = 111011, gadget_id = 70330241, pos = { x = -1655.807, y = 219.703, z = 2923.499 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 23
	[111012] = { config_id = 111012, gadget_id = 70330241, pos = { x = -1653.780, y = 219.703, z = 2922.952 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 24
	[111013] = { config_id = 111013, gadget_id = 70330241, pos = { x = -1651.752, y = 219.703, z = 2922.407 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 25
	[111014] = { config_id = 111014, gadget_id = 70330241, pos = { x = -1649.724, y = 219.703, z = 2921.861 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 26
	[111015] = { config_id = 111015, gadget_id = 70330241, pos = { x = -1647.696, y = 219.703, z = 2921.315 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 27
	[111016] = { config_id = 111016, gadget_id = 70330241, pos = { x = -1645.668, y = 219.703, z = 2920.769 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 28
	[111017] = { config_id = 111017, gadget_id = 70330241, pos = { x = -1643.641, y = 219.703, z = 2920.223 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 29
	[111018] = { config_id = 111018, gadget_id = 70330241, pos = { x = -1641.613, y = 219.703, z = 2919.677 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 31
	[111019] = { config_id = 111019, gadget_id = 70330241, pos = { x = -1658.381, y = 219.703, z = 2922.017 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 32
	[111020] = { config_id = 111020, gadget_id = 70330241, pos = { x = -1656.354, y = 219.703, z = 2921.471 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 33
	[111021] = { config_id = 111021, gadget_id = 70330241, pos = { x = -1654.326, y = 219.703, z = 2920.925 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 34
	[111022] = { config_id = 111022, gadget_id = 70330241, pos = { x = -1652.297, y = 219.703, z = 2920.379 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 35
	[111023] = { config_id = 111023, gadget_id = 70330241, pos = { x = -1650.270, y = 219.703, z = 2919.833 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 36
	[111024] = { config_id = 111024, gadget_id = 70330241, pos = { x = -1648.242, y = 219.703, z = 2919.287 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 37
	[111025] = { config_id = 111025, gadget_id = 70330241, pos = { x = -1646.214, y = 219.703, z = 2918.741 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 38
	[111026] = { config_id = 111026, gadget_id = 70330241, pos = { x = -1644.187, y = 219.703, z = 2918.195 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 39
	[111027] = { config_id = 111027, gadget_id = 70330241, pos = { x = -1642.159, y = 219.703, z = 2917.649 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 41
	[111028] = { config_id = 111028, gadget_id = 70330241, pos = { x = -1658.927, y = 219.703, z = 2919.990 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 42
	[111029] = { config_id = 111029, gadget_id = 70330241, pos = { x = -1656.899, y = 219.703, z = 2919.443 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 43
	[111030] = { config_id = 111030, gadget_id = 70330241, pos = { x = -1654.872, y = 219.703, z = 2918.897 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 44
	[111031] = { config_id = 111031, gadget_id = 70330241, pos = { x = -1652.844, y = 219.703, z = 2918.351 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 45
	[111032] = { config_id = 111032, gadget_id = 70330241, pos = { x = -1650.816, y = 219.703, z = 2917.805 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 46
	[111033] = { config_id = 111033, gadget_id = 70330241, pos = { x = -1648.788, y = 219.703, z = 2917.259 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 47
	[111034] = { config_id = 111034, gadget_id = 70330241, pos = { x = -1646.760, y = 219.703, z = 2916.713 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 48
	[111035] = { config_id = 111035, gadget_id = 70330241, pos = { x = -1644.733, y = 219.703, z = 2916.167 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 49
	[111036] = { config_id = 111036, gadget_id = 70330241, pos = { x = -1642.705, y = 219.703, z = 2915.621 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 51
	[111037] = { config_id = 111037, gadget_id = 70330241, pos = { x = -1659.473, y = 219.703, z = 2917.961 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 52
	[111038] = { config_id = 111038, gadget_id = 70330241, pos = { x = -1657.445, y = 219.703, z = 2917.415 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 53
	[111039] = { config_id = 111039, gadget_id = 70330241, pos = { x = -1655.418, y = 219.703, z = 2916.869 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 54
	[111040] = { config_id = 111040, gadget_id = 70330241, pos = { x = -1653.390, y = 219.703, z = 2916.324 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 55
	[111041] = { config_id = 111041, gadget_id = 70330241, pos = { x = -1651.362, y = 219.703, z = 2915.777 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 56
	[111042] = { config_id = 111042, gadget_id = 70330241, pos = { x = -1649.334, y = 219.703, z = 2915.231 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 57
	[111043] = { config_id = 111043, gadget_id = 70330241, pos = { x = -1647.307, y = 219.703, z = 2914.685 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 58
	[111044] = { config_id = 111044, gadget_id = 70330241, pos = { x = -1645.279, y = 219.703, z = 2914.139 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 59
	[111045] = { config_id = 111045, gadget_id = 70330241, pos = { x = -1643.251, y = 219.703, z = 2913.593 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 61
	[111046] = { config_id = 111046, gadget_id = 70330241, pos = { x = -1660.019, y = 219.703, z = 2915.934 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 62
	[111047] = { config_id = 111047, gadget_id = 70330241, pos = { x = -1657.991, y = 219.703, z = 2915.387 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 63
	[111048] = { config_id = 111048, gadget_id = 70330241, pos = { x = -1655.963, y = 219.703, z = 2914.841 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 64
	[111049] = { config_id = 111049, gadget_id = 70330241, pos = { x = -1653.936, y = 219.703, z = 2914.295 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 65
	[111050] = { config_id = 111050, gadget_id = 70330241, pos = { x = -1651.908, y = 219.703, z = 2913.750 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 66
	[111051] = { config_id = 111051, gadget_id = 70330241, pos = { x = -1649.880, y = 219.703, z = 2913.204 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 67
	[111052] = { config_id = 111052, gadget_id = 70330241, pos = { x = -1647.852, y = 219.703, z = 2912.658 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 68
	[111053] = { config_id = 111053, gadget_id = 70330241, pos = { x = -1645.824, y = 219.703, z = 2912.112 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 69
	[111054] = { config_id = 111054, gadget_id = 70330241, pos = { x = -1643.797, y = 219.703, z = 2911.566 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 71
	[111055] = { config_id = 111055, gadget_id = 70330241, pos = { x = -1660.565, y = 219.703, z = 2913.906 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 72
	[111056] = { config_id = 111056, gadget_id = 70330241, pos = { x = -1658.537, y = 219.703, z = 2913.360 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 73
	[111057] = { config_id = 111057, gadget_id = 70330241, pos = { x = -1656.510, y = 219.703, z = 2912.814 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 74
	[111058] = { config_id = 111058, gadget_id = 70330241, pos = { x = -1654.482, y = 219.703, z = 2912.267 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 75
	[111059] = { config_id = 111059, gadget_id = 70330241, pos = { x = -1652.454, y = 219.703, z = 2911.722 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 76
	[111060] = { config_id = 111060, gadget_id = 70330241, pos = { x = -1650.426, y = 219.703, z = 2911.176 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 77
	[111061] = { config_id = 111061, gadget_id = 70330241, pos = { x = -1648.398, y = 219.703, z = 2910.630 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 78
	[111062] = { config_id = 111062, gadget_id = 70330241, pos = { x = -1646.370, y = 219.703, z = 2910.084 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 79
	[111063] = { config_id = 111063, gadget_id = 70330241, pos = { x = -1644.343, y = 219.703, z = 2909.538 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 81
	[111064] = { config_id = 111064, gadget_id = 70330241, pos = { x = -1661.111, y = 219.703, z = 2911.878 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 82
	[111065] = { config_id = 111065, gadget_id = 70330241, pos = { x = -1659.083, y = 219.703, z = 2911.332 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 83
	[111066] = { config_id = 111066, gadget_id = 70330241, pos = { x = -1657.056, y = 219.703, z = 2910.786 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 84
	[111067] = { config_id = 111067, gadget_id = 70330241, pos = { x = -1655.027, y = 219.703, z = 2910.240 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 85
	[111068] = { config_id = 111068, gadget_id = 70330241, pos = { x = -1653.000, y = 219.703, z = 2909.694 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 86
	[111069] = { config_id = 111069, gadget_id = 70330241, pos = { x = -1650.972, y = 219.703, z = 2909.148 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 87
	[111070] = { config_id = 111070, gadget_id = 70330241, pos = { x = -1648.944, y = 219.703, z = 2908.602 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 88
	[111071] = { config_id = 111071, gadget_id = 70330241, pos = { x = -1646.917, y = 219.703, z = 2908.056 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 89
	[111072] = { config_id = 111072, gadget_id = 70330241, pos = { x = -1644.888, y = 219.703, z = 2907.510 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 91
	[111073] = { config_id = 111073, gadget_id = 70330241, pos = { x = -1661.657, y = 219.703, z = 2909.850 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 92
	[111074] = { config_id = 111074, gadget_id = 70330241, pos = { x = -1659.629, y = 219.703, z = 2909.304 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 93
	[111075] = { config_id = 111075, gadget_id = 70330241, pos = { x = -1657.601, y = 219.703, z = 2908.759 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 94
	[111076] = { config_id = 111076, gadget_id = 70330241, pos = { x = -1655.573, y = 219.703, z = 2908.212 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 95
	[111077] = { config_id = 111077, gadget_id = 70330241, pos = { x = -1653.546, y = 219.703, z = 2907.666 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 96
	[111078] = { config_id = 111078, gadget_id = 70330241, pos = { x = -1651.518, y = 219.703, z = 2907.120 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 97
	[111079] = { config_id = 111079, gadget_id = 70330241, pos = { x = -1649.490, y = 219.703, z = 2906.574 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 98
	[111080] = { config_id = 111080, gadget_id = 70330241, pos = { x = -1647.462, y = 219.703, z = 2906.028 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 99，这边验证用的，务必保证FloorCid + 80 等于这个 cid
	[111081] = { config_id = 111081, gadget_id = 70330241, pos = { x = -1645.435, y = 219.703, z = 2905.482 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 起始点,一定要配置，位置不是很重要，不要放任何Suite中
	[111082] = { config_id = 111082, gadget_id = 70330240, pos = { x = -1641.297, y = 218.808, z = 2907.985 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 树终点,一定要配置，位置不是很重要，不要放任何Suite中
	[111083] = { config_id = 111083, gadget_id = 70330242, pos = { x = -1639.333, y = 218.778, z = 2913.324 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 苗圃草Volume 后，尽量放在中间
	[111086] = { config_id = 111086, gadget_id = 70290530, pos = { x = -1651.362, y = 219.903, z = 2915.777 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 27, area_id = 21 },
	-- 苗圃草Volume 前，位置跟着树走
	[111087] = { config_id = 111087, gadget_id = 70290518, pos = { x = -1651.362, y = 219.903, z = 2915.777 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 27, area_id = 21 },
	[111088] = { config_id = 111088, gadget_id = 70290593, pos = { x = -1651.362, y = 219.903, z = 2915.777 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 27, area_id = 21 },
	[111089] = { config_id = 111089, gadget_id = 70211101, pos = { x = -1651.362, y = 219.703, z = 2915.777 }, rot = { x = 0.000, y = 15.069, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
	-- PlayRegion，离开时会失败
	[111084] = { config_id = 111084, shape = RegionShape.SPHERE, radius = 15, pos = { x = -1651.494, y = 218.952, z = 2915.862 }, area_id = 21 },
	-- InitRegion，进入时会加载玩法
	[111085] = { config_id = 111085, shape = RegionShape.SPHERE, radius = 100, pos = { x = -1651.494, y = 218.952, z = 2915.862 }, area_id = 21 }
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
		gadgets = { 111087 },
		regions = { 111084, 111085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 111087 },
		regions = { 111084, 111085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 111087 },
		regions = { 111084, 111085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 111087 },
		regions = { 111084, 111085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 111087 },
		regions = { 111084, 111085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 111087 },
		regions = { 111084, 111085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 111087 },
		regions = { 111084, 111085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 111087 },
		regions = { 111084, 111085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 111087 },
		regions = { 111084, 111085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 111087 },
		regions = { 111084, 111085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 111087 },
		regions = { 111084, 111085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 111087 },
		regions = { 111084, 111085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 111088, 111089 },
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
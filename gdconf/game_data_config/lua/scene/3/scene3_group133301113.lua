-- 基础信息
local base_info = {
	group_id = 133301113
}

-- Trigger变量
local defs = {
	gadget_StarCid = 113082,
	gadget_TreeCid = 113083,
	gadget_FloorCid = 113001,
	region_InitRegion = 113085,
	region_PlayRegion = 113084,
	quest_id = 7310610,
	gadget_Volume01 = 113087,
	gadget_Volume02 = 113086,
	cutSceneId = 83,
	gadget_Chest = 113089
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
	[113001] = { config_id = 113001, gadget_id = 70330241, pos = { x = -1716.142, y = 321.012, z = 2376.197 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 12
	[113002] = { config_id = 113002, gadget_id = 70330241, pos = { x = -1714.046, y = 321.012, z = 2376.322 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 13
	[113003] = { config_id = 113003, gadget_id = 70330241, pos = { x = -1711.949, y = 321.012, z = 2376.447 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 14
	[113004] = { config_id = 113004, gadget_id = 70330241, pos = { x = -1709.853, y = 321.012, z = 2376.572 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 15
	[113005] = { config_id = 113005, gadget_id = 70330241, pos = { x = -1707.757, y = 321.012, z = 2376.696 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 16
	[113006] = { config_id = 113006, gadget_id = 70330241, pos = { x = -1705.660, y = 321.012, z = 2376.821 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 17
	[113007] = { config_id = 113007, gadget_id = 70330241, pos = { x = -1703.564, y = 321.012, z = 2376.946 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 18
	[113008] = { config_id = 113008, gadget_id = 70330241, pos = { x = -1701.468, y = 321.012, z = 2377.071 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 19
	[113009] = { config_id = 113009, gadget_id = 70330241, pos = { x = -1699.372, y = 321.012, z = 2377.196 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 21
	[113010] = { config_id = 113010, gadget_id = 70330241, pos = { x = -1716.017, y = 321.012, z = 2374.101 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 22
	[113011] = { config_id = 113011, gadget_id = 70330241, pos = { x = -1713.921, y = 321.012, z = 2374.226 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 23
	[113012] = { config_id = 113012, gadget_id = 70330241, pos = { x = -1711.824, y = 321.012, z = 2374.350 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 24
	[113013] = { config_id = 113013, gadget_id = 70330241, pos = { x = -1709.728, y = 321.012, z = 2374.475 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 25
	[113014] = { config_id = 113014, gadget_id = 70330241, pos = { x = -1707.632, y = 321.012, z = 2374.600 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 26
	[113015] = { config_id = 113015, gadget_id = 70330241, pos = { x = -1705.536, y = 321.012, z = 2374.725 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 27
	[113016] = { config_id = 113016, gadget_id = 70330241, pos = { x = -1703.439, y = 321.012, z = 2374.849 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 28
	[113017] = { config_id = 113017, gadget_id = 70330241, pos = { x = -1701.343, y = 321.012, z = 2374.975 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 29
	[113018] = { config_id = 113018, gadget_id = 70330241, pos = { x = -1699.247, y = 321.012, z = 2375.099 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 31
	[113019] = { config_id = 113019, gadget_id = 70330241, pos = { x = -1715.892, y = 321.012, z = 2372.004 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 32
	[113020] = { config_id = 113020, gadget_id = 70330241, pos = { x = -1713.796, y = 321.012, z = 2372.129 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 33
	[113021] = { config_id = 113021, gadget_id = 70330241, pos = { x = -1711.700, y = 321.012, z = 2372.254 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 34
	[113022] = { config_id = 113022, gadget_id = 70330241, pos = { x = -1709.603, y = 321.012, z = 2372.379 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 35
	[113023] = { config_id = 113023, gadget_id = 70330241, pos = { x = -1707.507, y = 321.012, z = 2372.504 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 36
	[113024] = { config_id = 113024, gadget_id = 70330241, pos = { x = -1705.411, y = 321.012, z = 2372.629 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 37
	[113025] = { config_id = 113025, gadget_id = 70330241, pos = { x = -1703.314, y = 321.012, z = 2372.753 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 38
	[113026] = { config_id = 113026, gadget_id = 70330241, pos = { x = -1701.218, y = 321.012, z = 2372.878 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 39
	[113027] = { config_id = 113027, gadget_id = 70330241, pos = { x = -1699.122, y = 321.012, z = 2373.003 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 41
	[113028] = { config_id = 113028, gadget_id = 70330241, pos = { x = -1715.767, y = 321.012, z = 2369.908 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 42
	[113029] = { config_id = 113029, gadget_id = 70330241, pos = { x = -1713.671, y = 321.012, z = 2370.033 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 43
	[113030] = { config_id = 113030, gadget_id = 70330241, pos = { x = -1711.575, y = 321.012, z = 2370.158 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 44
	[113031] = { config_id = 113031, gadget_id = 70330241, pos = { x = -1709.479, y = 321.012, z = 2370.282 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 45
	[113032] = { config_id = 113032, gadget_id = 70330241, pos = { x = -1707.382, y = 321.012, z = 2370.407 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 46
	[113033] = { config_id = 113033, gadget_id = 70330241, pos = { x = -1705.286, y = 321.012, z = 2370.532 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 47
	[113034] = { config_id = 113034, gadget_id = 70330241, pos = { x = -1703.190, y = 321.012, z = 2370.657 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 48
	[113035] = { config_id = 113035, gadget_id = 70330241, pos = { x = -1701.094, y = 321.012, z = 2370.782 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 49
	[113036] = { config_id = 113036, gadget_id = 70330241, pos = { x = -1698.997, y = 321.012, z = 2370.907 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 51
	[113037] = { config_id = 113037, gadget_id = 70330241, pos = { x = -1715.643, y = 321.012, z = 2367.812 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 52
	[113038] = { config_id = 113038, gadget_id = 70330241, pos = { x = -1713.546, y = 321.012, z = 2367.937 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 53
	[113039] = { config_id = 113039, gadget_id = 70330241, pos = { x = -1711.450, y = 321.012, z = 2368.062 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 54
	[113040] = { config_id = 113040, gadget_id = 70330241, pos = { x = -1709.354, y = 321.012, z = 2368.186 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 55
	[113041] = { config_id = 113041, gadget_id = 70330241, pos = { x = -1707.257, y = 321.012, z = 2368.311 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 56
	[113042] = { config_id = 113042, gadget_id = 70330241, pos = { x = -1705.161, y = 321.012, z = 2368.436 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 57
	[113043] = { config_id = 113043, gadget_id = 70330241, pos = { x = -1703.065, y = 321.012, z = 2368.561 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 58
	[113044] = { config_id = 113044, gadget_id = 70330241, pos = { x = -1700.969, y = 321.012, z = 2368.685 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 59
	[113045] = { config_id = 113045, gadget_id = 70330241, pos = { x = -1698.872, y = 321.012, z = 2368.811 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 61
	[113046] = { config_id = 113046, gadget_id = 70330241, pos = { x = -1715.518, y = 321.012, z = 2365.716 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 62
	[113047] = { config_id = 113047, gadget_id = 70330241, pos = { x = -1713.421, y = 321.012, z = 2365.841 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 63
	[113048] = { config_id = 113048, gadget_id = 70330241, pos = { x = -1711.325, y = 321.012, z = 2365.965 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 64
	[113049] = { config_id = 113049, gadget_id = 70330241, pos = { x = -1709.229, y = 321.012, z = 2366.090 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 65
	[113050] = { config_id = 113050, gadget_id = 70330241, pos = { x = -1707.132, y = 321.012, z = 2366.215 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 66
	[113051] = { config_id = 113051, gadget_id = 70330241, pos = { x = -1705.036, y = 321.012, z = 2366.340 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 67
	[113052] = { config_id = 113052, gadget_id = 70330241, pos = { x = -1702.940, y = 321.012, z = 2366.465 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 68
	[113053] = { config_id = 113053, gadget_id = 70330241, pos = { x = -1700.844, y = 321.012, z = 2366.589 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 69
	[113054] = { config_id = 113054, gadget_id = 70330241, pos = { x = -1698.748, y = 321.012, z = 2366.714 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 71
	[113055] = { config_id = 113055, gadget_id = 70330241, pos = { x = -1715.393, y = 321.012, z = 2363.619 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 72
	[113056] = { config_id = 113056, gadget_id = 70330241, pos = { x = -1713.297, y = 321.012, z = 2363.744 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 73
	[113057] = { config_id = 113057, gadget_id = 70330241, pos = { x = -1711.200, y = 321.012, z = 2363.869 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 74
	[113058] = { config_id = 113058, gadget_id = 70330241, pos = { x = -1709.104, y = 321.012, z = 2363.994 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 75
	[113059] = { config_id = 113059, gadget_id = 70330241, pos = { x = -1707.008, y = 321.012, z = 2364.119 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 76
	[113060] = { config_id = 113060, gadget_id = 70330241, pos = { x = -1704.911, y = 321.012, z = 2364.243 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 77
	[113061] = { config_id = 113061, gadget_id = 70330241, pos = { x = -1702.815, y = 321.012, z = 2364.368 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 78
	[113062] = { config_id = 113062, gadget_id = 70330241, pos = { x = -1700.719, y = 321.012, z = 2364.493 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 79
	[113063] = { config_id = 113063, gadget_id = 70330241, pos = { x = -1698.623, y = 321.012, z = 2364.618 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 81
	[113064] = { config_id = 113064, gadget_id = 70330241, pos = { x = -1715.268, y = 321.012, z = 2361.523 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 82
	[113065] = { config_id = 113065, gadget_id = 70330241, pos = { x = -1713.172, y = 321.012, z = 2361.648 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 83
	[113066] = { config_id = 113066, gadget_id = 70330241, pos = { x = -1711.076, y = 321.012, z = 2361.773 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 84
	[113067] = { config_id = 113067, gadget_id = 70330241, pos = { x = -1708.979, y = 321.012, z = 2361.898 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 85
	[113068] = { config_id = 113068, gadget_id = 70330241, pos = { x = -1706.883, y = 321.012, z = 2362.022 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 86
	[113069] = { config_id = 113069, gadget_id = 70330241, pos = { x = -1704.787, y = 321.012, z = 2362.147 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 87
	[113070] = { config_id = 113070, gadget_id = 70330241, pos = { x = -1702.691, y = 321.012, z = 2362.272 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 88
	[113071] = { config_id = 113071, gadget_id = 70330241, pos = { x = -1700.594, y = 321.012, z = 2362.396 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 89
	[113072] = { config_id = 113072, gadget_id = 70330241, pos = { x = -1698.498, y = 321.012, z = 2362.522 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 91
	[113073] = { config_id = 113073, gadget_id = 70330241, pos = { x = -1715.143, y = 321.012, z = 2359.427 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 92
	[113074] = { config_id = 113074, gadget_id = 70330241, pos = { x = -1713.047, y = 321.012, z = 2359.552 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 93
	[113075] = { config_id = 113075, gadget_id = 70330241, pos = { x = -1710.951, y = 321.012, z = 2359.677 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 94
	[113076] = { config_id = 113076, gadget_id = 70330241, pos = { x = -1708.854, y = 321.012, z = 2359.801 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 95
	[113077] = { config_id = 113077, gadget_id = 70330241, pos = { x = -1706.758, y = 321.012, z = 2359.926 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 96
	[113078] = { config_id = 113078, gadget_id = 70330241, pos = { x = -1704.662, y = 321.012, z = 2360.051 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 97
	[113079] = { config_id = 113079, gadget_id = 70330241, pos = { x = -1702.566, y = 321.012, z = 2360.176 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 98
	[113080] = { config_id = 113080, gadget_id = 70330241, pos = { x = -1700.469, y = 321.012, z = 2360.300 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 99，这边验证用的，务必保证FloorCid + 80 等于这个 cid
	[113081] = { config_id = 113081, gadget_id = 70330241, pos = { x = -1698.373, y = 321.012, z = 2360.425 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 起始点,一定要配置，位置不是很重要，不要放任何Suite中
	[113082] = { config_id = 113082, gadget_id = 70330240, pos = { x = -1695.241, y = 320.117, z = 2364.110 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 树终点,一定要配置，位置不是很重要，不要放任何Suite中
	[113083] = { config_id = 113083, gadget_id = 70330242, pos = { x = -1695.071, y = 320.088, z = 2369.796 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21, is_enable_interact = false },
	-- 苗圃草Volume 后，尽量放在中间
	[113086] = { config_id = 113086, gadget_id = 70290530, pos = { x = -1707.257, y = 321.212, z = 2368.311 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21 },
	-- 苗圃草Volume 前，位置跟着树走
	[113087] = { config_id = 113087, gadget_id = 70290518, pos = { x = -1707.257, y = 321.212, z = 2368.311 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21 },
	[113088] = { config_id = 113088, gadget_id = 70290593, pos = { x = -1707.257, y = 321.212, z = 2368.311 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 27, area_id = 21 },
	[113089] = { config_id = 113089, gadget_id = 70211101, pos = { x = -1707.257, y = 321.012, z = 2368.311 }, rot = { x = 0.000, y = 356.592, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
	-- PlayRegion，离开时会失败
	[113084] = { config_id = 113084, shape = RegionShape.SPHERE, radius = 15, pos = { x = -1707.409, y = 320.262, z = 2368.349 }, area_id = 21 },
	-- InitRegion，进入时会加载玩法
	[113085] = { config_id = 113085, shape = RegionShape.SPHERE, radius = 100, pos = { x = -1707.409, y = 320.262, z = 2368.349 }, area_id = 21 }
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
		gadgets = { 113087 },
		regions = { 113084, 113085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 113087 },
		regions = { 113084, 113085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 113087 },
		regions = { 113084, 113085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 113087 },
		regions = { 113084, 113085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 113087 },
		regions = { 113084, 113085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 113087 },
		regions = { 113084, 113085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 113087 },
		regions = { 113084, 113085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 113087 },
		regions = { 113084, 113085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 113087 },
		regions = { 113084, 113085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 113087 },
		regions = { 113084, 113085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 113087 },
		regions = { 113084, 113085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 113087 },
		regions = { 113084, 113085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 113088, 113089 },
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
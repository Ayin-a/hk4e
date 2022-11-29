-- 基础信息
local base_info = {
	group_id = 133301109
}

-- Trigger变量
local defs = {
	gadget_StarCid = 109082,
	gadget_TreeCid = 109083,
	gadget_FloorCid = 109001,
	region_InitRegion = 109085,
	region_PlayRegion = 109084,
	quest_id = 7310606,
	gadget_Volume01 = 109087,
	gadget_Volume02 = 109086,
	cutSceneId = 79,
	gadget_Chest = 109089
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
	[109001] = { config_id = 109001, gadget_id = 70330241, pos = { x = -1385.061, y = 326.075, z = 3660.839 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 12
	[109002] = { config_id = 109002, gadget_id = 70330241, pos = { x = -1383.376, y = 326.075, z = 3662.092 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 13
	[109003] = { config_id = 109003, gadget_id = 70330241, pos = { x = -1381.690, y = 326.075, z = 3663.345 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 14
	[109004] = { config_id = 109004, gadget_id = 70330241, pos = { x = -1380.006, y = 326.075, z = 3664.599 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 15
	[109005] = { config_id = 109005, gadget_id = 70330241, pos = { x = -1378.321, y = 326.075, z = 3665.852 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 16
	[109006] = { config_id = 109006, gadget_id = 70330241, pos = { x = -1376.636, y = 326.075, z = 3667.105 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 17
	[109007] = { config_id = 109007, gadget_id = 70330241, pos = { x = -1374.950, y = 326.075, z = 3668.359 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 18
	[109008] = { config_id = 109008, gadget_id = 70330241, pos = { x = -1373.265, y = 326.075, z = 3669.612 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 19
	[109009] = { config_id = 109009, gadget_id = 70330241, pos = { x = -1371.580, y = 326.075, z = 3670.865 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 21
	[109010] = { config_id = 109010, gadget_id = 70330241, pos = { x = -1383.807, y = 326.075, z = 3659.154 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 22
	[109011] = { config_id = 109011, gadget_id = 70330241, pos = { x = -1382.122, y = 326.075, z = 3660.407 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 23
	[109012] = { config_id = 109012, gadget_id = 70330241, pos = { x = -1380.438, y = 326.075, z = 3661.660 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 24
	[109013] = { config_id = 109013, gadget_id = 70330241, pos = { x = -1378.752, y = 326.075, z = 3662.914 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 25
	[109014] = { config_id = 109014, gadget_id = 70330241, pos = { x = -1377.068, y = 326.075, z = 3664.167 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 26
	[109015] = { config_id = 109015, gadget_id = 70330241, pos = { x = -1375.382, y = 326.075, z = 3665.420 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 27
	[109016] = { config_id = 109016, gadget_id = 70330241, pos = { x = -1373.697, y = 326.075, z = 3666.674 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 28
	[109017] = { config_id = 109017, gadget_id = 70330241, pos = { x = -1372.012, y = 326.075, z = 3667.927 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 29
	[109018] = { config_id = 109018, gadget_id = 70330241, pos = { x = -1370.327, y = 326.075, z = 3669.180 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 31
	[109019] = { config_id = 109019, gadget_id = 70330241, pos = { x = -1382.554, y = 326.075, z = 3657.469 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 32
	[109020] = { config_id = 109020, gadget_id = 70330241, pos = { x = -1380.869, y = 326.075, z = 3658.722 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 33
	[109021] = { config_id = 109021, gadget_id = 70330241, pos = { x = -1379.184, y = 326.075, z = 3659.975 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 34
	[109022] = { config_id = 109022, gadget_id = 70330241, pos = { x = -1377.499, y = 326.075, z = 3661.229 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 35
	[109023] = { config_id = 109023, gadget_id = 70330241, pos = { x = -1375.814, y = 326.075, z = 3662.482 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 36
	[109024] = { config_id = 109024, gadget_id = 70330241, pos = { x = -1374.129, y = 326.075, z = 3663.735 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 37
	[109025] = { config_id = 109025, gadget_id = 70330241, pos = { x = -1372.444, y = 326.075, z = 3664.988 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 38
	[109026] = { config_id = 109026, gadget_id = 70330241, pos = { x = -1370.759, y = 326.075, z = 3666.242 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 39
	[109027] = { config_id = 109027, gadget_id = 70330241, pos = { x = -1369.074, y = 326.075, z = 3667.494 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 41
	[109028] = { config_id = 109028, gadget_id = 70330241, pos = { x = -1381.301, y = 326.075, z = 3655.784 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 42
	[109029] = { config_id = 109029, gadget_id = 70330241, pos = { x = -1379.616, y = 326.075, z = 3657.037 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 43
	[109030] = { config_id = 109030, gadget_id = 70330241, pos = { x = -1377.931, y = 326.075, z = 3658.290 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 44
	[109031] = { config_id = 109031, gadget_id = 70330241, pos = { x = -1376.246, y = 326.075, z = 3659.544 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 45
	[109032] = { config_id = 109032, gadget_id = 70330241, pos = { x = -1374.561, y = 326.075, z = 3660.797 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 46
	[109033] = { config_id = 109033, gadget_id = 70330241, pos = { x = -1372.876, y = 326.075, z = 3662.050 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 47
	[109034] = { config_id = 109034, gadget_id = 70330241, pos = { x = -1371.191, y = 326.075, z = 3663.303 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 48
	[109035] = { config_id = 109035, gadget_id = 70330241, pos = { x = -1369.506, y = 326.075, z = 3664.557 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 49
	[109036] = { config_id = 109036, gadget_id = 70330241, pos = { x = -1367.820, y = 326.075, z = 3665.810 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 51
	[109037] = { config_id = 109037, gadget_id = 70330241, pos = { x = -1380.047, y = 326.075, z = 3654.099 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 52
	[109038] = { config_id = 109038, gadget_id = 70330241, pos = { x = -1378.363, y = 326.075, z = 3655.353 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 53
	[109039] = { config_id = 109039, gadget_id = 70330241, pos = { x = -1376.678, y = 326.075, z = 3656.605 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 54
	[109040] = { config_id = 109040, gadget_id = 70330241, pos = { x = -1374.992, y = 326.075, z = 3657.859 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 55
	[109041] = { config_id = 109041, gadget_id = 70330241, pos = { x = -1373.308, y = 326.075, z = 3659.112 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 56
	[109042] = { config_id = 109042, gadget_id = 70330241, pos = { x = -1371.622, y = 326.075, z = 3660.365 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 57
	[109043] = { config_id = 109043, gadget_id = 70330241, pos = { x = -1369.938, y = 326.075, z = 3661.618 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 58
	[109044] = { config_id = 109044, gadget_id = 70330241, pos = { x = -1368.252, y = 326.075, z = 3662.872 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 59
	[109045] = { config_id = 109045, gadget_id = 70330241, pos = { x = -1366.567, y = 326.075, z = 3664.125 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 61
	[109046] = { config_id = 109046, gadget_id = 70330241, pos = { x = -1378.795, y = 326.075, z = 3652.414 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 62
	[109047] = { config_id = 109047, gadget_id = 70330241, pos = { x = -1377.109, y = 326.075, z = 3653.667 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 63
	[109048] = { config_id = 109048, gadget_id = 70330241, pos = { x = -1375.425, y = 326.075, z = 3654.921 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 64
	[109049] = { config_id = 109049, gadget_id = 70330241, pos = { x = -1373.739, y = 326.075, z = 3656.174 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 65
	[109050] = { config_id = 109050, gadget_id = 70330241, pos = { x = -1372.055, y = 326.075, z = 3657.427 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 66
	[109051] = { config_id = 109051, gadget_id = 70330241, pos = { x = -1370.370, y = 326.075, z = 3658.680 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 67
	[109052] = { config_id = 109052, gadget_id = 70330241, pos = { x = -1368.684, y = 326.075, z = 3659.933 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 68
	[109053] = { config_id = 109053, gadget_id = 70330241, pos = { x = -1366.999, y = 326.075, z = 3661.187 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 69
	[109054] = { config_id = 109054, gadget_id = 70330241, pos = { x = -1365.314, y = 326.075, z = 3662.440 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 71
	[109055] = { config_id = 109055, gadget_id = 70330241, pos = { x = -1377.541, y = 326.075, z = 3650.729 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 72
	[109056] = { config_id = 109056, gadget_id = 70330241, pos = { x = -1375.857, y = 326.075, z = 3651.983 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 73
	[109057] = { config_id = 109057, gadget_id = 70330241, pos = { x = -1374.171, y = 326.075, z = 3653.235 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 74
	[109058] = { config_id = 109058, gadget_id = 70330241, pos = { x = -1372.486, y = 326.075, z = 3654.489 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 75
	[109059] = { config_id = 109059, gadget_id = 70330241, pos = { x = -1370.801, y = 326.075, z = 3655.742 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 76
	[109060] = { config_id = 109060, gadget_id = 70330241, pos = { x = -1369.116, y = 326.075, z = 3656.995 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 77
	[109061] = { config_id = 109061, gadget_id = 70330241, pos = { x = -1367.431, y = 326.075, z = 3658.249 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 78
	[109062] = { config_id = 109062, gadget_id = 70330241, pos = { x = -1365.746, y = 326.075, z = 3659.502 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 79
	[109063] = { config_id = 109063, gadget_id = 70330241, pos = { x = -1364.061, y = 326.075, z = 3660.755 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 81
	[109064] = { config_id = 109064, gadget_id = 70330241, pos = { x = -1376.288, y = 326.075, z = 3649.044 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 82
	[109065] = { config_id = 109065, gadget_id = 70330241, pos = { x = -1374.603, y = 326.075, z = 3650.297 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 83
	[109066] = { config_id = 109066, gadget_id = 70330241, pos = { x = -1372.918, y = 326.075, z = 3651.551 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 84
	[109067] = { config_id = 109067, gadget_id = 70330241, pos = { x = -1371.233, y = 326.075, z = 3652.804 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 85
	[109068] = { config_id = 109068, gadget_id = 70330241, pos = { x = -1369.548, y = 326.075, z = 3654.057 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 86
	[109069] = { config_id = 109069, gadget_id = 70330241, pos = { x = -1367.863, y = 326.075, z = 3655.311 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 87
	[109070] = { config_id = 109070, gadget_id = 70330241, pos = { x = -1366.178, y = 326.075, z = 3656.563 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 88
	[109071] = { config_id = 109071, gadget_id = 70330241, pos = { x = -1364.493, y = 326.075, z = 3657.817 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 89
	[109072] = { config_id = 109072, gadget_id = 70330241, pos = { x = -1362.808, y = 326.075, z = 3659.070 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 91
	[109073] = { config_id = 109073, gadget_id = 70330241, pos = { x = -1375.035, y = 326.075, z = 3647.359 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 92
	[109074] = { config_id = 109074, gadget_id = 70330241, pos = { x = -1373.350, y = 326.075, z = 3648.612 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 93
	[109075] = { config_id = 109075, gadget_id = 70330241, pos = { x = -1371.665, y = 326.075, z = 3649.865 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 94
	[109076] = { config_id = 109076, gadget_id = 70330241, pos = { x = -1369.980, y = 326.075, z = 3651.119 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 95
	[109077] = { config_id = 109077, gadget_id = 70330241, pos = { x = -1368.294, y = 326.075, z = 3652.372 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 96
	[109078] = { config_id = 109078, gadget_id = 70330241, pos = { x = -1366.610, y = 326.075, z = 3653.625 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 97
	[109079] = { config_id = 109079, gadget_id = 70330241, pos = { x = -1364.924, y = 326.075, z = 3654.878 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 98
	[109080] = { config_id = 109080, gadget_id = 70330241, pos = { x = -1363.239, y = 326.075, z = 3656.132 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 99，这边验证用的，务必保证FloorCid + 80 等于这个 cid
	[109081] = { config_id = 109081, gadget_id = 70330241, pos = { x = -1361.554, y = 326.075, z = 3657.385 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 起始点,一定要配置，位置不是很重要，不要放任何Suite中
	[109082] = { config_id = 109082, gadget_id = 70330240, pos = { x = -1360.954, y = 325.180, z = 3662.183 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 树终点,一定要配置，位置不是很重要，不要放任何Suite中
	[109083] = { config_id = 109083, gadget_id = 70330242, pos = { x = -1363.928, y = 325.150, z = 3667.033 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 苗圃草Volume 后，尽量放在中间
	[109086] = { config_id = 109086, gadget_id = 70290530, pos = { x = -1373.308, y = 326.275, z = 3659.112 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 27, area_id = 23 },
	-- 苗圃草Volume 前，位置跟着树走
	[109087] = { config_id = 109087, gadget_id = 70290518, pos = { x = -1373.308, y = 326.275, z = 3659.112 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 27, area_id = 23 },
	[109088] = { config_id = 109088, gadget_id = 70290593, pos = { x = -1373.308, y = 326.275, z = 3659.112 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 27, area_id = 23 },
	[109089] = { config_id = 109089, gadget_id = 70211101, pos = { x = -1373.308, y = 326.075, z = 3659.112 }, rot = { x = 0.000, y = 323.360, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
	-- PlayRegion，离开时会失败
	[109084] = { config_id = 109084, shape = RegionShape.SPHERE, radius = 15, pos = { x = -1373.455, y = 325.324, z = 3659.061 }, area_id = 23 },
	-- InitRegion，进入时会加载玩法
	[109085] = { config_id = 109085, shape = RegionShape.SPHERE, radius = 100, pos = { x = -1373.455, y = 325.324, z = 3659.061 }, area_id = 23 }
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
		gadgets = { 109087 },
		regions = { 109084, 109085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 109087 },
		regions = { 109084, 109085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 109087 },
		regions = { 109084, 109085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 109087 },
		regions = { 109084, 109085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 109087 },
		regions = { 109084, 109085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 109087 },
		regions = { 109084, 109085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 109087 },
		regions = { 109084, 109085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 109087 },
		regions = { 109084, 109085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 109087 },
		regions = { 109084, 109085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 109087 },
		regions = { 109084, 109085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 109087 },
		regions = { 109084, 109085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 109087 },
		regions = { 109084, 109085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 109088, 109089 },
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
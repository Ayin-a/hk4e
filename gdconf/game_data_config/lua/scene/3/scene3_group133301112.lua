-- 基础信息
local base_info = {
	group_id = 133301112
}

-- Trigger变量
local defs = {
	gadget_StarCid = 112082,
	gadget_TreeCid = 112083,
	gadget_FloorCid = 112001,
	region_InitRegion = 112085,
	region_PlayRegion = 112084,
	quest_id = 7310609,
	gadget_Volume01 = 112087,
	gadget_Volume02 = 112086,
	cutSceneId = 82,
	gadget_Chest = 112089
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
	[112001] = { config_id = 112001, gadget_id = 70330241, pos = { x = -1472.169, y = 354.059, z = 2111.059 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 12
	[112002] = { config_id = 112002, gadget_id = 70330241, pos = { x = -1470.516, y = 354.059, z = 2109.763 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 13
	[112003] = { config_id = 112003, gadget_id = 70330241, pos = { x = -1468.864, y = 354.059, z = 2108.467 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 14
	[112004] = { config_id = 112004, gadget_id = 70330241, pos = { x = -1467.211, y = 354.059, z = 2107.172 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 15
	[112005] = { config_id = 112005, gadget_id = 70330241, pos = { x = -1465.559, y = 354.059, z = 2105.875 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 16
	[112006] = { config_id = 112006, gadget_id = 70330241, pos = { x = -1463.907, y = 354.059, z = 2104.579 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 17
	[112007] = { config_id = 112007, gadget_id = 70330241, pos = { x = -1462.254, y = 354.059, z = 2103.284 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 18
	[112008] = { config_id = 112008, gadget_id = 70330241, pos = { x = -1460.601, y = 354.059, z = 2101.988 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 19
	[112009] = { config_id = 112009, gadget_id = 70330241, pos = { x = -1458.949, y = 354.059, z = 2100.692 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 21
	[112010] = { config_id = 112010, gadget_id = 70330241, pos = { x = -1473.465, y = 354.059, z = 2109.406 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 22
	[112011] = { config_id = 112011, gadget_id = 70330241, pos = { x = -1471.812, y = 354.059, z = 2108.111 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 23
	[112012] = { config_id = 112012, gadget_id = 70330241, pos = { x = -1470.160, y = 354.059, z = 2106.814 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 24
	[112013] = { config_id = 112013, gadget_id = 70330241, pos = { x = -1468.508, y = 354.059, z = 2105.519 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 25
	[112014] = { config_id = 112014, gadget_id = 70330241, pos = { x = -1466.855, y = 354.059, z = 2104.223 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 26
	[112015] = { config_id = 112015, gadget_id = 70330241, pos = { x = -1465.203, y = 354.059, z = 2102.927 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 27
	[112016] = { config_id = 112016, gadget_id = 70330241, pos = { x = -1463.550, y = 354.059, z = 2101.631 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 28
	[112017] = { config_id = 112017, gadget_id = 70330241, pos = { x = -1461.898, y = 354.059, z = 2100.335 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 29
	[112018] = { config_id = 112018, gadget_id = 70330241, pos = { x = -1460.245, y = 354.059, z = 2099.040 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 31
	[112019] = { config_id = 112019, gadget_id = 70330241, pos = { x = -1474.761, y = 354.059, z = 2107.754 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 32
	[112020] = { config_id = 112020, gadget_id = 70330241, pos = { x = -1473.108, y = 354.059, z = 2106.458 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 33
	[112021] = { config_id = 112021, gadget_id = 70330241, pos = { x = -1471.456, y = 354.059, z = 2105.162 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 34
	[112022] = { config_id = 112022, gadget_id = 70330241, pos = { x = -1469.803, y = 354.059, z = 2103.866 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 35
	[112023] = { config_id = 112023, gadget_id = 70330241, pos = { x = -1468.151, y = 354.059, z = 2102.570 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 36
	[112024] = { config_id = 112024, gadget_id = 70330241, pos = { x = -1466.499, y = 354.059, z = 2101.274 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 37
	[112025] = { config_id = 112025, gadget_id = 70330241, pos = { x = -1464.846, y = 354.059, z = 2099.979 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 38
	[112026] = { config_id = 112026, gadget_id = 70330241, pos = { x = -1463.193, y = 354.059, z = 2098.683 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 39
	[112027] = { config_id = 112027, gadget_id = 70330241, pos = { x = -1461.541, y = 354.059, z = 2097.387 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 41
	[112028] = { config_id = 112028, gadget_id = 70330241, pos = { x = -1476.057, y = 354.059, z = 2106.102 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 42
	[112029] = { config_id = 112029, gadget_id = 70330241, pos = { x = -1474.404, y = 354.059, z = 2104.806 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 43
	[112030] = { config_id = 112030, gadget_id = 70330241, pos = { x = -1472.751, y = 354.059, z = 2103.509 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 44
	[112031] = { config_id = 112031, gadget_id = 70330241, pos = { x = -1471.099, y = 354.059, z = 2102.214 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 45
	[112032] = { config_id = 112032, gadget_id = 70330241, pos = { x = -1469.447, y = 354.059, z = 2100.918 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 46
	[112033] = { config_id = 112033, gadget_id = 70330241, pos = { x = -1467.794, y = 354.059, z = 2099.622 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 47
	[112034] = { config_id = 112034, gadget_id = 70330241, pos = { x = -1466.142, y = 354.059, z = 2098.326 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 48
	[112035] = { config_id = 112035, gadget_id = 70330241, pos = { x = -1464.489, y = 354.059, z = 2097.031 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 49
	[112036] = { config_id = 112036, gadget_id = 70330241, pos = { x = -1462.837, y = 354.059, z = 2095.734 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 51
	[112037] = { config_id = 112037, gadget_id = 70330241, pos = { x = -1477.353, y = 354.059, z = 2104.448 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 52
	[112038] = { config_id = 112038, gadget_id = 70330241, pos = { x = -1475.700, y = 354.059, z = 2103.153 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 53
	[112039] = { config_id = 112039, gadget_id = 70330241, pos = { x = -1474.048, y = 354.059, z = 2101.858 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 54
	[112040] = { config_id = 112040, gadget_id = 70330241, pos = { x = -1472.395, y = 354.059, z = 2100.561 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 55
	[112041] = { config_id = 112041, gadget_id = 70330241, pos = { x = -1470.743, y = 354.059, z = 2099.266 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 56
	[112042] = { config_id = 112042, gadget_id = 70330241, pos = { x = -1469.090, y = 354.059, z = 2097.970 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 57
	[112043] = { config_id = 112043, gadget_id = 70330241, pos = { x = -1467.438, y = 354.059, z = 2096.674 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 58
	[112044] = { config_id = 112044, gadget_id = 70330241, pos = { x = -1465.785, y = 354.059, z = 2095.377 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 59
	[112045] = { config_id = 112045, gadget_id = 70330241, pos = { x = -1464.133, y = 354.059, z = 2094.082 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 61
	[112046] = { config_id = 112046, gadget_id = 70330241, pos = { x = -1478.648, y = 354.059, z = 2102.796 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 62
	[112047] = { config_id = 112047, gadget_id = 70330241, pos = { x = -1476.996, y = 354.059, z = 2101.501 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 63
	[112048] = { config_id = 112048, gadget_id = 70330241, pos = { x = -1475.343, y = 354.059, z = 2100.205 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 64
	[112049] = { config_id = 112049, gadget_id = 70330241, pos = { x = -1473.691, y = 354.059, z = 2098.909 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 65
	[112050] = { config_id = 112050, gadget_id = 70330241, pos = { x = -1472.038, y = 354.059, z = 2097.613 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 66
	[112051] = { config_id = 112051, gadget_id = 70330241, pos = { x = -1470.386, y = 354.059, z = 2096.317 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 67
	[112052] = { config_id = 112052, gadget_id = 70330241, pos = { x = -1468.733, y = 354.059, z = 2095.021 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 68
	[112053] = { config_id = 112053, gadget_id = 70330241, pos = { x = -1467.081, y = 354.059, z = 2093.725 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 69
	[112054] = { config_id = 112054, gadget_id = 70330241, pos = { x = -1465.429, y = 354.059, z = 2092.429 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 71
	[112055] = { config_id = 112055, gadget_id = 70330241, pos = { x = -1479.945, y = 354.059, z = 2101.144 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 72
	[112056] = { config_id = 112056, gadget_id = 70330241, pos = { x = -1478.292, y = 354.059, z = 2099.848 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 73
	[112057] = { config_id = 112057, gadget_id = 70330241, pos = { x = -1476.639, y = 354.059, z = 2098.552 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 74
	[112058] = { config_id = 112058, gadget_id = 70330241, pos = { x = -1474.987, y = 354.059, z = 2097.256 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 75
	[112059] = { config_id = 112059, gadget_id = 70330241, pos = { x = -1473.334, y = 354.059, z = 2095.961 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 76
	[112060] = { config_id = 112060, gadget_id = 70330241, pos = { x = -1471.682, y = 354.059, z = 2094.665 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 77
	[112061] = { config_id = 112061, gadget_id = 70330241, pos = { x = -1470.029, y = 354.059, z = 2093.369 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 78
	[112062] = { config_id = 112062, gadget_id = 70330241, pos = { x = -1468.377, y = 354.059, z = 2092.073 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 79
	[112063] = { config_id = 112063, gadget_id = 70330241, pos = { x = -1466.724, y = 354.059, z = 2090.777 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 81
	[112064] = { config_id = 112064, gadget_id = 70330241, pos = { x = -1481.240, y = 354.059, z = 2099.492 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 82
	[112065] = { config_id = 112065, gadget_id = 70330241, pos = { x = -1479.588, y = 354.059, z = 2098.196 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 83
	[112066] = { config_id = 112066, gadget_id = 70330241, pos = { x = -1477.935, y = 354.059, z = 2096.899 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 84
	[112067] = { config_id = 112067, gadget_id = 70330241, pos = { x = -1476.283, y = 354.059, z = 2095.604 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 85
	[112068] = { config_id = 112068, gadget_id = 70330241, pos = { x = -1474.630, y = 354.059, z = 2094.308 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 86
	[112069] = { config_id = 112069, gadget_id = 70330241, pos = { x = -1472.978, y = 354.059, z = 2093.012 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 87
	[112070] = { config_id = 112070, gadget_id = 70330241, pos = { x = -1471.325, y = 354.059, z = 2091.716 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 88
	[112071] = { config_id = 112071, gadget_id = 70330241, pos = { x = -1469.673, y = 354.059, z = 2090.420 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 89
	[112072] = { config_id = 112072, gadget_id = 70330241, pos = { x = -1468.020, y = 354.059, z = 2089.125 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 91
	[112073] = { config_id = 112073, gadget_id = 70330241, pos = { x = -1482.536, y = 354.059, z = 2097.840 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 92
	[112074] = { config_id = 112074, gadget_id = 70330241, pos = { x = -1480.883, y = 354.059, z = 2096.543 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 93
	[112075] = { config_id = 112075, gadget_id = 70330241, pos = { x = -1479.231, y = 354.059, z = 2095.248 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 94
	[112076] = { config_id = 112076, gadget_id = 70330241, pos = { x = -1477.579, y = 354.059, z = 2093.951 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 95
	[112077] = { config_id = 112077, gadget_id = 70330241, pos = { x = -1475.926, y = 354.059, z = 2092.655 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 96
	[112078] = { config_id = 112078, gadget_id = 70330241, pos = { x = -1474.274, y = 354.059, z = 2091.360 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 97
	[112079] = { config_id = 112079, gadget_id = 70330241, pos = { x = -1472.621, y = 354.059, z = 2090.064 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 98
	[112080] = { config_id = 112080, gadget_id = 70330241, pos = { x = -1470.969, y = 354.059, z = 2088.768 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 99，这边验证用的，务必保证FloorCid + 80 等于这个 cid
	[112081] = { config_id = 112081, gadget_id = 70330241, pos = { x = -1469.316, y = 354.059, z = 2087.472 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 起始点,一定要配置，位置不是很重要，不要放任何Suite中
	[112082] = { config_id = 112082, gadget_id = 70330240, pos = { x = -1464.529, y = 353.164, z = 2088.156 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 树终点,一定要配置，位置不是很重要，不要放任何Suite中
	[112083] = { config_id = 112083, gadget_id = 70330242, pos = { x = -1460.633, y = 353.134, z = 2092.301 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 30, area_id = 21, is_enable_interact = false },
	-- 苗圃草Volume 后，尽量放在中间
	[112086] = { config_id = 112086, gadget_id = 70290530, pos = { x = -1470.743, y = 354.259, z = 2099.266 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 27, area_id = 21 },
	-- 苗圃草Volume 前，位置跟着树走
	[112087] = { config_id = 112087, gadget_id = 70290518, pos = { x = -1470.743, y = 354.259, z = 2099.266 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 27, area_id = 21 },
	[112088] = { config_id = 112088, gadget_id = 70290593, pos = { x = -1470.743, y = 354.259, z = 2099.266 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 27, area_id = 21 },
	[112089] = { config_id = 112089, gadget_id = 70211101, pos = { x = -1470.743, y = 354.059, z = 2099.266 }, rot = { x = 0.000, y = 38.104, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
	-- PlayRegion，离开时会失败
	[112084] = { config_id = 112084, shape = RegionShape.SPHERE, radius = 15, pos = { x = -1470.831, y = 353.308, z = 2099.395 }, area_id = 21 },
	-- InitRegion，进入时会加载玩法
	[112085] = { config_id = 112085, shape = RegionShape.SPHERE, radius = 100, pos = { x = -1470.831, y = 353.308, z = 2099.395 }, area_id = 21 }
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
		gadgets = { 112087 },
		regions = { 112084, 112085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 112087 },
		regions = { 112084, 112085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 112087 },
		regions = { 112084, 112085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 112087 },
		regions = { 112084, 112085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 112087 },
		regions = { 112084, 112085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 112087 },
		regions = { 112084, 112085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 112087 },
		regions = { 112084, 112085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 112087 },
		regions = { 112084, 112085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 112087 },
		regions = { 112084, 112085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 112087 },
		regions = { 112084, 112085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 112087 },
		regions = { 112084, 112085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 112087 },
		regions = { 112084, 112085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 112088, 112089 },
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
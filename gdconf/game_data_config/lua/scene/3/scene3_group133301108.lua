-- 基础信息
local base_info = {
	group_id = 133301108
}

-- Trigger变量
local defs = {
	gadget_StarCid = 108082,
	gadget_TreeCid = 108083,
	gadget_FloorCid = 108001,
	region_InitRegion = 108085,
	region_PlayRegion = 108084,
	quest_id = 7310605,
	gadget_Volume01 = 108087,
	gadget_Volume02 = 108086,
	cutSceneId = 78,
	gadget_Chest = 108089
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
	[108001] = { config_id = 108001, gadget_id = 70330241, pos = { x = -1166.124, y = 265.534, z = 3332.590 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 12
	[108002] = { config_id = 108002, gadget_id = 70330241, pos = { x = -1164.840, y = 265.534, z = 3334.253 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 13
	[108003] = { config_id = 108003, gadget_id = 70330241, pos = { x = -1163.557, y = 265.534, z = 3335.916 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 14
	[108004] = { config_id = 108004, gadget_id = 70330241, pos = { x = -1162.274, y = 265.534, z = 3337.577 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 15
	[108005] = { config_id = 108005, gadget_id = 70330241, pos = { x = -1160.990, y = 265.534, z = 3339.240 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 16
	[108006] = { config_id = 108006, gadget_id = 70330241, pos = { x = -1159.708, y = 265.534, z = 3340.902 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 17
	[108007] = { config_id = 108007, gadget_id = 70330241, pos = { x = -1158.424, y = 265.534, z = 3342.564 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 18
	[108008] = { config_id = 108008, gadget_id = 70330241, pos = { x = -1157.140, y = 265.534, z = 3344.227 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 19
	[108009] = { config_id = 108009, gadget_id = 70330241, pos = { x = -1155.857, y = 265.534, z = 3345.890 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 21
	[108010] = { config_id = 108010, gadget_id = 70330241, pos = { x = -1164.462, y = 265.534, z = 3331.307 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 22
	[108011] = { config_id = 108011, gadget_id = 70330241, pos = { x = -1163.177, y = 265.534, z = 3332.970 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 23
	[108012] = { config_id = 108012, gadget_id = 70330241, pos = { x = -1161.894, y = 265.534, z = 3334.632 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 24
	[108013] = { config_id = 108013, gadget_id = 70330241, pos = { x = -1160.612, y = 265.534, z = 3336.295 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 25
	[108014] = { config_id = 108014, gadget_id = 70330241, pos = { x = -1159.328, y = 265.534, z = 3337.956 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 26
	[108015] = { config_id = 108015, gadget_id = 70330241, pos = { x = -1158.046, y = 265.534, z = 3339.618 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 27
	[108016] = { config_id = 108016, gadget_id = 70330241, pos = { x = -1156.762, y = 265.534, z = 3341.281 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 28
	[108017] = { config_id = 108017, gadget_id = 70330241, pos = { x = -1155.478, y = 265.534, z = 3342.944 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 29
	[108018] = { config_id = 108018, gadget_id = 70330241, pos = { x = -1154.195, y = 265.534, z = 3344.606 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 31
	[108019] = { config_id = 108019, gadget_id = 70330241, pos = { x = -1162.800, y = 265.534, z = 3330.023 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 32
	[108020] = { config_id = 108020, gadget_id = 70330241, pos = { x = -1161.516, y = 265.534, z = 3331.686 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 33
	[108021] = { config_id = 108021, gadget_id = 70330241, pos = { x = -1160.232, y = 265.534, z = 3333.348 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 34
	[108022] = { config_id = 108022, gadget_id = 70330241, pos = { x = -1158.950, y = 265.534, z = 3335.012 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 35
	[108023] = { config_id = 108023, gadget_id = 70330241, pos = { x = -1157.666, y = 265.534, z = 3336.674 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 36
	[108024] = { config_id = 108024, gadget_id = 70330241, pos = { x = -1156.383, y = 265.534, z = 3338.335 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 37
	[108025] = { config_id = 108025, gadget_id = 70330241, pos = { x = -1155.100, y = 265.534, z = 3339.998 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 38
	[108026] = { config_id = 108026, gadget_id = 70330241, pos = { x = -1153.816, y = 265.534, z = 3341.661 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 39
	[108027] = { config_id = 108027, gadget_id = 70330241, pos = { x = -1152.533, y = 265.534, z = 3343.323 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 41
	[108028] = { config_id = 108028, gadget_id = 70330241, pos = { x = -1161.137, y = 265.534, z = 3328.740 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 42
	[108029] = { config_id = 108029, gadget_id = 70330241, pos = { x = -1159.854, y = 265.534, z = 3330.403 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 43
	[108030] = { config_id = 108030, gadget_id = 70330241, pos = { x = -1158.570, y = 265.534, z = 3332.066 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 44
	[108031] = { config_id = 108031, gadget_id = 70330241, pos = { x = -1157.287, y = 265.534, z = 3333.728 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 45
	[108032] = { config_id = 108032, gadget_id = 70330241, pos = { x = -1156.004, y = 265.534, z = 3335.389 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 46
	[108033] = { config_id = 108033, gadget_id = 70330241, pos = { x = -1154.720, y = 265.534, z = 3337.052 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 47
	[108034] = { config_id = 108034, gadget_id = 70330241, pos = { x = -1153.437, y = 265.534, z = 3338.715 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 48
	[108035] = { config_id = 108035, gadget_id = 70330241, pos = { x = -1152.154, y = 265.534, z = 3340.377 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 49
	[108036] = { config_id = 108036, gadget_id = 70330241, pos = { x = -1150.870, y = 265.534, z = 3342.039 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 51
	[108037] = { config_id = 108037, gadget_id = 70330241, pos = { x = -1159.475, y = 265.534, z = 3327.457 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 52
	[108038] = { config_id = 108038, gadget_id = 70330241, pos = { x = -1158.191, y = 265.534, z = 3329.120 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 53
	[108039] = { config_id = 108039, gadget_id = 70330241, pos = { x = -1156.908, y = 265.534, z = 3330.783 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 54
	[108040] = { config_id = 108040, gadget_id = 70330241, pos = { x = -1155.624, y = 265.534, z = 3332.443 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 55
	[108041] = { config_id = 108041, gadget_id = 70330241, pos = { x = -1154.341, y = 265.534, z = 3334.107 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 56
	[108042] = { config_id = 108042, gadget_id = 70330241, pos = { x = -1153.058, y = 265.534, z = 3335.769 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 57
	[108043] = { config_id = 108043, gadget_id = 70330241, pos = { x = -1151.775, y = 265.534, z = 3337.431 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 58
	[108044] = { config_id = 108044, gadget_id = 70330241, pos = { x = -1150.491, y = 265.534, z = 3339.094 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 59
	[108045] = { config_id = 108045, gadget_id = 70330241, pos = { x = -1149.208, y = 265.534, z = 3340.756 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 61
	[108046] = { config_id = 108046, gadget_id = 70330241, pos = { x = -1157.812, y = 265.534, z = 3326.173 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 62
	[108047] = { config_id = 108047, gadget_id = 70330241, pos = { x = -1156.529, y = 265.534, z = 3327.836 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 63
	[108048] = { config_id = 108048, gadget_id = 70330241, pos = { x = -1155.245, y = 265.534, z = 3329.500 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 64
	[108049] = { config_id = 108049, gadget_id = 70330241, pos = { x = -1153.962, y = 265.534, z = 3331.161 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 65
	[108050] = { config_id = 108050, gadget_id = 70330241, pos = { x = -1152.679, y = 265.534, z = 3332.824 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 66
	[108051] = { config_id = 108051, gadget_id = 70330241, pos = { x = -1151.396, y = 265.534, z = 3334.485 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 67
	[108052] = { config_id = 108052, gadget_id = 70330241, pos = { x = -1150.112, y = 265.534, z = 3336.148 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 68
	[108053] = { config_id = 108053, gadget_id = 70330241, pos = { x = -1148.828, y = 265.534, z = 3337.810 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 69
	[108054] = { config_id = 108054, gadget_id = 70330241, pos = { x = -1147.546, y = 265.534, z = 3339.473 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 71
	[108055] = { config_id = 108055, gadget_id = 70330241, pos = { x = -1156.151, y = 265.534, z = 3324.890 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 72
	[108056] = { config_id = 108056, gadget_id = 70330241, pos = { x = -1154.866, y = 265.534, z = 3326.553 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 73
	[108057] = { config_id = 108057, gadget_id = 70330241, pos = { x = -1153.583, y = 265.534, z = 3328.215 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 74
	[108058] = { config_id = 108058, gadget_id = 70330241, pos = { x = -1152.300, y = 265.534, z = 3329.878 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 75
	[108059] = { config_id = 108059, gadget_id = 70330241, pos = { x = -1151.016, y = 265.534, z = 3331.540 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 76
	[108060] = { config_id = 108060, gadget_id = 70330241, pos = { x = -1149.734, y = 265.534, z = 3333.202 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 77
	[108061] = { config_id = 108061, gadget_id = 70330241, pos = { x = -1148.450, y = 265.534, z = 3334.864 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 78
	[108062] = { config_id = 108062, gadget_id = 70330241, pos = { x = -1147.167, y = 265.534, z = 3336.527 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 79
	[108063] = { config_id = 108063, gadget_id = 70330241, pos = { x = -1145.884, y = 265.534, z = 3338.190 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 81
	[108064] = { config_id = 108064, gadget_id = 70330241, pos = { x = -1154.488, y = 265.534, z = 3323.607 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 82
	[108065] = { config_id = 108065, gadget_id = 70330241, pos = { x = -1153.204, y = 265.534, z = 3325.271 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 83
	[108066] = { config_id = 108066, gadget_id = 70330241, pos = { x = -1151.921, y = 265.534, z = 3326.932 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 84
	[108067] = { config_id = 108067, gadget_id = 70330241, pos = { x = -1150.637, y = 265.534, z = 3328.594 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 85
	[108068] = { config_id = 108068, gadget_id = 70330241, pos = { x = -1149.355, y = 265.534, z = 3330.257 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 86
	[108069] = { config_id = 108069, gadget_id = 70330241, pos = { x = -1148.072, y = 265.534, z = 3331.918 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 87
	[108070] = { config_id = 108070, gadget_id = 70330241, pos = { x = -1146.788, y = 265.534, z = 3333.582 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 88
	[108071] = { config_id = 108071, gadget_id = 70330241, pos = { x = -1145.505, y = 265.534, z = 3335.244 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 89
	[108072] = { config_id = 108072, gadget_id = 70330241, pos = { x = -1144.221, y = 265.534, z = 3336.907 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 91
	[108073] = { config_id = 108073, gadget_id = 70330241, pos = { x = -1152.826, y = 265.534, z = 3322.324 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 92
	[108074] = { config_id = 108074, gadget_id = 70330241, pos = { x = -1151.542, y = 265.534, z = 3323.987 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 93
	[108075] = { config_id = 108075, gadget_id = 70330241, pos = { x = -1150.259, y = 265.534, z = 3325.650 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 94
	[108076] = { config_id = 108076, gadget_id = 70330241, pos = { x = -1148.975, y = 265.534, z = 3327.312 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 95
	[108077] = { config_id = 108077, gadget_id = 70330241, pos = { x = -1147.692, y = 265.534, z = 3328.974 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 96
	[108078] = { config_id = 108078, gadget_id = 70330241, pos = { x = -1146.409, y = 265.534, z = 3330.635 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 97
	[108079] = { config_id = 108079, gadget_id = 70330241, pos = { x = -1145.125, y = 265.534, z = 3332.298 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 98
	[108080] = { config_id = 108080, gadget_id = 70330241, pos = { x = -1143.842, y = 265.534, z = 3333.960 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 99，这边验证用的，务必保证FloorCid + 80 等于这个 cid
	[108081] = { config_id = 108081, gadget_id = 70330241, pos = { x = -1142.559, y = 265.534, z = 3335.623 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 起始点,一定要配置，位置不是很重要，不要放任何Suite中
	[108082] = { config_id = 108082, gadget_id = 70330240, pos = { x = -1143.279, y = 264.639, z = 3340.405 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 树终点,一定要配置，位置不是很重要，不要放任何Suite中
	[108083] = { config_id = 108083, gadget_id = 70330242, pos = { x = -1147.454, y = 264.609, z = 3344.268 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 30, area_id = 23, is_enable_interact = false },
	-- 苗圃草Volume 后，尽量放在中间
	[108086] = { config_id = 108086, gadget_id = 70290530, pos = { x = -1154.341, y = 265.734, z = 3334.107 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 27, area_id = 23 },
	-- 苗圃草Volume 前，位置跟着树走
	[108087] = { config_id = 108087, gadget_id = 70290518, pos = { x = -1154.341, y = 265.734, z = 3334.107 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 27, area_id = 23 },
	[108088] = { config_id = 108088, gadget_id = 70290593, pos = { x = -1154.341, y = 265.734, z = 3334.107 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 27, area_id = 23 },
	[108089] = { config_id = 108089, gadget_id = 70211101, pos = { x = -1154.341, y = 265.534, z = 3334.107 }, rot = { x = 0.000, y = 307.668, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
	-- PlayRegion，离开时会失败
	[108084] = { config_id = 108084, shape = RegionShape.SPHERE, radius = 15, pos = { x = -1154.469, y = 264.783, z = 3334.018 }, area_id = 23 },
	-- InitRegion，进入时会加载玩法
	[108085] = { config_id = 108085, shape = RegionShape.SPHERE, radius = 100, pos = { x = -1154.469, y = 264.783, z = 3334.018 }, area_id = 23 }
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
		gadgets = { 108087 },
		regions = { 108084, 108085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 108087 },
		regions = { 108084, 108085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 108087 },
		regions = { 108084, 108085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 108087 },
		regions = { 108084, 108085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 108087 },
		regions = { 108084, 108085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 108087 },
		regions = { 108084, 108085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 108087 },
		regions = { 108084, 108085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 108087 },
		regions = { 108084, 108085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 108087 },
		regions = { 108084, 108085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 108087 },
		regions = { 108084, 108085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 108087 },
		regions = { 108084, 108085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 108087 },
		regions = { 108084, 108085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 108088, 108089 },
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
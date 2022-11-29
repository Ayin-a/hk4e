-- 基础信息
local base_info = {
	group_id = 133301206
}

-- Trigger变量
local defs = {
	gadget_StarCid = 206084,
	gadget_TreeCid = 206085,
	gadget_FloorCid = 206001,
	region_InitRegion = 206083,
	region_PlayRegion = 206082,
	quest_id = 7310602,
	gadget_Volume01 = 206086,
	gadget_Volume02 = 206088,
	cutSceneId = 75,
	gadget_Chest = 206089
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
	[206001] = { config_id = 206001, gadget_id = 70330241, pos = { x = -256.205, y = 286.324, z = 3690.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 12
	[206002] = { config_id = 206002, gadget_id = 70330241, pos = { x = -254.105, y = 286.317, z = 3690.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 13
	[206003] = { config_id = 206003, gadget_id = 70330241, pos = { x = -252.005, y = 286.268, z = 3690.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 14
	[206004] = { config_id = 206004, gadget_id = 70330241, pos = { x = -249.905, y = 286.170, z = 3690.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 15
	[206005] = { config_id = 206005, gadget_id = 70330241, pos = { x = -247.805, y = 286.170, z = 3690.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 16
	[206006] = { config_id = 206006, gadget_id = 70330241, pos = { x = -245.705, y = 286.170, z = 3690.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 17
	[206007] = { config_id = 206007, gadget_id = 70330241, pos = { x = -243.605, y = 286.170, z = 3690.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 18
	[206008] = { config_id = 206008, gadget_id = 70330241, pos = { x = -241.505, y = 286.170, z = 3690.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 19
	[206009] = { config_id = 206009, gadget_id = 70330241, pos = { x = -239.405, y = 286.170, z = 3690.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 21
	[206010] = { config_id = 206010, gadget_id = 70330241, pos = { x = -256.205, y = 286.276, z = 3688.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 22
	[206011] = { config_id = 206011, gadget_id = 70330241, pos = { x = -254.105, y = 286.283, z = 3688.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 23
	[206012] = { config_id = 206012, gadget_id = 70330241, pos = { x = -252.005, y = 286.170, z = 3688.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 24
	[206013] = { config_id = 206013, gadget_id = 70330241, pos = { x = -249.905, y = 286.170, z = 3688.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 25
	[206014] = { config_id = 206014, gadget_id = 70330241, pos = { x = -247.805, y = 286.170, z = 3688.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 26
	[206015] = { config_id = 206015, gadget_id = 70330241, pos = { x = -245.705, y = 286.170, z = 3688.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 27
	[206016] = { config_id = 206016, gadget_id = 70330241, pos = { x = -243.605, y = 286.170, z = 3688.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 28
	[206017] = { config_id = 206017, gadget_id = 70330241, pos = { x = -241.505, y = 286.170, z = 3688.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 29
	[206018] = { config_id = 206018, gadget_id = 70330241, pos = { x = -239.405, y = 286.170, z = 3688.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 31
	[206019] = { config_id = 206019, gadget_id = 70330241, pos = { x = -256.205, y = 286.170, z = 3685.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 32
	[206020] = { config_id = 206020, gadget_id = 70330241, pos = { x = -254.105, y = 286.170, z = 3685.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 33
	[206021] = { config_id = 206021, gadget_id = 70330241, pos = { x = -252.005, y = 286.170, z = 3685.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 34
	[206022] = { config_id = 206022, gadget_id = 70330241, pos = { x = -249.905, y = 286.170, z = 3685.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 35
	[206023] = { config_id = 206023, gadget_id = 70330241, pos = { x = -247.805, y = 286.170, z = 3685.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 36
	[206024] = { config_id = 206024, gadget_id = 70330241, pos = { x = -245.705, y = 286.170, z = 3685.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 37
	[206025] = { config_id = 206025, gadget_id = 70330241, pos = { x = -243.605, y = 286.170, z = 3685.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 38
	[206026] = { config_id = 206026, gadget_id = 70330241, pos = { x = -241.505, y = 286.170, z = 3685.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 39
	[206027] = { config_id = 206027, gadget_id = 70330241, pos = { x = -239.405, y = 286.170, z = 3685.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 41
	[206028] = { config_id = 206028, gadget_id = 70330241, pos = { x = -256.205, y = 286.170, z = 3683.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 42
	[206029] = { config_id = 206029, gadget_id = 70330241, pos = { x = -254.105, y = 286.170, z = 3683.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 43
	[206030] = { config_id = 206030, gadget_id = 70330241, pos = { x = -252.005, y = 286.170, z = 3683.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 44
	[206031] = { config_id = 206031, gadget_id = 70330241, pos = { x = -249.905, y = 286.170, z = 3683.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 45
	[206032] = { config_id = 206032, gadget_id = 70330241, pos = { x = -247.805, y = 286.170, z = 3683.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 46
	[206033] = { config_id = 206033, gadget_id = 70330241, pos = { x = -245.705, y = 286.170, z = 3683.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 47
	[206034] = { config_id = 206034, gadget_id = 70330241, pos = { x = -243.605, y = 286.170, z = 3683.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 48
	[206035] = { config_id = 206035, gadget_id = 70330241, pos = { x = -241.505, y = 286.170, z = 3683.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 49
	[206036] = { config_id = 206036, gadget_id = 70330241, pos = { x = -239.405, y = 286.170, z = 3683.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 51
	[206037] = { config_id = 206037, gadget_id = 70330241, pos = { x = -256.205, y = 286.170, z = 3681.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 52
	[206038] = { config_id = 206038, gadget_id = 70330241, pos = { x = -254.105, y = 286.170, z = 3681.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 53
	[206039] = { config_id = 206039, gadget_id = 70330241, pos = { x = -252.005, y = 286.170, z = 3681.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 54
	[206040] = { config_id = 206040, gadget_id = 70330241, pos = { x = -249.905, y = 286.170, z = 3681.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 55
	[206041] = { config_id = 206041, gadget_id = 70330241, pos = { x = -247.805, y = 286.170, z = 3681.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 56
	[206042] = { config_id = 206042, gadget_id = 70330241, pos = { x = -245.705, y = 286.170, z = 3681.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 57
	[206043] = { config_id = 206043, gadget_id = 70330241, pos = { x = -243.605, y = 286.170, z = 3681.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 58
	[206044] = { config_id = 206044, gadget_id = 70330241, pos = { x = -241.505, y = 286.170, z = 3681.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 59
	[206045] = { config_id = 206045, gadget_id = 70330241, pos = { x = -239.405, y = 286.170, z = 3681.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 61
	[206046] = { config_id = 206046, gadget_id = 70330241, pos = { x = -256.205, y = 286.170, z = 3679.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 62
	[206047] = { config_id = 206047, gadget_id = 70330241, pos = { x = -254.105, y = 286.170, z = 3679.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 63
	[206048] = { config_id = 206048, gadget_id = 70330241, pos = { x = -252.005, y = 286.170, z = 3679.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 64
	[206049] = { config_id = 206049, gadget_id = 70330241, pos = { x = -249.905, y = 286.170, z = 3679.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 65
	[206050] = { config_id = 206050, gadget_id = 70330241, pos = { x = -247.805, y = 286.170, z = 3679.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 66
	[206051] = { config_id = 206051, gadget_id = 70330241, pos = { x = -245.705, y = 286.170, z = 3679.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 67
	[206052] = { config_id = 206052, gadget_id = 70330241, pos = { x = -243.605, y = 286.170, z = 3679.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 68
	[206053] = { config_id = 206053, gadget_id = 70330241, pos = { x = -241.505, y = 286.170, z = 3679.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 69
	[206054] = { config_id = 206054, gadget_id = 70330241, pos = { x = -239.405, y = 286.170, z = 3679.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 71
	[206055] = { config_id = 206055, gadget_id = 70330241, pos = { x = -256.205, y = 286.170, z = 3677.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 72
	[206056] = { config_id = 206056, gadget_id = 70330241, pos = { x = -254.105, y = 286.170, z = 3677.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 73
	[206057] = { config_id = 206057, gadget_id = 70330241, pos = { x = -252.005, y = 286.170, z = 3677.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 74
	[206058] = { config_id = 206058, gadget_id = 70330241, pos = { x = -249.905, y = 286.170, z = 3677.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 75
	[206059] = { config_id = 206059, gadget_id = 70330241, pos = { x = -247.805, y = 286.170, z = 3677.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 76
	[206060] = { config_id = 206060, gadget_id = 70330241, pos = { x = -245.705, y = 286.170, z = 3677.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 77
	[206061] = { config_id = 206061, gadget_id = 70330241, pos = { x = -243.605, y = 286.170, z = 3677.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 78
	[206062] = { config_id = 206062, gadget_id = 70330241, pos = { x = -241.505, y = 286.170, z = 3677.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 79
	[206063] = { config_id = 206063, gadget_id = 70330241, pos = { x = -239.405, y = 286.170, z = 3677.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 81
	[206064] = { config_id = 206064, gadget_id = 70330241, pos = { x = -256.205, y = 286.170, z = 3675.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 82
	[206065] = { config_id = 206065, gadget_id = 70330241, pos = { x = -254.105, y = 286.170, z = 3675.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 83
	[206066] = { config_id = 206066, gadget_id = 70330241, pos = { x = -252.005, y = 286.170, z = 3675.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 84
	[206067] = { config_id = 206067, gadget_id = 70330241, pos = { x = -249.905, y = 286.170, z = 3675.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 85
	[206068] = { config_id = 206068, gadget_id = 70330241, pos = { x = -247.805, y = 286.170, z = 3675.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 86
	[206069] = { config_id = 206069, gadget_id = 70330241, pos = { x = -245.705, y = 286.170, z = 3675.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 87
	[206070] = { config_id = 206070, gadget_id = 70330241, pos = { x = -243.605, y = 286.170, z = 3675.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 88
	[206071] = { config_id = 206071, gadget_id = 70330241, pos = { x = -241.505, y = 286.170, z = 3675.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 89
	[206072] = { config_id = 206072, gadget_id = 70330241, pos = { x = -239.405, y = 286.170, z = 3675.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 91
	[206073] = { config_id = 206073, gadget_id = 70330241, pos = { x = -256.205, y = 286.170, z = 3673.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 92
	[206074] = { config_id = 206074, gadget_id = 70330241, pos = { x = -254.105, y = 286.170, z = 3673.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 93
	[206075] = { config_id = 206075, gadget_id = 70330241, pos = { x = -252.005, y = 286.170, z = 3673.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 94
	[206076] = { config_id = 206076, gadget_id = 70330241, pos = { x = -249.905, y = 286.170, z = 3673.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 95
	[206077] = { config_id = 206077, gadget_id = 70330241, pos = { x = -247.805, y = 286.170, z = 3673.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 96
	[206078] = { config_id = 206078, gadget_id = 70330241, pos = { x = -245.705, y = 286.170, z = 3673.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 97
	[206079] = { config_id = 206079, gadget_id = 70330241, pos = { x = -243.605, y = 286.170, z = 3673.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 98
	[206080] = { config_id = 206080, gadget_id = 70330241, pos = { x = -241.505, y = 286.170, z = 3673.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 99，这边验证用的，务必保证FloorCid + 80 等于这个 cid
	[206081] = { config_id = 206081, gadget_id = 70330241, pos = { x = -239.405, y = 286.170, z = 3673.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 起始点,一定要配置，位置不是很重要，不要放任何Suite中
	[206084] = { config_id = 206084, gadget_id = 70330240, pos = { x = -236.060, y = 285.275, z = 3676.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 树终点,一定要配置，位置不是很重要，不要放任何Suite中
	[206085] = { config_id = 206085, gadget_id = 70330242, pos = { x = -235.553, y = 285.246, z = 3682.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29, is_enable_interact = false },
	-- 苗圃草Volume 前，位置跟着树走
	[206086] = { config_id = 206086, gadget_id = 70290518, pos = { x = -247.805, y = 286.370, z = 3681.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	[206087] = { config_id = 206087, gadget_id = 70290593, pos = { x = -247.805, y = 286.370, z = 3681.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	-- 苗圃草Volume 后
	[206088] = { config_id = 206088, gadget_id = 70290530, pos = { x = -247.805, y = 286.370, z = 3681.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	[206089] = { config_id = 206089, gadget_id = 70211101, pos = { x = -247.805, y = 286.170, z = 3681.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 29 }
}

-- 区域
regions = {
	-- PlayRegion，离开时会失败
	[206082] = { config_id = 206082, shape = RegionShape.SPHERE, radius = 15, pos = { x = -247.954, y = 285.420, z = 3681.770 }, area_id = 29 },
	-- InitRegion，进入时会加载玩法
	[206083] = { config_id = 206083, shape = RegionShape.SPHERE, radius = 100, pos = { x = -247.954, y = 285.420, z = 3681.770 }, area_id = 29 }
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
	end_suite = 13,
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
		gadgets = { 206086 },
		regions = { 206082, 206083 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 206086 },
		regions = { 206082, 206083 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 206086 },
		regions = { 206082, 206083 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 206086 },
		regions = { 206082, 206083 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 206086 },
		regions = { 206082, 206083 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 206086 },
		regions = { 206082, 206083 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 206086 },
		regions = { 206082, 206083 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 206086 },
		regions = { 206082, 206083 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 206086 },
		regions = { 206082, 206083 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 206086 },
		regions = { 206082, 206083 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 206086 },
		regions = { 206082, 206083 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 206086 },
		regions = { 206082, 206083 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 206087, 206089 },
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
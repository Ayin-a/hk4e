-- 基础信息
local base_info = {
	group_id = 133301116
}

-- Trigger变量
local defs = {
	gadget_StarCid = 116082,
	gadget_TreeCid = 116083,
	gadget_FloorCid = 116001,
	region_InitRegion = 116085,
	region_PlayRegion = 116084,
	quest_id = 7310613,
	gadget_Volume01 = 116087,
	gadget_Volume02 = 116086,
	cutSceneId = 86,
	gadget_Chest = 116089
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
	[116001] = { config_id = 116001, gadget_id = 70330241, pos = { x = -741.250, y = 220.992, z = 3039.241 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 12
	[116002] = { config_id = 116002, gadget_id = 70330241, pos = { x = -739.717, y = 220.992, z = 3037.806 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 13
	[116003] = { config_id = 116003, gadget_id = 70330241, pos = { x = -738.184, y = 220.992, z = 3036.371 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 14
	[116004] = { config_id = 116004, gadget_id = 70330241, pos = { x = -736.651, y = 220.992, z = 3034.935 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 15
	[116005] = { config_id = 116005, gadget_id = 70330241, pos = { x = -735.118, y = 220.992, z = 3033.500 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 16
	[116006] = { config_id = 116006, gadget_id = 70330241, pos = { x = -733.585, y = 220.992, z = 3032.066 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 17
	[116007] = { config_id = 116007, gadget_id = 70330241, pos = { x = -732.052, y = 220.992, z = 3030.630 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 18
	[116008] = { config_id = 116008, gadget_id = 70330241, pos = { x = -730.519, y = 220.992, z = 3029.194 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 19
	[116009] = { config_id = 116009, gadget_id = 70330241, pos = { x = -728.986, y = 220.992, z = 3027.759 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 21
	[116010] = { config_id = 116010, gadget_id = 70330241, pos = { x = -742.686, y = 220.992, z = 3037.709 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 22
	[116011] = { config_id = 116011, gadget_id = 70330241, pos = { x = -741.152, y = 220.992, z = 3036.273 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 23
	[116012] = { config_id = 116012, gadget_id = 70330241, pos = { x = -739.620, y = 220.992, z = 3034.838 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 24
	[116013] = { config_id = 116013, gadget_id = 70330241, pos = { x = -738.087, y = 220.992, z = 3033.402 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 25
	[116014] = { config_id = 116014, gadget_id = 70330241, pos = { x = -736.553, y = 220.992, z = 3031.967 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 26
	[116015] = { config_id = 116015, gadget_id = 70330241, pos = { x = -735.021, y = 220.992, z = 3030.532 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 27
	[116016] = { config_id = 116016, gadget_id = 70330241, pos = { x = -733.488, y = 220.992, z = 3029.097 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 28
	[116017] = { config_id = 116017, gadget_id = 70330241, pos = { x = -731.954, y = 220.992, z = 3027.662 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 29
	[116018] = { config_id = 116018, gadget_id = 70330241, pos = { x = -730.422, y = 220.992, z = 3026.226 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 31
	[116019] = { config_id = 116019, gadget_id = 70330241, pos = { x = -744.121, y = 220.992, z = 3036.175 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 32
	[116020] = { config_id = 116020, gadget_id = 70330241, pos = { x = -742.588, y = 220.992, z = 3034.740 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 33
	[116021] = { config_id = 116021, gadget_id = 70330241, pos = { x = -741.055, y = 220.992, z = 3033.304 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 34
	[116022] = { config_id = 116022, gadget_id = 70330241, pos = { x = -739.522, y = 220.992, z = 3031.869 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 35
	[116023] = { config_id = 116023, gadget_id = 70330241, pos = { x = -737.989, y = 220.992, z = 3030.434 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 36
	[116024] = { config_id = 116024, gadget_id = 70330241, pos = { x = -736.456, y = 220.992, z = 3029.000 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 37
	[116025] = { config_id = 116025, gadget_id = 70330241, pos = { x = -734.923, y = 220.992, z = 3027.564 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 38
	[116026] = { config_id = 116026, gadget_id = 70330241, pos = { x = -733.390, y = 220.992, z = 3026.129 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 39
	[116027] = { config_id = 116027, gadget_id = 70330241, pos = { x = -731.857, y = 220.992, z = 3024.693 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 41
	[116028] = { config_id = 116028, gadget_id = 70330241, pos = { x = -745.556, y = 220.992, z = 3034.643 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 42
	[116029] = { config_id = 116029, gadget_id = 70330241, pos = { x = -744.023, y = 220.992, z = 3033.207 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 43
	[116030] = { config_id = 116030, gadget_id = 70330241, pos = { x = -742.490, y = 220.992, z = 3031.772 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 44
	[116031] = { config_id = 116031, gadget_id = 70330241, pos = { x = -740.957, y = 220.992, z = 3030.337 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 45
	[116032] = { config_id = 116032, gadget_id = 70330241, pos = { x = -739.424, y = 220.992, z = 3028.901 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 46
	[116033] = { config_id = 116033, gadget_id = 70330241, pos = { x = -737.891, y = 220.992, z = 3027.466 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 47
	[116034] = { config_id = 116034, gadget_id = 70330241, pos = { x = -736.358, y = 220.992, z = 3026.031 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 48
	[116035] = { config_id = 116035, gadget_id = 70330241, pos = { x = -734.825, y = 220.992, z = 3024.595 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 49
	[116036] = { config_id = 116036, gadget_id = 70330241, pos = { x = -733.292, y = 220.992, z = 3023.160 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 51
	[116037] = { config_id = 116037, gadget_id = 70330241, pos = { x = -746.991, y = 220.992, z = 3033.109 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 52
	[116038] = { config_id = 116038, gadget_id = 70330241, pos = { x = -745.458, y = 220.992, z = 3031.673 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 53
	[116039] = { config_id = 116039, gadget_id = 70330241, pos = { x = -743.925, y = 220.992, z = 3030.238 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 54
	[116040] = { config_id = 116040, gadget_id = 70330241, pos = { x = -742.392, y = 220.992, z = 3028.803 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 55
	[116041] = { config_id = 116041, gadget_id = 70330241, pos = { x = -740.859, y = 220.992, z = 3027.368 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 56
	[116042] = { config_id = 116042, gadget_id = 70330241, pos = { x = -739.327, y = 220.992, z = 3025.933 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 57
	[116043] = { config_id = 116043, gadget_id = 70330241, pos = { x = -737.793, y = 220.992, z = 3024.498 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 58
	[116044] = { config_id = 116044, gadget_id = 70330241, pos = { x = -736.260, y = 220.992, z = 3023.063 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 59
	[116045] = { config_id = 116045, gadget_id = 70330241, pos = { x = -734.727, y = 220.992, z = 3021.627 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 61
	[116046] = { config_id = 116046, gadget_id = 70330241, pos = { x = -748.426, y = 220.992, z = 3031.577 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 62
	[116047] = { config_id = 116047, gadget_id = 70330241, pos = { x = -746.894, y = 220.992, z = 3030.141 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 63
	[116048] = { config_id = 116048, gadget_id = 70330241, pos = { x = -745.361, y = 220.992, z = 3028.706 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 64
	[116049] = { config_id = 116049, gadget_id = 70330241, pos = { x = -743.827, y = 220.992, z = 3027.271 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 65
	[116050] = { config_id = 116050, gadget_id = 70330241, pos = { x = -742.294, y = 220.992, z = 3025.835 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 66
	[116051] = { config_id = 116051, gadget_id = 70330241, pos = { x = -740.762, y = 220.992, z = 3024.400 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 67
	[116052] = { config_id = 116052, gadget_id = 70330241, pos = { x = -739.228, y = 220.992, z = 3022.965 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 68
	[116053] = { config_id = 116053, gadget_id = 70330241, pos = { x = -737.696, y = 220.992, z = 3021.530 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 69
	[116054] = { config_id = 116054, gadget_id = 70330241, pos = { x = -736.163, y = 220.992, z = 3020.094 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 71
	[116055] = { config_id = 116055, gadget_id = 70330241, pos = { x = -749.862, y = 220.992, z = 3030.044 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 72
	[116056] = { config_id = 116056, gadget_id = 70330241, pos = { x = -748.329, y = 220.992, z = 3028.608 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 73
	[116057] = { config_id = 116057, gadget_id = 70330241, pos = { x = -746.796, y = 220.992, z = 3027.173 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 74
	[116058] = { config_id = 116058, gadget_id = 70330241, pos = { x = -745.263, y = 220.992, z = 3025.738 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 75
	[116059] = { config_id = 116059, gadget_id = 70330241, pos = { x = -743.730, y = 220.992, z = 3024.302 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 76
	[116060] = { config_id = 116060, gadget_id = 70330241, pos = { x = -742.197, y = 220.992, z = 3022.867 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 77
	[116061] = { config_id = 116061, gadget_id = 70330241, pos = { x = -740.664, y = 220.992, z = 3021.432 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 78
	[116062] = { config_id = 116062, gadget_id = 70330241, pos = { x = -739.131, y = 220.992, z = 3019.996 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 79
	[116063] = { config_id = 116063, gadget_id = 70330241, pos = { x = -737.598, y = 220.992, z = 3018.562 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 81
	[116064] = { config_id = 116064, gadget_id = 70330241, pos = { x = -751.297, y = 220.992, z = 3028.511 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 82
	[116065] = { config_id = 116065, gadget_id = 70330241, pos = { x = -749.764, y = 220.992, z = 3027.076 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 83
	[116066] = { config_id = 116066, gadget_id = 70330241, pos = { x = -748.231, y = 220.992, z = 3025.640 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 84
	[116067] = { config_id = 116067, gadget_id = 70330241, pos = { x = -746.698, y = 220.992, z = 3024.205 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 85
	[116068] = { config_id = 116068, gadget_id = 70330241, pos = { x = -745.165, y = 220.992, z = 3022.769 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 86
	[116069] = { config_id = 116069, gadget_id = 70330241, pos = { x = -743.632, y = 220.992, z = 3021.335 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 87
	[116070] = { config_id = 116070, gadget_id = 70330241, pos = { x = -742.099, y = 220.992, z = 3019.899 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 88
	[116071] = { config_id = 116071, gadget_id = 70330241, pos = { x = -740.566, y = 220.992, z = 3018.463 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 89
	[116072] = { config_id = 116072, gadget_id = 70330241, pos = { x = -739.033, y = 220.992, z = 3017.028 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 91
	[116073] = { config_id = 116073, gadget_id = 70330241, pos = { x = -752.732, y = 220.992, z = 3026.978 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 92
	[116074] = { config_id = 116074, gadget_id = 70330241, pos = { x = -751.199, y = 220.992, z = 3025.542 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 93
	[116075] = { config_id = 116075, gadget_id = 70330241, pos = { x = -749.666, y = 220.992, z = 3024.107 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 94
	[116076] = { config_id = 116076, gadget_id = 70330241, pos = { x = -748.134, y = 220.992, z = 3022.671 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 95
	[116077] = { config_id = 116077, gadget_id = 70330241, pos = { x = -746.600, y = 220.992, z = 3021.237 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 96
	[116078] = { config_id = 116078, gadget_id = 70330241, pos = { x = -745.067, y = 220.992, z = 3019.802 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 97
	[116079] = { config_id = 116079, gadget_id = 70330241, pos = { x = -743.534, y = 220.992, z = 3018.365 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 98
	[116080] = { config_id = 116080, gadget_id = 70330241, pos = { x = -742.001, y = 220.992, z = 3016.930 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 99，这边验证用的，务必保证FloorCid + 80 等于这个 cid
	[116081] = { config_id = 116081, gadget_id = 70330241, pos = { x = -740.468, y = 220.992, z = 3015.495 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 起始点,一定要配置，位置不是很重要，不要放任何Suite中
	[116082] = { config_id = 116082, gadget_id = 70330240, pos = { x = -735.640, y = 219.874, z = 3015.758 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23, is_enable_interact = false },
	-- 树终点,一定要配置，位置不是很重要，不要放任何Suite中
	[116083] = { config_id = 116083, gadget_id = 70330242, pos = { x = -731.397, y = 219.844, z = 3019.548 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 22, is_enable_interact = false },
	-- 苗圃草Volume 后，尽量放在中间
	[116086] = { config_id = 116086, gadget_id = 70290530, pos = { x = -740.859, y = 221.192, z = 3027.368 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23 },
	-- 苗圃草Volume 前，位置跟着树走
	[116087] = { config_id = 116087, gadget_id = 70290518, pos = { x = -740.859, y = 221.192, z = 3027.368 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23 },
	[116088] = { config_id = 116088, gadget_id = 70290593, pos = { x = -740.859, y = 221.192, z = 3027.368 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 27, area_id = 23 },
	[116089] = { config_id = 116089, gadget_id = 70211101, pos = { x = -740.859, y = 220.992, z = 3027.368 }, rot = { x = 0.000, y = 43.114, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
	-- PlayRegion，离开时会失败
	[116084] = { config_id = 116084, shape = RegionShape.SPHERE, radius = 15, pos = { x = -740.935, y = 220.018, z = 3027.505 }, area_id = 23 },
	-- InitRegion，进入时会加载玩法
	[116085] = { config_id = 116085, shape = RegionShape.SPHERE, radius = 100, pos = { x = -740.935, y = 220.018, z = 3027.505 }, area_id = 23 }
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
		gadgets = { 116087 },
		regions = { 116084, 116085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 116087 },
		regions = { 116084, 116085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 116087 },
		regions = { 116084, 116085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 116087 },
		regions = { 116084, 116085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 116087 },
		regions = { 116084, 116085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 116087 },
		regions = { 116084, 116085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 116087 },
		regions = { 116084, 116085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 116087 },
		regions = { 116084, 116085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 116087 },
		regions = { 116084, 116085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 116087 },
		regions = { 116084, 116085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 116087 },
		regions = { 116084, 116085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 116087 },
		regions = { 116084, 116085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 116088, 116089 },
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
-- 基础信息
local base_info = {
	group_id = 144001127
}

-- DEFS_MISCS
local defs = {
	group_id = 144001127, --对应的GroupID
	need_kill_hint = true,
	gadget_init = {127006, 127007},	--defs.gadget_init里按顺序填入 开启挑战机关ConfigID、 限时终点ConfigID
	challenge_time = 181, --挑战持续的时间
	gadget_suites = { 
		[4] = {127008,127016},	--suites每波需要销毁的指示路点和光柱,结构为[suite_id] = {gadget1,gadget2},id从4开始
		[5] = {127010,127017},
		[6] = {127012,127018},
	},
	suites_heraldry_loot = { --怪物死亡时刷新对应的Suites里的纹章,结构为[configid] = suiteid,
		[127001] = 7,
		[127079] = 8,
	},
	gadget_heraldry_count = 13, --收集的激流纹章数量
	gadget_heraldry_id = 70350256, --激流纹章ID
	suites_chain = {4,5,6,2}, --suite的刷新顺序
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[127001] = { config_id = 127001, monster_id = 21010401, pos = { x = -82.095, y = 123.716, z = 268.624 }, rot = { x = 0.000, y = 76.052, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 102 },
	[127079] = { config_id = 127079, monster_id = 21010901, pos = { x = 43.737, y = 123.760, z = 144.646 }, rot = { x = 0.000, y = 293.700, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[127002] = { config_id = 127002, gadget_id = 70350249, pos = { x = 52.137, y = 120.000, z = 287.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[127003] = { config_id = 127003, gadget_id = 70950087, pos = { x = 45.299, y = 120.000, z = 147.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[127004] = { config_id = 127004, gadget_id = 70350249, pos = { x = 2.075, y = 120.000, z = 298.168 }, rot = { x = 0.000, y = 279.553, z = 0.000 }, level = 1, area_id = 102 },
	[127005] = { config_id = 127005, gadget_id = 70350249, pos = { x = 85.962, y = 120.000, z = 259.675 }, rot = { x = 0.000, y = 227.940, z = 0.000 }, level = 1, area_id = 102 },
	[127006] = { config_id = 127006, gadget_id = 70350250, pos = { x = 89.836, y = 120.000, z = 269.720 }, rot = { x = 0.000, y = 201.170, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	[127007] = { config_id = 127007, gadget_id = 70360025, pos = { x = 155.952, y = 129.318, z = 289.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[127008] = { config_id = 127008, gadget_id = 70350085, pos = { x = -76.709, y = 120.000, z = 244.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[127009] = { config_id = 127009, gadget_id = 70350249, pos = { x = 74.139, y = 120.000, z = 249.006 }, rot = { x = 0.000, y = 268.277, z = 0.000 }, level = 1, area_id = 102 },
	[127010] = { config_id = 127010, gadget_id = 70350085, pos = { x = 51.842, y = 120.000, z = 161.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[127012] = { config_id = 127012, gadget_id = 70350085, pos = { x = 42.296, y = 120.000, z = 298.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[127014] = { config_id = 127014, gadget_id = 70350085, pos = { x = 155.952, y = 129.318, z = 289.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[127016] = { config_id = 127016, gadget_id = 70710126, pos = { x = -76.709, y = 120.000, z = 244.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[127017] = { config_id = 127017, gadget_id = 70710126, pos = { x = 51.842, y = 120.000, z = 161.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[127018] = { config_id = 127018, gadget_id = 70710126, pos = { x = 42.527, y = 120.000, z = 298.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[127019] = { config_id = 127019, gadget_id = 70350277, pos = { x = 91.752, y = 120.000, z = 274.666 }, rot = { x = 0.000, y = 201.170, z = 0.000 }, level = 1, area_id = 102 },
	[127020] = { config_id = 127020, gadget_id = 70350277, pos = { x = -76.848, y = 120.000, z = 243.896 }, rot = { x = 0.000, y = 178.908, z = 0.000 }, level = 1, area_id = 102 },
	[127021] = { config_id = 127021, gadget_id = 70350277, pos = { x = 48.823, y = 120.000, z = 159.371 }, rot = { x = 0.000, y = 48.905, z = 0.000 }, level = 1, area_id = 102 },
	[127023] = { config_id = 127023, gadget_id = 70350256, pos = { x = 54.024, y = 120.000, z = 163.971 }, rot = { x = 0.000, y = 48.744, z = 0.000 }, level = 1, area_id = 102 },
	[127024] = { config_id = 127024, gadget_id = 70350249, pos = { x = 48.983, y = 120.000, z = 291.592 }, rot = { x = 0.000, y = 280.026, z = 0.000 }, level = 1, area_id = 102 },
	[127025] = { config_id = 127025, gadget_id = 70350249, pos = { x = 33.739, y = 120.000, z = 294.288 }, rot = { x = 0.000, y = 272.651, z = 0.000 }, level = 1, area_id = 102 },
	[127026] = { config_id = 127026, gadget_id = 70350249, pos = { x = 17.763, y = 120.000, z = 295.027 }, rot = { x = 0.000, y = 281.322, z = 0.000 }, level = 1, area_id = 102 },
	[127027] = { config_id = 127027, gadget_id = 70290057, pos = { x = -90.954, y = 120.000, z = 271.213 }, rot = { x = 0.000, y = 289.688, z = 0.000 }, level = 1, area_id = 102 },
	[127028] = { config_id = 127028, gadget_id = 70290057, pos = { x = -91.868, y = 120.000, z = 261.362 }, rot = { x = 0.000, y = 262.100, z = 0.000 }, level = 1, area_id = 102 },
	[127029] = { config_id = 127029, gadget_id = 70950087, pos = { x = -80.914, y = 120.000, z = 272.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[127030] = { config_id = 127030, gadget_id = 70350249, pos = { x = -43.981, y = 120.000, z = 294.923 }, rot = { x = 0.000, y = 235.205, z = 0.000 }, level = 1, area_id = 102 },
	[127031] = { config_id = 127031, gadget_id = 70950092, pos = { x = -83.672, y = 120.000, z = 267.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[127032] = { config_id = 127032, gadget_id = 70950092, pos = { x = 45.488, y = 120.000, z = 143.973 }, rot = { x = 0.000, y = 243.150, z = 0.000 }, level = 1, area_id = 102 },
	[127033] = { config_id = 127033, gadget_id = 70350249, pos = { x = -56.813, y = 120.000, z = 286.068 }, rot = { x = 0.000, y = 218.713, z = 0.000 }, level = 1, area_id = 102 },
	[127034] = { config_id = 127034, gadget_id = 70350249, pos = { x = -66.830, y = 120.000, z = 274.072 }, rot = { x = 0.000, y = 201.114, z = 0.000 }, level = 1, area_id = 102 },
	[127035] = { config_id = 127035, gadget_id = 70350249, pos = { x = -0.094, y = 120.000, z = 153.409 }, rot = { x = 0.000, y = 97.367, z = 0.000 }, level = 1, area_id = 102 },
	[127036] = { config_id = 127036, gadget_id = 70350249, pos = { x = 15.763, y = 120.000, z = 151.359 }, rot = { x = 0.000, y = 83.027, z = 0.000 }, level = 1, area_id = 102 },
	[127037] = { config_id = 127037, gadget_id = 70350249, pos = { x = 31.608, y = 120.000, z = 153.297 }, rot = { x = 0.000, y = 83.027, z = 0.000 }, level = 1, area_id = 102 },
	[127038] = { config_id = 127038, gadget_id = 70350249, pos = { x = -75.152, y = 120.000, z = 211.982 }, rot = { x = 0.000, y = 167.595, z = 0.000 }, level = 1, area_id = 102 },
	[127039] = { config_id = 127039, gadget_id = 70350249, pos = { x = 47.341, y = 120.000, z = 295.517 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[127040] = { config_id = 127040, gadget_id = 70350249, pos = { x = -63.550, y = 120.000, z = 182.742 }, rot = { x = 0.000, y = 133.179, z = 0.000 }, level = 1, area_id = 102 },
	[127041] = { config_id = 127041, gadget_id = 70350249, pos = { x = -13.700, y = 120.000, z = 300.823 }, rot = { x = 0.000, y = 271.399, z = 0.000 }, level = 1, area_id = 102 },
	[127042] = { config_id = 127042, gadget_id = 70350249, pos = { x = -37.842, y = 120.000, z = 164.222 }, rot = { x = 0.000, y = 115.945, z = 0.000 }, level = 1, area_id = 102 },
	[127043] = { config_id = 127043, gadget_id = 70350256, pos = { x = -76.725, y = 120.000, z = 240.754 }, rot = { x = 0.000, y = 175.966, z = 0.000 }, level = 1, area_id = 102 },
	[127044] = { config_id = 127044, gadget_id = 70350258, pos = { x = 66.671, y = 120.000, z = 174.865 }, rot = { x = 0.000, y = 16.700, z = 0.000 }, level = 1, area_id = 102 },
	[127045] = { config_id = 127045, gadget_id = 70350249, pos = { x = 53.904, y = 120.000, z = 276.071 }, rot = { x = 0.000, y = 343.996, z = 0.000 }, level = 1, area_id = 102 },
	[127046] = { config_id = 127046, gadget_id = 70350256, pos = { x = 41.937, y = 120.000, z = 157.198 }, rot = { x = 0.000, y = 61.400, z = 0.000 }, level = 1, area_id = 102 },
	[127047] = { config_id = 127047, gadget_id = 70290057, pos = { x = 45.865, y = 120.000, z = 135.569 }, rot = { x = 0.000, y = 353.210, z = 0.000 }, level = 1, area_id = 102 },
	[127048] = { config_id = 127048, gadget_id = 70950087, pos = { x = 40.454, y = 120.000, z = 143.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[127049] = { config_id = 127049, gadget_id = 70350249, pos = { x = 79.435, y = 120.000, z = 233.101 }, rot = { x = 0.000, y = 0.621, z = 0.000 }, level = 1, area_id = 102 },
	[127050] = { config_id = 127050, gadget_id = 70690001, pos = { x = 68.772, y = 125.575, z = 280.781 }, rot = { x = 4.600, y = 69.133, z = 0.000 }, level = 1, area_id = 102 },
	[127051] = { config_id = 127051, gadget_id = 70350249, pos = { x = -71.724, y = 120.000, z = 196.397 }, rot = { x = 0.000, y = 149.094, z = 0.000 }, level = 1, area_id = 102 },
	[127052] = { config_id = 127052, gadget_id = 70350249, pos = { x = -51.910, y = 120.000, z = 171.820 }, rot = { x = 0.000, y = 118.371, z = 0.000 }, level = 1, area_id = 102 },
	[127053] = { config_id = 127053, gadget_id = 70350249, pos = { x = 71.781, y = 120.000, z = 186.345 }, rot = { x = 0.000, y = 21.755, z = 0.000 }, level = 1, area_id = 102 },
	[127054] = { config_id = 127054, gadget_id = 70690027, pos = { x = 29.619, y = 120.000, z = 299.010 }, rot = { x = 0.000, y = 274.900, z = 0.000 }, level = 1, area_id = 102 },
	[127055] = { config_id = 127055, gadget_id = 70690001, pos = { x = 26.362, y = 127.844, z = 289.478 }, rot = { x = 0.239, y = 155.458, z = 0.000 }, level = 1, area_id = 102 },
	[127056] = { config_id = 127056, gadget_id = 70690001, pos = { x = 79.948, y = 124.613, z = 285.041 }, rot = { x = 0.653, y = 72.237, z = 0.000 }, level = 1, area_id = 102 },
	[127057] = { config_id = 127057, gadget_id = 70350249, pos = { x = 79.608, y = 120.000, z = 249.098 }, rot = { x = 0.000, y = 352.306, z = 0.000 }, level = 1, area_id = 102 },
	[127058] = { config_id = 127058, gadget_id = 70350249, pos = { x = 77.467, y = 120.000, z = 264.947 }, rot = { x = 0.000, y = 345.950, z = 0.000 }, level = 1, area_id = 102 },
	[127059] = { config_id = 127059, gadget_id = 70350249, pos = { x = 73.595, y = 120.000, z = 280.418 }, rot = { x = 0.000, y = 324.798, z = 0.000 }, level = 1, area_id = 102 },
	[127060] = { config_id = 127060, gadget_id = 70690001, pos = { x = 30.086, y = 127.807, z = 281.322 }, rot = { x = 2.679, y = 141.621, z = 0.000 }, level = 1, area_id = 102 },
	[127061] = { config_id = 127061, gadget_id = 70690001, pos = { x = 35.551, y = 127.395, z = 274.423 }, rot = { x = 7.577, y = 114.435, z = 0.000 }, level = 1, area_id = 102 },
	[127062] = { config_id = 127062, gadget_id = 70690001, pos = { x = 43.369, y = 126.253, z = 270.870 }, rot = { x = 0.559, y = 77.948, z = 0.000 }, level = 1, area_id = 102 },
	[127063] = { config_id = 127063, gadget_id = 70350256, pos = { x = -76.143, y = 120.000, z = 232.497 }, rot = { x = 0.000, y = 175.966, z = 0.000 }, level = 1, area_id = 102 },
	[127064] = { config_id = 127064, gadget_id = 70350256, pos = { x = 60.928, y = 120.000, z = 170.027 }, rot = { x = 0.000, y = 48.744, z = 0.000 }, level = 1, area_id = 102 },
	[127065] = { config_id = 127065, gadget_id = 70350249, pos = { x = -23.455, y = 120.000, z = 157.223 }, rot = { x = 0.000, y = 113.789, z = 0.000 }, level = 1, area_id = 102 },
	[127066] = { config_id = 127066, gadget_id = 70350249, pos = { x = 76.323, y = 120.000, z = 201.093 }, rot = { x = 0.000, y = 4.458, z = 0.000 }, level = 1, area_id = 102 },
	[127067] = { config_id = 127067, gadget_id = 70350256, pos = { x = 58.779, y = 120.000, z = 248.544 }, rot = { x = 0.000, y = 325.773, z = 0.000 }, level = 1, area_id = 102 },
	[127068] = { config_id = 127068, gadget_id = 70350256, pos = { x = 50.128, y = 120.000, z = 261.261 }, rot = { x = 0.000, y = 11.342, z = 0.000 }, level = 1, area_id = 102 },
	[127069] = { config_id = 127069, gadget_id = 70350256, pos = { x = 53.904, y = 120.000, z = 276.071 }, rot = { x = 0.000, y = 343.996, z = 0.000 }, level = 1, area_id = 102 },
	[127070] = { config_id = 127070, gadget_id = 70350256, pos = { x = 78.943, y = 120.000, z = 217.108 }, rot = { x = 0.000, y = 1.761, z = 0.000 }, level = 1, area_id = 102 },
	[127071] = { config_id = 127071, gadget_id = 70690001, pos = { x = 91.348, y = 124.476, z = 288.693 }, rot = { x = 352.029, y = 78.461, z = 0.000 }, level = 1, area_id = 102 },
	[127072] = { config_id = 127072, gadget_id = 70350258, pos = { x = -28.047, y = 120.000, z = 302.435 }, rot = { x = 0.000, y = 232.430, z = 0.000 }, level = 1, area_id = 102 },
	[127073] = { config_id = 127073, gadget_id = 70950087, pos = { x = -81.362, y = 120.000, z = 264.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[127074] = { config_id = 127074, gadget_id = 70350258, pos = { x = -14.005, y = 120.000, z = 155.212 }, rot = { x = 0.000, y = 94.100, z = 0.000 }, level = 1, area_id = 102 },
	[127075] = { config_id = 127075, gadget_id = 70690001, pos = { x = 102.991, y = 126.140, z = 291.070 }, rot = { x = 351.342, y = 79.330, z = 0.000 }, level = 1, area_id = 102 },
	[127077] = { config_id = 127077, gadget_id = 70690001, pos = { x = 114.649, y = 127.947, z = 293.266 }, rot = { x = 351.484, y = 80.901, z = 0.000 }, level = 1, area_id = 102 },
	[127078] = { config_id = 127078, gadget_id = 70290057, pos = { x = 54.223, y = 120.000, z = 139.938 }, rot = { x = 0.000, y = 312.740, z = 0.000 }, level = 1, area_id = 102 },
	[127080] = { config_id = 127080, gadget_id = 70690001, pos = { x = 52.170, y = 126.165, z = 272.749 }, rot = { x = 1.579, y = 76.420, z = 0.000 }, level = 1, area_id = 102 },
	[127081] = { config_id = 127081, gadget_id = 70690001, pos = { x = 126.365, y = 129.723, z = 295.143 }, rot = { x = 356.466, y = 102.972, z = 0.000 }, level = 1, area_id = 102 },
	[127082] = { config_id = 127082, gadget_id = 70690001, pos = { x = 137.942, y = 130.457, z = 292.476 }, rot = { x = 356.466, y = 102.972, z = 0.000 }, level = 1, area_id = 102 },
	[127083] = { config_id = 127083, gadget_id = 70350256, pos = { x = 28.593, y = 127.976, z = 297.922 }, rot = { x = 0.000, y = 60.400, z = 0.000 }, level = 1, area_id = 102 },
	[127084] = { config_id = 127084, gadget_id = 70350249, pos = { x = -74.885, y = 120.000, z = 253.089 }, rot = { x = 0.000, y = 192.054, z = 0.000 }, level = 1, area_id = 102 },
	[127085] = { config_id = 127085, gadget_id = 70350249, pos = { x = -72.453, y = 120.000, z = 263.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[127087] = { config_id = 127087, gadget_id = 70350256, pos = { x = 26.258, y = 128.112, z = 294.045 }, rot = { x = 0.000, y = 35.900, z = 0.000 }, level = 1, area_id = 102 },
	[127088] = { config_id = 127088, gadget_id = 70350256, pos = { x = 58.577, y = 125.977, z = 275.218 }, rot = { x = 1.579, y = 76.420, z = 0.000 }, level = 1, area_id = 102 },
	[127089] = { config_id = 127089, gadget_id = 70350256, pos = { x = 61.913, y = 125.628, z = 277.076 }, rot = { x = 1.579, y = 76.420, z = 0.000 }, level = 1, area_id = 102 },
	[127090] = { config_id = 127090, gadget_id = 70350249, pos = { x = 63.089, y = 120.000, z = 292.489 }, rot = { x = 0.000, y = 313.227, z = 0.000 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
	[127118] = { config_id = 127118, shape = RegionShape.SPHERE, radius = 2, pos = { x = 155.952, y = 129.318, z = 289.607 }, area_id = 102 },
	[127119] = { config_id = 127119, shape = RegionShape.SPHERE, radius = 6.8, pos = { x = -76.709, y = 120.000, z = 244.805 }, area_id = 102 },
	[127121] = { config_id = 127121, shape = RegionShape.SPHERE, radius = 6.8, pos = { x = 51.842, y = 120.000, z = 161.361 }, area_id = 102 },
	[127123] = { config_id = 127123, shape = RegionShape.SPHERE, radius = 6.8, pos = { x = 42.296, y = 120.000, z = 298.129 }, area_id = 102 }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	-- 人
	{ config_id = 127011, pos = { x = 83.972, y = 120.000, z = 290.063 }, rot = { x = 0.000, y = 201.170, z = 0.000 }, area_id = 102 },
	-- 船
	{ config_id = 127093, pos = { x = 95.922, y = 120.000, z = 285.435 }, rot = { x = 0.000, y = 201.170, z = 0.000 }, area_id = 102 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hasStarted", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 127013, gadget_id = 70300114, pos = { x = 29.802, y = 123.869, z = 298.788 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
		{ config_id = 127015, gadget_id = 70350085, pos = { x = 92.843, y = 120.000, z = 277.484 }, rot = { x = 0.000, y = 201.170, z = 0.000 }, level = 1, area_id = 102 }
	},
	triggers = {
		{ config_id = 1127115, name = "GADGET_STATE_CHANGE_127115", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_127115", action = "action_EVENT_GADGET_STATE_CHANGE_127115", trigger_count = 0 },
		{ config_id = 1127116, name = "CHALLENGE_SUCCESS_127116", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2011", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_127116", trigger_count = 0 },
		{ config_id = 1127117, name = "CHALLENGE_FAIL_127117", event = EventType.EVENT_CHALLENGE_FAIL, source = "2011", condition = "", action = "action_EVENT_CHALLENGE_FAIL_127117", trigger_count = 0 },
		{ config_id = 1127120, name = "ANY_MONSTER_DIE_127120", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_127120", action = "action_EVENT_ANY_MONSTER_DIE_127120", trigger_count = 0 },
		{ config_id = 1127122, name = "ANY_MONSTER_DIE_127122", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_127122", action = "action_EVENT_ANY_MONSTER_DIE_127122", trigger_count = 0 },
		{ config_id = 1127124, name = "ANY_MONSTER_DIE_127124", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_127124", action = "action_EVENT_ANY_MONSTER_DIE_127124", trigger_count = 0 },
		{ config_id = 1127127, name = "GADGET_CREATE_127127", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_127127", action = "action_EVENT_GADGET_CREATE_127127", trigger_count = 0 },
		{ config_id = 1127128, name = "ANY_GADGET_DIE_127128", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_127128", action = "", trigger_count = 0, tag = "888" },
		{ config_id = 1127129, name = "SELECT_OPTION_127129", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_127129", action = "action_EVENT_SELECT_OPTION_127129", trigger_count = 0 },
		{ config_id = 1127130, name = "SELECT_OPTION_127130", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_127130", action = "action_EVENT_SELECT_OPTION_127130", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 3,
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
		-- description = 起点,
		monsters = { },
		gadgets = { 127006, 127019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 终点,
		monsters = { },
		gadgets = { 127007, 127014, 127050, 127054, 127055, 127056, 127060, 127061, 127062, 127071, 127075, 127077, 127080, 127081, 127082, 127083, 127087, 127088, 127089 },
		regions = { 127118 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 事件完成空Suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 节点1,
		monsters = { 127001 },
		gadgets = { 127004, 127005, 127008, 127009, 127016, 127020, 127024, 127025, 127026, 127027, 127028, 127029, 127030, 127031, 127033, 127034, 127041, 127067, 127068, 127069, 127072, 127073, 127084, 127085 },
		regions = { 127119 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 节点2,
		monsters = { 127079 },
		gadgets = { 127003, 127010, 127017, 127021, 127032, 127035, 127036, 127037, 127038, 127040, 127042, 127046, 127047, 127048, 127051, 127052, 127065, 127074, 127078 },
		regions = { 127121 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 节点3,
		monsters = { },
		gadgets = { 127002, 127012, 127018, 127039, 127044, 127045, 127049, 127053, 127057, 127058, 127059, 127066, 127070, 127090 },
		regions = { 127123 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 节点4,
		monsters = { },
		gadgets = { 127043, 127063 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 127023, 127064 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { },
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

require "V1_6/BoatRace"
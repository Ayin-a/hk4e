-- 基础信息
local base_info = {
	group_id = 199003025
}

-- DEFS_MISCS
local defs = {
        --开启操作台configID
        starter_gadget = 25001,
        --终点Region的ConfigID
        end_region = 25196,
        --限定region的configID
        play_region =25050 ,
        --限定region的suite
        play_region_suite =12 ,
        --gallery_id
        gallery_id =22001 ,

        guide_region = 25190,

        --计数定义。
        --这个赛道中，每种行为写入哪个param
        --行为：1-漩涡 2-障碍破坏 3-碰脏脏果
        counter = 
        { 
                ["param1"] = 5,
                ["param2"] = 0,
                ["param3"] = 0,
        },

        father_challenge = 2018,

        child_time_challenge = 
        {
		{challenge_id = 2020, aim = 260},                
		{challenge_id = 2019, aim = 140},
                        
	},

        child_count_challenge = 
        {
 	      {challenge_id = 2023, aim = 4},
        },
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
	[25001] = { config_id = 25001, gadget_id = 70350250, pos = { x = -297.522, y = 120.000, z = 354.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[25002] = { config_id = 25002, gadget_id = 70350085, pos = { x = -288.906, y = 122.000, z = 278.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[25003] = { config_id = 25003, gadget_id = 70350085, pos = { x = -201.267, y = 122.000, z = 261.389 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[25004] = { config_id = 25004, gadget_id = 70310410, pos = { x = -201.005, y = 120.000, z = 261.740 }, rot = { x = 0.000, y = 73.369, z = 0.000 }, level = 20, area_id = 403 },
	[25005] = { config_id = 25005, gadget_id = 70310408, pos = { x = -283.563, y = 120.000, z = 299.369 }, rot = { x = 0.000, y = 78.275, z = 0.000 }, level = 1, area_id = 403 },
	[25006] = { config_id = 25006, gadget_id = 70310410, pos = { x = -32.161, y = 120.000, z = 340.692 }, rot = { x = 0.000, y = 65.132, z = 0.000 }, level = 20, area_id = 402 },
	[25007] = { config_id = 25007, gadget_id = 70310410, pos = { x = 24.674, y = 120.000, z = 364.659 }, rot = { x = 0.000, y = 76.498, z = 0.000 }, level = 20, area_id = 402 },
	[25008] = { config_id = 25008, gadget_id = 70220110, pos = { x = 42.156, y = 120.000, z = 361.286 }, rot = { x = 0.000, y = 133.046, z = 0.000 }, level = 20, area_id = 402 },
	[25009] = { config_id = 25009, gadget_id = 70220110, pos = { x = 47.224, y = 120.000, z = 356.552 }, rot = { x = 0.000, y = 155.778, z = 0.000 }, level = 20, area_id = 402 },
	[25010] = { config_id = 25010, gadget_id = 70310410, pos = { x = 55.778, y = 120.000, z = 318.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	[25011] = { config_id = 25011, gadget_id = 70310410, pos = { x = 30.602, y = 120.000, z = 206.957 }, rot = { x = 0.000, y = 12.949, z = 0.000 }, level = 20, area_id = 402 },
	[25012] = { config_id = 25012, gadget_id = 70290311, pos = { x = -86.580, y = 119.966, z = 305.777 }, rot = { x = 0.000, y = 244.067, z = 0.000 }, level = 20, area_id = 402 },
	[25013] = { config_id = 25013, gadget_id = 70220110, pos = { x = 50.084, y = 120.000, z = 350.195 }, rot = { x = 0.000, y = 168.730, z = 0.000 }, level = 20, area_id = 402 },
	[25014] = { config_id = 25014, gadget_id = 70220110, pos = { x = 51.450, y = 120.000, z = 343.340 }, rot = { x = 0.000, y = 177.012, z = 0.000 }, level = 20, area_id = 402 },
	[25015] = { config_id = 25015, gadget_id = 70220110, pos = { x = 51.815, y = 120.000, z = 336.354 }, rot = { x = 0.000, y = 177.012, z = 0.000 }, level = 20, area_id = 402 },
	[25016] = { config_id = 25016, gadget_id = 70310350, pos = { x = 14.159, y = 120.000, z = 244.647 }, rot = { x = 0.000, y = 268.482, z = 0.000 }, level = 20, area_id = 402 },
	[25017] = { config_id = 25017, gadget_id = 70310408, pos = { x = 15.145, y = 120.000, z = 256.659 }, rot = { x = 0.000, y = 298.767, z = 0.000 }, level = 20, area_id = 402 },
	[25018] = { config_id = 25018, gadget_id = 70310410, pos = { x = 29.590, y = 120.000, z = 118.841 }, rot = { x = 0.000, y = 350.910, z = 0.000 }, level = 20, area_id = 402 },
	[25019] = { config_id = 25019, gadget_id = 70310410, pos = { x = 73.034, y = 120.000, z = 26.064 }, rot = { x = 0.000, y = 334.759, z = 0.000 }, level = 20, area_id = 402 },
	[25020] = { config_id = 25020, gadget_id = 70310410, pos = { x = 118.867, y = 120.000, z = -62.600 }, rot = { x = 0.000, y = 337.984, z = 0.000 }, level = 20, area_id = 402 },
	[25023] = { config_id = 25023, gadget_id = 70310350, pos = { x = -285.626, y = 120.000, z = 323.286 }, rot = { x = 0.000, y = 265.822, z = 0.000 }, level = 1, area_id = 403 },
	[25024] = { config_id = 25024, gadget_id = 70310409, pos = { x = -285.043, y = 120.000, z = 311.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	[25025] = { config_id = 25025, gadget_id = 70290059, pos = { x = -186.277, y = 120.000, z = 284.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	[25026] = { config_id = 25026, gadget_id = 70310351, pos = { x = -149.790, y = 120.000, z = 262.041 }, rot = { x = 0.000, y = 338.817, z = 0.000 }, level = 1, area_id = 403 },
	[25027] = { config_id = 25027, gadget_id = 70310351, pos = { x = -26.513, y = 120.000, z = 360.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	[25028] = { config_id = 25028, gadget_id = 70310351, pos = { x = 36.507, y = 120.000, z = 179.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	[25029] = { config_id = 25029, gadget_id = 70290059, pos = { x = 11.347, y = 120.000, z = 137.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	[25030] = { config_id = 25030, gadget_id = 70350277, pos = { x = -297.476, y = 120.000, z = 350.352 }, rot = { x = 0.000, y = 183.768, z = 0.000 }, level = 20, area_id = 403 },
	[25031] = { config_id = 25031, gadget_id = 70310408, pos = { x = 61.388, y = 120.000, z = 214.787 }, rot = { x = 0.000, y = 151.591, z = 0.000 }, level = 20, area_id = 402 },
	[25032] = { config_id = 25032, gadget_id = 70310350, pos = { x = -304.206, y = 120.000, z = 290.453 }, rot = { x = 0.000, y = 63.797, z = 0.000 }, level = 20, area_id = 403 },
	[25033] = { config_id = 25033, gadget_id = 70310408, pos = { x = -307.004, y = 120.021, z = 302.811 }, rot = { x = 0.000, y = 89.864, z = 0.000 }, level = 20, area_id = 403 },
	[25034] = { config_id = 25034, gadget_id = 70310408, pos = { x = 38.512, y = 120.000, z = 190.303 }, rot = { x = 0.000, y = 100.387, z = 0.000 }, level = 1, area_id = 402 },
	[25035] = { config_id = 25035, gadget_id = 70310351, pos = { x = -270.128, y = 119.991, z = 245.449 }, rot = { x = 0.000, y = 106.642, z = 0.000 }, level = 20, area_id = 403 },
	[25036] = { config_id = 25036, gadget_id = 70310350, pos = { x = 11.758, y = 120.000, z = 189.245 }, rot = { x = 0.000, y = 101.474, z = 0.000 }, level = 1, area_id = 402 },
	[25037] = { config_id = 25037, gadget_id = 70290059, pos = { x = -262.714, y = 119.883, z = 274.140 }, rot = { x = 0.000, y = 287.895, z = 0.000 }, level = 20, area_id = 403 },
	[25038] = { config_id = 25038, gadget_id = 70290311, pos = { x = -155.811, y = 120.000, z = 280.377 }, rot = { x = 0.000, y = 72.572, z = 0.000 }, level = 20, area_id = 403 },
	[25039] = { config_id = 25039, gadget_id = 70310350, pos = { x = 68.728, y = 120.000, z = 224.347 }, rot = { x = 0.000, y = 121.306, z = 0.000 }, level = 20, area_id = 402 },
	[25040] = { config_id = 25040, gadget_id = 70310409, pos = { x = -282.671, y = 120.000, z = 252.751 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[25041] = { config_id = 25041, gadget_id = 70290060, pos = { x = 65.701, y = 127.080, z = 29.998 }, rot = { x = 0.231, y = 153.870, z = 351.187 }, level = 20, area_id = 402 },
	[25042] = { config_id = 25042, gadget_id = 70310352, pos = { x = -252.806, y = 123.000, z = 242.970 }, rot = { x = 0.000, y = 302.572, z = 0.000 }, level = 20, route_id = 900300009, area_id = 403 },
	[25043] = { config_id = 25043, gadget_id = 70310352, pos = { x = -248.833, y = 123.000, z = 260.723 }, rot = { x = 0.000, y = 260.041, z = 0.000 }, level = 20, route_id = 900300008, area_id = 403 },
	[25044] = { config_id = 25044, gadget_id = 70380004, pos = { x = -250.378, y = 120.000, z = 251.958 }, rot = { x = 0.000, y = 283.130, z = 0.000 }, level = 20, route_id = 900300007, area_id = 403 },
	[25045] = { config_id = 25045, gadget_id = 70310350, pos = { x = -220.687, y = 120.000, z = 242.290 }, rot = { x = 0.000, y = 332.050, z = 0.000 }, level = 20, area_id = 403 },
	[25046] = { config_id = 25046, gadget_id = 70310408, pos = { x = -232.953, y = 120.021, z = 239.117 }, rot = { x = 0.000, y = 358.117, z = 0.000 }, level = 20, area_id = 403 },
	[25047] = { config_id = 25047, gadget_id = 70220110, pos = { x = -304.347, y = 125.490, z = 292.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[25048] = { config_id = 25048, gadget_id = 70220110, pos = { x = -303.536, y = 126.901, z = 288.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[25049] = { config_id = 25049, gadget_id = 70220110, pos = { x = -302.244, y = 123.550, z = 286.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[25051] = { config_id = 25051, gadget_id = 70380004, pos = { x = 13.089, y = 120.000, z = 166.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, route_id = 900300018, area_id = 402 },
	[25053] = { config_id = 25053, gadget_id = 70380004, pos = { x = 35.445, y = 120.000, z = 153.446 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, route_id = 900300019, area_id = 402 },
	[25054] = { config_id = 25054, gadget_id = 70220110, pos = { x = -222.365, y = 124.990, z = 241.636 }, rot = { x = 0.000, y = 5.421, z = 0.000 }, level = 20, area_id = 403 },
	[25055] = { config_id = 25055, gadget_id = 70220110, pos = { x = -218.426, y = 126.961, z = 243.144 }, rot = { x = 0.000, y = 5.421, z = 0.000 }, level = 20, area_id = 403 },
	[25056] = { config_id = 25056, gadget_id = 70220110, pos = { x = -216.380, y = 124.346, z = 244.236 }, rot = { x = 0.000, y = 5.421, z = 0.000 }, level = 20, area_id = 403 },
	[25057] = { config_id = 25057, gadget_id = 70310352, pos = { x = -6.317, y = 120.000, z = 358.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, route_id = 900300020, area_id = 402 },
	[25058] = { config_id = 25058, gadget_id = 70350085, pos = { x = -33.543, y = 122.000, z = 339.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	[25060] = { config_id = 25060, gadget_id = 70310352, pos = { x = -3.408, y = 123.000, z = 350.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, route_id = 900300021, area_id = 402 },
	[25061] = { config_id = 25061, gadget_id = 70220110, pos = { x = -113.475, y = 120.444, z = 292.360 }, rot = { x = 0.000, y = 335.928, z = 0.000 }, level = 20, area_id = 402 },
	[25062] = { config_id = 25062, gadget_id = 70310351, pos = { x = 45.486, y = 120.000, z = 74.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	[25063] = { config_id = 25063, gadget_id = 70290311, pos = { x = -151.361, y = 120.000, z = 269.900 }, rot = { x = 0.000, y = 250.113, z = 0.000 }, level = 20, area_id = 403 },
	[25064] = { config_id = 25064, gadget_id = 70690001, pos = { x = 138.596, y = 135.493, z = -192.848 }, rot = { x = 90.000, y = 165.639, z = 0.000 }, level = 20, area_id = 401 },
	[25065] = { config_id = 25065, gadget_id = 70310409, pos = { x = -158.357, y = 120.000, z = 292.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[25067] = { config_id = 25067, gadget_id = 70350085, pos = { x = 24.044, y = 122.000, z = 364.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	[25068] = { config_id = 25068, gadget_id = 70690001, pos = { x = 138.596, y = 140.307, z = -192.848 }, rot = { x = 90.000, y = 165.639, z = 0.000 }, level = 20, area_id = 401 },
	[25069] = { config_id = 25069, gadget_id = 70690001, pos = { x = 138.596, y = 130.307, z = -192.848 }, rot = { x = 90.000, y = 165.639, z = 0.000 }, level = 20, area_id = 401 },
	[25070] = { config_id = 25070, gadget_id = 70310352, pos = { x = -89.454, y = 120.912, z = 310.869 }, rot = { x = 0.000, y = 232.148, z = 0.000 }, level = 20, route_id = 900300011, area_id = 402 },
	[25071] = { config_id = 25071, gadget_id = 70310352, pos = { x = -83.942, y = 120.912, z = 299.970 }, rot = { x = 0.000, y = 258.155, z = 0.000 }, level = 20, route_id = 900300010, area_id = 402 },
	[25072] = { config_id = 25072, gadget_id = 70310350, pos = { x = -63.113, y = 120.000, z = 304.981 }, rot = { x = 0.000, y = 325.733, z = 0.000 }, level = 20, area_id = 402 },
	[25073] = { config_id = 25073, gadget_id = 70310408, pos = { x = -104.451, y = 120.000, z = 280.288 }, rot = { x = 0.000, y = 323.530, z = 0.000 }, level = 20, area_id = 402 },
	[25074] = { config_id = 25074, gadget_id = 70310408, pos = { x = -120.116, y = 120.000, z = 303.459 }, rot = { x = 0.000, y = 338.614, z = 0.000 }, level = 20, area_id = 402 },
	[25075] = { config_id = 25075, gadget_id = 70310350, pos = { x = -108.147, y = 120.000, z = 308.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	[25076] = { config_id = 25076, gadget_id = 70310350, pos = { x = -111.180, y = 120.000, z = 278.711 }, rot = { x = 0.000, y = 346.592, z = 0.000 }, level = 20, area_id = 402 },
	[25077] = { config_id = 25077, gadget_id = 70310351, pos = { x = 28.132, y = 120.000, z = 377.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	[25078] = { config_id = 25078, gadget_id = 70310421, pos = { x = 63.417, y = 112.911, z = 27.676 }, rot = { x = 345.032, y = 343.484, z = 23.719 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 402 },
	[25079] = { config_id = 25079, gadget_id = 70310422, pos = { x = 54.229, y = 115.117, z = 28.972 }, rot = { x = -0.001, y = 203.965, z = 325.945 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 402 },
	[25080] = { config_id = 25080, gadget_id = 70310420, pos = { x = 57.520, y = 108.424, z = 27.355 }, rot = { x = 0.000, y = 0.000, z = 180.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 402 },
	[25081] = { config_id = 25081, gadget_id = 70310419, pos = { x = 56.046, y = 103.477, z = 24.893 }, rot = { x = 0.000, y = 0.000, z = 180.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 402 },
	[25082] = { config_id = 25082, gadget_id = 70310422, pos = { x = 26.615, y = 117.797, z = 344.895 }, rot = { x = 0.000, y = 119.535, z = 354.273 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 402 },
	[25083] = { config_id = 25083, gadget_id = 70220110, pos = { x = -307.419, y = 127.116, z = 300.588 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[25084] = { config_id = 25084, gadget_id = 70220110, pos = { x = -114.610, y = 121.875, z = 294.823 }, rot = { x = 0.000, y = 335.928, z = 0.000 }, level = 20, area_id = 402 },
	[25085] = { config_id = 25085, gadget_id = 70220110, pos = { x = -114.581, y = 124.754, z = 295.182 }, rot = { x = 0.000, y = 335.928, z = 0.000 }, level = 20, area_id = 402 },
	[25086] = { config_id = 25086, gadget_id = 70220110, pos = { x = -113.475, y = 126.364, z = 292.360 }, rot = { x = 0.000, y = 335.928, z = 0.000 }, level = 20, area_id = 402 },
	[25087] = { config_id = 25087, gadget_id = 70220110, pos = { x = -112.304, y = 124.754, z = 289.661 }, rot = { x = 0.000, y = 335.928, z = 0.000 }, level = 20, area_id = 402 },
	[25088] = { config_id = 25088, gadget_id = 70220110, pos = { x = -112.237, y = 121.875, z = 289.510 }, rot = { x = 0.000, y = 335.928, z = 0.000 }, level = 20, area_id = 402 },
	[25089] = { config_id = 25089, gadget_id = 70310409, pos = { x = -11.649, y = 120.000, z = 329.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	[25090] = { config_id = 25090, gadget_id = 70310422, pos = { x = 25.413, y = 115.749, z = 335.160 }, rot = { x = 356.865, y = 111.553, z = 338.692 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 402 },
	[25091] = { config_id = 25091, gadget_id = 70310409, pos = { x = 9.330, y = 120.000, z = 380.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	[25093] = { config_id = 25093, gadget_id = 70310350, pos = { x = -8.465, y = 120.000, z = 372.281 }, rot = { x = 0.000, y = 339.171, z = 0.000 }, level = 20, area_id = 402 },
	[25094] = { config_id = 25094, gadget_id = 70310408, pos = { x = 0.270, y = 120.000, z = 336.546 }, rot = { x = 0.000, y = 336.516, z = 0.000 }, level = 20, area_id = 402 },
	[25095] = { config_id = 25095, gadget_id = 70310422, pos = { x = 20.099, y = 108.569, z = 342.200 }, rot = { x = 348.554, y = 88.651, z = 341.645 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 402 },
	[25096] = { config_id = 25096, gadget_id = 70310422, pos = { x = 21.071, y = 110.521, z = 335.109 }, rot = { x = 0.000, y = 119.535, z = 343.923 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 402 },
	[25097] = { config_id = 25097, gadget_id = 70690011, pos = { x = 128.587, y = 120.000, z = -85.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[25098] = { config_id = 25098, gadget_id = 70350085, pos = { x = 55.425, y = 122.000, z = 319.153 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	[25099] = { config_id = 25099, gadget_id = 70310408, pos = { x = 39.933, y = 120.000, z = 378.581 }, rot = { x = 0.000, y = 25.903, z = 0.000 }, level = 20, area_id = 402 },
	[25102] = { config_id = 25102, gadget_id = 70310350, pos = { x = 53.187, y = 120.000, z = 368.729 }, rot = { x = 0.000, y = 54.733, z = 0.000 }, level = 20, area_id = 402 },
	[25103] = { config_id = 25103, gadget_id = 70290059, pos = { x = 58.827, y = 120.046, z = 350.763 }, rot = { x = 0.000, y = 254.886, z = 0.000 }, level = 20, area_id = 402 },
	[25104] = { config_id = 25104, gadget_id = 70310351, pos = { x = 42.444, y = 120.154, z = 348.247 }, rot = { x = 0.000, y = 28.141, z = 0.000 }, level = 20, area_id = 402 },
	[25105] = { config_id = 25105, gadget_id = 70290060, pos = { x = 50.039, y = 124.156, z = 349.365 }, rot = { x = 0.000, y = 351.209, z = 0.000 }, level = 20, area_id = 402 },
	[25106] = { config_id = 25106, gadget_id = 70310409, pos = { x = 68.477, y = 120.000, z = 331.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	[25107] = { config_id = 25107, gadget_id = 70350085, pos = { x = 30.697, y = 122.000, z = 206.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	[25109] = { config_id = 25109, gadget_id = 70290311, pos = { x = 54.039, y = 119.893, z = 270.448 }, rot = { x = 0.000, y = 27.604, z = 0.000 }, level = 20, area_id = 402 },
	[25110] = { config_id = 25110, gadget_id = 70290311, pos = { x = 44.953, y = 119.916, z = 274.728 }, rot = { x = 0.000, y = 30.908, z = 0.000 }, level = 20, area_id = 402 },
	[25111] = { config_id = 25111, gadget_id = 70220110, pos = { x = 68.937, y = 120.000, z = 246.647 }, rot = { x = 0.000, y = 68.825, z = 0.000 }, level = 20, area_id = 402 },
	[25112] = { config_id = 25112, gadget_id = 70220110, pos = { x = 73.589, y = 120.000, z = 248.449 }, rot = { x = 0.000, y = 52.211, z = 0.000 }, level = 20, area_id = 402 },
	[25113] = { config_id = 25113, gadget_id = 70220110, pos = { x = 77.522, y = 120.000, z = 251.498 }, rot = { x = 0.000, y = 34.794, z = 0.000 }, level = 20, area_id = 402 },
	[25114] = { config_id = 25114, gadget_id = 70220110, pos = { x = 80.364, y = 120.000, z = 255.589 }, rot = { x = 0.000, y = 18.682, z = 0.000 }, level = 20, area_id = 402 },
	[25115] = { config_id = 25115, gadget_id = 70220110, pos = { x = 81.961, y = 120.000, z = 260.311 }, rot = { x = 0.000, y = 3.255, z = 0.000 }, level = 20, area_id = 402 },
	[25116] = { config_id = 25116, gadget_id = 70220110, pos = { x = 82.244, y = 120.000, z = 265.286 }, rot = { x = 0.000, y = 345.228, z = 0.000 }, level = 20, area_id = 402 },
	[25117] = { config_id = 25117, gadget_id = 70220110, pos = { x = 80.977, y = 120.000, z = 270.090 }, rot = { x = 0.000, y = 345.228, z = 0.000 }, level = 20, area_id = 402 },
	[25118] = { config_id = 25118, gadget_id = 70220110, pos = { x = 68.937, y = 120.000, z = 246.647 }, rot = { x = 0.000, y = 68.825, z = 0.000 }, level = 20, area_id = 402 },
	[25119] = { config_id = 25119, gadget_id = 70220110, pos = { x = 73.589, y = 120.000, z = 248.449 }, rot = { x = 0.000, y = 52.211, z = 0.000 }, level = 20, area_id = 402 },
	[25120] = { config_id = 25120, gadget_id = 70220110, pos = { x = 77.522, y = 120.000, z = 251.498 }, rot = { x = 0.000, y = 34.794, z = 0.000 }, level = 20, area_id = 402 },
	[25121] = { config_id = 25121, gadget_id = 70220110, pos = { x = 80.364, y = 120.000, z = 255.589 }, rot = { x = 0.000, y = 18.682, z = 0.000 }, level = 20, area_id = 402 },
	[25122] = { config_id = 25122, gadget_id = 70220110, pos = { x = 81.961, y = 120.000, z = 260.311 }, rot = { x = 0.000, y = 3.255, z = 0.000 }, level = 20, area_id = 402 },
	[25123] = { config_id = 25123, gadget_id = 70220110, pos = { x = 82.244, y = 120.000, z = 265.286 }, rot = { x = 0.000, y = 345.228, z = 0.000 }, level = 20, area_id = 402 },
	[25124] = { config_id = 25124, gadget_id = 70220110, pos = { x = 80.977, y = 120.000, z = 270.090 }, rot = { x = 0.000, y = 345.228, z = 0.000 }, level = 20, area_id = 402 },
	[25125] = { config_id = 25125, gadget_id = 70220110, pos = { x = 25.737, y = 120.000, z = 276.314 }, rot = { x = 0.000, y = 358.108, z = 0.000 }, level = 20, area_id = 402 },
	[25126] = { config_id = 25126, gadget_id = 70220110, pos = { x = 25.573, y = 120.000, z = 281.276 }, rot = { x = 0.000, y = 21.813, z = 0.000 }, level = 20, area_id = 402 },
	[25127] = { config_id = 25127, gadget_id = 70220110, pos = { x = 27.423, y = 120.000, z = 285.897 }, rot = { x = 0.000, y = 39.010, z = 0.000 }, level = 20, area_id = 402 },
	[25128] = { config_id = 25128, gadget_id = 70220110, pos = { x = 30.556, y = 120.000, z = 289.765 }, rot = { x = 0.000, y = 57.954, z = 0.000 }, level = 20, area_id = 402 },
	[25129] = { config_id = 25129, gadget_id = 70220110, pos = { x = 34.761, y = 120.000, z = 292.397 }, rot = { x = 0.000, y = 57.954, z = 0.000 }, level = 20, area_id = 402 },
	[25130] = { config_id = 25130, gadget_id = 70220110, pos = { x = 25.737, y = 120.000, z = 276.314 }, rot = { x = 0.000, y = 358.108, z = 0.000 }, level = 20, area_id = 402 },
	[25131] = { config_id = 25131, gadget_id = 70220110, pos = { x = 25.573, y = 120.000, z = 281.276 }, rot = { x = 0.000, y = 21.813, z = 0.000 }, level = 20, area_id = 402 },
	[25132] = { config_id = 25132, gadget_id = 70220110, pos = { x = 27.423, y = 120.000, z = 285.897 }, rot = { x = 0.000, y = 39.010, z = 0.000 }, level = 20, area_id = 402 },
	[25133] = { config_id = 25133, gadget_id = 70220110, pos = { x = 30.556, y = 120.000, z = 289.765 }, rot = { x = 0.000, y = 57.954, z = 0.000 }, level = 20, area_id = 402 },
	[25134] = { config_id = 25134, gadget_id = 70220110, pos = { x = 34.761, y = 120.000, z = 292.397 }, rot = { x = 0.000, y = 57.954, z = 0.000 }, level = 20, area_id = 402 },
	[25135] = { config_id = 25135, gadget_id = 70310350, pos = { x = 75.042, y = 120.000, z = 306.233 }, rot = { x = 0.000, y = 66.354, z = 0.000 }, level = 20, area_id = 402 },
	[25136] = { config_id = 25136, gadget_id = 70310350, pos = { x = 37.463, y = 120.000, z = 306.532 }, rot = { x = 0.000, y = 118.814, z = 0.000 }, level = 20, area_id = 402 },
	[25137] = { config_id = 25137, gadget_id = 70310408, pos = { x = 79.932, y = 120.000, z = 295.135 }, rot = { x = 0.000, y = 79.281, z = 0.000 }, level = 20, area_id = 402 },
	[25138] = { config_id = 25138, gadget_id = 70350085, pos = { x = 29.303, y = 122.000, z = 119.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	[25142] = { config_id = 25142, gadget_id = 70690001, pos = { x = 125.261, y = 145.000, z = -94.206 }, rot = { x = 2.300, y = 202.896, z = 0.000 }, level = 20, area_id = 401 },
	[25144] = { config_id = 25144, gadget_id = 70690001, pos = { x = 121.374, y = 145.000, z = -103.411 }, rot = { x = 2.300, y = 202.896, z = 0.000 }, level = 20, area_id = 401 },
	[25146] = { config_id = 25146, gadget_id = 70310410, pos = { x = -287.617, y = 120.000, z = 277.873 }, rot = { x = 0.000, y = 333.354, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 },
	[25147] = { config_id = 25147, gadget_id = 70690001, pos = { x = 117.486, y = 145.000, z = -112.616 }, rot = { x = 2.300, y = 202.896, z = 0.000 }, level = 20, area_id = 401 },
	[25148] = { config_id = 25148, gadget_id = 70350085, pos = { x = 72.313, y = 122.000, z = 25.819 }, rot = { x = 0.000, y = 4.300, z = 0.000 }, level = 20, area_id = 402 },
	[25150] = { config_id = 25150, gadget_id = 70290059, pos = { x = 82.463, y = 120.046, z = 39.534 }, rot = { x = 0.000, y = 346.993, z = 0.000 }, level = 20, area_id = 402 },
	[25151] = { config_id = 25151, gadget_id = 70310351, pos = { x = 87.458, y = 120.154, z = 52.111 }, rot = { x = 0.000, y = 132.677, z = 0.000 }, level = 20, area_id = 402 },
	[25152] = { config_id = 25152, gadget_id = 70290060, pos = { x = 86.728, y = 124.156, z = 45.413 }, rot = { x = 0.000, y = 95.745, z = 0.000 }, level = 20, area_id = 402 },
	[25153] = { config_id = 25153, gadget_id = 70290060, pos = { x = 74.503, y = 126.044, z = 34.321 }, rot = { x = 0.231, y = 153.870, z = 351.187 }, level = 20, area_id = 402 },
	[25154] = { config_id = 25154, gadget_id = 70310350, pos = { x = 14.282, y = 120.000, z = 78.000 }, rot = { x = 0.000, y = 83.475, z = 0.000 }, level = 20, area_id = 402 },
	[25155] = { config_id = 25155, gadget_id = 70310350, pos = { x = 65.513, y = 120.000, z = 92.295 }, rot = { x = 0.000, y = 63.948, z = 0.000 }, level = 20, area_id = 402 },
	[25156] = { config_id = 25156, gadget_id = 70310408, pos = { x = 17.860, y = 120.000, z = 67.868 }, rot = { x = 0.000, y = 49.028, z = 0.000 }, level = 20, area_id = 402 },
	[25157] = { config_id = 25157, gadget_id = 70690001, pos = { x = 114.621, y = 145.000, z = -121.927 }, rot = { x = 1.837, y = 179.658, z = 14.835 }, level = 20, area_id = 401 },
	[25159] = { config_id = 25159, gadget_id = 70310419, pos = { x = 15.617, y = 103.068, z = 320.452 }, rot = { x = 0.000, y = 314.177, z = 180.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 402 },
	[25160] = { config_id = 25160, gadget_id = 70690001, pos = { x = 114.783, y = 145.000, z = -131.917 }, rot = { x = 1.837, y = 179.658, z = 14.835 }, level = 20, area_id = 401 },
	[25162] = { config_id = 25162, gadget_id = 70690001, pos = { x = 114.946, y = 145.000, z = -141.908 }, rot = { x = 1.837, y = 179.658, z = 14.835 }, level = 20, area_id = 401 },
	[25163] = { config_id = 25163, gadget_id = 70220110, pos = { x = 46.827, y = 120.000, z = 65.163 }, rot = { x = 0.000, y = 57.338, z = 0.000 }, level = 20, area_id = 402 },
	[25164] = { config_id = 25164, gadget_id = 70220110, pos = { x = 52.580, y = 120.000, z = 68.851 }, rot = { x = 0.000, y = 8.245, z = 0.000 }, level = 20, area_id = 402 },
	[25165] = { config_id = 25165, gadget_id = 70220110, pos = { x = 53.554, y = 120.000, z = 75.574 }, rot = { x = 0.000, y = 323.868, z = 0.000 }, level = 20, area_id = 402 },
	[25166] = { config_id = 25166, gadget_id = 70220110, pos = { x = 49.550, y = 120.000, z = 81.058 }, rot = { x = 0.000, y = 323.868, z = 0.000 }, level = 20, area_id = 402 },
	[25167] = { config_id = 25167, gadget_id = 70310421, pos = { x = 58.188, y = 118.903, z = 27.513 }, rot = { x = 0.000, y = 336.462, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 402 },
	[25168] = { config_id = 25168, gadget_id = 70220110, pos = { x = 40.682, y = 120.000, z = 68.300 }, rot = { x = 0.000, y = 341.827, z = 0.000 }, level = 20, area_id = 402 },
	[25169] = { config_id = 25169, gadget_id = 70220110, pos = { x = 38.577, y = 120.000, z = 74.712 }, rot = { x = 0.000, y = 34.158, z = 0.000 }, level = 20, area_id = 402 },
	[25170] = { config_id = 25170, gadget_id = 70220110, pos = { x = 42.374, y = 120.000, z = 80.308 }, rot = { x = 0.000, y = 34.158, z = 0.000 }, level = 20, area_id = 402 },
	[25171] = { config_id = 25171, gadget_id = 70350085, pos = { x = 117.858, y = 122.000, z = -60.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	[25173] = { config_id = 25173, gadget_id = 70310420, pos = { x = 58.720, y = 125.331, z = 25.758 }, rot = { x = 0.000, y = 0.000, z = 0.296 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 402 },
	[25174] = { config_id = 25174, gadget_id = 70690001, pos = { x = 117.091, y = 144.000, z = -153.421 }, rot = { x = 1.837, y = 152.177, z = 14.835 }, level = 20, area_id = 401 },
	[25175] = { config_id = 25175, gadget_id = 70310420, pos = { x = 59.502, y = 118.641, z = 24.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 402 },
	[25177] = { config_id = 25177, gadget_id = 70690001, pos = { x = 121.845, y = 144.000, z = -162.210 }, rot = { x = 1.837, y = 152.177, z = 14.835 }, level = 20, area_id = 401 },
	[25178] = { config_id = 25178, gadget_id = 70290059, pos = { x = 112.645, y = 120.000, z = -16.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	[25179] = { config_id = 25179, gadget_id = 70310409, pos = { x = 81.895, y = 120.000, z = -24.953 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	[25180] = { config_id = 25180, gadget_id = 70310409, pos = { x = 98.082, y = 120.000, z = 15.382 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	[25181] = { config_id = 25181, gadget_id = 70220110, pos = { x = 93.474, y = 124.412, z = -18.666 }, rot = { x = 0.000, y = 238.984, z = 0.000 }, level = 20, area_id = 402 },
	[25182] = { config_id = 25182, gadget_id = 70220110, pos = { x = 93.834, y = 121.533, z = -18.651 }, rot = { x = 0.000, y = 238.984, z = 0.000 }, level = 20, area_id = 402 },
	[25183] = { config_id = 25183, gadget_id = 70220110, pos = { x = 96.142, y = 126.022, z = -17.226 }, rot = { x = 0.000, y = 238.984, z = 0.000 }, level = 20, area_id = 402 },
	[25184] = { config_id = 25184, gadget_id = 70220110, pos = { x = 98.679, y = 124.412, z = -15.738 }, rot = { x = 0.000, y = 238.984, z = 0.000 }, level = 20, area_id = 402 },
	[25185] = { config_id = 25185, gadget_id = 70220110, pos = { x = 98.820, y = 121.533, z = -15.653 }, rot = { x = 0.000, y = 238.984, z = 0.000 }, level = 20, area_id = 402 },
	[25186] = { config_id = 25186, gadget_id = 70220110, pos = { x = 96.142, y = 120.103, z = -17.226 }, rot = { x = 0.000, y = 238.984, z = 0.000 }, level = 20, area_id = 402 },
	[25187] = { config_id = 25187, gadget_id = 70310350, pos = { x = 110.177, y = 120.000, z = 0.692 }, rot = { x = 0.000, y = 60.539, z = 0.000 }, level = 20, area_id = 402 },
	[25188] = { config_id = 25188, gadget_id = 70310350, pos = { x = 95.705, y = 120.000, z = -52.206 }, rot = { x = 0.000, y = 29.147, z = 0.000 }, level = 20, area_id = 402 },
	[25189] = { config_id = 25189, gadget_id = 70310408, pos = { x = 88.828, y = 120.000, z = -41.763 }, rot = { x = 0.000, y = 88.773, z = 0.000 }, level = 20, area_id = 402 },
	[25193] = { config_id = 25193, gadget_id = 70690001, pos = { x = 126.599, y = 144.000, z = -170.998 }, rot = { x = 1.837, y = 152.177, z = 14.835 }, level = 20, area_id = 401 },
	[25199] = { config_id = 25199, gadget_id = 70360025, pos = { x = 138.667, y = 121.282, z = -193.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[25201] = { config_id = 25201, gadget_id = 70350085, pos = { x = 138.667, y = 121.282, z = -193.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 }
}

-- 区域
regions = {
	-- 活动玩法区域
	[25050] = { config_id = 25050, shape = RegionShape.POLYGON, pos = { x = -29.444, y = 200.000, z = 71.180 }, height = 200.000, point_array = { { x = 335.966, y = -219.125 }, { x = 88.535, y = -319.375 }, { x = -394.854, y = 258.419 }, { x = -322.937, y = 388.492 }, { x = 93.172, y = 461.735 } }, area_id = 402 },
	[25066] = { config_id = 25066, shape = RegionShape.SPHERE, radius = 25, pos = { x = -112.271, y = 120.000, z = 293.757 }, area_id = 402 },
	-- 教学区域
	[25190] = { config_id = 25190, shape = RegionShape.SPHERE, radius = 5, pos = { x = -297.806, y = 120.000, z = 354.489 }, area_id = 403 },
	[25196] = { config_id = 25196, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 138.667, y = 121.282, z = -193.593 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1025052, name = "ANY_GADGET_DIE_25052", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_25052", action = "action_EVENT_ANY_GADGET_DIE_25052", trigger_count = 0 },
	{ config_id = 1025059, name = "ANY_GADGET_DIE_25059", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_25059", action = "action_EVENT_ANY_GADGET_DIE_25059", trigger_count = 0 },
	{ config_id = 1025066, name = "ENTER_REGION_25066", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_25066", action = "action_EVENT_ENTER_REGION_25066", trigger_count = 0 },
	{ config_id = 1025092, name = "ANY_GADGET_DIE_25092", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_25092", action = "action_EVENT_ANY_GADGET_DIE_25092", trigger_count = 0 },
	{ config_id = 1025100, name = "ANY_GADGET_DIE_25100", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_25100", action = "action_EVENT_ANY_GADGET_DIE_25100", trigger_count = 0 },
	{ config_id = 1025108, name = "ANY_GADGET_DIE_25108", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_25108", action = "action_EVENT_ANY_GADGET_DIE_25108", trigger_count = 0 },
	{ config_id = 1025139, name = "ANY_GADGET_DIE_25139", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_25139", action = "action_EVENT_ANY_GADGET_DIE_25139", trigger_count = 0 },
	{ config_id = 1025149, name = "ANY_GADGET_DIE_25149", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_25149", action = "action_EVENT_ANY_GADGET_DIE_25149", trigger_count = 0 },
	{ config_id = 1025172, name = "ANY_GADGET_DIE_25172", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_25172", action = "action_EVENT_ANY_GADGET_DIE_25172", trigger_count = 0 },
	{ config_id = 1025191, name = "ANY_GADGET_DIE_25191", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_25191", action = "action_EVENT_ANY_GADGET_DIE_25191", trigger_count = 0 },
	{ config_id = 1025210, name = "CHALLENGE_SUCCESS_25210", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "condition_EVENT_CHALLENGE_SUCCESS_25210", action = "action_EVENT_CHALLENGE_SUCCESS_25210", trigger_count = 0 }
}

-- 点位
points = {
	-- 浪船创生点
	{ config_id = 25021, pos = { x = -297.521, y = 120.000, z = 359.114 }, rot = { x = 0.000, y = 181.026, z = 0.000 }, area_id = 403 },
	-- 玩家复活点
	{ config_id = 25022, pos = { x = -291.371, y = 120.000, z = 362.918 }, rot = { x = 0.000, y = 231.240, z = 0.000 }, area_id = 403 }
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
		gadgets = { 25001, 25030 },
		regions = { 25190 },
		triggers = { "CHALLENGE_SUCCESS_25210" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 25002, 25004, 25005, 25023, 25024, 25032, 25033, 25035, 25037, 25040, 25042, 25043, 25044, 25045, 25046, 25047, 25048, 25049, 25054, 25055, 25056, 25078, 25079, 25080, 25081, 25082, 25083, 25090, 25095, 25096, 25146, 25159, 25167, 25173, 25175 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_25052" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 25003, 25006, 25012, 25025, 25026, 25038, 25061, 25063, 25065, 25070, 25071, 25072, 25073, 25074, 25075, 25076, 25084, 25085, 25086, 25087, 25088 },
		regions = { 25066 },
		triggers = { "ANY_GADGET_DIE_25059", "ENTER_REGION_25066" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 25007, 25027, 25057, 25058, 25060, 25089, 25091, 25093, 25094 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_25092" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 25008, 25009, 25010, 25013, 25014, 25015, 25051, 25053, 25067, 25077, 25099, 25102, 25103, 25104, 25105, 25106 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_25100" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 25011, 25016, 25017, 25031, 25039, 25098, 25109, 25110, 25111, 25112, 25113, 25114, 25115, 25116, 25117, 25118, 25119, 25120, 25121, 25122, 25123, 25124, 25125, 25126, 25127, 25128, 25129, 25130, 25131, 25132, 25133, 25134, 25135, 25136, 25137 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_25108" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 25018, 25028, 25029, 25034, 25036, 25107 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_25139" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 25019, 25041, 25062, 25138, 25150, 25151, 25152, 25153, 25154, 25155, 25156, 25163, 25164, 25165, 25166, 25168, 25169, 25170 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_25149" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 25020, 25148, 25178, 25179, 25180, 25181, 25182, 25183, 25184, 25185, 25186, 25187, 25188, 25189 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_25172" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 25097, 25142, 25144, 25147, 25157, 25160, 25162, 25171, 25174, 25177, 25193 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_25191" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 25064, 25068, 25069, 25199, 25201 },
		regions = { 25196 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 25050 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_25052(context, evt)
	if 25146 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_25052(context, evt)
	-- 将configid为 25042 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25042, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25043 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25043, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25044 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25044, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003025, 3)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 25002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_25059(context, evt)
	if 25004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_25059(context, evt)
	-- 将configid为 25006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003025, 4)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 25003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 25038 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25038, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25063 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25063, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_25066(context, evt)
	if evt.param1 ~= 25066 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	--弹出Reminder提示玩家不处于要求的状态下，状态ID为2代表玩家处于开船状态
	    if 2 ~= ScriptLib.GetPlayerVehicleType(context,context.uid) then
	      if 0 ~= 0 then
	        ScriptLib.ShowReminder(context, 0)
	        return false
	      else
	        return false
	      end
	    else
	      return true
	    end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_25066(context, evt)
	-- 将configid为 25070 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25070, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25071 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25071, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25057 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25057, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25060 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25060, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_25092(context, evt)
	if 25006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_25092(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 25058 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 25007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003025, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_25100(context, evt)
	if 25007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_25100(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 25067 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 25010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003025, 6)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003025, 3)
	
	-- 将configid为 25051 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25051, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25053 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25053, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_25108(context, evt)
	if 25010 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_25108(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 25098 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 25011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003025, 7)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003025, 4)
	
	-- 将configid为 25109 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25109, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 25110 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25110, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_25139(context, evt)
	if 25011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_25139(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 25107 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 25018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003025, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_25149(context, evt)
	if 25018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_25149(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 25138 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 25019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003025, 9)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003025, 6)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003025, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_25172(context, evt)
	if 25019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_25172(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 25148 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 25020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 25020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003025, 10)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003025, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_25191(context, evt)
	if 25020 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_25191(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 25171 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003025, 8)
	
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003025, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_SUCCESS_25210(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_25210(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 25196 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 25199 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 25201 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003025, 9)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003025, 10)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003025, 11)
	
	return 0
end

require "V2_8/BoatRace_V2"
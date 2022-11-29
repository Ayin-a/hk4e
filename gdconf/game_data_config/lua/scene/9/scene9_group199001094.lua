-- 基础信息
local base_info = {
	group_id = 199001094
}

-- DEFS_MISCS
local defs = {
        --开启操作台configID
        starter_gadget = 94001,
        --终点Region的ConfigID
        end_region = 94159,
        --限定region的configID
        play_region =94031 ,
        --限定region的suite
        play_region_suite =13 ,
        --gallery_id
        gallery_id =22004 ,

        guide_region = 94093,

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
	[94001] = { config_id = 94001, gadget_id = 70350250, pos = { x = 648.534, y = 120.000, z = 181.444 }, rot = { x = 0.000, y = 141.627, z = 0.000 }, level = 20, area_id = 402, is_enable_interact = false },
	[94002] = { config_id = 94002, gadget_id = 70310410, pos = { x = 683.663, y = 120.000, z = 131.566 }, rot = { x = 0.000, y = 151.334, z = 0.000 }, level = 20, state = GadgetState.GearStart, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 402, is_enable_interact = false },
	[94003] = { config_id = 94003, gadget_id = 70290059, pos = { x = 198.761, y = 120.000, z = -368.039 }, rot = { x = 0.000, y = 343.619, z = 0.000 }, level = 20, area_id = 401, is_enable_interact = false },
	[94004] = { config_id = 94004, gadget_id = 70350085, pos = { x = 651.067, y = 121.000, z = 41.666 }, rot = { x = 0.000, y = 344.636, z = 0.000 }, level = 20, area_id = 402, is_enable_interact = false },
	[94005] = { config_id = 94005, gadget_id = 70350085, pos = { x = 419.817, y = 121.000, z = 33.048 }, rot = { x = 0.000, y = 267.868, z = 0.000 }, level = 20, area_id = 402, is_enable_interact = false },
	[94006] = { config_id = 94006, gadget_id = 70350085, pos = { x = 683.663, y = 121.000, z = 131.566 }, rot = { x = 0.000, y = 172.912, z = 0.000 }, level = 20, area_id = 402, is_enable_interact = false },
	[94007] = { config_id = 94007, gadget_id = 70310350, pos = { x = 702.686, y = 120.000, z = 124.915 }, rot = { x = 0.000, y = 252.820, z = 0.000 }, level = 20, area_id = 402 },
	[94008] = { config_id = 94008, gadget_id = 70290060, pos = { x = 195.169, y = 124.305, z = -359.847 }, rot = { x = 0.000, y = 66.137, z = 0.000 }, level = 20, area_id = 401, is_enable_interact = false },
	[94009] = { config_id = 94009, gadget_id = 70310351, pos = { x = 192.217, y = 120.000, z = -352.935 }, rot = { x = 0.000, y = 23.685, z = 0.000 }, level = 20, area_id = 401, is_enable_interact = false },
	[94010] = { config_id = 94010, gadget_id = 70310350, pos = { x = 672.209, y = 120.000, z = 173.161 }, rot = { x = 0.000, y = 233.572, z = 0.000 }, level = 1, area_id = 402 },
	[94011] = { config_id = 94011, gadget_id = 70310350, pos = { x = 658.658, y = 120.000, z = 146.326 }, rot = { x = 0.000, y = 235.728, z = 0.000 }, level = 1, area_id = 402 },
	[94012] = { config_id = 94012, gadget_id = 70310352, pos = { x = 697.392, y = 120.000, z = 101.080 }, rot = { x = 0.000, y = 11.201, z = 0.000 }, level = 20, state = GadgetState.GearStart, route_id = 900100050, area_id = 402 },
	[94013] = { config_id = 94013, gadget_id = 70310408, pos = { x = 686.728, y = 120.000, z = 154.048 }, rot = { x = 0.000, y = 242.772, z = 0.000 }, level = 1, area_id = 402 },
	[94014] = { config_id = 94014, gadget_id = 70310348, pos = { x = 678.447, y = 121.000, z = 149.482 }, rot = { x = 0.000, y = 171.196, z = 0.000 }, level = 1, area_id = 402 },
	[94015] = { config_id = 94015, gadget_id = 70350277, pos = { x = 651.209, y = 120.000, z = 178.150 }, rot = { x = 0.000, y = 147.648, z = 0.000 }, level = 20, area_id = 402 },
	[94016] = { config_id = 94016, gadget_id = 70220110, pos = { x = 678.447, y = 123.000, z = 149.482 }, rot = { x = 0.000, y = 171.196, z = 0.000 }, level = 1, area_id = 402 },
	[94017] = { config_id = 94017, gadget_id = 70310348, pos = { x = 678.447, y = 125.000, z = 149.482 }, rot = { x = 0.000, y = 171.196, z = 0.000 }, level = 1, area_id = 402 },
	[94018] = { config_id = 94018, gadget_id = 70310348, pos = { x = 669.994, y = 125.000, z = 144.601 }, rot = { x = 0.000, y = 171.196, z = 0.000 }, level = 1, area_id = 402 },
	[94019] = { config_id = 94019, gadget_id = 70310352, pos = { x = 686.633, y = 120.000, z = 100.908 }, rot = { x = 0.000, y = 314.817, z = 0.000 }, level = 20, state = GadgetState.GearStart, route_id = 900100051, area_id = 402 },
	[94020] = { config_id = 94020, gadget_id = 70350085, pos = { x = 691.444, y = 121.000, z = 72.430 }, rot = { x = 0.000, y = 2.234, z = 0.000 }, level = 20, area_id = 402, is_enable_interact = false },
	[94021] = { config_id = 94021, gadget_id = 70350085, pos = { x = 322.620, y = 121.000, z = -159.706 }, rot = { x = 0.000, y = 186.387, z = 0.000 }, level = 20, area_id = 402, is_enable_interact = false },
	[94022] = { config_id = 94022, gadget_id = 70310408, pos = { x = 352.326, y = 120.000, z = -98.473 }, rot = { x = 0.000, y = 284.106, z = 0.000 }, level = 1, area_id = 402 },
	[94023] = { config_id = 94023, gadget_id = 70350085, pos = { x = 230.572, y = 121.000, z = -333.455 }, rot = { x = 0.000, y = 338.377, z = 0.000 }, level = 20, area_id = 401, is_enable_interact = false },
	[94024] = { config_id = 94024, gadget_id = 70310348, pos = { x = -8.610, y = 121.000, z = -449.688 }, rot = { x = 0.000, y = 1.847, z = 0.000 }, level = 1, area_id = 401 },
	[94025] = { config_id = 94025, gadget_id = 70220110, pos = { x = 347.741, y = 121.485, z = -43.683 }, rot = { x = 0.000, y = 338.534, z = 0.000 }, level = 20, area_id = 402 },
	[94026] = { config_id = 94026, gadget_id = 70220110, pos = { x = 344.857, y = 121.485, z = -43.167 }, rot = { x = 0.000, y = 338.534, z = 0.000 }, level = 20, area_id = 402 },
	[94027] = { config_id = 94027, gadget_id = 70220110, pos = { x = 343.979, y = 124.189, z = -43.032 }, rot = { x = 0.000, y = 338.534, z = 0.000 }, level = 20, area_id = 402 },
	[94028] = { config_id = 94028, gadget_id = 70220110, pos = { x = 349.029, y = 124.212, z = -43.935 }, rot = { x = 0.000, y = 338.534, z = 0.000 }, level = 20, area_id = 402 },
	[94029] = { config_id = 94029, gadget_id = 70220110, pos = { x = 346.327, y = 126.195, z = -43.439 }, rot = { x = 0.000, y = 338.534, z = 0.000 }, level = 20, area_id = 402 },
	[94030] = { config_id = 94030, gadget_id = 70350085, pos = { x = 6.206, y = 121.000, z = -436.232 }, rot = { x = 0.000, y = 163.729, z = 0.000 }, level = 20, area_id = 401, is_enable_interact = false },
	[94033] = { config_id = 94033, gadget_id = 70350085, pos = { x = -206.974, y = 120.462, z = -678.893 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400, is_enable_interact = false },
	[94034] = { config_id = 94034, gadget_id = 70310408, pos = { x = -67.961, y = 120.000, z = -499.681 }, rot = { x = 0.000, y = 141.759, z = 0.000 }, level = 1, area_id = 401 },
	[94035] = { config_id = 94035, gadget_id = 70310408, pos = { x = -95.049, y = 120.000, z = -486.411 }, rot = { x = 0.000, y = 130.060, z = 0.000 }, level = 1, area_id = 401 },
	[94037] = { config_id = 94037, gadget_id = 70350085, pos = { x = 350.471, y = 121.000, z = -22.124 }, rot = { x = 0.000, y = 179.548, z = 0.000 }, level = 20, area_id = 402, is_enable_interact = false },
	[94038] = { config_id = 94038, gadget_id = 70310408, pos = { x = 371.878, y = 120.000, z = 0.626 }, rot = { x = 0.000, y = 120.142, z = 0.000 }, level = 1, area_id = 402 },
	[94039] = { config_id = 94039, gadget_id = 70310408, pos = { x = 343.004, y = 120.000, z = -1.897 }, rot = { x = 0.000, y = 108.443, z = 0.000 }, level = 1, area_id = 402 },
	[94040] = { config_id = 94040, gadget_id = 70310350, pos = { x = 366.939, y = 120.000, z = 35.418 }, rot = { x = 0.000, y = 159.483, z = 0.000 }, level = 1, area_id = 402 },
	[94041] = { config_id = 94041, gadget_id = 70310351, pos = { x = 356.442, y = 120.000, z = 28.177 }, rot = { x = 0.000, y = 179.548, z = 0.000 }, level = 1, area_id = 402 },
	[94042] = { config_id = 94042, gadget_id = 70310350, pos = { x = 400.729, y = 120.000, z = 19.538 }, rot = { x = 0.000, y = 171.951, z = 0.000 }, level = 1, area_id = 402 },
	[94043] = { config_id = 94043, gadget_id = 70310408, pos = { x = 380.814, y = 120.000, z = 40.423 }, rot = { x = 0.000, y = 170.430, z = 0.000 }, level = 1, area_id = 402 },
	[94044] = { config_id = 94044, gadget_id = 70310408, pos = { x = 349.748, y = 120.000, z = 18.324 }, rot = { x = 0.000, y = 120.142, z = 0.000 }, level = 1, area_id = 402 },
	[94045] = { config_id = 94045, gadget_id = 70290059, pos = { x = 384.459, y = 120.000, z = 11.656 }, rot = { x = 0.000, y = 150.677, z = 0.000 }, level = 1, area_id = 402 },
	[94046] = { config_id = 94046, gadget_id = 70220110, pos = { x = 367.699, y = 119.903, z = 18.996 }, rot = { x = 1.441, y = 43.077, z = 0.000 }, level = 1, area_id = 402 },
	[94047] = { config_id = 94047, gadget_id = 70220110, pos = { x = 381.510, y = 119.816, z = 27.511 }, rot = { x = 359.198, y = 58.693, z = 0.000 }, level = 1, area_id = 402 },
	[94048] = { config_id = 94048, gadget_id = 70220110, pos = { x = 373.385, y = 119.692, z = 23.780 }, rot = { x = 359.198, y = 58.693, z = 0.000 }, level = 1, area_id = 402 },
	[94049] = { config_id = 94049, gadget_id = 70310410, pos = { x = 350.471, y = 120.000, z = -22.124 }, rot = { x = 0.000, y = 12.715, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 402, is_enable_interact = false },
	[94050] = { config_id = 94050, gadget_id = 70310408, pos = { x = 396.753, y = 120.000, z = 43.147 }, rot = { x = 0.000, y = 178.204, z = 0.000 }, level = 1, area_id = 402 },
	[94052] = { config_id = 94052, gadget_id = 70220110, pos = { x = 690.747, y = 119.903, z = 107.911 }, rot = { x = 1.441, y = 162.999, z = 0.000 }, level = 1, area_id = 402 },
	[94053] = { config_id = 94053, gadget_id = 70220110, pos = { x = 692.458, y = 119.789, z = 93.676 }, rot = { x = 359.198, y = 178.615, z = 0.000 }, level = 1, area_id = 402 },
	[94054] = { config_id = 94054, gadget_id = 70220110, pos = { x = 692.058, y = 119.692, z = 100.597 }, rot = { x = 359.198, y = 178.615, z = 0.000 }, level = 1, area_id = 402 },
	[94055] = { config_id = 94055, gadget_id = 70350085, pos = { x = 574.487, y = 121.000, z = 38.236 }, rot = { x = 1.862, y = 341.694, z = 359.563 }, level = 20, area_id = 402, is_enable_interact = false },
	[94056] = { config_id = 94056, gadget_id = 70290060, pos = { x = 680.561, y = 125.462, z = 55.505 }, rot = { x = 0.000, y = 33.573, z = 344.082 }, level = 1, area_id = 402 },
	[94057] = { config_id = 94057, gadget_id = 70290060, pos = { x = 688.757, y = 125.117, z = 50.044 }, rot = { x = 0.000, y = 33.573, z = 344.082 }, level = 1, area_id = 402 },
	[94058] = { config_id = 94058, gadget_id = 70310348, pos = { x = 530.463, y = 120.581, z = 29.600 }, rot = { x = 0.000, y = 263.583, z = 0.000 }, level = 1, area_id = 402 },
	[94059] = { config_id = 94059, gadget_id = 70310408, pos = { x = 705.538, y = 120.000, z = 84.374 }, rot = { x = 0.000, y = 279.160, z = 0.000 }, level = 1, area_id = 402 },
	[94060] = { config_id = 94060, gadget_id = 70310352, pos = { x = 634.789, y = 120.000, z = 33.187 }, rot = { x = 0.000, y = 96.446, z = 0.000 }, level = 20, state = GadgetState.GearStart, route_id = 900100052, area_id = 402 },
	[94061] = { config_id = 94061, gadget_id = 70310350, pos = { x = 706.600, y = 120.000, z = 105.629 }, rot = { x = 0.000, y = 273.327, z = 0.000 }, level = 20, area_id = 402 },
	[94062] = { config_id = 94062, gadget_id = 70310350, pos = { x = 679.563, y = 120.000, z = 86.720 }, rot = { x = 0.000, y = 271.225, z = 0.000 }, level = 20, area_id = 402 },
	[94063] = { config_id = 94063, gadget_id = 70310352, pos = { x = 633.807, y = 120.000, z = 46.834 }, rot = { x = 0.000, y = 40.062, z = 0.000 }, level = 20, state = GadgetState.GearStart, route_id = 900100053, area_id = 402 },
	[94064] = { config_id = 94064, gadget_id = 70220110, pos = { x = 524.501, y = 120.581, z = 28.929 }, rot = { x = 0.000, y = 263.583, z = 0.000 }, level = 1, area_id = 402 },
	[94065] = { config_id = 94065, gadget_id = 70290311, pos = { x = 634.559, y = 120.000, z = 40.093 }, rot = { x = 0.000, y = 85.850, z = 0.000 }, level = 1, area_id = 402 },
	[94066] = { config_id = 94066, gadget_id = 70310348, pos = { x = 595.980, y = 125.000, z = 45.456 }, rot = { x = 0.000, y = 288.048, z = 0.000 }, level = 1, area_id = 402 },
	[94067] = { config_id = 94067, gadget_id = 70310348, pos = { x = 596.435, y = 125.000, z = 31.680 }, rot = { x = 0.000, y = 288.048, z = 0.000 }, level = 1, area_id = 402 },
	[94068] = { config_id = 94068, gadget_id = 70220110, pos = { x = 596.435, y = 123.000, z = 31.680 }, rot = { x = 0.000, y = 288.048, z = 0.000 }, level = 1, area_id = 402 },
	[94069] = { config_id = 94069, gadget_id = 70310348, pos = { x = 596.435, y = 121.000, z = 31.680 }, rot = { x = 0.000, y = 288.048, z = 0.000 }, level = 1, area_id = 402 },
	[94070] = { config_id = 94070, gadget_id = 70220110, pos = { x = 595.980, y = 123.000, z = 45.456 }, rot = { x = 0.000, y = 288.048, z = 0.000 }, level = 1, area_id = 402 },
	[94071] = { config_id = 94071, gadget_id = 70310348, pos = { x = 595.980, y = 121.000, z = 45.456 }, rot = { x = 0.000, y = 288.048, z = 0.000 }, level = 1, area_id = 402 },
	[94072] = { config_id = 94072, gadget_id = 70220110, pos = { x = 523.688, y = 120.581, z = 41.881 }, rot = { x = 0.000, y = 268.062, z = 0.000 }, level = 1, area_id = 402 },
	[94073] = { config_id = 94073, gadget_id = 70310408, pos = { x = 700.286, y = 120.000, z = 59.831 }, rot = { x = 0.000, y = 286.562, z = 0.000 }, level = 1, area_id = 402 },
	[94074] = { config_id = 94074, gadget_id = 70310348, pos = { x = 529.684, y = 120.581, z = 42.084 }, rot = { x = 0.000, y = 268.061, z = 0.000 }, level = 1, area_id = 402 },
	[94075] = { config_id = 94075, gadget_id = 70310408, pos = { x = 313.240, y = 120.000, z = -110.911 }, rot = { x = 0.000, y = 100.110, z = 0.000 }, level = 1, area_id = 402 },
	[94076] = { config_id = 94076, gadget_id = 70310350, pos = { x = 659.540, y = 120.000, z = 55.944 }, rot = { x = 0.000, y = 356.489, z = 0.000 }, level = 1, area_id = 402 },
	[94077] = { config_id = 94077, gadget_id = 70290059, pos = { x = 695.263, y = 120.000, z = 46.043 }, rot = { x = 0.000, y = 306.179, z = 0.000 }, level = 1, area_id = 402 },
	[94078] = { config_id = 94078, gadget_id = 70310350, pos = { x = 342.871, y = 120.000, z = -133.977 }, rot = { x = 0.000, y = 286.624, z = 0.000 }, level = 1, area_id = 402 },
	[94079] = { config_id = 94079, gadget_id = 70310351, pos = { x = 348.645, y = 120.000, z = -116.796 }, rot = { x = 0.000, y = 179.548, z = 0.000 }, level = 1, area_id = 402 },
	[94080] = { config_id = 94080, gadget_id = 70380004, pos = { x = 283.019, y = 125.000, z = -282.262 }, rot = { x = 0.000, y = 17.584, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100068, area_id = 401 },
	[94081] = { config_id = 94081, gadget_id = 70380004, pos = { x = 275.221, y = 120.000, z = -299.258 }, rot = { x = 0.000, y = 27.424, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100069, area_id = 401 },
	[94082] = { config_id = 94082, gadget_id = 70380004, pos = { x = 263.068, y = 125.000, z = -312.524 }, rot = { x = 0.000, y = 44.059, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100070, area_id = 401 },
	[94083] = { config_id = 94083, gadget_id = 70380004, pos = { x = 248.644, y = 120.000, z = -323.291 }, rot = { x = 0.000, y = 58.789, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100071, area_id = 401 },
	[94084] = { config_id = 94084, gadget_id = 70220110, pos = { x = 280.889, y = 120.000, z = -287.700 }, rot = { x = 0.000, y = 4.395, z = 0.000 }, level = 1, area_id = 401 },
	[94085] = { config_id = 94085, gadget_id = 70220110, pos = { x = 278.682, y = 120.000, z = -292.525 }, rot = { x = 0.000, y = 4.395, z = 0.000 }, level = 1, area_id = 401 },
	[94086] = { config_id = 94086, gadget_id = 70220110, pos = { x = 270.396, y = 120.000, z = -304.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[94087] = { config_id = 94087, gadget_id = 70220110, pos = { x = 266.698, y = 120.000, z = -308.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[94088] = { config_id = 94088, gadget_id = 70350085, pos = { x = -94.965, y = 121.000, z = -510.006 }, rot = { x = 0.000, y = 294.999, z = 0.000 }, level = 20, area_id = 401, is_enable_interact = false },
	[94089] = { config_id = 94089, gadget_id = 70220110, pos = { x = 258.251, y = 120.000, z = -316.529 }, rot = { x = 0.000, y = 354.805, z = 0.000 }, level = 1, area_id = 401 },
	[94090] = { config_id = 94090, gadget_id = 70220110, pos = { x = 253.311, y = 120.000, z = -319.904 }, rot = { x = 0.000, y = 354.805, z = 0.000 }, level = 1, area_id = 401 },
	[94091] = { config_id = 94091, gadget_id = 70310348, pos = { x = -13.040, y = 121.000, z = -439.317 }, rot = { x = 0.000, y = 1.847, z = 0.000 }, level = 1, area_id = 401 },
	[94094] = { config_id = 94094, gadget_id = 70220110, pos = { x = 455.922, y = 121.485, z = 32.513 }, rot = { x = 0.000, y = 55.143, z = 0.000 }, level = 20, area_id = 402 },
	[94096] = { config_id = 94096, gadget_id = 70220110, pos = { x = 455.756, y = 121.485, z = 35.438 }, rot = { x = 0.000, y = 55.143, z = 0.000 }, level = 20, area_id = 402 },
	[94097] = { config_id = 94097, gadget_id = 70220110, pos = { x = 455.684, y = 124.189, z = 36.324 }, rot = { x = 0.000, y = 55.143, z = 0.000 }, level = 20, area_id = 402 },
	[94098] = { config_id = 94098, gadget_id = 70220110, pos = { x = 455.975, y = 124.212, z = 31.202 }, rot = { x = 0.000, y = 55.143, z = 0.000 }, level = 20, area_id = 402 },
	[94099] = { config_id = 94099, gadget_id = 70220110, pos = { x = 455.832, y = 126.195, z = 33.945 }, rot = { x = 0.000, y = 55.143, z = 0.000 }, level = 20, area_id = 402 },
	[94100] = { config_id = 94100, gadget_id = 70310348, pos = { x = -13.040, y = 127.000, z = -439.317 }, rot = { x = 0.000, y = 1.847, z = 0.000 }, level = 1, area_id = 401 },
	[94101] = { config_id = 94101, gadget_id = 70310348, pos = { x = -8.610, y = 127.000, z = -449.688 }, rot = { x = 0.000, y = 1.847, z = 0.000 }, level = 1, area_id = 401 },
	[94102] = { config_id = 94102, gadget_id = 70310348, pos = { x = -10.822, y = 127.000, z = -444.371 }, rot = { x = 0.000, y = 1.847, z = 0.000 }, level = 1, area_id = 401 },
	[94103] = { config_id = 94103, gadget_id = 70220110, pos = { x = -8.610, y = 124.000, z = -449.688 }, rot = { x = 0.000, y = 1.847, z = 0.000 }, level = 1, area_id = 401 },
	[94104] = { config_id = 94104, gadget_id = 70220110, pos = { x = -13.040, y = 124.000, z = -439.317 }, rot = { x = 0.000, y = 1.847, z = 0.000 }, level = 1, area_id = 401 },
	[94105] = { config_id = 94105, gadget_id = 70310348, pos = { x = -56.520, y = 121.000, z = -463.225 }, rot = { x = 0.000, y = 347.519, z = 0.000 }, level = 1, area_id = 401 },
	[94106] = { config_id = 94106, gadget_id = 70310348, pos = { x = -49.661, y = 121.000, z = -472.177 }, rot = { x = 0.000, y = 347.519, z = 0.000 }, level = 1, area_id = 401 },
	[94108] = { config_id = 94108, gadget_id = 70310348, pos = { x = -56.520, y = 127.000, z = -463.225 }, rot = { x = 0.000, y = 347.519, z = 0.000 }, level = 1, area_id = 401 },
	[94109] = { config_id = 94109, gadget_id = 70310348, pos = { x = -49.661, y = 127.000, z = -472.177 }, rot = { x = 0.000, y = 347.519, z = 0.000 }, level = 1, area_id = 401 },
	[94110] = { config_id = 94110, gadget_id = 70310348, pos = { x = -53.120, y = 127.000, z = -467.572 }, rot = { x = 0.000, y = 347.519, z = 0.000 }, level = 1, area_id = 401 },
	[94111] = { config_id = 94111, gadget_id = 70220110, pos = { x = -49.661, y = 124.000, z = -472.177 }, rot = { x = 0.000, y = 347.519, z = 0.000 }, level = 1, area_id = 401 },
	[94112] = { config_id = 94112, gadget_id = 70220110, pos = { x = -56.520, y = 124.000, z = -463.225 }, rot = { x = 0.000, y = 347.519, z = 0.000 }, level = 1, area_id = 401 },
	[94113] = { config_id = 94113, gadget_id = 70310352, pos = { x = -31.783, y = 124.000, z = -458.063 }, rot = { x = 0.000, y = 63.170, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100098, area_id = 401 },
	[94114] = { config_id = 94114, gadget_id = 70310352, pos = { x = -34.782, y = 120.000, z = -452.207 }, rot = { x = 0.000, y = 63.170, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100099, area_id = 401 },
	[94115] = { config_id = 94115, gadget_id = 70310352, pos = { x = -75.474, y = 124.000, z = -482.094 }, rot = { x = 0.000, y = 43.992, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100101, area_id = 401 },
	[94116] = { config_id = 94116, gadget_id = 70310352, pos = { x = -70.717, y = 120.000, z = -486.640 }, rot = { x = 0.000, y = 43.992, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100100, area_id = 401 },
	[94126] = { config_id = 94126, gadget_id = 70310408, pos = { x = -27.869, y = 120.000, z = -470.460 }, rot = { x = 0.000, y = 154.712, z = 0.000 }, level = 1, area_id = 401 },
	[94127] = { config_id = 94127, gadget_id = 70310408, pos = { x = -46.096, y = 120.000, z = -482.368 }, rot = { x = 0.000, y = 146.938, z = 0.000 }, level = 1, area_id = 401 },
	[94149] = { config_id = 94149, gadget_id = 70360025, pos = { x = -206.974, y = 120.462, z = -678.893 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	[94154] = { config_id = 94154, gadget_id = 70220110, pos = { x = 669.994, y = 123.000, z = 144.601 }, rot = { x = 0.000, y = 171.196, z = 0.000 }, level = 1, area_id = 402 },
	[94155] = { config_id = 94155, gadget_id = 70310348, pos = { x = 669.994, y = 121.000, z = 144.601 }, rot = { x = 0.000, y = 171.196, z = 0.000 }, level = 1, area_id = 402 },
	[94163] = { config_id = 94163, gadget_id = 70310350, pos = { x = 683.627, y = 120.000, z = 35.927 }, rot = { x = 0.000, y = 334.555, z = 0.000 }, level = 1, area_id = 402 },
	[94164] = { config_id = 94164, gadget_id = 70310408, pos = { x = 669.083, y = 120.000, z = 31.702 }, rot = { x = 0.000, y = 358.828, z = 0.000 }, level = 1, area_id = 402 },
	[94165] = { config_id = 94165, gadget_id = 70290059, pos = { x = 672.903, y = 120.000, z = 61.530 }, rot = { x = 0.000, y = 304.874, z = 0.000 }, level = 1, area_id = 402 },
	[94166] = { config_id = 94166, gadget_id = 70220110, pos = { x = 689.001, y = 123.624, z = 50.500 }, rot = { x = 1.441, y = 293.867, z = 0.000 }, level = 1, area_id = 402 },
	[94167] = { config_id = 94167, gadget_id = 70220110, pos = { x = 678.866, y = 123.522, z = 57.068 }, rot = { x = 359.198, y = 309.482, z = 0.000 }, level = 1, area_id = 402 },
	[94168] = { config_id = 94168, gadget_id = 70220110, pos = { x = 683.643, y = 123.441, z = 53.839 }, rot = { x = 359.198, y = 309.482, z = 0.000 }, level = 1, area_id = 402 },
	[94169] = { config_id = 94169, gadget_id = 70380004, pos = { x = 551.636, y = 120.000, z = 37.538 }, rot = { x = 0.000, y = 89.306, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100054, area_id = 402 },
	[94170] = { config_id = 94170, gadget_id = 70310352, pos = { x = 552.009, y = 124.000, z = 30.363 }, rot = { x = 0.000, y = 80.524, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100055, area_id = 402 },
	[94173] = { config_id = 94173, gadget_id = 70310410, pos = { x = 691.444, y = 120.000, z = 72.430 }, rot = { x = 0.000, y = 2.234, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 402, is_enable_interact = false },
	[94175] = { config_id = 94175, gadget_id = 70310410, pos = { x = 574.487, y = 120.000, z = 38.236 }, rot = { x = 0.000, y = 87.908, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 402, is_enable_interact = false },
	[94176] = { config_id = 94176, gadget_id = 70310352, pos = { x = 551.685, y = 124.000, z = 44.694 }, rot = { x = 0.000, y = 97.044, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100056, area_id = 402 },
	[94177] = { config_id = 94177, gadget_id = 70310410, pos = { x = 651.067, y = 120.000, z = 41.666 }, rot = { x = 359.905, y = 86.882, z = 1.910 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 402, is_enable_interact = false },
	[94179] = { config_id = 94179, gadget_id = 70310410, pos = { x = 419.817, y = 120.000, z = 33.048 }, rot = { x = 0.000, y = 88.265, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 402, is_enable_interact = false },
	[94180] = { config_id = 94180, gadget_id = 70310348, pos = { x = 518.181, y = 120.581, z = 29.600 }, rot = { x = 0.000, y = 263.583, z = 0.000 }, level = 1, area_id = 402 },
	[94181] = { config_id = 94181, gadget_id = 70310410, pos = { x = 322.620, y = 120.000, z = -159.706 }, rot = { x = 359.355, y = 10.932, z = 2.332 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 402, is_enable_interact = false },
	[94182] = { config_id = 94182, gadget_id = 70220110, pos = { x = 512.219, y = 120.581, z = 28.929 }, rot = { x = 0.000, y = 263.583, z = 0.000 }, level = 1, area_id = 402 },
	[94183] = { config_id = 94183, gadget_id = 70310348, pos = { x = 506.257, y = 120.581, z = 28.259 }, rot = { x = 0.000, y = 68.795, z = 0.000 }, level = 1, area_id = 402 },
	[94184] = { config_id = 94184, gadget_id = 70310348, pos = { x = 505.410, y = 120.581, z = 41.678 }, rot = { x = 0.000, y = 268.062, z = 0.000 }, level = 1, area_id = 402 },
	[94185] = { config_id = 94185, gadget_id = 70310410, pos = { x = 230.572, y = 120.000, z = -333.455 }, rot = { x = 0.000, y = 240.918, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401, is_enable_interact = false },
	[94186] = { config_id = 94186, gadget_id = 70220110, pos = { x = 511.406, y = 120.581, z = 41.881 }, rot = { x = 0.000, y = 268.062, z = 0.000 }, level = 1, area_id = 402 },
	[94188] = { config_id = 94188, gadget_id = 70310348, pos = { x = 517.402, y = 120.581, z = 42.084 }, rot = { x = 0.000, y = 268.061, z = 0.000 }, level = 1, area_id = 402 },
	[94189] = { config_id = 94189, gadget_id = 70310352, pos = { x = 481.557, y = 123.000, z = 34.000 }, rot = { x = 0.000, y = 102.086, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100057, area_id = 402 },
	[94190] = { config_id = 94190, gadget_id = 70310352, pos = { x = 481.785, y = 120.000, z = 35.799 }, rot = { x = 0.000, y = 102.086, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100058, area_id = 402 },
	[94191] = { config_id = 94191, gadget_id = 70310352, pos = { x = 481.785, y = 120.000, z = 31.908 }, rot = { x = 0.000, y = 102.086, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100059, area_id = 402 },
	[94192] = { config_id = 94192, gadget_id = 70310408, pos = { x = 491.738, y = 120.000, z = 44.291 }, rot = { x = 0.000, y = 1.781, z = 0.000 }, level = 1, area_id = 402 },
	[94193] = { config_id = 94193, gadget_id = 70310408, pos = { x = 491.664, y = 120.000, z = 25.343 }, rot = { x = 0.000, y = 1.781, z = 0.000 }, level = 1, area_id = 402 },
	[94194] = { config_id = 94194, gadget_id = 70290311, pos = { x = 340.785, y = 120.000, z = -67.988 }, rot = { x = 0.000, y = 10.665, z = 0.000 }, level = 1, area_id = 402 },
	[94195] = { config_id = 94195, gadget_id = 70310352, pos = { x = 334.076, y = 120.000, z = -66.992 }, rot = { x = 0.000, y = 324.878, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	[94196] = { config_id = 94196, gadget_id = 70310352, pos = { x = 347.520, y = 120.000, z = -69.532 }, rot = { x = 0.000, y = 21.262, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 402 },
	[94197] = { config_id = 94197, gadget_id = 70220110, pos = { x = 332.774, y = 121.485, z = -114.629 }, rot = { x = 0.000, y = 338.534, z = 0.000 }, level = 20, area_id = 402 },
	[94198] = { config_id = 94198, gadget_id = 70220110, pos = { x = 329.889, y = 121.485, z = -114.113 }, rot = { x = 0.000, y = 338.534, z = 0.000 }, level = 20, area_id = 402 },
	[94199] = { config_id = 94199, gadget_id = 70220110, pos = { x = 329.011, y = 124.189, z = -113.977 }, rot = { x = 0.000, y = 338.534, z = 0.000 }, level = 20, area_id = 402 },
	[94200] = { config_id = 94200, gadget_id = 70220110, pos = { x = 334.062, y = 124.212, z = -114.880 }, rot = { x = 0.000, y = 338.534, z = 0.000 }, level = 20, area_id = 402 },
	[94201] = { config_id = 94201, gadget_id = 70220110, pos = { x = 331.359, y = 126.195, z = -114.384 }, rot = { x = 0.000, y = 338.534, z = 0.000 }, level = 20, area_id = 402 },
	[94205] = { config_id = 94205, gadget_id = 70310408, pos = { x = 239.026, y = 120.000, z = -310.095 }, rot = { x = 0.000, y = 158.783, z = 0.000 }, level = 1, area_id = 401 },
	[94206] = { config_id = 94206, gadget_id = 70310408, pos = { x = 270.586, y = 120.000, z = -329.942 }, rot = { x = 0.000, y = 147.683, z = 0.000 }, level = 1, area_id = 401 },
	[94207] = { config_id = 94207, gadget_id = 70310350, pos = { x = 285.706, y = 120.000, z = -313.769 }, rot = { x = 0.000, y = 317.618, z = 0.000 }, level = 1, area_id = 401 },
	[94208] = { config_id = 94208, gadget_id = 70310351, pos = { x = 294.793, y = 120.000, z = -302.125 }, rot = { x = 0.000, y = 5.414, z = 0.000 }, level = 1, area_id = 401 },
	[94209] = { config_id = 94209, gadget_id = 70310350, pos = { x = 250.655, y = 120.000, z = -300.328 }, rot = { x = 0.000, y = 315.311, z = 0.000 }, level = 1, area_id = 401 },
	[94210] = { config_id = 94210, gadget_id = 70310408, pos = { x = 252.985, y = 120.000, z = -340.535 }, rot = { x = 0.000, y = 330.086, z = 0.000 }, level = 1, area_id = 401 },
	[94212] = { config_id = 94212, gadget_id = 70310408, pos = { x = 299.400, y = 120.000, z = -288.750 }, rot = { x = 0.000, y = 300.595, z = 0.000 }, level = 1, area_id = 401 },
	[94213] = { config_id = 94213, gadget_id = 70290059, pos = { x = 262.255, y = 120.000, z = -287.464 }, rot = { x = 0.000, y = 324.882, z = 0.000 }, level = 1, area_id = 401 },
	[94217] = { config_id = 94217, gadget_id = 70310408, pos = { x = 268.472, y = 120.000, z = -272.960 }, rot = { x = 0.000, y = 116.382, z = 0.000 }, level = 1, area_id = 401 },
	[94218] = { config_id = 94218, gadget_id = 70380004, pos = { x = 288.687, y = 120.000, z = -247.390 }, rot = { x = 0.000, y = 8.975, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100063, area_id = 401 },
	[94219] = { config_id = 94219, gadget_id = 70380004, pos = { x = 306.546, y = 120.000, z = -224.741 }, rot = { x = 0.000, y = 10.107, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100064, area_id = 401 },
	[94220] = { config_id = 94220, gadget_id = 70380004, pos = { x = 323.152, y = 120.000, z = -196.496 }, rot = { x = 0.000, y = 11.759, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100065, area_id = 401 },
	[94221] = { config_id = 94221, gadget_id = 70310348, pos = { x = 315.847, y = 121.000, z = -232.589 }, rot = { x = 0.000, y = 13.735, z = 0.000 }, level = 1, area_id = 401 },
	[94222] = { config_id = 94222, gadget_id = 70220110, pos = { x = 317.272, y = 121.000, z = -226.761 }, rot = { x = 0.000, y = 13.735, z = 0.000 }, level = 1, area_id = 401 },
	[94223] = { config_id = 94223, gadget_id = 70310348, pos = { x = 318.696, y = 121.000, z = -220.933 }, rot = { x = 0.000, y = 13.735, z = 0.000 }, level = 1, area_id = 401 },
	[94224] = { config_id = 94224, gadget_id = 70310348, pos = { x = 296.092, y = 121.000, z = -216.268 }, rot = { x = 0.000, y = 174.468, z = 0.000 }, level = 1, area_id = 401 },
	[94225] = { config_id = 94225, gadget_id = 70220110, pos = { x = 295.127, y = 121.000, z = -222.190 }, rot = { x = 0.000, y = 9.257, z = 0.000 }, level = 1, area_id = 401 },
	[94226] = { config_id = 94226, gadget_id = 70310348, pos = { x = 294.162, y = 121.000, z = -228.112 }, rot = { x = 0.000, y = 9.256, z = 0.000 }, level = 1, area_id = 401 },
	[94229] = { config_id = 94229, gadget_id = 70290059, pos = { x = 184.808, y = 120.000, z = -337.752 }, rot = { x = 0.000, y = 149.469, z = 0.000 }, level = 20, area_id = 401, is_enable_interact = false },
	[94230] = { config_id = 94230, gadget_id = 70290060, pos = { x = 189.130, y = 124.273, z = -345.403 }, rot = { x = 0.000, y = 245.431, z = 0.000 }, level = 20, area_id = 401, is_enable_interact = false },
	[94231] = { config_id = 94231, gadget_id = 70220110, pos = { x = 187.296, y = 120.000, z = -355.371 }, rot = { x = 0.000, y = 107.246, z = 0.000 }, level = 20, area_id = 401 },
	[94234] = { config_id = 94234, gadget_id = 70220110, pos = { x = 191.716, y = 120.000, z = -358.154 }, rot = { x = 0.000, y = 58.153, z = 0.000 }, level = 20, area_id = 401 },
	[94240] = { config_id = 94240, gadget_id = 70220110, pos = { x = 196.707, y = 120.000, z = -355.618 }, rot = { x = 0.000, y = 13.776, z = 0.000 }, level = 20, area_id = 401 },
	[94241] = { config_id = 94241, gadget_id = 70220110, pos = { x = 196.979, y = 120.000, z = -350.637 }, rot = { x = 0.000, y = 13.776, z = 0.000 }, level = 20, area_id = 401 },
	[94242] = { config_id = 94242, gadget_id = 70310352, pos = { x = 155.034, y = 120.000, z = -375.139 }, rot = { x = 0.000, y = 61.150, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100066, area_id = 401 },
	[94243] = { config_id = 94243, gadget_id = 70220110, pos = { x = 187.496, y = 120.000, z = -350.069 }, rot = { x = 0.000, y = 84.066, z = 0.000 }, level = 20, area_id = 401 },
	[94244] = { config_id = 94244, gadget_id = 70220110, pos = { x = 192.660, y = 120.000, z = -347.313 }, rot = { x = 0.000, y = 84.066, z = 0.000 }, level = 20, area_id = 401 },
	[94245] = { config_id = 94245, gadget_id = 70310352, pos = { x = 150.727, y = 123.000, z = -365.850 }, rot = { x = 0.000, y = 92.483, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100067, area_id = 401 },
	[94246] = { config_id = 94246, gadget_id = 70310408, pos = { x = 172.856, y = 120.000, z = -380.050 }, rot = { x = 0.000, y = 339.389, z = 0.000 }, level = 1, area_id = 401 },
	[94247] = { config_id = 94247, gadget_id = 70310408, pos = { x = 158.721, y = 120.000, z = -349.130 }, rot = { x = 0.000, y = 339.389, z = 0.000 }, level = 1, area_id = 401 },
	[94248] = { config_id = 94248, gadget_id = 70310408, pos = { x = 145.332, y = 120.000, z = -392.992 }, rot = { x = 0.000, y = 339.389, z = 0.000 }, level = 1, area_id = 401 },
	[94249] = { config_id = 94249, gadget_id = 70310408, pos = { x = 131.197, y = 120.000, z = -362.072 }, rot = { x = 0.000, y = 339.389, z = 0.000 }, level = 1, area_id = 401 },
	[94250] = { config_id = 94250, gadget_id = 70220110, pos = { x = 118.000, y = 121.000, z = -377.487 }, rot = { x = 0.000, y = 268.045, z = 0.000 }, level = 1, area_id = 401 },
	[94251] = { config_id = 94251, gadget_id = 70310348, pos = { x = 118.000, y = 123.000, z = -377.487 }, rot = { x = 0.000, y = 268.045, z = 0.000 }, level = 1, area_id = 401 },
	[94252] = { config_id = 94252, gadget_id = 70220110, pos = { x = 124.185, y = 121.000, z = -391.509 }, rot = { x = 0.000, y = 268.045, z = 0.000 }, level = 1, area_id = 401 },
	[94253] = { config_id = 94253, gadget_id = 70310348, pos = { x = 124.185, y = 123.000, z = -391.509 }, rot = { x = 0.000, y = 268.045, z = 0.000 }, level = 1, area_id = 401 },
	[94254] = { config_id = 94254, gadget_id = 70220110, pos = { x = 124.185, y = 125.000, z = -391.509 }, rot = { x = 0.000, y = 268.045, z = 0.000 }, level = 1, area_id = 401 },
	[94255] = { config_id = 94255, gadget_id = 70220110, pos = { x = 118.000, y = 125.000, z = -377.487 }, rot = { x = 0.000, y = 268.045, z = 0.000 }, level = 1, area_id = 401 },
	[94256] = { config_id = 94256, gadget_id = 70310348, pos = { x = 107.146, y = 121.000, z = -385.549 }, rot = { x = 0.000, y = 268.045, z = 0.000 }, level = 1, area_id = 401 },
	[94257] = { config_id = 94257, gadget_id = 70220110, pos = { x = 107.146, y = 123.000, z = -385.549 }, rot = { x = 0.000, y = 268.045, z = 0.000 }, level = 1, area_id = 401 },
	[94258] = { config_id = 94258, gadget_id = 70310348, pos = { x = 110.461, y = 121.000, z = -393.326 }, rot = { x = 0.000, y = 268.045, z = 0.000 }, level = 1, area_id = 401 },
	[94259] = { config_id = 94259, gadget_id = 70220110, pos = { x = 110.461, y = 123.000, z = -393.326 }, rot = { x = 0.000, y = 268.045, z = 0.000 }, level = 1, area_id = 401 },
	[94260] = { config_id = 94260, gadget_id = 70310348, pos = { x = 110.461, y = 125.000, z = -393.326 }, rot = { x = 0.000, y = 268.045, z = 0.000 }, level = 1, area_id = 401 },
	[94261] = { config_id = 94261, gadget_id = 70310348, pos = { x = 107.146, y = 125.000, z = -385.549 }, rot = { x = 0.000, y = 268.045, z = 0.000 }, level = 1, area_id = 401 },
	[94262] = { config_id = 94262, gadget_id = 70290059, pos = { x = 81.465, y = 120.000, z = -418.878 }, rot = { x = 0.000, y = 323.966, z = 0.000 }, level = 20, area_id = 401, is_enable_interact = false },
	[94263] = { config_id = 94263, gadget_id = 70310351, pos = { x = 74.597, y = 120.000, z = -404.719 }, rot = { x = 0.000, y = 23.685, z = 0.000 }, level = 20, area_id = 401, is_enable_interact = false },
	[94264] = { config_id = 94264, gadget_id = 70290059, pos = { x = 67.188, y = 120.000, z = -389.536 }, rot = { x = 0.000, y = 149.469, z = 0.000 }, level = 20, area_id = 401, is_enable_interact = false },
	[94265] = { config_id = 94265, gadget_id = 70290310, pos = { x = 77.636, y = 119.299, z = -411.925 }, rot = { x = 0.000, y = 66.931, z = 0.000 }, level = 1, area_id = 401 },
	[94266] = { config_id = 94266, gadget_id = 70290310, pos = { x = 71.782, y = 119.229, z = -397.862 }, rot = { x = 0.000, y = 66.931, z = 0.000 }, level = 1, area_id = 401 },
	[94267] = { config_id = 94267, gadget_id = 70310350, pos = { x = -60.919, y = 120.000, z = -453.438 }, rot = { x = 0.000, y = 147.248, z = 0.000 }, level = 1, area_id = 401 },
	[94269] = { config_id = 94269, gadget_id = 70310350, pos = { x = -8.306, y = 120.000, z = -459.580 }, rot = { x = 0.000, y = 159.716, z = 0.000 }, level = 1, area_id = 401 },
	[94270] = { config_id = 94270, gadget_id = 70310408, pos = { x = -19.059, y = 120.000, z = -432.305 }, rot = { x = 0.000, y = 165.969, z = 0.000 }, level = 1, area_id = 401 },
	[94271] = { config_id = 94271, gadget_id = 70310408, pos = { x = -39.260, y = 120.000, z = -440.425 }, rot = { x = 0.000, y = 158.195, z = 0.000 }, level = 1, area_id = 401 },
	[94272] = { config_id = 94272, gadget_id = 70310408, pos = { x = -79.593, y = 120.000, z = -468.267 }, rot = { x = 0.000, y = 141.759, z = 0.000 }, level = 1, area_id = 401 },
	[94277] = { config_id = 94277, gadget_id = 70310410, pos = { x = 6.206, y = 120.000, z = -436.232 }, rot = { x = 0.000, y = 64.846, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401, is_enable_interact = false },
	[94278] = { config_id = 94278, gadget_id = 70310410, pos = { x = -94.965, y = 120.000, z = -510.006 }, rot = { x = 0.000, y = 34.332, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 401, is_enable_interact = false },
	[94279] = { config_id = 94279, gadget_id = 70290311, pos = { x = -147.773, y = 120.000, z = -579.111 }, rot = { x = 0.000, y = 31.082, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 400 },
	[94280] = { config_id = 94280, gadget_id = 70290311, pos = { x = -139.017, y = 120.000, z = -584.389 }, rot = { x = 0.000, y = 31.082, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 400 },
	[94281] = { config_id = 94281, gadget_id = 70290311, pos = { x = -108.592, y = 120.000, z = -537.577 }, rot = { x = 0.000, y = 31.082, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 401 },
	[94282] = { config_id = 94282, gadget_id = 70290311, pos = { x = -117.348, y = 120.000, z = -532.299 }, rot = { x = 0.000, y = 31.082, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 401 },
	[94283] = { config_id = 94283, gadget_id = 70220110, pos = { x = -133.096, y = 121.485, z = -569.013 }, rot = { x = 0.000, y = 358.950, z = 0.000 }, level = 20, area_id = 400 },
	[94284] = { config_id = 94284, gadget_id = 70220110, pos = { x = -135.619, y = 121.485, z = -567.523 }, rot = { x = 0.000, y = 358.950, z = 0.000 }, level = 20, area_id = 400 },
	[94285] = { config_id = 94285, gadget_id = 70220110, pos = { x = -136.395, y = 124.189, z = -567.090 }, rot = { x = 0.000, y = 358.950, z = 0.000 }, level = 20, area_id = 400 },
	[94286] = { config_id = 94286, gadget_id = 70220110, pos = { x = -131.977, y = 124.212, z = -569.698 }, rot = { x = 0.000, y = 358.950, z = 0.000 }, level = 20, area_id = 400 },
	[94287] = { config_id = 94287, gadget_id = 70220110, pos = { x = -134.336, y = 126.195, z = -568.291 }, rot = { x = 0.000, y = 358.950, z = 0.000 }, level = 20, area_id = 400 },
	[94288] = { config_id = 94288, gadget_id = 70220110, pos = { x = -104.148, y = 121.485, z = -523.198 }, rot = { x = 0.000, y = 358.950, z = 0.000 }, level = 20, area_id = 401 },
	[94289] = { config_id = 94289, gadget_id = 70220110, pos = { x = -106.671, y = 121.485, z = -521.708 }, rot = { x = 0.000, y = 358.950, z = 0.000 }, level = 20, area_id = 401 },
	[94290] = { config_id = 94290, gadget_id = 70220110, pos = { x = -107.447, y = 124.189, z = -521.275 }, rot = { x = 0.000, y = 358.950, z = 0.000 }, level = 20, area_id = 401 },
	[94291] = { config_id = 94291, gadget_id = 70220110, pos = { x = -103.029, y = 124.212, z = -523.883 }, rot = { x = 0.000, y = 358.950, z = 0.000 }, level = 20, area_id = 401 },
	[94292] = { config_id = 94292, gadget_id = 70220110, pos = { x = -105.388, y = 126.195, z = -522.476 }, rot = { x = 0.000, y = 358.950, z = 0.000 }, level = 20, area_id = 401 },
	[94293] = { config_id = 94293, gadget_id = 70290311, pos = { x = -179.666, y = 120.000, z = -627.682 }, rot = { x = 0.000, y = 31.082, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 400 },
	[94294] = { config_id = 94294, gadget_id = 70290311, pos = { x = -170.910, y = 120.000, z = -632.960 }, rot = { x = 0.000, y = 31.082, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 400 },
	[94295] = { config_id = 94295, gadget_id = 70220110, pos = { x = -165.471, y = 121.485, z = -620.479 }, rot = { x = 0.000, y = 358.950, z = 0.000 }, level = 20, area_id = 400 },
	[94296] = { config_id = 94296, gadget_id = 70220110, pos = { x = -167.993, y = 121.485, z = -618.989 }, rot = { x = 0.000, y = 358.950, z = 0.000 }, level = 20, area_id = 400 },
	[94297] = { config_id = 94297, gadget_id = 70220110, pos = { x = -168.769, y = 124.189, z = -618.556 }, rot = { x = 0.000, y = 358.950, z = 0.000 }, level = 20, area_id = 400 },
	[94298] = { config_id = 94298, gadget_id = 70220110, pos = { x = -164.351, y = 124.212, z = -621.164 }, rot = { x = 0.000, y = 358.950, z = 0.000 }, level = 20, area_id = 400 },
	[94299] = { config_id = 94299, gadget_id = 70220110, pos = { x = -166.711, y = 126.195, z = -619.756 }, rot = { x = 0.000, y = 358.950, z = 0.000 }, level = 20, area_id = 400 }
}

-- 区域
regions = {
	[94031] = { config_id = 94031, shape = RegionShape.SPHERE, radius = 800, pos = { x = 191.445, y = 120.000, z = -280.053 }, area_id = 401 },
	[94092] = { config_id = 94092, shape = RegionShape.POLYGON, pos = { x = 90.183, y = 120.000, z = -396.221 }, height = 40.000, point_array = { { x = 93.274, y = -370.896 }, { x = 110.719, y = -411.107 }, { x = 87.417, y = -421.545 }, { x = 69.648, y = -382.249 } }, area_id = 401 },
	-- 教学区域
	[94093] = { config_id = 94093, shape = RegionShape.SPHERE, radius = 5, pos = { x = 648.601, y = 120.000, z = 181.409 }, area_id = 402 },
	-- 终点
	[94159] = { config_id = 94159, shape = RegionShape.SPHERE, radius = 3, pos = { x = -206.974, y = 120.462, z = -678.893 }, area_id = 400 }
}

-- 触发器
triggers = {
	{ config_id = 1094032, name = "ANY_GADGET_DIE_94032", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_94032", action = "action_EVENT_ANY_GADGET_DIE_94032", trigger_count = 0 },
	{ config_id = 1094036, name = "ANY_GADGET_DIE_94036", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_94036", action = "action_EVENT_ANY_GADGET_DIE_94036", trigger_count = 0 },
	{ config_id = 1094051, name = "ANY_GADGET_DIE_94051", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_94051", action = "action_EVENT_ANY_GADGET_DIE_94051", trigger_count = 0 },
	{ config_id = 1094092, name = "ENTER_REGION_94092", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_94092", action = "action_EVENT_ENTER_REGION_94092" },
	{ config_id = 1094153, name = "ANY_GADGET_DIE_94153", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_94153", action = "action_EVENT_ANY_GADGET_DIE_94153", trigger_count = 0 },
	{ config_id = 1094156, name = "ANY_GADGET_DIE_94156", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_94156", action = "action_EVENT_ANY_GADGET_DIE_94156", trigger_count = 0 },
	{ config_id = 1094157, name = "ANY_GADGET_DIE_94157", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_94157", action = "action_EVENT_ANY_GADGET_DIE_94157", trigger_count = 0 },
	{ config_id = 1094158, name = "ANY_GADGET_DIE_94158", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_94158", action = "action_EVENT_ANY_GADGET_DIE_94158", trigger_count = 0 },
	{ config_id = 1094160, name = "ANY_GADGET_DIE_94160", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_94160", action = "action_EVENT_ANY_GADGET_DIE_94160", trigger_count = 0 },
	{ config_id = 1094162, name = "ANY_GADGET_DIE_94162", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_94162", action = "action_EVENT_ANY_GADGET_DIE_94162", trigger_count = 0 },
	{ config_id = 1094172, name = "CHALLENGE_SUCCESS_94172", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "condition_EVENT_CHALLENGE_SUCCESS_94172", action = "action_EVENT_CHALLENGE_SUCCESS_94172", trigger_count = 0 },
	{ config_id = 1094178, name = "ANY_GADGET_DIE_94178", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_94178", action = "action_EVENT_ANY_GADGET_DIE_94178", trigger_count = 0 }
}

-- 点位
points = {
	-- 出生点
	{ config_id = 94095, pos = { x = 648.794, y = 120.000, z = 196.909 }, rot = { x = 0.000, y = 209.305, z = 0.000 }, area_id = 402 },
	-- 创船点
	{ config_id = 94107, pos = { x = 645.598, y = 120.000, z = 189.855 }, rot = { x = 0.000, y = 164.603, z = 0.000 }, area_id = 402 }
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
		gadgets = { 94001, 94015 },
		regions = { 94093 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 赛道开始,
		monsters = { },
		gadgets = { 94002, 94006, 94007, 94010, 94011, 94012, 94013, 94014, 94016, 94017, 94018, 94019, 94052, 94053, 94054, 94059, 94061, 94062, 94154, 94155, 94173 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_94162" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 氮气球积攒阶段,
		monsters = { },
		gadgets = { 94020, 94056, 94057, 94073, 94076, 94077, 94163, 94164, 94165, 94166, 94167, 94168, 94177 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_94153" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 道路差分，岛侧适合直接喷射，外侧适合中途喷射，玩家根据现有氮气量做选择,
		monsters = { },
		gadgets = { 94004, 94060, 94063, 94065, 94066, 94067, 94068, 94069, 94070, 94071, 94175 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_94156" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 校验转向能力,
		monsters = { },
		gadgets = { 94055, 94058, 94064, 94072, 94074, 94094, 94096, 94097, 94098, 94099, 94169, 94170, 94176, 94179, 94180, 94182, 94183, 94184, 94186, 94188, 94189, 94190, 94191, 94192, 94193 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_94157" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 冲刺阶段2,
		monsters = { },
		gadgets = { 94005, 94038, 94039, 94040, 94041, 94042, 94043, 94044, 94045, 94046, 94047, 94048, 94049, 94050 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_94158" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 94022, 94025, 94026, 94027, 94028, 94029, 94037, 94075, 94078, 94079, 94181, 94194, 94195, 94196, 94197, 94198, 94199, 94200, 94201 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_94160" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 94021, 94080, 94081, 94082, 94083, 94084, 94085, 94086, 94087, 94089, 94090, 94185, 94205, 94206, 94207, 94208, 94209, 94210, 94212, 94213, 94217, 94218, 94219, 94220, 94221, 94222, 94223, 94224, 94225, 94226 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_94036" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 94003, 94008, 94009, 94023, 94229, 94230, 94231, 94234, 94240, 94241, 94242, 94243, 94244, 94245, 94246, 94247, 94248, 94249, 94250, 94251, 94252, 94253, 94254, 94255, 94256, 94257, 94258, 94259, 94260, 94261, 94262, 94263, 94264, 94265, 94266, 94277 },
		regions = { 94092 },
		triggers = { "ANY_GADGET_DIE_94051", "ENTER_REGION_94092" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 94024, 94030, 94034, 94035, 94091, 94100, 94101, 94102, 94103, 94104, 94105, 94106, 94108, 94109, 94110, 94111, 94112, 94113, 94114, 94115, 94116, 94126, 94127, 94267, 94269, 94270, 94271, 94272, 94278 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_94178" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 94088, 94279, 94280, 94281, 94282, 94283, 94284, 94285, 94286, 94287, 94288, 94289, 94290, 94291, 94292, 94293, 94294, 94295, 94296, 94297, 94298, 94299 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_94032" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 94033, 94149 },
		regions = { 94159 },
		triggers = { "CHALLENGE_SUCCESS_94172" },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 94031 },
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
function condition_EVENT_ANY_GADGET_DIE_94032(context, evt)
	if 94278 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_94032(context, evt)
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001094, 12)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 94088 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001094, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_94036(context, evt)
	if 94181 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_94036(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001094, 9)
	
	-- 将configid为 94185 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94185, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 94021 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001094, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_94051(context, evt)
	if 94185 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_94051(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001094, 10)
	
	-- 将configid为 94277 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94277, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 94023 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001094, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_94092(context, evt)
	if evt.param1 ~= 94092 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_94092(context, evt)
	-- 将configid为 94265 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94265, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 94266 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94266, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_94153(context, evt)
	if 94173 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_94153(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001094, 4)
	
	-- 将configid为 94177 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94177, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 94020 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_94156(context, evt)
	if 94177 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_94156(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001094, 5)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 94004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 94175 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94175, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001094, 2)
	
	-- 将configid为 94065 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94065, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_94157(context, evt)
	if 94175 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_94157(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001094, 6)
	
	-- 将configid为 94179 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94179, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 94055 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001094, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_94158(context, evt)
	if 94179 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_94158(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001094, 7)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 94005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 94049 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94049, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001094, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_94160(context, evt)
	if 94049 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_94160(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001094, 8)
	
	-- 将configid为 94181 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94181, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 94037 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 94194 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94194, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001094, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_94162(context, evt)
	if 94002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_94162(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001094, 3)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 94006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 94173 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94173, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_SUCCESS_94172(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_94172(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 94149 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 94033 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 94159 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001094, 10)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001094, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_94178(context, evt)
	if 94277 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_94178(context, evt)
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001094, 11)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 94030 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 94278 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 94278, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001094, 8)
	
	return 0
end

require "V2_8/BoatRace_V2"
-- 基础信息
local base_info = {
	group_id = 251008011
}

-- DEFS_MISCS
local defs = {

	-----全玩法通用配置-----

	--玩法范围region cube
	play_region = 11029,
                air_wall = {11069},

	--玩法限时秒
	limit_time = 600,
	target = 50,

	-----踢足球配置-----

	--每波球强制结束时间
	rounf_time = 60,


                --每波球强制结束前Reminder时机
                rmd_time = 55,
                reminder_id = 470310102,
                
                --刷出延迟
                refresh_delay = 2,

	--内容配置
    -- 如果是琴的关卡，用这套
    Jean = {
        -- 球门和空气墙所在的suite
        goal_suite =2, 

        -- 刷球和空气墙的规则
        setting = {
            -- 单人玩家
            [1] = {
                --第x波球从ball_suite中随机出1个，从wall_suite中随机出1个
                {ball_suite = {22, 23}, wall_suite = {}, stamina_suite = {59}},
                {ball_suite = {47}, wall_suite = {46}, stamina_suite = {61}},
                {ball_suite = {27}, wall_suite = {26}, stamina_suite = {62}},
                {ball_suite = {47}, wall_suite = {46}, stamina_suite = {61}},
                {ball_suite = {22, 23}, wall_suite = {25}, stamina_suite = {59}},
            },

            -- 2人玩家
            [2] = {
                {ball_suite = {34, 35}, wall_suite = {}, stamina_suite = {63}},
                {ball_suite = {36}, wall_suite = {30}, stamina_suite = {64}},
                {ball_suite = {49}, wall_suite = {48}, stamina_suite = {65}},
                {ball_suite = {39}, wall_suite = {37,38}, stamina_suite = {66}},
                {ball_suite = {49}, wall_suite = {48}, stamina_suite = {65}},
                {ball_suite = {35}, wall_suite = {38}, stamina_suite = {63}},
            },

            -- 3人玩家
            [3] = {
                {ball_suite = {34, 35}, wall_suite = {}, stamina_suite = {63}},
                {ball_suite = {36}, wall_suite = {30}, stamina_suite = {64}},
                {ball_suite = {49}, wall_suite = {48}, stamina_suite = {65}},
                {ball_suite = {39}, wall_suite = {37,38}, stamina_suite = {66}},
                {ball_suite = {49}, wall_suite = {48}, stamina_suite = {65}},
                {ball_suite = {35}, wall_suite = {38}, stamina_suite = {63}},
            },

            -- 4人玩家
            [4] = {
                {ball_suite = {28, 29}, wall_suite = {}, stamina_suite = {63}},
                {ball_suite = {31}, wall_suite = {30}, stamina_suite = {68}},
                {ball_suite = {50}, wall_suite = {48}, stamina_suite = {69}},
                {ball_suite = {33}, wall_suite = {32}, stamina_suite = {70}},
                {ball_suite = {50}, wall_suite = {48}, stamina_suite = {69}},
                {ball_suite = {28}, wall_suite = {32}, stamina_suite = {63}},
            },   
       
        }, 
    },

    -- 如果是可莉&烟绯的关卡，用这套
    Klee = {
        goal_suite =3, 
        setting = {
            [1] = {
                {ball_suite = {5, 6}, wall_suite = {}, stamina_suite = {51}},
                {ball_suite = {41}, wall_suite = {40}, stamina_suite = {53}},
                {ball_suite = {12}, wall_suite = {4}, stamina_suite = {54}},
                {ball_suite = {41}, wall_suite = {40}, stamina_suite = {53}},
                {ball_suite = {5, 6}, wall_suite = {4}, stamina_suite = {51}},
            },

            [2] = {
                {ball_suite = {16,17}, wall_suite = {}, stamina_suite = {55}},
                {ball_suite = {18}, wall_suite = {13}, stamina_suite = {56}},
                {ball_suite = {43}, wall_suite = {42}, stamina_suite = {57}},
                {ball_suite = {21}, wall_suite = {19,20}, stamina_suite = {58}},
                {ball_suite = {43}, wall_suite = {42}, stamina_suite = {57}},
                {ball_suite = {17}, wall_suite = {20}, stamina_suite = {55}},
            },

            [3] = {
                {ball_suite = {16,17}, wall_suite = {}, stamina_suite = {55}},
                {ball_suite = {18}, wall_suite = {13}, stamina_suite = {56}},
                {ball_suite = {43}, wall_suite = {42}, stamina_suite = {57}},
                {ball_suite = {21}, wall_suite = {19,20}, stamina_suite = {58}},
                {ball_suite = {43}, wall_suite = {42}, stamina_suite = {57}},
                {ball_suite = {17}, wall_suite = {20}, stamina_suite = {55}},
            },

            [4] = {
                {ball_suite = {8, 9}, wall_suite = {}, stamina_suite = {55}},
                {ball_suite = {14}, wall_suite = {13}, stamina_suite = {56}},
                {ball_suite = {45}, wall_suite = {44}, stamina_suite = {67}},
                {ball_suite = {15}, wall_suite = {10}, stamina_suite = {58}},
                {ball_suite = {45}, wall_suite = {44}, stamina_suite = {57}},
                {ball_suite = {8, 9}, wall_suite = {10}, stamina_suite = {55}},
            },   
       
        }, 
    },
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[11001] = { config_id = 11001, monster_id = 20010503, pos = { x = 224.546, y = 0.500, z = 199.022 }, rot = { x = 0.000, y = 290.207, z = 0.000 }, level = 1, disableWander = true },
	[11002] = { config_id = 11002, monster_id = 20010503, pos = { x = 224.082, y = 0.500, z = 200.015 }, rot = { x = 0.000, y = 252.338, z = 0.000 }, level = 1, disableWander = true },
	[11003] = { config_id = 11003, monster_id = 20010503, pos = { x = 216.130, y = 0.500, z = 212.139 }, rot = { x = 0.000, y = 228.523, z = 0.000 }, level = 1, disableWander = true },
	[11004] = { config_id = 11004, monster_id = 20010503, pos = { x = 216.469, y = 0.500, z = 213.398 }, rot = { x = 0.000, y = 300.445, z = 0.000 }, level = 1, disableWander = true },
	[11005] = { config_id = 11005, monster_id = 20010503, pos = { x = 199.972, y = 0.500, z = 207.484 }, rot = { x = 0.000, y = 211.339, z = 0.000 }, level = 1, disableWander = true },
	[11006] = { config_id = 11006, monster_id = 20010503, pos = { x = 201.011, y = 0.500, z = 223.495 }, rot = { x = 0.000, y = 128.763, z = 0.000 }, level = 1, disableWander = true },
	[11007] = { config_id = 11007, monster_id = 20010503, pos = { x = 199.617, y = 0.500, z = 223.341 }, rot = { x = 0.000, y = 204.852, z = 0.000 }, level = 1, disableWander = true },
	[11009] = { config_id = 11009, monster_id = 20010503, pos = { x = 199.892, y = 0.500, z = 208.274 }, rot = { x = 0.000, y = 182.571, z = 0.000 }, level = 1, disableWander = true },
	[11010] = { config_id = 11010, monster_id = 20010503, pos = { x = 200.047, y = 0.500, z = 219.826 }, rot = { x = 0.000, y = 192.286, z = 0.000 }, level = 1, disableWander = true },
	[11011] = { config_id = 11011, monster_id = 20010503, pos = { x = 198.876, y = 0.500, z = 209.016 }, rot = { x = 0.000, y = 172.161, z = 0.000 }, level = 1, disableWander = true },
	[11012] = { config_id = 11012, monster_id = 20010503, pos = { x = 214.218, y = 0.500, z = 212.277 }, rot = { x = 0.000, y = 268.280, z = 0.000 }, level = 1, disableWander = true },
	[11013] = { config_id = 11013, monster_id = 20010503, pos = { x = 215.453, y = 0.500, z = 211.685 }, rot = { x = 0.000, y = 152.952, z = 0.000 }, level = 1, disableWander = true },
	[11014] = { config_id = 11014, monster_id = 20010503, pos = { x = 225.952, y = 0.500, z = 200.480 }, rot = { x = 0.000, y = 269.155, z = 0.000 }, level = 1, disableWander = true },
	[11015] = { config_id = 11015, monster_id = 20010503, pos = { x = 224.942, y = 0.500, z = 199.530 }, rot = { x = 0.000, y = 276.457, z = 0.000 }, level = 1, disableWander = true },
	[11030] = { config_id = 11030, monster_id = 20010503, pos = { x = 185.428, y = 0.500, z = 197.241 }, rot = { x = 0.000, y = 52.522, z = 0.000 }, level = 1, disableWander = true },
	[11031] = { config_id = 11031, monster_id = 20010503, pos = { x = 185.757, y = 0.500, z = 198.535 }, rot = { x = 0.000, y = 169.845, z = 0.000 }, level = 1, disableWander = true },
	[11033] = { config_id = 11033, monster_id = 20010503, pos = { x = 198.338, y = 0.500, z = 196.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11034] = { config_id = 11034, monster_id = 20010503, pos = { x = 199.586, y = 0.500, z = 197.654 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11035] = { config_id = 11035, monster_id = 20010503, pos = { x = 198.535, y = 0.500, z = 198.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11036] = { config_id = 11036, monster_id = 20010503, pos = { x = 204.710, y = 0.500, z = 185.924 }, rot = { x = 0.000, y = 37.662, z = 0.000 }, level = 1, disableWander = true },
	[11037] = { config_id = 11037, monster_id = 20010503, pos = { x = 205.286, y = 0.500, z = 187.188 }, rot = { x = 0.000, y = 328.439, z = 0.000 }, level = 1, disableWander = true },
	[11042] = { config_id = 11042, monster_id = 20010503, pos = { x = 173.500, y = 0.500, z = 200.399 }, rot = { x = 0.000, y = 62.476, z = 0.000 }, level = 1, disableWander = true },
	[11043] = { config_id = 11043, monster_id = 20010503, pos = { x = 174.967, y = 0.500, z = 199.635 }, rot = { x = 0.000, y = 97.338, z = 0.000 }, level = 1, disableWander = true },
	[11044] = { config_id = 11044, monster_id = 20010503, pos = { x = 190.177, y = 0.500, z = 200.600 }, rot = { x = 0.000, y = 53.879, z = 0.000 }, level = 1, disableWander = true },
	[11045] = { config_id = 11045, monster_id = 20010503, pos = { x = 199.379, y = 0.500, z = 191.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11046] = { config_id = 11046, monster_id = 20010503, pos = { x = 200.741, y = 0.500, z = 173.380 }, rot = { x = 0.000, y = 32.246, z = 0.000 }, level = 1, disableWander = true },
	[11047] = { config_id = 11047, monster_id = 20010503, pos = { x = 200.021, y = 0.500, z = 207.838 }, rot = { x = 0.000, y = 230.845, z = 0.000 }, level = 1, disableWander = true },
	[11048] = { config_id = 11048, monster_id = 20010503, pos = { x = 225.126, y = 0.500, z = 200.194 }, rot = { x = 0.000, y = 337.258, z = 0.000 }, level = 1, disableWander = true },
	[11049] = { config_id = 11049, monster_id = 20010503, pos = { x = 226.126, y = 0.500, z = 199.171 }, rot = { x = 0.000, y = 207.123, z = 0.000 }, level = 1, disableWander = true },
	[11050] = { config_id = 11050, monster_id = 20010503, pos = { x = 210.478, y = 0.500, z = 200.137 }, rot = { x = 0.000, y = 298.683, z = 0.000 }, level = 1, disableWander = true },
	[11051] = { config_id = 11051, monster_id = 20010503, pos = { x = 199.465, y = 0.500, z = 225.416 }, rot = { x = 0.000, y = 210.365, z = 0.000 }, level = 1, disableWander = true },
	[11052] = { config_id = 11052, monster_id = 20010503, pos = { x = 198.802, y = 0.500, z = 223.877 }, rot = { x = 0.000, y = 36.900, z = 0.000 }, level = 1, disableWander = true },
	[11053] = { config_id = 11053, monster_id = 20010503, pos = { x = 199.865, y = 0.500, z = 209.373 }, rot = { x = 0.000, y = 153.978, z = 0.000 }, level = 1, disableWander = true },
	[11054] = { config_id = 11054, monster_id = 20010503, pos = { x = 199.872, y = 0.500, z = 201.712 }, rot = { x = 0.000, y = 171.535, z = 0.000 }, level = 1, disableWander = true },
	[11055] = { config_id = 11055, monster_id = 20010503, pos = { x = 200.045, y = 0.500, z = 200.151 }, rot = { x = 0.000, y = 203.760, z = 0.000 }, level = 1, disableWander = true },
	[11056] = { config_id = 11056, monster_id = 20010503, pos = { x = 199.789, y = 0.500, z = 213.636 }, rot = { x = 0.000, y = 215.841, z = 0.000 }, level = 1, disableWander = true },
	[11057] = { config_id = 11057, monster_id = 20010503, pos = { x = 198.810, y = 0.500, z = 212.392 }, rot = { x = 0.000, y = 178.282, z = 0.000 }, level = 1, disableWander = true },
	[11058] = { config_id = 11058, monster_id = 20010503, pos = { x = 199.789, y = 0.500, z = 225.827 }, rot = { x = 0.000, y = 246.170, z = 0.000 }, level = 1, disableWander = true },
	[11059] = { config_id = 11059, monster_id = 20010503, pos = { x = 189.144, y = 0.500, z = 200.873 }, rot = { x = 0.000, y = 139.777, z = 0.000 }, level = 1, disableWander = true },
	[11060] = { config_id = 11060, monster_id = 20010503, pos = { x = 190.584, y = 0.500, z = 201.369 }, rot = { x = 0.000, y = 218.553, z = 0.000 }, level = 1, disableWander = true },
	[11061] = { config_id = 11061, monster_id = 20010503, pos = { x = 174.926, y = 0.500, z = 199.979 }, rot = { x = 0.000, y = 93.865, z = 0.000 }, level = 1, disableWander = true },
	[11062] = { config_id = 11062, monster_id = 20010503, pos = { x = 199.766, y = 0.500, z = 200.334 }, rot = { x = 0.000, y = 58.059, z = 0.000 }, level = 1, disableWander = true },
	[11063] = { config_id = 11063, monster_id = 20010503, pos = { x = 213.210, y = 0.500, z = 199.351 }, rot = { x = 0.000, y = 229.312, z = 0.000 }, level = 1, disableWander = true },
	[11064] = { config_id = 11064, monster_id = 20010503, pos = { x = 225.272, y = 0.500, z = 199.643 }, rot = { x = 0.000, y = 186.650, z = 0.000 }, level = 1, disableWander = true },
	[11065] = { config_id = 11065, monster_id = 20010503, pos = { x = 212.216, y = 0.500, z = 200.251 }, rot = { x = 0.000, y = 123.888, z = 0.000 }, level = 1, disableWander = true },
	[11070] = { config_id = 11070, monster_id = 20010503, pos = { x = 200.578, y = 0.500, z = 199.528 }, rot = { x = 0.000, y = 293.518, z = 0.000 }, level = 1, disableWander = true },
	[11071] = { config_id = 11071, monster_id = 20010503, pos = { x = 200.577, y = 0.500, z = 201.391 }, rot = { x = 0.000, y = 59.915, z = 0.000 }, level = 1, disableWander = true },
	[11072] = { config_id = 11072, monster_id = 20010503, pos = { x = 196.505, y = 0.500, z = 201.007 }, rot = { x = 0.000, y = 136.590, z = 0.000 }, level = 1, disableWander = true },
	[11073] = { config_id = 11073, monster_id = 20010503, pos = { x = 198.167, y = 0.500, z = 198.943 }, rot = { x = 0.000, y = 349.138, z = 0.000 }, level = 1, disableWander = true },
	[11074] = { config_id = 11074, monster_id = 20010503, pos = { x = 199.580, y = 0.500, z = 184.218 }, rot = { x = 0.000, y = 113.669, z = 0.000 }, level = 1, disableWander = true },
	[11075] = { config_id = 11075, monster_id = 20010503, pos = { x = 198.968, y = 0.500, z = 174.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11076] = { config_id = 11076, monster_id = 20010503, pos = { x = 200.456, y = 0.500, z = 198.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11077] = { config_id = 11077, monster_id = 20010503, pos = { x = 200.629, y = 0.500, z = 185.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11083] = { config_id = 11083, monster_id = 20010503, pos = { x = 199.844, y = 0.000, z = 189.555 }, rot = { x = 0.000, y = 31.446, z = 0.000 }, level = 1, disableWander = true },
	[11084] = { config_id = 11084, monster_id = 20010605, pos = { x = 194.663, y = 0.000, z = 197.757 }, rot = { x = 0.000, y = 55.842, z = 0.000 }, level = 1, disableWander = true },
	[11085] = { config_id = 11085, monster_id = 20010605, pos = { x = 184.811, y = 0.000, z = 199.991 }, rot = { x = 0.000, y = 96.852, z = 0.000 }, level = 1, disableWander = true },
	[11086] = { config_id = 11086, monster_id = 20010503, pos = { x = 191.318, y = 0.500, z = 197.470 }, rot = { x = 0.000, y = 94.023, z = 0.000 }, level = 1, disableWander = true },
	[11087] = { config_id = 11087, monster_id = 20010503, pos = { x = 192.195, y = 0.500, z = 198.609 }, rot = { x = 0.000, y = 251.101, z = 0.000 }, level = 1, disableWander = true },
	[11088] = { config_id = 11088, monster_id = 20010503, pos = { x = 216.856, y = 0.500, z = 200.653 }, rot = { x = 0.000, y = 256.878, z = 0.000 }, level = 1, disableWander = true },
	[11089] = { config_id = 11089, monster_id = 20010503, pos = { x = 218.001, y = 0.500, z = 201.223 }, rot = { x = 0.000, y = 306.799, z = 0.000 }, level = 1, disableWander = true },
	[11090] = { config_id = 11090, monster_id = 20010503, pos = { x = 200.094, y = 0.500, z = 181.984 }, rot = { x = 0.000, y = 33.554, z = 0.000 }, level = 1, disableWander = true },
	[11091] = { config_id = 11091, monster_id = 20010503, pos = { x = 201.526, y = 0.500, z = 181.800 }, rot = { x = 0.000, y = 353.076, z = 0.000 }, level = 1, disableWander = true },
	[11092] = { config_id = 11092, monster_id = 20010503, pos = { x = 200.646, y = 0.500, z = 180.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11093] = { config_id = 11093, monster_id = 20010503, pos = { x = 177.399, y = 0.500, z = 199.484 }, rot = { x = 0.000, y = 89.116, z = 0.000 }, level = 1, disableWander = true },
	[11094] = { config_id = 11094, monster_id = 20010503, pos = { x = 199.598, y = 0.500, z = 188.757 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11095] = { config_id = 11095, monster_id = 20010503, pos = { x = 198.642, y = 0.500, z = 208.761 }, rot = { x = 0.000, y = 190.725, z = 0.000 }, level = 1, disableWander = true },
	[11096] = { config_id = 11096, monster_id = 20010503, pos = { x = 200.236, y = 0.500, z = 208.384 }, rot = { x = 0.000, y = 165.436, z = 0.000 }, level = 1, disableWander = true },
	[11097] = { config_id = 11097, monster_id = 20010503, pos = { x = 199.772, y = 0.500, z = 209.756 }, rot = { x = 0.000, y = 212.683, z = 0.000 }, level = 1, disableWander = true },
	[11098] = { config_id = 11098, monster_id = 20010503, pos = { x = 199.514, y = 0.500, z = 201.273 }, rot = { x = 0.000, y = 165.248, z = 0.000 }, level = 1, disableWander = true },
	[11099] = { config_id = 11099, monster_id = 20010503, pos = { x = 203.014, y = 0.500, z = 201.006 }, rot = { x = 0.000, y = 30.154, z = 0.000 }, level = 1, disableWander = true },
	[11100] = { config_id = 11100, monster_id = 20010503, pos = { x = 199.592, y = 0.500, z = 202.923 }, rot = { x = 0.000, y = 273.212, z = 0.000 }, level = 1, disableWander = true },
	[11101] = { config_id = 11101, monster_id = 20010503, pos = { x = 197.770, y = 0.500, z = 201.069 }, rot = { x = 0.000, y = 100.718, z = 0.000 }, level = 1, disableWander = true },
	[11102] = { config_id = 11102, monster_id = 20010503, pos = { x = 201.726, y = 0.500, z = 197.569 }, rot = { x = 0.000, y = 325.461, z = 0.000 }, level = 1, disableWander = true },
	[11103] = { config_id = 11103, monster_id = 20010503, pos = { x = 201.192, y = 0.500, z = 199.524 }, rot = { x = 0.000, y = 220.871, z = 0.000 }, level = 1, disableWander = true },
	[11104] = { config_id = 11104, monster_id = 20010503, pos = { x = 199.747, y = 0.500, z = 197.983 }, rot = { x = 0.000, y = 41.877, z = 0.000 }, level = 1, disableWander = true },
	[11105] = { config_id = 11105, monster_id = 20010503, pos = { x = 197.770, y = 0.500, z = 198.853 }, rot = { x = 0.000, y = 356.077, z = 0.000 }, level = 1, disableWander = true },
	[11106] = { config_id = 11106, monster_id = 20010503, pos = { x = 189.155, y = 0.500, z = 201.409 }, rot = { x = 0.000, y = 50.870, z = 0.000 }, level = 1, disableWander = true },
	[11107] = { config_id = 11107, monster_id = 20010503, pos = { x = 188.807, y = 0.500, z = 200.062 }, rot = { x = 0.000, y = 87.492, z = 0.000 }, level = 1, disableWander = true },
	[11108] = { config_id = 11108, monster_id = 20010503, pos = { x = 190.365, y = 0.500, z = 200.463 }, rot = { x = 0.000, y = 105.223, z = 0.000 }, level = 1, disableWander = true },
	[11109] = { config_id = 11109, monster_id = 20010503, pos = { x = 200.027, y = 0.500, z = 190.442 }, rot = { x = 0.000, y = 345.660, z = 0.000 }, level = 1, disableWander = true },
	[11110] = { config_id = 11110, monster_id = 20010503, pos = { x = 198.572, y = 0.500, z = 191.295 }, rot = { x = 0.000, y = 14.499, z = 0.000 }, level = 1, disableWander = true },
	[11111] = { config_id = 11111, monster_id = 20010503, pos = { x = 199.835, y = 0.500, z = 191.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11112] = { config_id = 11112, monster_id = 20010503, pos = { x = 198.538, y = 0.500, z = 202.707 }, rot = { x = 0.000, y = 22.773, z = 0.000 }, level = 1, disableWander = true },
	[11114] = { config_id = 11114, monster_id = 20011204, pos = { x = 199.818, y = 0.500, z = 207.082 }, rot = { x = 0.000, y = 197.939, z = 0.000 }, level = 1, disableWander = true },
	[11117] = { config_id = 11117, monster_id = 20011204, pos = { x = 198.962, y = 0.500, z = 208.048 }, rot = { x = 0.000, y = 180.886, z = 0.000 }, level = 1, disableWander = true },
	[11118] = { config_id = 11118, monster_id = 20011204, pos = { x = 210.741, y = 0.500, z = 200.529 }, rot = { x = 0.000, y = 191.343, z = 0.000 }, level = 1, disableWander = true },
	[11120] = { config_id = 11120, monster_id = 20011204, pos = { x = 209.501, y = 0.500, z = 200.028 }, rot = { x = 0.000, y = 338.222, z = 0.000 }, level = 1, disableWander = true },
	[11122] = { config_id = 11122, monster_id = 20011204, pos = { x = 210.384, y = 0.500, z = 199.963 }, rot = { x = 0.000, y = 314.488, z = 0.000 }, level = 1, disableWander = true },
	[11123] = { config_id = 11123, monster_id = 20011204, pos = { x = 209.560, y = 0.500, z = 201.272 }, rot = { x = 0.000, y = 174.216, z = 0.000 }, level = 1, disableWander = true },
	[11124] = { config_id = 11124, monster_id = 20011204, pos = { x = 200.358, y = 0.500, z = 209.420 }, rot = { x = 0.000, y = 192.211, z = 0.000 }, level = 1, disableWander = true },
	[11126] = { config_id = 11126, monster_id = 20011204, pos = { x = 199.556, y = 0.500, z = 210.639 }, rot = { x = 0.000, y = 163.856, z = 0.000 }, level = 1, disableWander = true },
	[11129] = { config_id = 11129, monster_id = 20011204, pos = { x = 199.280, y = 0.500, z = 209.866 }, rot = { x = 0.000, y = 172.992, z = 0.000 }, level = 1, disableWander = true },
	[11130] = { config_id = 11130, monster_id = 20011204, pos = { x = 198.554, y = 0.500, z = 211.427 }, rot = { x = 0.000, y = 133.733, z = 0.000 }, level = 1, disableWander = true },
	[11131] = { config_id = 11131, monster_id = 20011204, pos = { x = 200.903, y = 0.500, z = 210.356 }, rot = { x = 0.000, y = 287.686, z = 0.000 }, level = 1, disableWander = true },
	[11132] = { config_id = 11132, monster_id = 20011204, pos = { x = 209.569, y = 0.500, z = 199.615 }, rot = { x = 0.000, y = 278.651, z = 0.000 }, level = 1, disableWander = true },
	[11133] = { config_id = 11133, monster_id = 20011204, pos = { x = 209.522, y = 0.500, z = 198.068 }, rot = { x = 0.000, y = 51.975, z = 0.000 }, level = 1, disableWander = true },
	[11134] = { config_id = 11134, monster_id = 20011204, pos = { x = 208.110, y = 0.500, z = 199.056 }, rot = { x = 0.000, y = 207.662, z = 0.000 }, level = 1, disableWander = true },
	[11137] = { config_id = 11137, monster_id = 20010605, pos = { x = 216.158, y = 0.000, z = 201.523 }, rot = { x = 0.000, y = 267.924, z = 0.000 }, level = 1, disableWander = true },
	[11139] = { config_id = 11139, monster_id = 20010605, pos = { x = 199.528, y = 0.000, z = 208.780 }, rot = { x = 0.000, y = 119.604, z = 0.000 }, level = 1, disableWander = true },
	[11148] = { config_id = 11148, monster_id = 20011204, pos = { x = 195.820, y = 0.500, z = 206.311 }, rot = { x = 0.000, y = 148.614, z = 0.000 }, level = 1, disableWander = true },
	[11149] = { config_id = 11149, monster_id = 20011204, pos = { x = 197.301, y = 0.500, z = 205.589 }, rot = { x = 0.000, y = 256.782, z = 0.000 }, level = 1, disableWander = true },
	[11150] = { config_id = 11150, monster_id = 20011204, pos = { x = 196.929, y = 0.500, z = 207.711 }, rot = { x = 0.000, y = 75.585, z = 0.000 }, level = 1, disableWander = true },
	[11151] = { config_id = 11151, monster_id = 20011204, pos = { x = 201.500, y = 0.500, z = 190.527 }, rot = { x = 0.000, y = 341.833, z = 0.000 }, level = 1, disableWander = true },
	[11152] = { config_id = 11152, monster_id = 20011204, pos = { x = 199.721, y = 0.500, z = 191.331 }, rot = { x = 0.000, y = 144.753, z = 0.000 }, level = 1, disableWander = true },
	[11153] = { config_id = 11153, monster_id = 20011204, pos = { x = 186.852, y = 0.500, z = 199.695 }, rot = { x = 0.000, y = 92.351, z = 0.000 }, level = 1, disableWander = true },
	[11154] = { config_id = 11154, monster_id = 20011204, pos = { x = 188.691, y = 0.500, z = 198.615 }, rot = { x = 0.000, y = 58.643, z = 0.000 }, level = 1, disableWander = true },
	[11155] = { config_id = 11155, monster_id = 20011204, pos = { x = 188.251, y = 0.500, z = 200.973 }, rot = { x = 0.000, y = 189.437, z = 0.000 }, level = 1, disableWander = true },
	[11156] = { config_id = 11156, monster_id = 20011204, pos = { x = 200.089, y = 0.500, z = 213.457 }, rot = { x = 0.000, y = 242.334, z = 0.000 }, level = 1, disableWander = true },
	[11157] = { config_id = 11157, monster_id = 20011204, pos = { x = 198.911, y = 0.500, z = 211.499 }, rot = { x = 0.000, y = 146.216, z = 0.000 }, level = 1, disableWander = true },
	[11158] = { config_id = 11158, monster_id = 20011204, pos = { x = 200.993, y = 0.500, z = 211.203 }, rot = { x = 0.000, y = 200.154, z = 0.000 }, level = 1, disableWander = true },
	[11159] = { config_id = 11159, monster_id = 20011204, pos = { x = 213.645, y = 0.500, z = 200.565 }, rot = { x = 0.000, y = 244.468, z = 0.000 }, level = 1, disableWander = true },
	[11160] = { config_id = 11160, monster_id = 20011204, pos = { x = 211.456, y = 0.500, z = 200.012 }, rot = { x = 0.000, y = 273.361, z = 0.000 }, level = 1, disableWander = true },
	[11161] = { config_id = 11161, monster_id = 20011204, pos = { x = 213.199, y = 0.500, z = 198.712 }, rot = { x = 0.000, y = 281.573, z = 0.000 }, level = 1, disableWander = true },
	[11162] = { config_id = 11162, monster_id = 20011204, pos = { x = 201.284, y = 0.500, z = 184.632 }, rot = { x = 0.000, y = 341.684, z = 0.000 }, level = 1, disableWander = true },
	[11163] = { config_id = 11163, monster_id = 20011204, pos = { x = 199.245, y = 0.500, z = 185.039 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11164] = { config_id = 11164, monster_id = 20011204, pos = { x = 200.337, y = 0.500, z = 182.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11165] = { config_id = 11165, monster_id = 20011305, pos = { x = 177.124, y = 0.000, z = 199.632 }, rot = { x = 0.000, y = 128.615, z = 0.000 }, level = 1, disableWander = true },
	[11166] = { config_id = 11166, monster_id = 20011305, pos = { x = 199.690, y = 0.000, z = 177.026 }, rot = { x = 0.000, y = 16.407, z = 0.000 }, level = 1, disableWander = true },
	[11167] = { config_id = 11167, monster_id = 20011204, pos = { x = 190.197, y = 0.500, z = 200.573 }, rot = { x = 0.000, y = 89.137, z = 0.000 }, level = 1, disableWander = true },
	[11168] = { config_id = 11168, monster_id = 20011204, pos = { x = 191.874, y = 0.500, z = 201.932 }, rot = { x = 0.000, y = 134.781, z = 0.000 }, level = 1, disableWander = true },
	[11169] = { config_id = 11169, monster_id = 20011204, pos = { x = 192.883, y = 0.500, z = 199.990 }, rot = { x = 0.000, y = 332.046, z = 0.000 }, level = 1, disableWander = true },
	[11170] = { config_id = 11170, monster_id = 20011204, pos = { x = 200.506, y = 0.500, z = 206.309 }, rot = { x = 0.000, y = 165.022, z = 0.000 }, level = 1, disableWander = true },
	[11171] = { config_id = 11171, monster_id = 20011204, pos = { x = 199.583, y = 0.500, z = 209.346 }, rot = { x = 0.000, y = 233.820, z = 0.000 }, level = 1, disableWander = true },
	[11172] = { config_id = 11172, monster_id = 20011204, pos = { x = 201.448, y = 0.500, z = 208.192 }, rot = { x = 0.000, y = 115.153, z = 0.000 }, level = 1, disableWander = true },
	[11173] = { config_id = 11173, monster_id = 20011204, pos = { x = 208.432, y = 0.500, z = 200.185 }, rot = { x = 0.000, y = 248.287, z = 0.000 }, level = 1, disableWander = true },
	[11174] = { config_id = 11174, monster_id = 20011204, pos = { x = 206.503, y = 0.500, z = 198.903 }, rot = { x = 0.000, y = 272.100, z = 0.000 }, level = 1, disableWander = true },
	[11175] = { config_id = 11175, monster_id = 20011204, pos = { x = 208.237, y = 0.500, z = 198.062 }, rot = { x = 0.000, y = 276.925, z = 0.000 }, level = 1, disableWander = true },
	[11176] = { config_id = 11176, monster_id = 20011204, pos = { x = 201.779, y = 0.500, z = 187.035 }, rot = { x = 0.000, y = 333.260, z = 0.000 }, level = 1, disableWander = true },
	[11177] = { config_id = 11177, monster_id = 20011204, pos = { x = 202.855, y = 0.500, z = 188.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11178] = { config_id = 11178, monster_id = 20011204, pos = { x = 203.329, y = 0.500, z = 185.707 }, rot = { x = 0.000, y = 349.398, z = 0.000 }, level = 1, disableWander = true },
	[11181] = { config_id = 11181, monster_id = 20010605, pos = { x = 201.223, y = 0.000, z = 193.220 }, rot = { x = 0.000, y = 14.246, z = 0.000 }, level = 1, disableWander = true },
	[11183] = { config_id = 11183, monster_id = 20010605, pos = { x = 173.810, y = 0.000, z = 198.924 }, rot = { x = 0.000, y = 90.769, z = 0.000 }, level = 1, disableWander = true },
	[11185] = { config_id = 11185, monster_id = 20011204, pos = { x = 199.273, y = 0.500, z = 211.898 }, rot = { x = 0.000, y = 188.625, z = 0.000 }, level = 1, disableWander = true },
	[11186] = { config_id = 11186, monster_id = 20011204, pos = { x = 185.040, y = 0.500, z = 199.350 }, rot = { x = 0.000, y = 180.643, z = 0.000 }, level = 1, disableWander = true },
	[11187] = { config_id = 11187, monster_id = 20011204, pos = { x = 213.971, y = 0.500, z = 198.640 }, rot = { x = 0.000, y = 292.114, z = 0.000 }, level = 1, disableWander = true },
	[11188] = { config_id = 11188, monster_id = 20011204, pos = { x = 200.098, y = 0.500, z = 187.871 }, rot = { x = 0.000, y = 15.271, z = 0.000 }, level = 1, disableWander = true },
	[11189] = { config_id = 11189, monster_id = 20011204, pos = { x = 211.497, y = 0.500, z = 199.416 }, rot = { x = 0.000, y = 156.392, z = 0.000 }, level = 1, disableWander = true },
	[11190] = { config_id = 11190, monster_id = 20011204, pos = { x = 213.532, y = 0.500, z = 200.126 }, rot = { x = 0.000, y = 315.662, z = 0.000 }, level = 1, disableWander = true },
	[11191] = { config_id = 11191, monster_id = 20011204, pos = { x = 198.278, y = 0.500, z = 212.743 }, rot = { x = 0.000, y = 99.376, z = 0.000 }, level = 1, disableWander = true },
	[11192] = { config_id = 11192, monster_id = 20011204, pos = { x = 200.900, y = 0.500, z = 212.772 }, rot = { x = 0.000, y = 316.786, z = 0.000 }, level = 1, disableWander = true },
	[11193] = { config_id = 11193, monster_id = 20011204, pos = { x = 202.070, y = 0.500, z = 187.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11194] = { config_id = 11194, monster_id = 20011204, pos = { x = 185.622, y = 0.500, z = 197.642 }, rot = { x = 0.000, y = 10.761, z = 0.000 }, level = 1, disableWander = true },
	[11195] = { config_id = 11195, monster_id = 20011204, pos = { x = 199.857, y = 0.500, z = 214.166 }, rot = { x = 0.000, y = 277.239, z = 0.000 }, level = 1, disableWander = true },
	[11196] = { config_id = 11196, monster_id = 20011204, pos = { x = 212.726, y = 0.500, z = 197.958 }, rot = { x = 0.000, y = 356.449, z = 0.000 }, level = 1, disableWander = true },
	[11200] = { config_id = 11200, monster_id = 20010605, pos = { x = 198.474, y = 0.000, z = 200.932 }, rot = { x = 0.000, y = 105.226, z = 0.000 }, level = 1, disableWander = true },
	[11201] = { config_id = 11201, monster_id = 20011204, pos = { x = 199.796, y = 0.500, z = 211.337 }, rot = { x = 0.000, y = 230.583, z = 0.000 }, level = 1, disableWander = true },
	[11202] = { config_id = 11202, monster_id = 20011204, pos = { x = 199.369, y = 0.500, z = 209.000 }, rot = { x = 0.000, y = 113.453, z = 0.000 }, level = 1, disableWander = true },
	[11203] = { config_id = 11203, monster_id = 20011204, pos = { x = 212.360, y = 0.500, z = 201.515 }, rot = { x = 0.000, y = 248.303, z = 0.000 }, level = 1, disableWander = true },
	[11204] = { config_id = 11204, monster_id = 20011204, pos = { x = 209.755, y = 0.500, z = 201.941 }, rot = { x = 0.000, y = 340.265, z = 0.000 }, level = 1, disableWander = true },
	[11205] = { config_id = 11205, monster_id = 20011204, pos = { x = 202.369, y = 0.500, z = 189.541 }, rot = { x = 0.000, y = 55.469, z = 0.000 }, level = 1, disableWander = true },
	[11206] = { config_id = 11206, monster_id = 20011204, pos = { x = 199.411, y = 0.500, z = 187.643 }, rot = { x = 0.000, y = 340.225, z = 0.000 }, level = 1, disableWander = true },
	[11207] = { config_id = 11207, monster_id = 20011204, pos = { x = 191.099, y = 0.500, z = 201.181 }, rot = { x = 0.000, y = 139.451, z = 0.000 }, level = 1, disableWander = true },
	[11208] = { config_id = 11208, monster_id = 20011204, pos = { x = 188.373, y = 0.500, z = 199.026 }, rot = { x = 0.000, y = 325.938, z = 0.000 }, level = 1, disableWander = true },
	[11209] = { config_id = 11209, monster_id = 20011204, pos = { x = 199.283, y = 0.500, z = 212.552 }, rot = { x = 0.000, y = 185.502, z = 0.000 }, level = 1, disableWander = true },
	[11210] = { config_id = 11210, monster_id = 20011204, pos = { x = 200.713, y = 0.500, z = 211.104 }, rot = { x = 0.000, y = 169.447, z = 0.000 }, level = 1, disableWander = true },
	[11211] = { config_id = 11211, monster_id = 20011204, pos = { x = 212.584, y = 0.500, z = 199.966 }, rot = { x = 0.000, y = 202.391, z = 0.000 }, level = 1, disableWander = true },
	[11212] = { config_id = 11212, monster_id = 20011204, pos = { x = 210.707, y = 0.500, z = 200.537 }, rot = { x = 0.000, y = 269.409, z = 0.000 }, level = 1, disableWander = true },
	[11213] = { config_id = 11213, monster_id = 20011204, pos = { x = 200.461, y = 0.500, z = 188.879 }, rot = { x = 0.000, y = 346.568, z = 0.000 }, level = 1, disableWander = true },
	[11214] = { config_id = 11214, monster_id = 20011204, pos = { x = 199.927, y = 0.500, z = 187.144 }, rot = { x = 0.000, y = 8.231, z = 0.000 }, level = 1, disableWander = true },
	[11215] = { config_id = 11215, monster_id = 20011204, pos = { x = 190.061, y = 0.500, z = 200.188 }, rot = { x = 0.000, y = 64.456, z = 0.000 }, level = 1, disableWander = true },
	[11216] = { config_id = 11216, monster_id = 20011204, pos = { x = 188.038, y = 0.500, z = 201.712 }, rot = { x = 0.000, y = 113.120, z = 0.000 }, level = 1, disableWander = true },
	[11217] = { config_id = 11217, monster_id = 20011204, pos = { x = 201.584, y = 0.500, z = 185.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11218] = { config_id = 11218, monster_id = 20011204, pos = { x = 212.044, y = 0.500, z = 201.139 }, rot = { x = 0.000, y = 332.358, z = 0.000 }, level = 1, disableWander = true },
	[11219] = { config_id = 11219, monster_id = 20011204, pos = { x = 195.450, y = 0.500, z = 208.938 }, rot = { x = 0.000, y = 153.126, z = 0.000 }, level = 1, disableWander = true },
	[11220] = { config_id = 11220, monster_id = 20011204, pos = { x = 197.550, y = 0.500, z = 208.164 }, rot = { x = 0.000, y = 217.622, z = 0.000 }, level = 1, disableWander = true },
	[11221] = { config_id = 11221, monster_id = 20011204, pos = { x = 195.874, y = 0.500, z = 207.396 }, rot = { x = 0.000, y = 98.018, z = 0.000 }, level = 1, disableWander = true },
	[11222] = { config_id = 11222, monster_id = 20011204, pos = { x = 208.666, y = 0.500, z = 200.639 }, rot = { x = 0.000, y = 264.006, z = 0.000 }, level = 1, disableWander = true },
	[11223] = { config_id = 11223, monster_id = 20011204, pos = { x = 206.749, y = 0.500, z = 201.232 }, rot = { x = 0.000, y = 242.950, z = 0.000 }, level = 1, disableWander = true },
	[11224] = { config_id = 11224, monster_id = 20011204, pos = { x = 207.169, y = 0.500, z = 199.291 }, rot = { x = 0.000, y = 291.956, z = 0.000 }, level = 1, disableWander = true },
	[11225] = { config_id = 11225, monster_id = 20011204, pos = { x = 187.717, y = 0.500, z = 199.595 }, rot = { x = 0.000, y = 115.449, z = 0.000 }, level = 1, disableWander = true },
	[11226] = { config_id = 11226, monster_id = 20011204, pos = { x = 197.618, y = 0.500, z = 184.503 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11227] = { config_id = 11227, monster_id = 20011204, pos = { x = 198.435, y = 0.500, z = 186.196 }, rot = { x = 0.000, y = 346.805, z = 0.000 }, level = 1, disableWander = true },
	[11228] = { config_id = 11228, monster_id = 20011204, pos = { x = 186.818, y = 0.500, z = 197.942 }, rot = { x = 0.000, y = 79.562, z = 0.000 }, level = 1, disableWander = true },
	[11229] = { config_id = 11229, monster_id = 20011204, pos = { x = 199.272, y = 0.500, z = 212.090 }, rot = { x = 0.000, y = 175.935, z = 0.000 }, level = 1, disableWander = true },
	[11230] = { config_id = 11230, monster_id = 20011204, pos = { x = 199.565, y = 0.500, z = 213.818 }, rot = { x = 0.000, y = 145.311, z = 0.000 }, level = 1, disableWander = true },
	[11231] = { config_id = 11231, monster_id = 20011204, pos = { x = 212.248, y = 0.500, z = 200.817 }, rot = { x = 0.000, y = 310.392, z = 0.000 }, level = 1, disableWander = true },
	[11232] = { config_id = 11232, monster_id = 20011204, pos = { x = 214.093, y = 0.500, z = 201.041 }, rot = { x = 0.000, y = 140.864, z = 0.000 }, level = 1, disableWander = true },
	[11233] = { config_id = 11233, monster_id = 20011204, pos = { x = 200.192, y = 0.500, z = 195.862 }, rot = { x = 0.000, y = 31.285, z = 0.000 }, level = 1, disableWander = true },
	[11234] = { config_id = 11234, monster_id = 20011204, pos = { x = 200.265, y = 0.500, z = 194.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11235] = { config_id = 11235, monster_id = 20011204, pos = { x = 192.747, y = 0.500, z = 201.403 }, rot = { x = 0.000, y = 147.534, z = 0.000 }, level = 1, disableWander = true },
	[11236] = { config_id = 11236, monster_id = 20011204, pos = { x = 191.451, y = 0.500, z = 200.139 }, rot = { x = 0.000, y = 52.813, z = 0.000 }, level = 1, disableWander = true },
	[11237] = { config_id = 11237, monster_id = 20011204, pos = { x = 193.059, y = 0.500, z = 199.816 }, rot = { x = 0.000, y = 52.350, z = 0.000 }, level = 1, disableWander = true },
	[11238] = { config_id = 11238, monster_id = 20011204, pos = { x = 192.103, y = 0.500, z = 198.078 }, rot = { x = 0.000, y = 65.638, z = 0.000 }, level = 1, disableWander = true },
	[11239] = { config_id = 11239, monster_id = 20011204, pos = { x = 201.533, y = 0.500, z = 206.775 }, rot = { x = 0.000, y = 165.161, z = 0.000 }, level = 1, disableWander = true },
	[11240] = { config_id = 11240, monster_id = 20011204, pos = { x = 200.767, y = 0.500, z = 208.372 }, rot = { x = 0.000, y = 285.847, z = 0.000 }, level = 1, disableWander = true },
	[11241] = { config_id = 11241, monster_id = 20011204, pos = { x = 194.174, y = 0.500, z = 198.661 }, rot = { x = 0.000, y = 342.994, z = 0.000 }, level = 1, disableWander = true },
	[11242] = { config_id = 11242, monster_id = 20011204, pos = { x = 199.797, y = 0.500, z = 206.999 }, rot = { x = 0.000, y = 113.494, z = 0.000 }, level = 1, disableWander = true },
	[11245] = { config_id = 11245, monster_id = 20010605, pos = { x = 225.663, y = 0.000, z = 199.572 }, rot = { x = 0.000, y = 297.205, z = 0.000 }, level = 1, disableWander = true },
	[11246] = { config_id = 11246, monster_id = 20010605, pos = { x = 201.289, y = 0.000, z = 222.030 }, rot = { x = 0.000, y = 143.010, z = 0.000 }, level = 1, disableWander = true },
	[11250] = { config_id = 11250, monster_id = 20011204, pos = { x = 209.324, y = 0.500, z = 201.315 }, rot = { x = 0.000, y = 311.898, z = 0.000 }, level = 1, disableWander = true },
	[11251] = { config_id = 11251, monster_id = 20011204, pos = { x = 202.387, y = 0.500, z = 192.418 }, rot = { x = 0.000, y = 320.307, z = 0.000 }, level = 1, disableWander = true },
	[11252] = { config_id = 11252, monster_id = 20011204, pos = { x = 201.211, y = 0.500, z = 191.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11253] = { config_id = 11253, monster_id = 20011204, pos = { x = 207.838, y = 0.500, z = 200.706 }, rot = { x = 0.000, y = 211.370, z = 0.000 }, level = 1, disableWander = true },
	[11254] = { config_id = 11254, monster_id = 20011204, pos = { x = 209.049, y = 0.500, z = 199.765 }, rot = { x = 0.000, y = 194.899, z = 0.000 }, level = 1, disableWander = true },
	[11255] = { config_id = 11255, monster_id = 20011204, pos = { x = 200.059, y = 0.500, z = 191.067 }, rot = { x = 0.000, y = 317.034, z = 0.000 }, level = 1, disableWander = true },
	[11256] = { config_id = 11256, monster_id = 20011204, pos = { x = 200.598, y = 0.500, z = 189.476 }, rot = { x = 0.000, y = 25.115, z = 0.000 }, level = 1, disableWander = true },
	[11257] = { config_id = 11257, monster_id = 20011204, pos = { x = 198.620, y = 0.500, z = 189.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11258] = { config_id = 11258, monster_id = 20010605, pos = { x = 200.349, y = 0.000, z = 196.210 }, rot = { x = 0.000, y = 220.368, z = 0.000 }, level = 1, disableWander = true },
	[11259] = { config_id = 11259, monster_id = 20010605, pos = { x = 194.438, y = 0.000, z = 199.884 }, rot = { x = 0.000, y = 117.312, z = 0.000 }, level = 1, disableWander = true },
	[11260] = { config_id = 11260, monster_id = 20010605, pos = { x = 206.600, y = 0.000, z = 199.400 }, rot = { x = 0.000, y = 245.559, z = 0.000 }, level = 1, disableWander = true },
	[11261] = { config_id = 11261, monster_id = 20010605, pos = { x = 199.904, y = 0.000, z = 206.219 }, rot = { x = 0.000, y = 133.870, z = 0.000 }, level = 1, disableWander = true },
	[11263] = { config_id = 11263, monster_id = 20010605, pos = { x = 226.761, y = 0.000, z = 201.340 }, rot = { x = 0.000, y = 254.453, z = 0.000 }, level = 1, disableWander = true },
	[11264] = { config_id = 11264, monster_id = 20010605, pos = { x = 201.472, y = 0.000, z = 176.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11265] = { config_id = 11265, monster_id = 20011204, pos = { x = 199.925, y = 0.500, z = 205.842 }, rot = { x = 0.000, y = 203.234, z = 0.000 }, level = 1, disableWander = true },
	[11266] = { config_id = 11266, monster_id = 20011204, pos = { x = 200.280, y = 0.500, z = 204.223 }, rot = { x = 0.000, y = 75.798, z = 0.000 }, level = 1, disableWander = true },
	[11267] = { config_id = 11267, monster_id = 20011204, pos = { x = 191.781, y = 0.500, z = 200.671 }, rot = { x = 0.000, y = 55.405, z = 0.000 }, level = 1, disableWander = true },
	[11268] = { config_id = 11268, monster_id = 20011204, pos = { x = 190.178, y = 0.500, z = 201.172 }, rot = { x = 0.000, y = 190.909, z = 0.000 }, level = 1, disableWander = true },
	[11269] = { config_id = 11269, monster_id = 20011204, pos = { x = 189.878, y = 0.500, z = 199.407 }, rot = { x = 0.000, y = 63.729, z = 0.000 }, level = 1, disableWander = true },
	[11270] = { config_id = 11270, monster_id = 20011204, pos = { x = 200.307, y = 0.500, z = 183.901 }, rot = { x = 0.000, y = 334.603, z = 0.000 }, level = 1, disableWander = true },
	[11271] = { config_id = 11271, monster_id = 20011204, pos = { x = 206.997, y = 0.500, z = 199.019 }, rot = { x = 0.000, y = 24.576, z = 0.000 }, level = 1, disableWander = true },
	[11272] = { config_id = 11272, monster_id = 20010605, pos = { x = 174.538, y = 0.000, z = 200.362 }, rot = { x = 0.000, y = 73.308, z = 0.000 }, level = 1, disableWander = true },
	[11273] = { config_id = 11273, monster_id = 20010605, pos = { x = 200.130, y = 0.000, z = 200.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11274] = { config_id = 11274, monster_id = 20010605, pos = { x = 216.506, y = 0.000, z = 200.686 }, rot = { x = 0.000, y = 14.861, z = 0.000 }, level = 1, disableWander = true },
	[11275] = { config_id = 11275, monster_id = 20010605, pos = { x = 201.617, y = 0.000, z = 210.983 }, rot = { x = 0.000, y = 269.654, z = 0.000 }, level = 1, disableWander = true },
	[11276] = { config_id = 11276, monster_id = 20010605, pos = { x = 199.565, y = 0.000, z = 211.759 }, rot = { x = 0.000, y = 100.153, z = 0.000 }, level = 1, disableWander = true },
	[11277] = { config_id = 11277, monster_id = 20011305, pos = { x = 200.367, y = 0.000, z = 181.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11278] = { config_id = 11278, monster_id = 20011305, pos = { x = 216.623, y = 0.000, z = 200.247 }, rot = { x = 0.000, y = 289.254, z = 0.000 }, level = 1, disableWander = true },
	[11279] = { config_id = 11279, monster_id = 20011305, pos = { x = 180.011, y = 0.000, z = 200.082 }, rot = { x = 0.000, y = 60.397, z = 0.000 }, level = 1, disableWander = true },
	[11280] = { config_id = 11280, monster_id = 20011305, pos = { x = 200.276, y = 0.000, z = 179.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11281] = { config_id = 11281, monster_id = 20011305, pos = { x = 200.260, y = 0.000, z = 213.202 }, rot = { x = 0.000, y = 134.304, z = 0.000 }, level = 1, disableWander = true },
	[11282] = { config_id = 11282, monster_id = 20011305, pos = { x = 222.128, y = 0.000, z = 200.493 }, rot = { x = 0.000, y = 326.410, z = 0.000 }, level = 1, disableWander = true },
	[11283] = { config_id = 11283, monster_id = 20011305, pos = { x = 200.430, y = 0.000, z = 206.267 }, rot = { x = 0.000, y = 230.409, z = 0.000 }, level = 1, disableWander = true },
	[11284] = { config_id = 11284, monster_id = 20011305, pos = { x = 200.076, y = 0.000, z = 189.096 }, rot = { x = 0.000, y = 9.970, z = 0.000 }, level = 1, disableWander = true },
	[11287] = { config_id = 11287, monster_id = 20011305, pos = { x = 185.881, y = 0.000, z = 200.180 }, rot = { x = 0.000, y = 153.274, z = 0.000 }, level = 1, disableWander = true },
	[11288] = { config_id = 11288, monster_id = 20011305, pos = { x = 209.583, y = 0.000, z = 200.291 }, rot = { x = 0.000, y = 283.948, z = 0.000 }, level = 1, disableWander = true },
	[11290] = { config_id = 11290, monster_id = 20011305, pos = { x = 199.960, y = 0.000, z = 220.230 }, rot = { x = 0.000, y = 192.479, z = 0.000 }, level = 1, disableWander = true },
	[11291] = { config_id = 11291, monster_id = 20011305, pos = { x = 206.334, y = 0.000, z = 200.298 }, rot = { x = 0.000, y = 37.575, z = 0.000 }, level = 1, disableWander = true },
	[11307] = { config_id = 11307, monster_id = 20011305, pos = { x = 197.791, y = 0.000, z = 210.477 }, rot = { x = 0.000, y = 244.028, z = 0.000 }, level = 1, disableWander = true },
	[11308] = { config_id = 11308, monster_id = 20011305, pos = { x = 211.004, y = 0.000, z = 200.292 }, rot = { x = 0.000, y = 192.037, z = 0.000 }, level = 1, disableWander = true },
	[11311] = { config_id = 11311, monster_id = 20011305, pos = { x = 201.750, y = 0.000, z = 187.949 }, rot = { x = 0.000, y = 330.350, z = 0.000 }, level = 1, disableWander = true },
	[11312] = { config_id = 11312, monster_id = 20011305, pos = { x = 189.048, y = 0.000, z = 200.995 }, rot = { x = 0.000, y = 101.394, z = 0.000 }, level = 1, disableWander = true },
	[11313] = { config_id = 11313, monster_id = 20011305, pos = { x = 199.280, y = 0.000, z = 201.675 }, rot = { x = 0.000, y = 198.644, z = 0.000 }, level = 1, disableWander = true },
	[11314] = { config_id = 11314, monster_id = 20011305, pos = { x = 201.625, y = 0.000, z = 198.707 }, rot = { x = 0.000, y = 322.752, z = 0.000 }, level = 1, disableWander = true },
	[11337] = { config_id = 11337, monster_id = 20011305, pos = { x = 178.637, y = 0.000, z = 200.040 }, rot = { x = 0.000, y = 69.216, z = 0.000 }, level = 1, disableWander = true },
	[11338] = { config_id = 11338, monster_id = 20011305, pos = { x = 179.624, y = 0.000, z = 198.171 }, rot = { x = 0.000, y = 166.523, z = 0.000 }, level = 1, disableWander = true },
	[11339] = { config_id = 11339, monster_id = 20011305, pos = { x = 199.373, y = 0.000, z = 220.032 }, rot = { x = 0.000, y = 198.679, z = 0.000 }, level = 1, disableWander = true },
	[11340] = { config_id = 11340, monster_id = 20011305, pos = { x = 201.127, y = 0.000, z = 218.048 }, rot = { x = 0.000, y = 118.339, z = 0.000 }, level = 1, disableWander = true },
	[11341] = { config_id = 11341, monster_id = 20011305, pos = { x = 199.727, y = 0.000, z = 181.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11342] = { config_id = 11342, monster_id = 20011305, pos = { x = 209.073, y = 0.000, z = 200.390 }, rot = { x = 0.000, y = 328.177, z = 0.000 }, level = 1, disableWander = true },
	[11350] = { config_id = 11350, monster_id = 20010503, pos = { x = 185.119, y = 0.500, z = 200.335 }, rot = { x = 0.000, y = 29.331, z = 0.000 }, level = 1, disableWander = true },
	[11351] = { config_id = 11351, monster_id = 20010503, pos = { x = 184.518, y = 0.500, z = 201.730 }, rot = { x = 0.000, y = 168.898, z = 0.000 }, level = 1, disableWander = true },
	[11353] = { config_id = 11353, monster_id = 20010503, pos = { x = 200.148, y = 0.500, z = 179.258 }, rot = { x = 0.000, y = 341.664, z = 0.000 }, level = 1, disableWander = true },
	[11354] = { config_id = 11354, monster_id = 20010503, pos = { x = 199.635, y = 0.500, z = 180.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11357] = { config_id = 11357, monster_id = 20010503, pos = { x = 193.451, y = 0.500, z = 199.653 }, rot = { x = 0.000, y = 108.627, z = 0.000 }, level = 1, disableWander = true },
	[11358] = { config_id = 11358, monster_id = 20010503, pos = { x = 193.935, y = 0.500, z = 198.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	[11359] = { config_id = 11359, monster_id = 20010503, pos = { x = 208.423, y = 0.500, z = 205.404 }, rot = { x = 0.000, y = 295.475, z = 0.000 }, level = 1, disableWander = true },
	[11360] = { config_id = 11360, monster_id = 20010503, pos = { x = 208.383, y = 0.500, z = 204.184 }, rot = { x = 0.000, y = 321.321, z = 0.000 }, level = 1, disableWander = true },
	[11361] = { config_id = 11361, monster_id = 20010503, pos = { x = 200.154, y = 0.500, z = 210.164 }, rot = { x = 0.000, y = 201.563, z = 0.000 }, level = 1, disableWander = true },
	[11362] = { config_id = 11362, monster_id = 20010503, pos = { x = 203.214, y = 0.500, z = 193.295 }, rot = { x = 0.000, y = 287.158, z = 0.000 }, level = 1, disableWander = true },
	[11363] = { config_id = 11363, monster_id = 20010503, pos = { x = 186.685, y = 0.500, z = 200.522 }, rot = { x = 0.000, y = 93.753, z = 0.000 }, level = 1, disableWander = true },
	[11364] = { config_id = 11364, monster_id = 20010503, pos = { x = 187.665, y = 0.500, z = 198.615 }, rot = { x = 0.000, y = 338.281, z = 0.000 }, level = 1, disableWander = true },
	[11365] = { config_id = 11365, monster_id = 20010503, pos = { x = 214.635, y = 0.500, z = 200.544 }, rot = { x = 0.000, y = 284.675, z = 0.000 }, level = 1, disableWander = true },
	[11366] = { config_id = 11366, monster_id = 20010503, pos = { x = 215.030, y = 0.500, z = 202.374 }, rot = { x = 0.000, y = 265.221, z = 0.000 }, level = 1, disableWander = true },
	[11367] = { config_id = 11367, monster_id = 20010503, pos = { x = 199.703, y = 0.500, z = 186.721 }, rot = { x = 0.000, y = 356.358, z = 0.000 }, level = 1, disableWander = true },
	[11368] = { config_id = 11368, monster_id = 20010503, pos = { x = 200.361, y = 0.500, z = 209.484 }, rot = { x = 0.000, y = 179.570, z = 0.000 }, level = 1, disableWander = true },
	[11369] = { config_id = 11369, monster_id = 20010503, pos = { x = 225.931, y = 0.500, z = 198.214 }, rot = { x = 0.000, y = 196.464, z = 0.000 }, level = 1, disableWander = true },
	[11370] = { config_id = 11370, monster_id = 20010503, pos = { x = 175.167, y = 0.500, z = 202.773 }, rot = { x = 0.000, y = 75.068, z = 0.000 }, level = 1, disableWander = true },
	[11371] = { config_id = 11371, monster_id = 20010605, pos = { x = 185.904, y = 0.000, z = 198.967 }, rot = { x = 0.000, y = 18.783, z = 0.000 }, level = 1, disableWander = true },
	[11372] = { config_id = 11372, monster_id = 20010605, pos = { x = 216.243, y = 0.000, z = 200.932 }, rot = { x = 0.000, y = 277.539, z = 0.000 }, level = 1, disableWander = true },
	[11373] = { config_id = 11373, monster_id = 20010605, pos = { x = 200.184, y = 0.000, z = 201.538 }, rot = { x = 0.000, y = 139.173, z = 0.000 }, level = 1, disableWander = true },
	[11374] = { config_id = 11374, monster_id = 20010605, pos = { x = 199.870, y = 0.000, z = 198.511 }, rot = { x = 0.000, y = 306.769, z = 0.000 }, level = 1, disableWander = true },
	[11375] = { config_id = 11375, monster_id = 20011204, pos = { x = 194.176, y = 0.500, z = 215.834 }, rot = { x = 0.000, y = 214.303, z = 0.000 }, level = 1, disableWander = true },
	[11376] = { config_id = 11376, monster_id = 20011204, pos = { x = 192.232, y = 0.500, z = 215.921 }, rot = { x = 0.000, y = 330.272, z = 0.000 }, level = 1, disableWander = true },
	[11377] = { config_id = 11377, monster_id = 20011204, pos = { x = 193.204, y = 0.500, z = 214.139 }, rot = { x = 0.000, y = 320.282, z = 0.000 }, level = 1, disableWander = true },
	[11378] = { config_id = 11378, monster_id = 20011204, pos = { x = 189.665, y = 0.500, z = 200.086 }, rot = { x = 0.000, y = 51.699, z = 0.000 }, level = 1, disableWander = true },
	[11379] = { config_id = 11379, monster_id = 20011204, pos = { x = 219.567, y = 0.500, z = 194.609 }, rot = { x = 0.000, y = 298.085, z = 0.000 }, level = 1, disableWander = true },
	[11380] = { config_id = 11380, monster_id = 20011204, pos = { x = 218.303, y = 0.500, z = 195.826 }, rot = { x = 0.000, y = 208.596, z = 0.000 }, level = 1, disableWander = true },
	[11381] = { config_id = 11381, monster_id = 20011204, pos = { x = 218.538, y = 0.500, z = 194.313 }, rot = { x = 0.000, y = 118.746, z = 0.000 }, level = 1, disableWander = true },
	[11382] = { config_id = 11382, monster_id = 20011204, pos = { x = 200.328, y = 0.500, z = 190.206 }, rot = { x = 0.000, y = 354.261, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[11008] = { config_id = 11008, gadget_id = 70320035, pos = { x = 199.955, y = 0.300, z = 180.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11016] = { config_id = 11016, gadget_id = 70320035, pos = { x = 199.955, y = 0.300, z = 220.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11017] = { config_id = 11017, gadget_id = 70320021, pos = { x = 198.200, y = 1.600, z = 228.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 1, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	[11018] = { config_id = 11018, gadget_id = 70320021, pos = { x = 201.800, y = 1.600, z = 228.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 2, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	[11019] = { config_id = 11019, gadget_id = 70320024, pos = { x = 200.000, y = 0.000, z = 170.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	[11020] = { config_id = 11020, gadget_id = 70320024, pos = { x = 200.000, y = 0.000, z = 230.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	[11021] = { config_id = 11021, gadget_id = 70320024, pos = { x = 170.000, y = 0.000, z = 200.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	[11022] = { config_id = 11022, gadget_id = 70320024, pos = { x = 230.000, y = 0.000, z = 200.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStop },
	[11023] = { config_id = 11023, gadget_id = 70320014, pos = { x = 200.000, y = 0.000, z = 170.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[11024] = { config_id = 11024, gadget_id = 70320014, pos = { x = 200.000, y = 0.000, z = 230.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[11025] = { config_id = 11025, gadget_id = 70320014, pos = { x = 170.000, y = 0.000, z = 200.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[11026] = { config_id = 11026, gadget_id = 70320014, pos = { x = 230.000, y = 0.000, z = 200.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[11027] = { config_id = 11027, gadget_id = 70320021, pos = { x = 171.500, y = 1.600, z = 198.200 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, route_id = 11, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	[11028] = { config_id = 11028, gadget_id = 70320021, pos = { x = 171.500, y = 1.600, z = 201.800 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, route_id = 12, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	[11032] = { config_id = 11032, gadget_id = 70320035, pos = { x = 199.941, y = 0.300, z = 200.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11038] = { config_id = 11038, gadget_id = 70320021, pos = { x = 201.800, y = 1.600, z = 171.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 13 },
	[11039] = { config_id = 11039, gadget_id = 70320021, pos = { x = 198.200, y = 1.600, z = 171.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 14 },
	[11040] = { config_id = 11040, gadget_id = 70320021, pos = { x = 228.500, y = 1.600, z = 201.800 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, route_id = 9 },
	[11041] = { config_id = 11041, gadget_id = 70320021, pos = { x = 228.500, y = 1.600, z = 198.200 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, route_id = 10 },
	[11066] = { config_id = 11066, gadget_id = 70320021, pos = { x = 182.000, y = 1.500, z = 195.000 }, rot = { x = 0.000, y = 62.000, z = 0.000 }, level = 1, route_id = 27 },
	[11067] = { config_id = 11067, gadget_id = 70320021, pos = { x = 192.000, y = 1.500, z = 202.000 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, route_id = 28 },
	[11068] = { config_id = 11068, gadget_id = 70320035, pos = { x = 187.425, y = 0.300, z = 200.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11069] = { config_id = 11069, gadget_id = 70380323, pos = { x = 200.000, y = 0.000, z = 200.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11078] = { config_id = 11078, gadget_id = 70320077, pos = { x = 200.000, y = 1.000, z = 200.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11079] = { config_id = 11079, gadget_id = 70320035, pos = { x = 186.989, y = 0.300, z = 200.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11080] = { config_id = 11080, gadget_id = 70320021, pos = { x = 210.000, y = 1.500, z = 200.000 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, route_id = 29 },
	[11081] = { config_id = 11081, gadget_id = 70320021, pos = { x = 218.000, y = 1.500, z = 205.000 }, rot = { x = 0.000, y = 62.000, z = 0.000 }, level = 1, route_id = 30 },
	[11082] = { config_id = 11082, gadget_id = 70320035, pos = { x = 218.645, y = 0.300, z = 200.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11113] = { config_id = 11113, gadget_id = 70320035, pos = { x = 199.978, y = 0.300, z = 179.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11115] = { config_id = 11115, gadget_id = 70320035, pos = { x = 199.978, y = 0.300, z = 220.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11116] = { config_id = 11116, gadget_id = 70320035, pos = { x = 198.113, y = 0.300, z = 225.055 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11119] = { config_id = 11119, gadget_id = 70320035, pos = { x = 198.950, y = 0.300, z = 194.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11121] = { config_id = 11121, gadget_id = 70320035, pos = { x = 219.067, y = 0.300, z = 213.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11125] = { config_id = 11125, gadget_id = 70320035, pos = { x = 201.302, y = 0.300, z = 188.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11127] = { config_id = 11127, gadget_id = 70320035, pos = { x = 185.972, y = 0.300, z = 199.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11128] = { config_id = 11128, gadget_id = 70320035, pos = { x = 200.214, y = 0.300, z = 211.821 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11135] = { config_id = 11135, gadget_id = 70320035, pos = { x = 212.616, y = 0.300, z = 199.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11136] = { config_id = 11136, gadget_id = 70320035, pos = { x = 225.190, y = 0.300, z = 199.934 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11138] = { config_id = 11138, gadget_id = 70320021, pos = { x = 200.000, y = 4.000, z = 229.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 23 },
	[11140] = { config_id = 11140, gadget_id = 70320021, pos = { x = 229.000, y = 4.000, z = 200.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, route_id = 24 },
	[11141] = { config_id = 11141, gadget_id = 70320035, pos = { x = 199.994, y = 0.300, z = 174.932 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11142] = { config_id = 11142, gadget_id = 70320035, pos = { x = 174.780, y = 0.300, z = 199.569 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11143] = { config_id = 11143, gadget_id = 70320035, pos = { x = 199.975, y = 0.300, z = 224.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11144] = { config_id = 11144, gadget_id = 70320035, pos = { x = 198.765, y = 0.300, z = 206.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11145] = { config_id = 11145, gadget_id = 70320035, pos = { x = 208.550, y = 0.300, z = 200.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11146] = { config_id = 11146, gadget_id = 70320035, pos = { x = 200.007, y = 0.300, z = 189.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11147] = { config_id = 11147, gadget_id = 70320035, pos = { x = 189.779, y = 0.300, z = 199.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11179] = { config_id = 11179, gadget_id = 70320021, pos = { x = 198.700, y = 4.000, z = 229.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 36 },
	[11180] = { config_id = 11180, gadget_id = 70320021, pos = { x = 201.300, y = 4.000, z = 229.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 37 },
	[11182] = { config_id = 11182, gadget_id = 70320021, pos = { x = 200.000, y = 4.000, z = 171.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 25 },
	[11184] = { config_id = 11184, gadget_id = 70320021, pos = { x = 171.000, y = 4.000, z = 200.000 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, route_id = 26 },
	[11197] = { config_id = 11197, gadget_id = 70320035, pos = { x = 178.121, y = 0.300, z = 201.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11198] = { config_id = 11198, gadget_id = 70320035, pos = { x = 200.631, y = 0.300, z = 178.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11199] = { config_id = 11199, gadget_id = 70320035, pos = { x = 219.528, y = 0.300, z = 196.491 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11243] = { config_id = 11243, gadget_id = 70320062, pos = { x = 200.000, y = 0.000, z = 200.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11244] = { config_id = 11244, gadget_id = 70320035, pos = { x = 192.963, y = 0.300, z = 217.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11247] = { config_id = 11247, gadget_id = 70320035, pos = { x = 190.488, y = 0.300, z = 199.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11248] = { config_id = 11248, gadget_id = 70320035, pos = { x = 200.058, y = 0.300, z = 189.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11249] = { config_id = 11249, gadget_id = 70320035, pos = { x = 211.071, y = 0.300, z = 202.821 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11285] = { config_id = 11285, gadget_id = 70320035, pos = { x = 200.528, y = 0.300, z = 210.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11286] = { config_id = 11286, gadget_id = 70320035, pos = { x = 175.018, y = 0.300, z = 200.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11289] = { config_id = 11289, gadget_id = 70320035, pos = { x = 199.922, y = 0.300, z = 224.631 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11292] = { config_id = 11292, gadget_id = 70320035, pos = { x = 196.883, y = 0.300, z = 199.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11293] = { config_id = 11293, gadget_id = 70320035, pos = { x = 185.622, y = 0.300, z = 202.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11294] = { config_id = 11294, gadget_id = 70320035, pos = { x = 201.852, y = 0.300, z = 190.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11295] = { config_id = 11295, gadget_id = 70320035, pos = { x = 198.937, y = 0.300, z = 179.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11296] = { config_id = 11296, gadget_id = 70320035, pos = { x = 187.988, y = 0.300, z = 213.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11297] = { config_id = 11297, gadget_id = 70320035, pos = { x = 215.771, y = 0.300, z = 210.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11298] = { config_id = 11298, gadget_id = 70320035, pos = { x = 200.065, y = 0.300, z = 197.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11299] = { config_id = 11299, gadget_id = 70320035, pos = { x = 178.644, y = 0.300, z = 196.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11300] = { config_id = 11300, gadget_id = 70320035, pos = { x = 190.423, y = 0.300, z = 199.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11301] = { config_id = 11301, gadget_id = 70320035, pos = { x = 199.354, y = 0.300, z = 190.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11302] = { config_id = 11302, gadget_id = 70320035, pos = { x = 211.339, y = 0.300, z = 199.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11303] = { config_id = 11303, gadget_id = 70320035, pos = { x = 198.764, y = 0.300, z = 210.446 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11304] = { config_id = 11304, gadget_id = 70320035, pos = { x = 200.136, y = 0.300, z = 219.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11305] = { config_id = 11305, gadget_id = 70320035, pos = { x = 219.653, y = 0.300, z = 199.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11306] = { config_id = 11306, gadget_id = 70320035, pos = { x = 200.088, y = 0.300, z = 179.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11309] = { config_id = 11309, gadget_id = 70320035, pos = { x = 179.771, y = 0.300, z = 199.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11310] = { config_id = 11310, gadget_id = 70320035, pos = { x = 199.041, y = 0.300, z = 180.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11315] = { config_id = 11315, gadget_id = 70320035, pos = { x = 224.946, y = 0.300, z = 199.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11316] = { config_id = 11316, gadget_id = 70320035, pos = { x = 200.039, y = 0.300, z = 174.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11318] = { config_id = 11318, gadget_id = 70320035, pos = { x = 199.902, y = 0.300, z = 199.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11319] = { config_id = 11319, gadget_id = 70320035, pos = { x = 190.536, y = 0.300, z = 198.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11320] = { config_id = 11320, gadget_id = 70320035, pos = { x = 178.211, y = 0.300, z = 199.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11322] = { config_id = 11322, gadget_id = 70320035, pos = { x = 217.013, y = 0.300, z = 201.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11323] = { config_id = 11323, gadget_id = 70320035, pos = { x = 200.139, y = 0.300, z = 220.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11325] = { config_id = 11325, gadget_id = 70320035, pos = { x = 182.216, y = 0.300, z = 200.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11326] = { config_id = 11326, gadget_id = 70320035, pos = { x = 194.859, y = 0.300, z = 199.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11327] = { config_id = 11327, gadget_id = 70320035, pos = { x = 201.298, y = 0.300, z = 209.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11328] = { config_id = 11328, gadget_id = 70320035, pos = { x = 209.475, y = 0.300, z = 204.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11329] = { config_id = 11329, gadget_id = 70320035, pos = { x = 218.648, y = 0.300, z = 200.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11330] = { config_id = 11330, gadget_id = 70320035, pos = { x = 202.267, y = 0.300, z = 191.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11333] = { config_id = 11333, gadget_id = 70320035, pos = { x = 200.050, y = 0.300, z = 179.757 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11334] = { config_id = 11334, gadget_id = 70320035, pos = { x = 179.950, y = 0.300, z = 200.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11335] = { config_id = 11335, gadget_id = 70320035, pos = { x = 199.860, y = 0.300, z = 219.359 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11336] = { config_id = 11336, gadget_id = 70320035, pos = { x = 219.479, y = 0.300, z = 200.754 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11343] = { config_id = 11343, gadget_id = 70320021, pos = { x = 171.000, y = 4.000, z = 198.700 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, route_id = 38 },
	[11344] = { config_id = 11344, gadget_id = 70320021, pos = { x = 171.000, y = 4.000, z = 201.300 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, route_id = 39 },
	[11345] = { config_id = 11345, gadget_id = 70320021, pos = { x = 201.300, y = 4.000, z = 171.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 40 },
	[11346] = { config_id = 11346, gadget_id = 70320021, pos = { x = 198.700, y = 4.000, z = 171.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 41 },
	[11347] = { config_id = 11347, gadget_id = 70320021, pos = { x = 229.000, y = 4.000, z = 201.300 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, route_id = 42 },
	[11348] = { config_id = 11348, gadget_id = 70320021, pos = { x = 229.000, y = 4.000, z = 198.700 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, route_id = 43 },
	[11349] = { config_id = 11349, gadget_id = 70320035, pos = { x = 200.019, y = 0.300, z = 193.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11352] = { config_id = 11352, gadget_id = 70320035, pos = { x = 200.155, y = 0.300, z = 209.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11383] = { config_id = 11383, gadget_id = 70320021, pos = { x = 198.200, y = 1.600, z = 228.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 44 },
	[11384] = { config_id = 11384, gadget_id = 70320021, pos = { x = 201.800, y = 1.600, z = 228.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 45 },
	[11385] = { config_id = 11385, gadget_id = 70320021, pos = { x = 171.500, y = 1.600, z = 198.200 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, route_id = 46 },
	[11386] = { config_id = 11386, gadget_id = 70320021, pos = { x = 171.500, y = 1.600, z = 201.800 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, route_id = 47 },
	[11387] = { config_id = 11387, gadget_id = 70320035, pos = { x = 199.497, y = 0.300, z = 221.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11388] = { config_id = 11388, gadget_id = 70320035, pos = { x = 215.139, y = 0.300, z = 213.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11389] = { config_id = 11389, gadget_id = 70320035, pos = { x = 212.206, y = 0.300, z = 199.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11390] = { config_id = 11390, gadget_id = 70320035, pos = { x = 223.610, y = 0.300, z = 200.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11391] = { config_id = 11391, gadget_id = 70320035, pos = { x = 200.653, y = 0.300, z = 214.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11392] = { config_id = 11392, gadget_id = 70320035, pos = { x = 204.411, y = 0.300, z = 186.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11393] = { config_id = 11393, gadget_id = 70320035, pos = { x = 200.472, y = 0.300, z = 197.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11394] = { config_id = 11394, gadget_id = 70320035, pos = { x = 217.474, y = 0.300, z = 188.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11395] = { config_id = 11395, gadget_id = 70320035, pos = { x = 210.032, y = 0.300, z = 200.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11396] = { config_id = 11396, gadget_id = 70320035, pos = { x = 191.088, y = 0.300, z = 200.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11397] = { config_id = 11397, gadget_id = 70320035, pos = { x = 200.133, y = 0.300, z = 224.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11398] = { config_id = 11398, gadget_id = 70320035, pos = { x = 199.620, y = 0.300, z = 208.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11399] = { config_id = 11399, gadget_id = 70320035, pos = { x = 225.888, y = 0.300, z = 199.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11400] = { config_id = 11400, gadget_id = 70320035, pos = { x = 210.330, y = 0.300, z = 201.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11401] = { config_id = 11401, gadget_id = 70320035, pos = { x = 210.595, y = 0.300, z = 200.389 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11402] = { config_id = 11402, gadget_id = 70320035, pos = { x = 202.721, y = 0.300, z = 190.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11403] = { config_id = 11403, gadget_id = 70320035, pos = { x = 198.358, y = 0.300, z = 180.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11404] = { config_id = 11404, gadget_id = 70320035, pos = { x = 225.337, y = 0.300, z = 200.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11405] = { config_id = 11405, gadget_id = 70320035, pos = { x = 198.915, y = 0.300, z = 190.056 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11406] = { config_id = 11406, gadget_id = 70320035, pos = { x = 198.939, y = 0.300, z = 206.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11407] = { config_id = 11407, gadget_id = 70320035, pos = { x = 222.011, y = 0.300, z = 200.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11408] = { config_id = 11408, gadget_id = 70320035, pos = { x = 200.039, y = 0.300, z = 178.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11409] = { config_id = 11409, gadget_id = 70320035, pos = { x = 199.552, y = 0.300, z = 186.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11410] = { config_id = 11410, gadget_id = 70320035, pos = { x = 189.696, y = 0.300, z = 199.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11411] = { config_id = 11411, gadget_id = 70320035, pos = { x = 209.658, y = 0.300, z = 199.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11412] = { config_id = 11412, gadget_id = 70320035, pos = { x = 198.688, y = 0.300, z = 209.886 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11413] = { config_id = 11413, gadget_id = 70320035, pos = { x = 200.218, y = 0.300, z = 174.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11414] = { config_id = 11414, gadget_id = 70320035, pos = { x = 224.650, y = 0.300, z = 198.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11415] = { config_id = 11415, gadget_id = 70320035, pos = { x = 200.217, y = 0.300, z = 225.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11416] = { config_id = 11416, gadget_id = 70320035, pos = { x = 174.915, y = 0.300, z = 200.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11417] = { config_id = 11417, gadget_id = 70320035, pos = { x = 200.530, y = 0.300, z = 192.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11418] = { config_id = 11418, gadget_id = 70320035, pos = { x = 213.410, y = 0.300, z = 199.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11419] = { config_id = 11419, gadget_id = 70320035, pos = { x = 200.700, y = 0.300, z = 212.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11420] = { config_id = 11420, gadget_id = 70320035, pos = { x = 190.062, y = 0.300, z = 201.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11421] = { config_id = 11421, gadget_id = 70320035, pos = { x = 200.315, y = 0.300, z = 175.230 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11422] = { config_id = 11422, gadget_id = 70320035, pos = { x = 173.844, y = 0.300, z = 199.501 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11423] = { config_id = 11423, gadget_id = 70320035, pos = { x = 200.026, y = 0.300, z = 226.053 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11424] = { config_id = 11424, gadget_id = 70320035, pos = { x = 225.363, y = 0.300, z = 200.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11425] = { config_id = 11425, gadget_id = 70320035, pos = { x = 199.515, y = 0.300, z = 188.808 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11426] = { config_id = 11426, gadget_id = 70320035, pos = { x = 190.698, y = 0.300, z = 199.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11427] = { config_id = 11427, gadget_id = 70320035, pos = { x = 201.607, y = 0.300, z = 205.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11428] = { config_id = 11428, gadget_id = 70320035, pos = { x = 198.297, y = 0.300, z = 213.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11429] = { config_id = 11429, gadget_id = 70320035, pos = { x = 176.625, y = 0.300, z = 199.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11430] = { config_id = 11430, gadget_id = 70320035, pos = { x = 198.747, y = 0.300, z = 177.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11431] = { config_id = 11431, gadget_id = 70320035, pos = { x = 223.355, y = 0.300, z = 198.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11432] = { config_id = 11432, gadget_id = 70320035, pos = { x = 200.303, y = 0.300, z = 227.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11433] = { config_id = 11433, gadget_id = 70320035, pos = { x = 198.448, y = 0.300, z = 184.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11434] = { config_id = 11434, gadget_id = 70320035, pos = { x = 191.677, y = 0.300, z = 199.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11435] = { config_id = 11435, gadget_id = 70320035, pos = { x = 200.705, y = 0.300, z = 205.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11436] = { config_id = 11436, gadget_id = 70320035, pos = { x = 207.683, y = 0.300, z = 198.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11437] = { config_id = 11437, gadget_id = 70320035, pos = { x = 177.786, y = 0.300, z = 199.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11438] = { config_id = 11438, gadget_id = 70320035, pos = { x = 199.986, y = 0.300, z = 225.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11439] = { config_id = 11439, gadget_id = 70320035, pos = { x = 198.729, y = 0.300, z = 177.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11440] = { config_id = 11440, gadget_id = 70320035, pos = { x = 225.725, y = 0.300, z = 200.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11441] = { config_id = 11441, gadget_id = 70320035, pos = { x = 200.278, y = 0.300, z = 220.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11442] = { config_id = 11442, gadget_id = 70320035, pos = { x = 199.898, y = 0.300, z = 205.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11443] = { config_id = 11443, gadget_id = 70320035, pos = { x = 228.153, y = 0.300, z = 199.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11444] = { config_id = 11444, gadget_id = 70320035, pos = { x = 207.880, y = 0.300, z = 197.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 一定是Cube！
	[11029] = { config_id = 11029, shape = RegionShape.CUBIC, size = { x = 90.000, y = 30.000, z = 90.000 }, pos = { x = 200.000, y = 10.000, z = 200.000 } }
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
		gadgets = { 11078, 11243 },
		regions = { 11029 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 琴球门，高1.7,
		monsters = { },
		gadgets = { 11019, 11020, 11021, 11022, 11243 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 可莉/烟绯球门,
		monsters = { },
		gadgets = { 11023, 11024, 11025, 11026, 11243 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 可莉/烟绯_1人门_4_1,
		monsters = { },
		gadgets = { 11383, 11384, 11385, 11386 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 可莉/烟绯_1人_1_1散,
		monsters = { 11001, 11002, 11003, 11004, 11005, 11006, 11007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 可莉/烟绯_1人_1_2聚,
		monsters = { 11009, 11010, 11011, 11012, 11013, 11014, 11015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 可莉/烟绯_1人_2_1,
		monsters = { 11030, 11031, 11033, 11034, 11035, 11036, 11037 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 可莉/烟绯_4人_1_1散,
		monsters = { 11042, 11043, 11044, 11045, 11046, 11047, 11048, 11049, 11050, 11051, 11052, 11053, 11054, 11055 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 可莉/烟绯_4人_1_2聚,
		monsters = { 11056, 11057, 11058, 11059, 11060, 11061, 11062, 11063, 11064, 11065, 11074, 11075, 11076, 11077 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 可莉/烟绯_4人门_4_1,
		monsters = { },
		gadgets = { 11017, 11018, 11027, 11028 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = 可莉/烟绯_1人门_2_1,
		monsters = { },
		gadgets = { 11066, 11067 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = 可莉/烟绯_1人_4_1,
		monsters = { 11070, 11071, 11072, 11073, 11112, 11183, 11200, 11245, 11246 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = 可莉/烟绯_234人门_2_1,
		monsters = { },
		gadgets = { 11066, 11067, 11080, 11081 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = 可莉/烟绯_4人_2_1,
		monsters = { 11086, 11087, 11088, 11089, 11090, 11091, 11092, 11093, 11094, 11095, 11096, 11097 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = 可莉/烟绯_4人_4_1,
		monsters = { 11098, 11099, 11100, 11101, 11102, 11103, 11104, 11105, 11258, 11259, 11260, 11261 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 16,
		-- description = 可莉/烟绯_23人_1_1散,
		monsters = { 11042, 11043, 11044, 11045, 11046, 11047, 11048, 11049, 11050, 11051 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 17,
		-- description = 可莉/烟绯_23人_1_2聚,
		monsters = { 11056, 11057, 11058, 11059, 11060, 11061, 11062, 11063, 11064, 11065 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 18,
		-- description = 可莉/烟绯_23人_2_1,
		monsters = { 11086, 11087, 11088, 11089, 11090, 11091, 11092, 11093 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 19,
		-- description = 可莉/烟绯_23人门_4_1,
		monsters = { },
		gadgets = { 11038, 11039, 11040, 11041 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 20,
		-- description = 可莉/烟绯_23人门_4_2,
		monsters = { },
		gadgets = { 11383, 11384, 11385, 11386 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 21,
		-- description = 可莉/烟绯_23人_4_1,
		monsters = { 11106, 11107, 11108, 11109, 11110, 11111, 11263, 11264, 11272, 11273, 11274, 11275, 11276 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 22,
		-- description = 琴_1人_1_1散,
		monsters = { 11114, 11117, 11118, 11120 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 23,
		-- description = 琴_1人_1_2聚,
		monsters = { 11122, 11123, 11124, 11126 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 24,
		-- description = 琴_1人_2_1,
		monsters = { 11129, 11130, 11131, 11132, 11133, 11134 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 25,
		-- description = 琴_1人门_2_1,
		monsters = { },
		gadgets = { 11138, 11140 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 26,
		-- description = 琴_1人门_4_1,
		monsters = { },
		gadgets = { 11179, 11180, 11343, 11344 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 27,
		-- description = 琴_1人_4_1,
		monsters = { 11148, 11149, 11150, 11151, 11152, 11284, 11287, 11288, 11290 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 28,
		-- description = 琴_4人_1_1散,
		monsters = { 11153, 11154, 11155, 11156, 11157, 11158, 11159, 11160, 11161, 11162, 11163, 11164 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 29,
		-- description = 琴_4人_1_1聚,
		monsters = { 11167, 11168, 11169, 11170, 11171, 11172, 11173, 11174, 11175, 11176, 11177, 11178 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 30,
		-- description = 琴_234人门_2_1,
		monsters = { },
		gadgets = { 11138, 11140 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 31,
		-- description = 琴_4人_2_1,
		monsters = { 11185, 11186, 11187, 11188, 11189, 11190, 11191, 11192, 11193, 11194, 11195, 11196 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 32,
		-- description = 琴_4人门_4_1,
		monsters = { },
		gadgets = { 11179, 11180, 11343, 11344, 11345, 11346, 11347, 11348 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 33,
		-- description = 琴_4人_4_1,
		monsters = { 11201, 11202, 11203, 11204, 11205, 11206, 11207, 11208, 11307, 11308, 11311, 11312, 11313, 11314 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 34,
		-- description = 琴_23人_1_1散,
		monsters = { 11209, 11210, 11211, 11212, 11213, 11214, 11215, 11216, 11217, 11218 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 35,
		-- description = 琴_23人_1_1聚,
		monsters = { 11219, 11220, 11221, 11222, 11223, 11224, 11225, 11226, 11227, 11228 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 36,
		-- description = 琴_23人_2_1,
		monsters = { 11229, 11230, 11231, 11232, 11233, 11234, 11235, 11236 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 37,
		-- description = 琴_23人门_4_1,
		monsters = { },
		gadgets = { 11179, 11180, 11343, 11344 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 38,
		-- description = 琴_23人门_4_2,
		monsters = { },
		gadgets = { 11179, 11180, 11347, 11348 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 39,
		-- description = 琴_23人_4_1,
		monsters = { 11237, 11238, 11239, 11240, 11241, 11242, 11270, 11271, 11337, 11338, 11339, 11340, 11341, 11342 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 40,
		-- description = 可莉/烟绯_1人门_3_1,
		monsters = { },
		gadgets = { 11066, 11067 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 41,
		-- description = 可莉/烟绯_1人_3_1,
		monsters = { 11083, 11084, 11350, 11351, 11353, 11354 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 42,
		-- description = 可莉/烟绯_23人门_3_1,
		monsters = { },
		gadgets = { 11066, 11067, 11080, 11081 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 43,
		-- description = 可莉/烟绯_23人_3_1,
		monsters = { 11085, 11137, 11139, 11181, 11357, 11358, 11359, 11360, 11361, 11362 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 44,
		-- description = 可莉/烟绯_4人门_3_1,
		monsters = { },
		gadgets = { 11066, 11067, 11080, 11081 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 45,
		-- description = 可莉/烟绯_4人_3_1,
		monsters = { 11363, 11364, 11365, 11366, 11367, 11368, 11369, 11370, 11371, 11372, 11373, 11374 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 46,
		-- description = 琴_1人门_3_1,
		monsters = { },
		gadgets = { 11140, 11182 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 47,
		-- description = 琴_1人_3_1,
		monsters = { 11250, 11251, 11252, 11253, 11254, 11277, 11278 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 48,
		-- description = 琴_234人门_3_1,
		monsters = { },
		gadgets = { 11182, 11184 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 49,
		-- description = 琴_23人_3_1,
		monsters = { 11255, 11256, 11257, 11265, 11266, 11267, 11268, 11269, 11279, 11280, 11281, 11282 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 50,
		-- description = 琴_4人_3_1,
		monsters = { 11165, 11166, 11283, 11291, 11375, 11376, 11377, 11378, 11379, 11380, 11381, 11382 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 51,
		-- description = 可莉_单_1_体力球,
		monsters = { },
		gadgets = { 11387, 11388, 11389, 11390 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 52,
		-- description = 可莉_单_2_体力球,
		monsters = { },
		gadgets = { 11391, 11392, 11393, 11394 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 53,
		-- description = 可莉_单_3_体力球,
		monsters = { },
		gadgets = { 11292, 11293, 11294, 11295 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 54,
		-- description = 可莉_单_4_体力球,
		monsters = { },
		gadgets = { 11296, 11297, 11298, 11299 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 55,
		-- description = 可莉_多_1_体力球,
		monsters = { },
		gadgets = { 11300, 11301, 11302, 11303, 11304, 11305, 11306, 11309 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 56,
		-- description = 可莉_多_2_体力球,
		monsters = { },
		gadgets = { 11310, 11318, 11319, 11320, 11322, 11323 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 57,
		-- description = 可莉_多_3_体力球,
		monsters = { },
		gadgets = { 11008, 11016, 11325, 11326, 11327, 11328, 11329, 11330 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 58,
		-- description = 可莉_多_4_体力球,
		monsters = { },
		gadgets = { 11333, 11334, 11335, 11336, 11349, 11352, 11395, 11396 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 59,
		-- description = 琴_单_1_体力球,
		monsters = { },
		gadgets = { 11397, 11398, 11399, 11400 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 60,
		-- description = 琴_单_2_体力球,
		monsters = { },
		gadgets = { 11441, 11442, 11443, 11444 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 61,
		-- description = 琴_单_3_体力球,
		monsters = { },
		gadgets = { 11401, 11402, 11403, 11404 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 62,
		-- description = 琴_单_4_体力球,
		monsters = { },
		gadgets = { 11068, 11405, 11406, 11407, 11408 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 63,
		-- description = 琴_多_1_体力球,
		monsters = { },
		gadgets = { 11409, 11410, 11411, 11412, 11413, 11414, 11415, 11416 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 64,
		-- description = 琴_多_2_体力球,
		monsters = { },
		gadgets = { 11417, 11418, 11419, 11420, 11421, 11422, 11423, 11424 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 65,
		-- description = 琴_多_3_体力球,
		monsters = { },
		gadgets = { 11425, 11426, 11427, 11428, 11429, 11430, 11431, 11432 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 66,
		-- description = 琴_多_4_体力球,
		monsters = { },
		gadgets = { 11433, 11434, 11435, 11436, 11437, 11438, 11439, 11440 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 67,
		-- description = 可莉4人第三波体力球,
		monsters = { },
		gadgets = { 11032, 11079, 11082, 11113, 11115, 11116, 11119, 11121 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 68,
		-- description = 琴4人第二波体力球,
		monsters = { },
		gadgets = { 11125, 11127, 11128, 11135, 11136, 11141, 11142, 11143 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 69,
		-- description = 琴4人第三波体力球,
		monsters = { },
		gadgets = { 11144, 11145, 11146, 11147, 11197, 11198, 11199, 11244 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 70,
		-- description = ,
		monsters = { },
		gadgets = { 11247, 11248, 11249, 11285, 11286, 11289, 11315, 11316 },
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

require "V3_2/CharAmuse_Football"
require "V3_2/CharAmuse_Retrans"
-- 基础信息
local base_info = {
	group_id = 199003065
}

-- DEFS_MISCS
local defs = {
        --开启操作台configID
        starter_gadget = 65001,
        --终点Region的ConfigID
        end_region = 65092,
        --限定region的configID
        play_region =65091 ,
        --限定region的suite
        play_region_suite =10 ,
        --gallery_id
        gallery_id =22002 ,

        guide_region =65089 ,

        --计数定义。
        --这个赛道中，每种行为写入哪个param
        --行为：1-漩涡 2-障碍破坏 3-碰脏脏果
        counter = 
        { 
                ["param1"] = 5,
                ["param2"] = 6,
                ["param3"] = 0,
        },

        father_challenge = 2018,

        child_time_challenge = 
        {
                {challenge_id = 2019, aim = 140},
                        
        },

        child_count_challenge = 
        {
                {challenge_id = 2023, aim = 1},
                {challenge_id = 2024, aim = 3},
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
	[65001] = { config_id = 65001, gadget_id = 70350250, pos = { x = -323.293, y = 120.000, z = 461.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[65002] = { config_id = 65002, gadget_id = 70350277, pos = { x = -326.411, y = 120.000, z = 459.314 }, rot = { x = 0.000, y = 247.823, z = 0.000 }, level = 20, area_id = 403 },
	[65003] = { config_id = 65003, gadget_id = 70310350, pos = { x = -365.947, y = 120.000, z = 456.386 }, rot = { x = 0.000, y = 150.900, z = 0.000 }, level = 20, area_id = 403 },
	[65004] = { config_id = 65004, gadget_id = 70310350, pos = { x = -404.672, y = 120.000, z = 420.859 }, rot = { x = 0.000, y = 122.384, z = 0.000 }, level = 20, area_id = 403 },
	[65005] = { config_id = 65005, gadget_id = 70310350, pos = { x = -359.907, y = 120.000, z = 427.070 }, rot = { x = 0.000, y = 325.455, z = 0.000 }, level = 20, area_id = 403 },
	[65006] = { config_id = 65006, gadget_id = 70310410, pos = { x = -464.116, y = 120.000, z = 296.518 }, rot = { x = 0.000, y = 34.494, z = 0.000 }, level = 20, area_id = 403 },
	[65007] = { config_id = 65007, gadget_id = 70310410, pos = { x = -511.751, y = 120.000, z = 219.033 }, rot = { x = 0.000, y = 32.803, z = 0.000 }, level = 20, area_id = 403 },
	[65008] = { config_id = 65008, gadget_id = 70290059, pos = { x = -387.461, y = 120.000, z = 442.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[65009] = { config_id = 65009, gadget_id = 70310409, pos = { x = -376.558, y = 120.000, z = 412.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[65010] = { config_id = 65010, gadget_id = 70350085, pos = { x = -409.545, y = 120.000, z = 387.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[65012] = { config_id = 65012, gadget_id = 70220110, pos = { x = -423.513, y = 120.000, z = 372.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[65013] = { config_id = 65013, gadget_id = 70220110, pos = { x = -425.528, y = 120.000, z = 369.002 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[65014] = { config_id = 65014, gadget_id = 70220110, pos = { x = -431.939, y = 122.500, z = 341.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[65015] = { config_id = 65015, gadget_id = 70220110, pos = { x = -430.446, y = 122.500, z = 343.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[65016] = { config_id = 65016, gadget_id = 70220110, pos = { x = -454.000, y = 125.500, z = 319.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[65017] = { config_id = 65017, gadget_id = 70220110, pos = { x = -455.653, y = 125.500, z = 317.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[65018] = { config_id = 65018, gadget_id = 70310350, pos = { x = -440.012, y = 120.000, z = 375.000 }, rot = { x = 0.000, y = 125.061, z = 0.000 }, level = 20, area_id = 403 },
	[65019] = { config_id = 65019, gadget_id = 70310350, pos = { x = -415.318, y = 120.000, z = 338.373 }, rot = { x = 0.000, y = 303.699, z = 0.000 }, level = 20, area_id = 403 },
	[65020] = { config_id = 65020, gadget_id = 70310408, pos = { x = -458.215, y = 120.000, z = 340.920 }, rot = { x = 0.000, y = 121.838, z = 0.000 }, level = 20, area_id = 403 },
	[65021] = { config_id = 65021, gadget_id = 70310409, pos = { x = -450.200, y = 120.000, z = 358.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[65022] = { config_id = 65022, gadget_id = 70310409, pos = { x = -430.511, y = 120.000, z = 317.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[65023] = { config_id = 65023, gadget_id = 70310410, pos = { x = -515.539, y = 120.000, z = 135.156 }, rot = { x = 0.000, y = 339.636, z = 0.000 }, level = 20, area_id = 403 },
	[65024] = { config_id = 65024, gadget_id = 70310410, pos = { x = -490.127, y = 120.000, z = 63.516 }, rot = { x = 0.000, y = 344.460, z = 0.000 }, level = 20, area_id = 403 },
	[65025] = { config_id = 65025, gadget_id = 70350085, pos = { x = -464.621, y = 120.000, z = 296.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[65027] = { config_id = 65027, gadget_id = 70310350, pos = { x = -498.065, y = 120.000, z = 280.207 }, rot = { x = 0.000, y = 125.061, z = 0.000 }, level = 20, area_id = 403 },
	[65028] = { config_id = 65028, gadget_id = 70310350, pos = { x = -477.775, y = 120.000, z = 243.254 }, rot = { x = 0.000, y = 303.699, z = 0.000 }, level = 20, area_id = 403 },
	[65029] = { config_id = 65029, gadget_id = 70310410, pos = { x = -492.672, y = 120.000, z = 4.861 }, rot = { x = 0.000, y = 34.563, z = 0.000 }, level = 20, area_id = 403 },
	[65030] = { config_id = 65030, gadget_id = 70310410, pos = { x = -538.315, y = 120.000, z = -61.051 }, rot = { x = 0.000, y = 36.020, z = 0.000 }, level = 20, area_id = 403 },
	[65031] = { config_id = 65031, gadget_id = 70350085, pos = { x = -511.871, y = 120.000, z = 219.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[65033] = { config_id = 65033, gadget_id = 70310350, pos = { x = -533.994, y = 120.000, z = 201.686 }, rot = { x = 0.000, y = 100.856, z = 0.000 }, level = 20, area_id = 403 },
	[65034] = { config_id = 65034, gadget_id = 70220110, pos = { x = -534.815, y = 123.908, z = 197.160 }, rot = { x = 0.000, y = 354.484, z = 0.000 }, level = 20, area_id = 403 },
	[65035] = { config_id = 65035, gadget_id = 70220110, pos = { x = -534.733, y = 126.947, z = 199.508 }, rot = { x = 0.000, y = 354.484, z = 0.000 }, level = 20, area_id = 403 },
	[65036] = { config_id = 65036, gadget_id = 70220110, pos = { x = -532.938, y = 125.735, z = 203.079 }, rot = { x = 0.000, y = 354.484, z = 0.000 }, level = 20, area_id = 403 },
	[65037] = { config_id = 65037, gadget_id = 70290059, pos = { x = -511.358, y = 120.000, z = 158.517 }, rot = { x = 0.000, y = 263.831, z = 0.000 }, level = 20, area_id = 403 },
	[65038] = { config_id = 65038, gadget_id = 70290060, pos = { x = -528.921, y = 124.922, z = 153.556 }, rot = { x = 0.000, y = 343.204, z = 350.286 }, level = 20, area_id = 403 },
	[65039] = { config_id = 65039, gadget_id = 70290060, pos = { x = -519.494, y = 125.356, z = 156.567 }, rot = { x = 0.000, y = 340.534, z = 345.851 }, level = 20, area_id = 403 },
	[65040] = { config_id = 65040, gadget_id = 70220110, pos = { x = -525.122, y = 120.000, z = 170.689 }, rot = { x = 0.000, y = 179.802, z = 0.000 }, level = 20, area_id = 403 },
	[65041] = { config_id = 65041, gadget_id = 70220110, pos = { x = -524.409, y = 120.000, z = 163.643 }, rot = { x = 0.000, y = 168.771, z = 0.000 }, level = 20, area_id = 403 },
	[65042] = { config_id = 65042, gadget_id = 70220110, pos = { x = -523.046, y = 120.000, z = 156.779 }, rot = { x = 0.000, y = 165.381, z = 0.000 }, level = 20, area_id = 403 },
	[65043] = { config_id = 65043, gadget_id = 70220110, pos = { x = -521.280, y = 120.000, z = 150.006 }, rot = { x = 0.000, y = 163.143, z = 0.000 }, level = 20, area_id = 403 },
	[65044] = { config_id = 65044, gadget_id = 70220110, pos = { x = -519.250, y = 120.000, z = 143.307 }, rot = { x = 0.000, y = 163.143, z = 0.000 }, level = 20, area_id = 403 },
	[65047] = { config_id = 65047, gadget_id = 70350085, pos = { x = -515.522, y = 120.000, z = 134.831 }, rot = { x = 0.000, y = 307.436, z = 0.000 }, level = 20, area_id = 403 },
	[65049] = { config_id = 65049, gadget_id = 70290059, pos = { x = -402.390, y = 120.000, z = 359.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	[65050] = { config_id = 65050, gadget_id = 70310351, pos = { x = -509.448, y = 120.000, z = 197.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	[65051] = { config_id = 65051, gadget_id = 70350085, pos = { x = -490.629, y = 120.000, z = 63.024 }, rot = { x = 0.000, y = 311.421, z = 0.000 }, level = 20, area_id = 403 },
	[65053] = { config_id = 65053, gadget_id = 70310350, pos = { x = -523.233, y = 120.000, z = 103.526 }, rot = { x = 0.000, y = 78.602, z = 0.000 }, level = 20, area_id = 403 },
	[65054] = { config_id = 65054, gadget_id = 70310350, pos = { x = -482.469, y = 120.000, z = 92.778 }, rot = { x = 0.000, y = 257.239, z = 0.000 }, level = 20, area_id = 403 },
	[65055] = { config_id = 65055, gadget_id = 70310409, pos = { x = -491.482, y = 120.000, z = 113.092 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[65056] = { config_id = 65056, gadget_id = 70310351, pos = { x = -511.414, y = 120.000, z = 82.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[65057] = { config_id = 65057, gadget_id = 70290059, pos = { x = -537.531, y = 120.000, z = 153.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	[65058] = { config_id = 65058, gadget_id = 70290059, pos = { x = -499.879, y = 120.000, z = 45.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	[65059] = { config_id = 65059, gadget_id = 70350085, pos = { x = -493.210, y = 120.000, z = 4.995 }, rot = { x = 0.000, y = 0.478, z = 0.000 }, level = 20, area_id = 403 },
	[65060] = { config_id = 65060, gadget_id = 70310409, pos = { x = -475.983, y = 120.000, z = 19.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[65061] = { config_id = 65061, gadget_id = 70220110, pos = { x = -475.983, y = 122.589, z = 19.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[65062] = { config_id = 65062, gadget_id = 70220110, pos = { x = -528.777, y = 120.444, z = -46.600 }, rot = { x = 0.000, y = 327.369, z = 0.000 }, level = 20, area_id = 403 },
	[65063] = { config_id = 65063, gadget_id = 70220110, pos = { x = -531.061, y = 121.875, z = -45.138 }, rot = { x = 0.000, y = 327.369, z = 0.000 }, level = 20, area_id = 403 },
	[65064] = { config_id = 65064, gadget_id = 70220110, pos = { x = -531.230, y = 124.754, z = -44.820 }, rot = { x = 0.000, y = 327.369, z = 0.000 }, level = 20, area_id = 403 },
	[65065] = { config_id = 65065, gadget_id = 70220110, pos = { x = -528.777, y = 126.364, z = -46.600 }, rot = { x = 0.000, y = 327.369, z = 0.000 }, level = 20, area_id = 403 },
	[65066] = { config_id = 65066, gadget_id = 70220110, pos = { x = -526.335, y = 124.754, z = -48.241 }, rot = { x = 0.000, y = 327.369, z = 0.000 }, level = 20, area_id = 403 },
	[65067] = { config_id = 65067, gadget_id = 70220110, pos = { x = -526.197, y = 121.875, z = -48.332 }, rot = { x = 0.000, y = 327.369, z = 0.000 }, level = 20, area_id = 403 },
	[65068] = { config_id = 65068, gadget_id = 70310350, pos = { x = -390.157, y = 120.000, z = 396.666 }, rot = { x = 0.000, y = 311.193, z = 0.000 }, level = 20, area_id = 403 },
	[65069] = { config_id = 65069, gadget_id = 70310350, pos = { x = -564.749, y = 120.000, z = -116.991 }, rot = { x = 0.000, y = 309.950, z = 0.000 }, level = 20, area_id = 403 },
	[65070] = { config_id = 65070, gadget_id = 70350085, pos = { x = -538.823, y = 120.000, z = -60.841 }, rot = { x = 0.000, y = 0.478, z = 0.000 }, level = 20, area_id = 403 },
	[65073] = { config_id = 65073, gadget_id = 70360025, pos = { x = -623.901, y = 120.000, z = -171.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[65074] = { config_id = 65074, gadget_id = 70690001, pos = { x = -591.266, y = 125.426, z = -127.471 }, rot = { x = 0.000, y = 216.342, z = 0.000 }, level = 20, area_id = 403 },
	[65075] = { config_id = 65075, gadget_id = 70690001, pos = { x = -595.414, y = 125.426, z = -133.109 }, rot = { x = 0.000, y = 216.342, z = 0.000 }, level = 20, area_id = 403 },
	[65076] = { config_id = 65076, gadget_id = 70690001, pos = { x = -599.562, y = 125.426, z = -138.748 }, rot = { x = 0.000, y = 216.342, z = 0.000 }, level = 20, area_id = 403 },
	[65077] = { config_id = 65077, gadget_id = 70690001, pos = { x = -603.711, y = 125.426, z = -144.386 }, rot = { x = 0.000, y = 216.342, z = 0.000 }, level = 20, area_id = 403 },
	[65078] = { config_id = 65078, gadget_id = 70690001, pos = { x = -607.859, y = 125.426, z = -150.025 }, rot = { x = 0.000, y = 216.342, z = 0.000 }, level = 20, area_id = 403 },
	[65079] = { config_id = 65079, gadget_id = 70690001, pos = { x = -612.007, y = 125.426, z = -155.663 }, rot = { x = 0.000, y = 216.342, z = 0.000 }, level = 20, area_id = 403 },
	[65080] = { config_id = 65080, gadget_id = 70350085, pos = { x = -623.957, y = 120.000, z = -171.045 }, rot = { x = 0.000, y = 0.478, z = 0.000 }, level = 20, area_id = 403 },
	[65081] = { config_id = 65081, gadget_id = 70290059, pos = { x = -502.163, y = 120.000, z = -23.797 }, rot = { x = 0.000, y = 317.819, z = 0.000 }, level = 20, area_id = 403 },
	[65082] = { config_id = 65082, gadget_id = 70310351, pos = { x = -515.551, y = 120.000, z = -14.254 }, rot = { x = 0.000, y = 73.047, z = 0.000 }, level = 20, area_id = 403 },
	[65083] = { config_id = 65083, gadget_id = 70290060, pos = { x = -508.541, y = 124.161, z = -18.352 }, rot = { x = 0.000, y = 34.523, z = 0.821 }, level = 20, area_id = 403 },
	[65084] = { config_id = 65084, gadget_id = 70310350, pos = { x = -529.433, y = 120.000, z = -26.297 }, rot = { x = 0.000, y = 134.497, z = 0.000 }, level = 20, area_id = 403 },
	[65085] = { config_id = 65085, gadget_id = 70310350, pos = { x = -518.622, y = 120.000, z = -56.140 }, rot = { x = 0.000, y = 313.134, z = 0.000 }, level = 20, area_id = 403 },
	[65086] = { config_id = 65086, gadget_id = 70310350, pos = { x = -539.906, y = 120.000, z = -85.337 }, rot = { x = 0.000, y = 309.950, z = 0.000 }, level = 20, area_id = 403 },
	[65087] = { config_id = 65087, gadget_id = 70310350, pos = { x = -564.002, y = 120.000, z = -70.823 }, rot = { x = 0.000, y = 133.672, z = 0.000 }, level = 20, area_id = 403 },
	[65088] = { config_id = 65088, gadget_id = 70290059, pos = { x = -553.269, y = 120.000, z = -102.614 }, rot = { x = 0.000, y = 317.819, z = 0.000 }, level = 20, area_id = 403 },
	[65090] = { config_id = 65090, gadget_id = 70310408, pos = { x = -579.030, y = 120.000, z = -88.938 }, rot = { x = 0.000, y = 131.433, z = 0.000 }, level = 20, area_id = 403 },
	[65111] = { config_id = 65111, gadget_id = 70310410, pos = { x = -409.231, y = 120.000, z = 386.890 }, rot = { x = 0.000, y = 35.679, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 }
}

-- 区域
regions = {
	-- 教学区域
	[65089] = { config_id = 65089, shape = RegionShape.SPHERE, radius = 5, pos = { x = -322.919, y = 120.000, z = 461.383 }, area_id = 403 },
	-- 活动玩法区域
	[65091] = { config_id = 65091, shape = RegionShape.POLYGON, pos = { x = -497.355, y = 200.000, z = 176.709 }, height = 200.000, point_array = { { x = -329.017, y = 590.737 }, { x = -256.912, y = 469.627 }, { x = -317.736, y = 343.021 }, { x = -371.371, y = 35.145 }, { x = -488.333, y = -195.556 }, { x = -659.839, y = -237.320 }, { x = -737.798, y = 102.226 }, { x = -435.982, y = 569.668 } }, area_id = 403 },
	[65092] = { config_id = 65092, shape = RegionShape.SPHERE, radius = 2.5, pos = { x = -623.901, y = 120.000, z = -171.024 }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1065011, name = "ANY_GADGET_DIE_65011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_65011", action = "action_EVENT_ANY_GADGET_DIE_65011", trigger_count = 0 },
	{ config_id = 1065026, name = "ANY_GADGET_DIE_65026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_65026", action = "action_EVENT_ANY_GADGET_DIE_65026", trigger_count = 0 },
	{ config_id = 1065032, name = "ANY_GADGET_DIE_65032", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_65032", action = "action_EVENT_ANY_GADGET_DIE_65032", trigger_count = 0 },
	{ config_id = 1065048, name = "ANY_GADGET_DIE_65048", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_65048", action = "action_EVENT_ANY_GADGET_DIE_65048", trigger_count = 0 },
	{ config_id = 1065052, name = "ANY_GADGET_DIE_65052", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_65052", action = "action_EVENT_ANY_GADGET_DIE_65052", trigger_count = 0 },
	{ config_id = 1065071, name = "ANY_GADGET_DIE_65071", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_65071", action = "action_EVENT_ANY_GADGET_DIE_65071", trigger_count = 0 },
	{ config_id = 1065072, name = "ANY_GADGET_DIE_65072", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_65072", action = "action_EVENT_ANY_GADGET_DIE_65072", trigger_count = 0 },
	{ config_id = 1065093, name = "CHALLENGE_SUCCESS_65093", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "condition_EVENT_CHALLENGE_SUCCESS_65093", action = "action_EVENT_CHALLENGE_SUCCESS_65093", trigger_count = 0 }
}

-- 点位
points = {
	-- 浪船创生点
	{ config_id = 65045, pos = { x = -318.980, y = 120.000, z = 463.348 }, rot = { x = 0.000, y = 242.283, z = 0.000 }, area_id = 403 },
	-- 玩家复活点
	{ config_id = 65046, pos = { x = -313.401, y = 120.000, z = 459.146 }, rot = { x = 0.000, y = 311.914, z = 0.000 }, area_id = 403 }
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
		gadgets = { 65001, 65002 },
		regions = { 65089 },
		triggers = { "CHALLENGE_SUCCESS_65093" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 65003, 65004, 65005, 65006, 65008, 65009, 65010, 65012, 65013, 65014, 65015, 65016, 65017, 65018, 65019, 65020, 65021, 65022, 65049, 65068, 65111 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_65011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 65007, 65025, 65027, 65028 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_65026" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 65023, 65031, 65033, 65034, 65035, 65036, 65037, 65038, 65039, 65040, 65041, 65042, 65043, 65044, 65050, 65057 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_65032" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 65024, 65047, 65053, 65054, 65055, 65056 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_65048" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 65029, 65051, 65058, 65060, 65061 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_65052" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 65030, 65059, 65062, 65063, 65064, 65065, 65066, 65067, 65081, 65082, 65083, 65084, 65085 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_65071" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 65069, 65070, 65086, 65087, 65088, 65090 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_65072" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 65073, 65074, 65075, 65076, 65077, 65078, 65079, 65080 },
		regions = { 65092 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 65091 },
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
function condition_EVENT_ANY_GADGET_DIE_65011(context, evt)
	if 65111 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_65011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65010 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 65006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003065, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_65026(context, evt)
	if 65006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_65026(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65025 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 65007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003065, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_65032(context, evt)
	if 65007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_65032(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65031 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 65023 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65023, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003065, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_65048(context, evt)
	if 65023 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_65048(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65047 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 65024 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65024, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003065, 6)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003065, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_65052(context, evt)
	if 65024 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_65052(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65051 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 65029 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65029, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003065, 7)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003065, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_65071(context, evt)
	if 65029 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_65071(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65059 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 65030 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 65030, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003065, 8)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003065, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_65072(context, evt)
	if 65030 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_65072(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65070 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199003065, 9)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003065, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_SUCCESS_65093(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_65093(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65080 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 65073 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003065, 7)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003065, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199003065, 9)
	
	return 0
end

require "V2_8/BoatRace_V2"
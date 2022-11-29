-- 基础信息
local base_info = {
	group_id = 199001098
}

-- DEFS_MISCS
local defs = {
        --开启操作台configID
        starter_gadget = 98001,
        --终点Region的ConfigID
        end_region = 98195,
        --限定region的configID
        play_region =98288 ,
        --限定region的suite
        play_region_suite =15 ,
        --gallery_id
        gallery_id =22005 ,

        --撞毁物件的白名单
        gadget_filter={70290310,70290311,70310352,70310351,70310350,70310408 },

        guide_region = 98292,

        --计数定义。
        --这个赛道中，每种行为写入哪个param
        --行为：1-漩涡 2-障碍破坏 3-碰脏脏果
        counter = 
        { 
                ["param1"] = 2,
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
 	      {challenge_id = 2025, aim = 4},
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
	[98001] = { config_id = 98001, gadget_id = 70350250, pos = { x = -165.597, y = 120.000, z = -489.524 }, rot = { x = 0.000, y = 89.110, z = 0.000 }, level = 20, area_id = 401 },
	[98002] = { config_id = 98002, gadget_id = 70350085, pos = { x = -72.015, y = 121.000, z = -485.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[98003] = { config_id = 98003, gadget_id = 70350085, pos = { x = 29.667, y = 121.000, z = -479.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[98004] = { config_id = 98004, gadget_id = 70310410, pos = { x = -72.015, y = 120.000, z = -485.426 }, rot = { x = 0.000, y = 86.889, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 401 },
	[98008] = { config_id = 98008, gadget_id = 70310408, pos = { x = -145.551, y = 120.000, z = -475.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[98012] = { config_id = 98012, gadget_id = 70310408, pos = { x = -144.609, y = 120.000, z = -503.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[98013] = { config_id = 98013, gadget_id = 70310348, pos = { x = -98.500, y = 121.000, z = -481.992 }, rot = { x = 0.000, y = 108.401, z = 0.000 }, level = 1, area_id = 401 },
	[98014] = { config_id = 98014, gadget_id = 70220110, pos = { x = -98.500, y = 123.000, z = -481.992 }, rot = { x = 0.000, y = 108.401, z = 0.000 }, level = 1, area_id = 401 },
	[98015] = { config_id = 98015, gadget_id = 70310348, pos = { x = -98.500, y = 125.000, z = -481.992 }, rot = { x = 0.000, y = 108.401, z = 0.000 }, level = 1, area_id = 401 },
	[98016] = { config_id = 98016, gadget_id = 70310348, pos = { x = -98.024, y = 125.000, z = -491.742 }, rot = { x = 0.000, y = 108.401, z = 0.000 }, level = 1, area_id = 401 },
	[98017] = { config_id = 98017, gadget_id = 70310348, pos = { x = -98.024, y = 121.000, z = -491.742 }, rot = { x = 0.000, y = 108.401, z = 0.000 }, level = 1, area_id = 401 },
	[98020] = { config_id = 98020, gadget_id = 70220110, pos = { x = -98.024, y = 123.000, z = -491.742 }, rot = { x = 0.000, y = 108.401, z = 0.000 }, level = 1, area_id = 401 },
	[98021] = { config_id = 98021, gadget_id = 70380004, pos = { x = -126.695, y = 120.000, z = -485.026 }, rot = { x = 0.000, y = 267.903, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100073, area_id = 401 },
	[98022] = { config_id = 98022, gadget_id = 70310410, pos = { x = 595.975, y = 120.000, z = 30.727 }, rot = { x = 0.000, y = 270.197, z = 0.000 }, level = 20, area_id = 402 },
	[98023] = { config_id = 98023, gadget_id = 70380004, pos = { x = -126.522, y = 120.000, z = -491.423 }, rot = { x = 0.000, y = 267.903, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100074, area_id = 401 },
	[98024] = { config_id = 98024, gadget_id = 70310408, pos = { x = -91.589, y = 120.000, z = -471.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[98025] = { config_id = 98025, gadget_id = 70310408, pos = { x = -107.929, y = 120.000, z = -501.644 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[98026] = { config_id = 98026, gadget_id = 70310408, pos = { x = -53.011, y = 120.000, z = -470.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[98027] = { config_id = 98027, gadget_id = 70310408, pos = { x = -52.288, y = 120.000, z = -500.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[98028] = { config_id = 98028, gadget_id = 70380004, pos = { x = -44.962, y = 120.000, z = -480.703 }, rot = { x = 0.000, y = 268.494, z = 0.000 }, level = 1, route_id = 900100075, area_id = 401 },
	[98029] = { config_id = 98029, gadget_id = 70380004, pos = { x = -44.748, y = 120.000, z = -488.831 }, rot = { x = 0.000, y = 268.494, z = 0.000 }, level = 1, route_id = 900100076, area_id = 401 },
	[98030] = { config_id = 98030, gadget_id = 70350277, pos = { x = -163.189, y = 120.000, z = -489.498 }, rot = { x = 1.407, y = 89.028, z = 358.228 }, level = 20, state = GadgetState.GearStart, area_id = 401 },
	[98031] = { config_id = 98031, gadget_id = 70310348, pos = { x = -6.181, y = 120.581, z = -488.625 }, rot = { x = 0.000, y = 259.830, z = 0.000 }, level = 1, area_id = 401 },
	[98032] = { config_id = 98032, gadget_id = 70220110, pos = { x = -12.141, y = 120.581, z = -489.319 }, rot = { x = 0.000, y = 259.830, z = 0.000 }, level = 1, area_id = 401 },
	[98033] = { config_id = 98033, gadget_id = 70220110, pos = { x = -13.003, y = 120.581, z = -476.370 }, rot = { x = 0.000, y = 264.308, z = 0.000 }, level = 1, area_id = 401 },
	[98034] = { config_id = 98034, gadget_id = 70310348, pos = { x = -7.008, y = 120.581, z = -476.144 }, rot = { x = 0.000, y = 264.308, z = 0.000 }, level = 1, area_id = 401 },
	[98035] = { config_id = 98035, gadget_id = 70310348, pos = { x = -18.463, y = 120.581, z = -488.672 }, rot = { x = 0.000, y = 259.830, z = 0.000 }, level = 1, area_id = 401 },
	[98036] = { config_id = 98036, gadget_id = 70220110, pos = { x = -24.423, y = 120.581, z = -489.365 }, rot = { x = 0.000, y = 259.830, z = 0.000 }, level = 1, area_id = 401 },
	[98037] = { config_id = 98037, gadget_id = 70310348, pos = { x = -30.383, y = 120.581, z = -490.059 }, rot = { x = 0.000, y = 65.041, z = 0.000 }, level = 1, area_id = 401 },
	[98038] = { config_id = 98038, gadget_id = 70310348, pos = { x = -31.281, y = 120.581, z = -476.642 }, rot = { x = 0.000, y = 264.308, z = 0.000 }, level = 1, area_id = 401 },
	[98039] = { config_id = 98039, gadget_id = 70220110, pos = { x = -25.285, y = 120.581, z = -476.417 }, rot = { x = 0.000, y = 264.308, z = 0.000 }, level = 1, area_id = 401 },
	[98040] = { config_id = 98040, gadget_id = 70310348, pos = { x = -19.290, y = 120.581, z = -476.191 }, rot = { x = 0.000, y = 264.308, z = 0.000 }, level = 1, area_id = 401 },
	[98041] = { config_id = 98041, gadget_id = 70310410, pos = { x = 29.667, y = 120.000, z = -479.899 }, rot = { x = 0.000, y = 86.889, z = 0.000 }, level = 20, area_id = 401 },
	[98042] = { config_id = 98042, gadget_id = 70310408, pos = { x = 11.088, y = 120.000, z = -466.591 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[98043] = { config_id = 98043, gadget_id = 70310408, pos = { x = 12.030, y = 120.000, z = -495.428 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[98044] = { config_id = 98044, gadget_id = 70310348, pos = { x = 16.364, y = 121.000, z = -477.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 401 },
	[98045] = { config_id = 98045, gadget_id = 70310348, pos = { x = 16.543, y = 121.000, z = -485.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 401 },
	[98046] = { config_id = 98046, gadget_id = 70310348, pos = { x = 16.543, y = 126.000, z = -485.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 401 },
	[98047] = { config_id = 98047, gadget_id = 70310348, pos = { x = 16.364, y = 126.000, z = -477.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 401 },
	[98048] = { config_id = 98048, gadget_id = 70310408, pos = { x = 60.388, y = 120.000, z = -466.525 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[98049] = { config_id = 98049, gadget_id = 70310408, pos = { x = 66.684, y = 120.000, z = -492.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[98051] = { config_id = 98051, gadget_id = 70290059, pos = { x = 87.518, y = 120.000, z = -493.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[98052] = { config_id = 98052, gadget_id = 70310408, pos = { x = 98.580, y = 120.000, z = -488.549 }, rot = { x = 0.000, y = 343.371, z = 0.000 }, level = 1, area_id = 401 },
	[98053] = { config_id = 98053, gadget_id = 70310408, pos = { x = 42.329, y = 120.000, z = -492.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[98054] = { config_id = 98054, gadget_id = 70310408, pos = { x = 44.336, y = 120.000, z = -466.525 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[98055] = { config_id = 98055, gadget_id = 70310348, pos = { x = 112.403, y = 121.000, z = -472.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[98056] = { config_id = 98056, gadget_id = 70350085, pos = { x = 130.328, y = 121.000, z = -442.651 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[98057] = { config_id = 98057, gadget_id = 70310348, pos = { x = 100.160, y = 121.000, z = -459.696 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[98058] = { config_id = 98058, gadget_id = 70220110, pos = { x = 96.011, y = 121.000, z = -463.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[98059] = { config_id = 98059, gadget_id = 70220110, pos = { x = 104.191, y = 121.000, z = -455.846 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[98060] = { config_id = 98060, gadget_id = 70310351, pos = { x = 235.864, y = 120.000, z = -342.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[98061] = { config_id = 98061, gadget_id = 70310408, pos = { x = 188.798, y = 120.000, z = -402.097 }, rot = { x = 0.000, y = 135.205, z = 0.000 }, level = 1, area_id = 401 },
	[98062] = { config_id = 98062, gadget_id = 70350085, pos = { x = 174.766, y = 121.000, z = -399.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[98063] = { config_id = 98063, gadget_id = 70310408, pos = { x = 264.212, y = 120.000, z = -354.930 }, rot = { x = 0.000, y = 317.290, z = 0.000 }, level = 1, area_id = 401 },
	[98064] = { config_id = 98064, gadget_id = 70310408, pos = { x = 250.203, y = 120.000, z = -333.695 }, rot = { x = 0.000, y = 317.290, z = 0.000 }, level = 1, area_id = 401 },
	[98065] = { config_id = 98065, gadget_id = 70220110, pos = { x = 108.253, y = 121.000, z = -476.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[98066] = { config_id = 98066, gadget_id = 70220110, pos = { x = 116.433, y = 121.000, z = -469.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[98067] = { config_id = 98067, gadget_id = 70310408, pos = { x = 131.598, y = 120.000, z = -458.453 }, rot = { x = 0.000, y = 317.290, z = 0.000 }, level = 1, area_id = 401 },
	[98068] = { config_id = 98068, gadget_id = 70310408, pos = { x = 114.226, y = 120.000, z = -441.024 }, rot = { x = 0.000, y = 317.290, z = 0.000 }, level = 1, area_id = 401 },
	[98069] = { config_id = 98069, gadget_id = 70310352, pos = { x = 141.586, y = 120.000, z = -418.649 }, rot = { x = 0.000, y = 217.500, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100077, area_id = 401 },
	[98070] = { config_id = 98070, gadget_id = 70310352, pos = { x = 155.444, y = 120.000, z = -431.956 }, rot = { x = 0.000, y = 217.500, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100078, area_id = 401 },
	[98071] = { config_id = 98071, gadget_id = 70310352, pos = { x = 146.823, y = 120.000, z = -413.008 }, rot = { x = 0.000, y = 217.500, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100079, area_id = 401 },
	[98072] = { config_id = 98072, gadget_id = 70310352, pos = { x = 160.832, y = 120.000, z = -426.011 }, rot = { x = 0.000, y = 217.500, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100080, area_id = 401 },
	[98073] = { config_id = 98073, gadget_id = 70220110, pos = { x = 151.529, y = 121.485, z = -423.540 }, rot = { x = 0.000, y = 100.181, z = 0.000 }, level = 20, area_id = 401 },
	[98074] = { config_id = 98074, gadget_id = 70220110, pos = { x = 149.492, y = 121.485, z = -421.433 }, rot = { x = 0.000, y = 100.181, z = 0.000 }, level = 20, area_id = 401 },
	[98075] = { config_id = 98075, gadget_id = 70310410, pos = { x = 130.328, y = 120.000, z = -442.651 }, rot = { x = 0.000, y = 223.284, z = 0.000 }, level = 20, area_id = 401 },
	[98076] = { config_id = 98076, gadget_id = 70220110, pos = { x = 148.860, y = 124.189, z = -420.809 }, rot = { x = 0.000, y = 100.181, z = 0.000 }, level = 20, area_id = 401 },
	[98077] = { config_id = 98077, gadget_id = 70310410, pos = { x = 174.766, y = 120.000, z = -399.259 }, rot = { x = 0.000, y = 41.099, z = 0.000 }, level = 20, area_id = 401 },
	[98078] = { config_id = 98078, gadget_id = 70220110, pos = { x = 152.426, y = 124.212, z = -424.497 }, rot = { x = 0.000, y = 100.181, z = 0.000 }, level = 20, area_id = 401 },
	[98079] = { config_id = 98079, gadget_id = 70220110, pos = { x = 150.525, y = 126.195, z = -422.513 }, rot = { x = 0.000, y = 100.181, z = 0.000 }, level = 20, area_id = 401 },
	[98080] = { config_id = 98080, gadget_id = 70310408, pos = { x = 146.918, y = 120.000, z = -443.700 }, rot = { x = 0.000, y = 317.290, z = 0.000 }, level = 1, area_id = 401 },
	[98081] = { config_id = 98081, gadget_id = 70310408, pos = { x = 129.547, y = 120.000, z = -426.271 }, rot = { x = 0.000, y = 317.290, z = 0.000 }, level = 1, area_id = 401 },
	[98082] = { config_id = 98082, gadget_id = 70310408, pos = { x = 175.731, y = 120.000, z = -415.121 }, rot = { x = 0.000, y = 317.290, z = 0.000 }, level = 1, area_id = 401 },
	[98083] = { config_id = 98083, gadget_id = 70310408, pos = { x = 158.360, y = 120.000, z = -397.692 }, rot = { x = 0.000, y = 317.290, z = 0.000 }, level = 1, area_id = 401 },
	[98084] = { config_id = 98084, gadget_id = 70310350, pos = { x = 194.913, y = 120.000, z = -391.507 }, rot = { x = 0.000, y = 296.415, z = 0.000 }, level = 1, area_id = 401 },
	[98085] = { config_id = 98085, gadget_id = 70310408, pos = { x = 173.073, y = 120.000, z = -380.546 }, rot = { x = 0.000, y = 122.727, z = 0.000 }, level = 1, area_id = 401 },
	[98086] = { config_id = 98086, gadget_id = 70290311, pos = { x = 196.219, y = 120.000, z = -381.139 }, rot = { x = 0.000, y = 277.454, z = 0.000 }, level = 1, area_id = 401 },
	[98087] = { config_id = 98087, gadget_id = 70310408, pos = { x = 178.291, y = 120.000, z = -366.232 }, rot = { x = 0.000, y = 290.163, z = 0.000 }, level = 1, area_id = 401 },
	[98088] = { config_id = 98088, gadget_id = 70310408, pos = { x = 200.186, y = 120.000, z = -369.446 }, rot = { x = 0.000, y = 302.494, z = 0.000 }, level = 1, area_id = 401 },
	[98089] = { config_id = 98089, gadget_id = 70310410, pos = { x = 248.649, y = 120.000, z = -352.108 }, rot = { x = 0.000, y = 69.567, z = 0.000 }, level = 20, area_id = 401 },
	[98090] = { config_id = 98090, gadget_id = 70310408, pos = { x = 185.203, y = 120.000, z = -350.674 }, rot = { x = 0.000, y = 306.670, z = 0.000 }, level = 1, area_id = 401 },
	[98091] = { config_id = 98091, gadget_id = 70310410, pos = { x = 329.287, y = 120.000, z = -271.081 }, rot = { x = 0.000, y = 43.016, z = 0.000 }, level = 20, area_id = 401 },
	[98092] = { config_id = 98092, gadget_id = 70350085, pos = { x = 248.649, y = 121.000, z = -352.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[98093] = { config_id = 98093, gadget_id = 70290059, pos = { x = 240.740, y = 120.000, z = -371.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[98094] = { config_id = 98094, gadget_id = 70310408, pos = { x = 196.021, y = 120.000, z = -341.183 }, rot = { x = 0.000, y = 150.590, z = 0.000 }, level = 1, area_id = 401 },
	[98095] = { config_id = 98095, gadget_id = 70290311, pos = { x = 218.792, y = 120.000, z = -369.401 }, rot = { x = 0.000, y = 222.141, z = 0.000 }, level = 1, area_id = 401 },
	[98096] = { config_id = 98096, gadget_id = 70310408, pos = { x = 210.483, y = 120.000, z = -338.424 }, rot = { x = 0.000, y = 185.624, z = 0.000 }, level = 1, area_id = 401 },
	[98097] = { config_id = 98097, gadget_id = 70310408, pos = { x = 283.420, y = 120.000, z = -336.471 }, rot = { x = 0.000, y = 317.290, z = 0.000 }, level = 1, area_id = 401 },
	[98098] = { config_id = 98098, gadget_id = 70220110, pos = { x = 201.674, y = 120.000, z = -379.220 }, rot = { x = 0.000, y = 6.824, z = 0.000 }, level = 1, area_id = 401 },
	[98099] = { config_id = 98099, gadget_id = 70220110, pos = { x = 206.721, y = 120.000, z = -375.836 }, rot = { x = 0.000, y = 6.824, z = 0.000 }, level = 1, area_id = 401 },
	[98100] = { config_id = 98100, gadget_id = 70350085, pos = { x = 329.287, y = 121.000, z = -271.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[98101] = { config_id = 98101, gadget_id = 70220110, pos = { x = 211.645, y = 120.000, z = -372.666 }, rot = { x = 0.000, y = 6.824, z = 0.000 }, level = 1, area_id = 401 },
	[98102] = { config_id = 98102, gadget_id = 70310408, pos = { x = 269.411, y = 120.000, z = -315.236 }, rot = { x = 0.000, y = 317.290, z = 0.000 }, level = 1, area_id = 401 },
	[98103] = { config_id = 98103, gadget_id = 70310408, pos = { x = 224.087, y = 120.000, z = -342.158 }, rot = { x = 0.000, y = 19.183, z = 0.000 }, level = 1, area_id = 401 },
	[98104] = { config_id = 98104, gadget_id = 70310348, pos = { x = 286.324, y = 121.000, z = -309.075 }, rot = { x = 0.000, y = 64.006, z = 0.000 }, level = 1, area_id = 401 },
	[98105] = { config_id = 98105, gadget_id = 70310409, pos = { x = 225.177, y = 120.000, z = -377.440 }, rot = { x = 0.000, y = 23.083, z = 0.000 }, level = 1, area_id = 401 },
	[98106] = { config_id = 98106, gadget_id = 70310409, pos = { x = 208.449, y = 120.000, z = -365.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 401 },
	[98107] = { config_id = 98107, gadget_id = 70310352, pos = { x = 75.716, y = 123.000, z = -478.306 }, rot = { x = 0.000, y = 265.815, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100081, area_id = 401 },
	[98109] = { config_id = 98109, gadget_id = 70310352, pos = { x = 75.545, y = 120.000, z = -475.967 }, rot = { x = 0.000, y = 265.815, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100082, area_id = 401 },
	[98111] = { config_id = 98111, gadget_id = 70310352, pos = { x = 75.871, y = 120.000, z = -480.415 }, rot = { x = 0.000, y = 265.815, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100083, area_id = 401 },
	[98112] = { config_id = 98112, gadget_id = 70220110, pos = { x = 286.324, y = 123.000, z = -309.075 }, rot = { x = 0.000, y = 64.006, z = 0.000 }, level = 1, area_id = 401 },
	[98113] = { config_id = 98113, gadget_id = 70310410, pos = { x = 529.695, y = 120.000, z = 30.954 }, rot = { x = 0.000, y = 270.197, z = 0.000 }, level = 20, area_id = 402 },
	[98114] = { config_id = 98114, gadget_id = 70310348, pos = { x = 286.324, y = 125.000, z = -309.075 }, rot = { x = 0.000, y = 64.006, z = 0.000 }, level = 1, area_id = 401 },
	[98115] = { config_id = 98115, gadget_id = 70310348, pos = { x = 293.485, y = 125.000, z = -315.708 }, rot = { x = 0.000, y = 64.006, z = 0.000 }, level = 1, area_id = 401 },
	[98116] = { config_id = 98116, gadget_id = 70310348, pos = { x = 293.485, y = 121.000, z = -315.708 }, rot = { x = 0.000, y = 64.006, z = 0.000 }, level = 1, area_id = 401 },
	[98117] = { config_id = 98117, gadget_id = 70220110, pos = { x = 293.485, y = 123.000, z = -315.708 }, rot = { x = 0.000, y = 64.006, z = 0.000 }, level = 1, area_id = 401 },
	[98118] = { config_id = 98118, gadget_id = 70310408, pos = { x = 307.850, y = 120.000, z = -312.304 }, rot = { x = 0.000, y = 317.290, z = 0.000 }, level = 1, area_id = 401 },
	[98119] = { config_id = 98119, gadget_id = 70310408, pos = { x = 293.840, y = 120.000, z = -291.069 }, rot = { x = 0.000, y = 317.290, z = 0.000 }, level = 1, area_id = 401 },
	[98120] = { config_id = 98120, gadget_id = 70310348, pos = { x = 310.439, y = 121.000, z = -286.357 }, rot = { x = 0.000, y = 319.556, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 401 },
	[98121] = { config_id = 98121, gadget_id = 70310348, pos = { x = 314.311, y = 121.000, z = -290.623 }, rot = { x = 0.000, y = 319.556, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 401 },
	[98122] = { config_id = 98122, gadget_id = 70310348, pos = { x = 314.311, y = 125.000, z = -290.623 }, rot = { x = 0.000, y = 319.556, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 401 },
	[98123] = { config_id = 98123, gadget_id = 70310348, pos = { x = 310.439, y = 125.000, z = -286.357 }, rot = { x = 0.000, y = 319.556, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 401 },
	[98124] = { config_id = 98124, gadget_id = 70310408, pos = { x = 329.093, y = 120.000, z = -292.694 }, rot = { x = 0.000, y = 317.290, z = 0.000 }, level = 1, area_id = 401 },
	[98125] = { config_id = 98125, gadget_id = 70310408, pos = { x = 346.526, y = 120.000, z = -271.714 }, rot = { x = 0.000, y = 317.290, z = 0.000 }, level = 1, area_id = 401 },
	[98126] = { config_id = 98126, gadget_id = 70310408, pos = { x = 332.147, y = 120.000, z = -250.224 }, rot = { x = 0.000, y = 317.290, z = 0.000 }, level = 1, area_id = 401 },
	[98127] = { config_id = 98127, gadget_id = 70220110, pos = { x = 347.304, y = 121.485, z = -254.448 }, rot = { x = 0.000, y = 96.369, z = 0.000 }, level = 20, area_id = 401 },
	[98128] = { config_id = 98128, gadget_id = 70220110, pos = { x = 345.132, y = 121.485, z = -252.482 }, rot = { x = 0.000, y = 96.369, z = 0.000 }, level = 20, area_id = 401 },
	[98129] = { config_id = 98129, gadget_id = 70220110, pos = { x = 344.459, y = 124.189, z = -251.901 }, rot = { x = 0.000, y = 96.369, z = 0.000 }, level = 20, area_id = 401 },
	[98130] = { config_id = 98130, gadget_id = 70350085, pos = { x = 396.960, y = 121.000, z = -147.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	[98131] = { config_id = 98131, gadget_id = 70310410, pos = { x = 396.960, y = 121.000, z = -147.192 }, rot = { x = 0.000, y = 181.142, z = 0.000 }, level = 20, area_id = 402 },
	[98132] = { config_id = 98132, gadget_id = 70220110, pos = { x = 348.263, y = 124.212, z = -255.344 }, rot = { x = 0.000, y = 96.369, z = 0.000 }, level = 20, area_id = 401 },
	[98133] = { config_id = 98133, gadget_id = 70310410, pos = { x = 381.368, y = 120.000, z = -69.655 }, rot = { x = 0.000, y = 321.514, z = 0.000 }, level = 20, area_id = 402 },
	[98134] = { config_id = 98134, gadget_id = 70220110, pos = { x = 346.234, y = 126.195, z = -253.491 }, rot = { x = 0.000, y = 96.369, z = 0.000 }, level = 20, area_id = 401 },
	[98135] = { config_id = 98135, gadget_id = 70310410, pos = { x = 431.847, y = 120.000, z = 31.291 }, rot = { x = 0.000, y = 270.197, z = 0.000 }, level = 20, area_id = 402 },
	[98136] = { config_id = 98136, gadget_id = 70290311, pos = { x = 358.137, y = 120.000, z = -239.726 }, rot = { x = 0.000, y = 38.092, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 401 },
	[98137] = { config_id = 98137, gadget_id = 70310352, pos = { x = 352.527, y = 120.000, z = -235.736 }, rot = { x = 0.000, y = 220.292, z = 0.000 }, level = 1, area_id = 401 },
	[98138] = { config_id = 98138, gadget_id = 70310352, pos = { x = 362.754, y = 120.000, z = -244.739 }, rot = { x = 0.000, y = 231.487, z = 0.000 }, level = 1, area_id = 401 },
	[98139] = { config_id = 98139, gadget_id = 70380004, pos = { x = 410.494, y = 120.000, z = -113.718 }, rot = { x = 0.000, y = 193.564, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100087, area_id = 402 },
	[98140] = { config_id = 98140, gadget_id = 70380004, pos = { x = 408.942, y = 124.000, z = -100.246 }, rot = { x = 0.000, y = 162.367, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100088, area_id = 402 },
	[98141] = { config_id = 98141, gadget_id = 70310408, pos = { x = 358.863, y = 120.000, z = -257.617 }, rot = { x = 0.000, y = 317.290, z = 0.000 }, level = 1, area_id = 401 },
	[98142] = { config_id = 98142, gadget_id = 70310408, pos = { x = 358.376, y = 120.000, z = -221.296 }, rot = { x = 0.000, y = 313.365, z = 0.000 }, level = 1, area_id = 401 },
	[98143] = { config_id = 98143, gadget_id = 70310408, pos = { x = 385.091, y = 120.000, z = -230.626 }, rot = { x = 0.000, y = 317.290, z = 0.000 }, level = 1, area_id = 402 },
	[98144] = { config_id = 98144, gadget_id = 70310408, pos = { x = 407.823, y = 120.000, z = -177.132 }, rot = { x = 0.000, y = 270.308, z = 0.000 }, level = 1, area_id = 402 },
	[98145] = { config_id = 98145, gadget_id = 70310408, pos = { x = 404.795, y = 120.000, z = -198.633 }, rot = { x = 0.000, y = 291.693, z = 0.000 }, level = 1, area_id = 402 },
	[98146] = { config_id = 98146, gadget_id = 70310408, pos = { x = 380.693, y = 120.000, z = -194.538 }, rot = { x = 0.000, y = 300.156, z = 0.000 }, level = 1, area_id = 402 },
	[98147] = { config_id = 98147, gadget_id = 70310408, pos = { x = 384.991, y = 120.000, z = -172.458 }, rot = { x = 0.000, y = 278.771, z = 0.000 }, level = 1, area_id = 402 },
	[98148] = { config_id = 98148, gadget_id = 70310408, pos = { x = 407.823, y = 120.000, z = -158.601 }, rot = { x = 0.000, y = 270.308, z = 0.000 }, level = 1, area_id = 402 },
	[98149] = { config_id = 98149, gadget_id = 70310408, pos = { x = 366.890, y = 120.000, z = -68.532 }, rot = { x = 0.000, y = 245.261, z = 0.000 }, level = 1, area_id = 402 },
	[98150] = { config_id = 98150, gadget_id = 70310352, pos = { x = 390.355, y = 120.000, z = -200.005 }, rot = { x = 0.000, y = 207.788, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100084, area_id = 402 },
	[98151] = { config_id = 98151, gadget_id = 70350085, pos = { x = 529.695, y = 121.000, z = 30.954 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	[98152] = { config_id = 98152, gadget_id = 70350085, pos = { x = 431.847, y = 121.000, z = 31.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	[98153] = { config_id = 98153, gadget_id = 70310352, pos = { x = 395.057, y = 126.000, z = -182.236 }, rot = { x = 0.000, y = 193.703, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100085, area_id = 402 },
	[98154] = { config_id = 98154, gadget_id = 70310352, pos = { x = 396.100, y = 120.000, z = -165.129 }, rot = { x = 0.000, y = 181.955, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100086, area_id = 402 },
	[98155] = { config_id = 98155, gadget_id = 70220110, pos = { x = 392.288, y = 120.000, z = -195.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	[98156] = { config_id = 98156, gadget_id = 70220110, pos = { x = 393.481, y = 120.000, z = -191.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	[98157] = { config_id = 98157, gadget_id = 70220110, pos = { x = 394.445, y = 120.000, z = -187.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	[98158] = { config_id = 98158, gadget_id = 70220110, pos = { x = 395.675, y = 120.000, z = -177.206 }, rot = { x = 0.000, y = 357.303, z = 0.000 }, level = 1, area_id = 402 },
	[98159] = { config_id = 98159, gadget_id = 70220110, pos = { x = 395.879, y = 120.000, z = -173.384 }, rot = { x = 0.000, y = 357.303, z = 0.000 }, level = 1, area_id = 402 },
	[98160] = { config_id = 98160, gadget_id = 70220110, pos = { x = 396.194, y = 120.000, z = -169.822 }, rot = { x = 0.000, y = 357.303, z = 0.000 }, level = 1, area_id = 402 },
	[98161] = { config_id = 98161, gadget_id = 70310351, pos = { x = 398.288, y = 120.000, z = -68.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	[98162] = { config_id = 98162, gadget_id = 70310408, pos = { x = 385.602, y = 120.000, z = -139.247 }, rot = { x = 0.000, y = 103.086, z = 0.000 }, level = 1, area_id = 402 },
	[98163] = { config_id = 98163, gadget_id = 70310350, pos = { x = 388.620, y = 120.000, z = -128.237 }, rot = { x = 0.000, y = 302.442, z = 0.000 }, level = 1, area_id = 402 },
	[98164] = { config_id = 98164, gadget_id = 70310408, pos = { x = 410.445, y = 120.000, z = -137.840 }, rot = { x = 0.000, y = 112.225, z = 0.000 }, level = 1, area_id = 402 },
	[98165] = { config_id = 98165, gadget_id = 70290311, pos = { x = 394.551, y = 120.000, z = -119.488 }, rot = { x = 0.000, y = 313.787, z = 0.000 }, level = 1, area_id = 402 },
	[98166] = { config_id = 98166, gadget_id = 70310408, pos = { x = 417.444, y = 120.000, z = -125.342 }, rot = { x = 0.000, y = 304.613, z = 0.000 }, level = 1, area_id = 402 },
	[98167] = { config_id = 98167, gadget_id = 70350085, pos = { x = 916.869, y = 120.000, z = 110.346 }, rot = { x = 0.000, y = 348.542, z = 0.000 }, level = 20, area_id = 402 },
	[98168] = { config_id = 98168, gadget_id = 70310408, pos = { x = 401.259, y = 120.000, z = -108.009 }, rot = { x = 0.000, y = 279.772, z = 0.000 }, level = 1, area_id = 402 },
	[98169] = { config_id = 98169, gadget_id = 70310408, pos = { x = 422.037, y = 120.000, z = -111.509 }, rot = { x = 0.000, y = 278.811, z = 0.000 }, level = 1, area_id = 402 },
	[98170] = { config_id = 98170, gadget_id = 70310408, pos = { x = 405.626, y = 120.000, z = -75.328 }, rot = { x = 0.000, y = 218.690, z = 0.000 }, level = 1, area_id = 402 },
	[98171] = { config_id = 98171, gadget_id = 70290311, pos = { x = 388.092, y = 120.000, z = -96.646 }, rot = { x = 0.000, y = 184.488, z = 0.000 }, level = 1, area_id = 402 },
	[98172] = { config_id = 98172, gadget_id = 70360025, pos = { x = 916.869, y = 120.000, z = 110.346 }, rot = { x = 0.000, y = 348.542, z = 0.000 }, level = 20, area_id = 402 },
	[98173] = { config_id = 98173, gadget_id = 70350085, pos = { x = 381.368, y = 121.000, z = -69.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	[98174] = { config_id = 98174, gadget_id = 70310408, pos = { x = 415.282, y = 120.000, z = -85.004 }, rot = { x = 0.000, y = 235.168, z = 0.000 }, level = 1, area_id = 402 },
	[98175] = { config_id = 98175, gadget_id = 70220110, pos = { x = 392.141, y = 120.000, z = -114.152 }, rot = { x = 0.000, y = 298.933, z = 0.000 }, level = 1, area_id = 402 },
	[98176] = { config_id = 98176, gadget_id = 70220110, pos = { x = 390.905, y = 120.000, z = -108.203 }, rot = { x = 0.000, y = 298.933, z = 0.000 }, level = 1, area_id = 402 },
	[98177] = { config_id = 98177, gadget_id = 70220110, pos = { x = 389.822, y = 120.000, z = -102.448 }, rot = { x = 0.000, y = 298.933, z = 0.000 }, level = 1, area_id = 402 },
	[98178] = { config_id = 98178, gadget_id = 70310408, pos = { x = 420.967, y = 120.000, z = -97.161 }, rot = { x = 0.000, y = 79.863, z = 0.000 }, level = 1, area_id = 402 },
	[98179] = { config_id = 98179, gadget_id = 70290059, pos = { x = 369.738, y = 120.000, z = -88.153 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	[98180] = { config_id = 98180, gadget_id = 70310409, pos = { x = 398.102, y = 120.000, z = -98.233 }, rot = { x = 0.000, y = 23.083, z = 0.000 }, level = 1, area_id = 402 },
	[98181] = { config_id = 98181, gadget_id = 70310409, pos = { x = 377.594, y = 120.000, z = -97.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	[98182] = { config_id = 98182, gadget_id = 70310408, pos = { x = 388.099, y = 120.000, z = -54.630 }, rot = { x = 0.000, y = 268.622, z = 0.000 }, level = 1, area_id = 402 },
	[98183] = { config_id = 98183, gadget_id = 70310408, pos = { x = 361.626, y = 120.000, z = -53.217 }, rot = { x = 0.000, y = 265.706, z = 0.000 }, level = 1, area_id = 402 },
	[98185] = { config_id = 98185, gadget_id = 70310408, pos = { x = 384.160, y = 120.000, z = -33.560 }, rot = { x = 0.000, y = 268.786, z = 0.000 }, level = 1, area_id = 402 },
	[98186] = { config_id = 98186, gadget_id = 70290059, pos = { x = 387.064, y = 120.000, z = -22.018 }, rot = { x = 0.000, y = 289.368, z = 0.000 }, level = 1, area_id = 402 },
	[98187] = { config_id = 98187, gadget_id = 70310408, pos = { x = 361.034, y = 120.000, z = -37.225 }, rot = { x = 0.000, y = 107.311, z = 0.000 }, level = 1, area_id = 402 },
	[98188] = { config_id = 98188, gadget_id = 70290060, pos = { x = 378.788, y = 125.450, z = -19.601 }, rot = { x = 4.300, y = 14.131, z = 343.417 }, level = 1, area_id = 402 },
	[98189] = { config_id = 98189, gadget_id = 70290060, pos = { x = 369.766, y = 125.459, z = -17.329 }, rot = { x = 4.300, y = 14.131, z = 346.896 }, level = 1, area_id = 402 },
	[98190] = { config_id = 98190, gadget_id = 70290059, pos = { x = 361.553, y = 120.000, z = -15.016 }, rot = { x = 0.000, y = 289.368, z = 0.000 }, level = 1, area_id = 402 },
	[98191] = { config_id = 98191, gadget_id = 70310408, pos = { x = 392.713, y = 120.000, z = -4.916 }, rot = { x = 0.000, y = 303.666, z = 0.000 }, level = 1, area_id = 402 },
	[98192] = { config_id = 98192, gadget_id = 70310408, pos = { x = 370.481, y = 120.000, z = -0.268 }, rot = { x = 0.000, y = 119.757, z = 0.000 }, level = 1, area_id = 402 },
	[98193] = { config_id = 98193, gadget_id = 70220110, pos = { x = 380.859, y = 123.624, z = -19.998 }, rot = { x = 1.441, y = 275.059, z = 0.000 }, level = 1, area_id = 402 },
	[98194] = { config_id = 98194, gadget_id = 70220110, pos = { x = 369.148, y = 123.522, z = -17.048 }, rot = { x = 359.198, y = 290.675, z = 0.000 }, level = 1, area_id = 402 },
	[98197] = { config_id = 98197, gadget_id = 70220110, pos = { x = 374.711, y = 123.441, z = -18.565 }, rot = { x = 359.198, y = 290.675, z = 0.000 }, level = 1, area_id = 402 },
	[98198] = { config_id = 98198, gadget_id = 70310348, pos = { x = 411.362, y = 120.581, z = 19.034 }, rot = { x = 0.000, y = 221.359, z = 0.000 }, level = 1, area_id = 402 },
	[98199] = { config_id = 98199, gadget_id = 70220110, pos = { x = 405.261, y = 120.581, z = 16.270 }, rot = { x = 0.000, y = 221.359, z = 0.000 }, level = 1, area_id = 402 },
	[98200] = { config_id = 98200, gadget_id = 70220110, pos = { x = 396.565, y = 120.581, z = 24.933 }, rot = { x = 0.000, y = 225.838, z = 0.000 }, level = 1, area_id = 402 },
	[98201] = { config_id = 98201, gadget_id = 70310348, pos = { x = 402.344, y = 120.581, z = 28.456 }, rot = { x = 0.000, y = 225.837, z = 0.000 }, level = 1, area_id = 402 },
	[98202] = { config_id = 98202, gadget_id = 70310348, pos = { x = 400.095, y = 120.581, z = 10.802 }, rot = { x = 0.000, y = 221.359, z = 0.000 }, level = 1, area_id = 402 },
	[98203] = { config_id = 98203, gadget_id = 70310348, pos = { x = 391.684, y = 120.581, z = 20.060 }, rot = { x = 0.000, y = 225.837, z = 0.000 }, level = 1, area_id = 402 },
	[98204] = { config_id = 98204, gadget_id = 70310408, pos = { x = 379.437, y = 120.000, z = 14.466 }, rot = { x = 0.000, y = 133.496, z = 0.000 }, level = 1, area_id = 402 },
	[98205] = { config_id = 98205, gadget_id = 70310408, pos = { x = 422.811, y = 120.000, z = 19.383 }, rot = { x = 0.000, y = 349.866, z = 0.000 }, level = 1, area_id = 402 },
	[98206] = { config_id = 98206, gadget_id = 70310408, pos = { x = 409.554, y = 120.000, z = 36.704 }, rot = { x = 0.000, y = 349.866, z = 0.000 }, level = 1, area_id = 402 },
	[98207] = { config_id = 98207, gadget_id = 70310352, pos = { x = 462.419, y = 123.000, z = 31.404 }, rot = { x = 0.000, y = 265.815, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100089, area_id = 402 },
	[98208] = { config_id = 98208, gadget_id = 70310352, pos = { x = 462.248, y = 120.000, z = 33.743 }, rot = { x = 0.000, y = 265.815, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100090, area_id = 402 },
	[98209] = { config_id = 98209, gadget_id = 70310352, pos = { x = 462.574, y = 120.000, z = 29.295 }, rot = { x = 0.000, y = 265.815, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100091, area_id = 402 },
	[98210] = { config_id = 98210, gadget_id = 70310348, pos = { x = 499.558, y = 120.581, z = 24.744 }, rot = { x = 0.000, y = 262.770, z = 0.000 }, level = 1, area_id = 402 },
	[98211] = { config_id = 98211, gadget_id = 70220110, pos = { x = 493.571, y = 120.581, z = 24.357 }, rot = { x = 0.000, y = 262.771, z = 0.000 }, level = 1, area_id = 402 },
	[98212] = { config_id = 98212, gadget_id = 70220110, pos = { x = 493.374, y = 120.581, z = 37.333 }, rot = { x = 0.000, y = 267.249, z = 0.000 }, level = 1, area_id = 402 },
	[98213] = { config_id = 98213, gadget_id = 70310348, pos = { x = 499.373, y = 120.581, z = 37.251 }, rot = { x = 0.000, y = 267.249, z = 0.000 }, level = 1, area_id = 402 },
	[98214] = { config_id = 98214, gadget_id = 70310348, pos = { x = 487.290, y = 120.581, z = 25.327 }, rot = { x = 0.000, y = 262.770, z = 0.000 }, level = 1, area_id = 402 },
	[98215] = { config_id = 98215, gadget_id = 70220110, pos = { x = 481.302, y = 120.581, z = 24.941 }, rot = { x = 0.000, y = 262.771, z = 0.000 }, level = 1, area_id = 402 },
	[98216] = { config_id = 98216, gadget_id = 70310348, pos = { x = 475.315, y = 120.581, z = 24.554 }, rot = { x = 0.000, y = 67.982, z = 0.000 }, level = 1, area_id = 402 },
	[98217] = { config_id = 98217, gadget_id = 70310348, pos = { x = 475.107, y = 120.581, z = 37.999 }, rot = { x = 0.000, y = 267.249, z = 0.000 }, level = 1, area_id = 402 },
	[98218] = { config_id = 98218, gadget_id = 70220110, pos = { x = 481.105, y = 120.581, z = 37.916 }, rot = { x = 0.000, y = 267.249, z = 0.000 }, level = 1, area_id = 402 },
	[98219] = { config_id = 98219, gadget_id = 70310348, pos = { x = 487.105, y = 120.581, z = 37.834 }, rot = { x = 0.000, y = 267.249, z = 0.000 }, level = 1, area_id = 402 },
	[98220] = { config_id = 98220, gadget_id = 70310348, pos = { x = 515.536, y = 121.000, z = 34.119 }, rot = { x = 0.000, y = 1.211, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 402 },
	[98221] = { config_id = 98221, gadget_id = 70310348, pos = { x = 515.594, y = 121.000, z = 28.359 }, rot = { x = 0.000, y = 1.211, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 402 },
	[98222] = { config_id = 98222, gadget_id = 70310348, pos = { x = 515.594, y = 125.000, z = 28.359 }, rot = { x = 0.000, y = 1.211, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 402 },
	[98223] = { config_id = 98223, gadget_id = 70310348, pos = { x = 515.536, y = 125.000, z = 34.119 }, rot = { x = 0.000, y = 1.211, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 402 },
	[98224] = { config_id = 98224, gadget_id = 70380004, pos = { x = 547.486, y = 120.000, z = 33.575 }, rot = { x = 0.000, y = 272.545, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100092, area_id = 402 },
	[98225] = { config_id = 98225, gadget_id = 70380004, pos = { x = 547.311, y = 120.000, z = 27.882 }, rot = { x = 0.000, y = 272.545, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100093, area_id = 402 },
	[98226] = { config_id = 98226, gadget_id = 70310348, pos = { x = 572.532, y = 120.000, z = 35.139 }, rot = { x = 0.000, y = 1.211, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 402 },
	[98227] = { config_id = 98227, gadget_id = 70310348, pos = { x = 572.503, y = 120.000, z = 25.273 }, rot = { x = 0.000, y = 1.211, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 402 },
	[98228] = { config_id = 98228, gadget_id = 70310348, pos = { x = 572.503, y = 128.000, z = 25.273 }, rot = { x = 0.000, y = 1.211, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 402 },
	[98229] = { config_id = 98229, gadget_id = 70310348, pos = { x = 572.532, y = 128.000, z = 35.139 }, rot = { x = 0.000, y = 1.211, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 402 },
	[98230] = { config_id = 98230, gadget_id = 70220110, pos = { x = 572.820, y = 122.051, z = 28.843 }, rot = { x = 0.000, y = 146.057, z = 0.000 }, level = 20, area_id = 402 },
	[98231] = { config_id = 98231, gadget_id = 70220110, pos = { x = 572.915, y = 122.051, z = 31.771 }, rot = { x = 0.000, y = 146.057, z = 0.000 }, level = 20, area_id = 402 },
	[98232] = { config_id = 98232, gadget_id = 70220110, pos = { x = 572.923, y = 124.755, z = 32.660 }, rot = { x = 0.000, y = 146.057, z = 0.000 }, level = 20, area_id = 402 },
	[98233] = { config_id = 98233, gadget_id = 70220110, pos = { x = 572.776, y = 124.779, z = 27.705 }, rot = { x = 0.000, y = 146.057, z = 0.000 }, level = 20, area_id = 402 },
	[98234] = { config_id = 98234, gadget_id = 70220110, pos = { x = 572.859, y = 126.405, z = 30.278 }, rot = { x = 0.000, y = 146.057, z = 0.000 }, level = 20, area_id = 402 },
	[98236] = { config_id = 98236, gadget_id = 70380004, pos = { x = 641.824, y = 124.000, z = 18.623 }, rot = { x = 0.000, y = 252.359, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100095, area_id = 402 },
	[98237] = { config_id = 98237, gadget_id = 70380004, pos = { x = 628.353, y = 120.000, z = 17.069 }, rot = { x = 0.000, y = 283.556, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100094, area_id = 402 },
	[98238] = { config_id = 98238, gadget_id = 70310408, pos = { x = 602.820, y = 120.000, z = 41.957 }, rot = { x = 0.000, y = 193.077, z = 0.000 }, level = 1, area_id = 402 },
	[98239] = { config_id = 98239, gadget_id = 70310350, pos = { x = 613.830, y = 120.000, z = 38.941 }, rot = { x = 0.000, y = 32.433, z = 0.000 }, level = 1, area_id = 402 },
	[98240] = { config_id = 98240, gadget_id = 70310408, pos = { x = 604.231, y = 120.000, z = 17.115 }, rot = { x = 0.000, y = 202.216, z = 0.000 }, level = 1, area_id = 402 },
	[98241] = { config_id = 98241, gadget_id = 70290311, pos = { x = 622.580, y = 120.000, z = 33.011 }, rot = { x = 0.000, y = 43.778, z = 0.000 }, level = 1, area_id = 402 },
	[98242] = { config_id = 98242, gadget_id = 70310408, pos = { x = 616.729, y = 120.000, z = 10.117 }, rot = { x = 0.000, y = 34.604, z = 0.000 }, level = 1, area_id = 402 },
	[98243] = { config_id = 98243, gadget_id = 70310408, pos = { x = 634.060, y = 120.000, z = 26.305 }, rot = { x = 0.000, y = 9.764, z = 0.000 }, level = 1, area_id = 402 },
	[98244] = { config_id = 98244, gadget_id = 70310408, pos = { x = 630.563, y = 120.000, z = 5.526 }, rot = { x = 0.000, y = 8.802, z = 0.000 }, level = 1, area_id = 402 },
	[98245] = { config_id = 98245, gadget_id = 70290311, pos = { x = 645.421, y = 120.000, z = 39.473 }, rot = { x = 0.000, y = 274.479, z = 0.000 }, level = 1, area_id = 402 },
	[98246] = { config_id = 98246, gadget_id = 70310408, pos = { x = 657.067, y = 120.000, z = 12.286 }, rot = { x = 0.000, y = 325.160, z = 0.000 }, level = 1, area_id = 402 },
	[98247] = { config_id = 98247, gadget_id = 70220110, pos = { x = 627.915, y = 120.000, z = 35.422 }, rot = { x = 0.000, y = 28.924, z = 0.000 }, level = 1, area_id = 402 },
	[98248] = { config_id = 98248, gadget_id = 70220110, pos = { x = 633.865, y = 120.000, z = 36.659 }, rot = { x = 0.000, y = 28.924, z = 0.000 }, level = 1, area_id = 402 },
	[98249] = { config_id = 98249, gadget_id = 70220110, pos = { x = 639.619, y = 120.000, z = 37.743 }, rot = { x = 0.000, y = 28.924, z = 0.000 }, level = 1, area_id = 402 },
	[98250] = { config_id = 98250, gadget_id = 70310408, pos = { x = 644.911, y = 120.000, z = 6.599 }, rot = { x = 0.000, y = 169.854, z = 0.000 }, level = 1, area_id = 402 },
	[98251] = { config_id = 98251, gadget_id = 70310410, pos = { x = 824.193, y = 120.000, z = 91.694 }, rot = { x = 0.000, y = 258.112, z = 0.000 }, level = 20, area_id = 402 },
	[98252] = { config_id = 98252, gadget_id = 70310409, pos = { x = 643.836, y = 120.000, z = 29.463 }, rot = { x = 0.000, y = 113.075, z = 0.000 }, level = 1, area_id = 402 },
	[98253] = { config_id = 98253, gadget_id = 70310409, pos = { x = 644.793, y = 120.000, z = 49.972 }, rot = { x = 0.000, y = 89.992, z = 0.000 }, level = 1, area_id = 402 },
	[98254] = { config_id = 98254, gadget_id = 70310408, pos = { x = 666.742, y = 120.000, z = 21.943 }, rot = { x = 0.000, y = 308.681, z = 0.000 }, level = 1, area_id = 402 },
	[98255] = { config_id = 98255, gadget_id = 70310351, pos = { x = 673.987, y = 120.000, z = 29.282 }, rot = { x = 0.000, y = 89.992, z = 0.000 }, level = 1, area_id = 402 },
	[98256] = { config_id = 98256, gadget_id = 70310351, pos = { x = 725.813, y = 120.000, z = 80.618 }, rot = { x = 0.000, y = 9.456, z = 0.000 }, level = 1, area_id = 402 },
	[98257] = { config_id = 98257, gadget_id = 70350085, pos = { x = 595.975, y = 121.000, z = 30.727 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 402 },
	[98258] = { config_id = 98258, gadget_id = 70310350, pos = { x = 680.332, y = 120.000, z = 39.422 }, rot = { x = 0.000, y = 305.872, z = 0.000 }, level = 1, area_id = 402 },
	[98259] = { config_id = 98259, gadget_id = 70310408, pos = { x = 657.488, y = 120.000, z = 57.119 }, rot = { x = 0.000, y = 142.637, z = 0.000 }, level = 1, area_id = 402 },
	[98260] = { config_id = 98260, gadget_id = 70290311, pos = { x = 683.325, y = 120.000, z = 49.435 }, rot = { x = 0.000, y = 286.911, z = 0.000 }, level = 1, area_id = 402 },
	[98261] = { config_id = 98261, gadget_id = 70310408, pos = { x = 667.268, y = 120.000, z = 68.801 }, rot = { x = 0.000, y = 310.072, z = 0.000 }, level = 1, area_id = 402 },
	[98262] = { config_id = 98262, gadget_id = 70310408, pos = { x = 689.158, y = 120.000, z = 60.317 }, rot = { x = 0.000, y = 311.951, z = 0.000 }, level = 1, area_id = 402 },
	[98263] = { config_id = 98263, gadget_id = 70310408, pos = { x = 677.464, y = 120.000, z = 81.296 }, rot = { x = 0.000, y = 316.126, z = 0.000 }, level = 1, area_id = 402 },
	[98264] = { config_id = 98264, gadget_id = 70220110, pos = { x = 729.677, y = 122.051, z = 63.817 }, rot = { x = 0.000, y = 124.170, z = 0.000 }, level = 20, area_id = 402 },
	[98265] = { config_id = 98265, gadget_id = 70310408, pos = { x = 689.693, y = 120.000, z = 88.880 }, rot = { x = 0.000, y = 160.046, z = 0.000 }, level = 1, area_id = 402 },
	[98266] = { config_id = 98266, gadget_id = 70290311, pos = { x = 707.519, y = 120.000, z = 57.305 }, rot = { x = 0.000, y = 231.598, z = 0.000 }, level = 1, area_id = 402 },
	[98267] = { config_id = 98267, gadget_id = 70310408, pos = { x = 704.412, y = 120.000, z = 89.226 }, rot = { x = 0.000, y = 195.080, z = 0.000 }, level = 1, area_id = 402 },
	[98268] = { config_id = 98268, gadget_id = 70220110, pos = { x = 689.021, y = 120.000, z = 50.432 }, rot = { x = 0.000, y = 16.280, z = 0.000 }, level = 1, area_id = 402 },
	[98269] = { config_id = 98269, gadget_id = 70220110, pos = { x = 694.555, y = 120.000, z = 52.941 }, rot = { x = 0.000, y = 16.280, z = 0.000 }, level = 1, area_id = 402 },
	[98270] = { config_id = 98270, gadget_id = 70220110, pos = { x = 699.932, y = 120.000, z = 55.258 }, rot = { x = 0.000, y = 16.280, z = 0.000 }, level = 1, area_id = 402 },
	[98271] = { config_id = 98271, gadget_id = 70310408, pos = { x = 716.776, y = 120.000, z = 84.476 }, rot = { x = 0.000, y = 28.640, z = 0.000 }, level = 1, area_id = 402 },
	[98272] = { config_id = 98272, gadget_id = 70310409, pos = { x = 712.497, y = 120.000, z = 48.326 }, rot = { x = 0.000, y = 32.540, z = 0.000 }, level = 1, area_id = 402 },
	[98273] = { config_id = 98273, gadget_id = 70310409, pos = { x = 697.906, y = 120.000, z = 62.545 }, rot = { x = 0.000, y = 9.456, z = 0.000 }, level = 1, area_id = 402 },
	[98276] = { config_id = 98276, gadget_id = 70380004, pos = { x = 690.174, y = 124.000, z = 74.644 }, rot = { x = 0.000, y = 238.159, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100097, area_id = 402 },
	[98277] = { config_id = 98277, gadget_id = 70380004, pos = { x = 680.902, y = 120.000, z = 66.965 }, rot = { x = 0.000, y = 213.963, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100096, area_id = 402 },
	[98278] = { config_id = 98278, gadget_id = 70220110, pos = { x = 842.452, y = 122.051, z = 93.969 }, rot = { x = 0.000, y = 134.598, z = 0.000 }, level = 20, area_id = 402 },
	[98279] = { config_id = 98279, gadget_id = 70220110, pos = { x = 841.963, y = 122.051, z = 96.857 }, rot = { x = 0.000, y = 134.598, z = 0.000 }, level = 20, area_id = 402 },
	[98280] = { config_id = 98280, gadget_id = 70220110, pos = { x = 841.794, y = 124.755, z = 97.730 }, rot = { x = 0.000, y = 134.598, z = 0.000 }, level = 20, area_id = 402 },
	[98281] = { config_id = 98281, gadget_id = 70220110, pos = { x = 842.635, y = 124.779, z = 92.845 }, rot = { x = 0.000, y = 134.598, z = 0.000 }, level = 20, area_id = 402 },
	[98282] = { config_id = 98282, gadget_id = 70220110, pos = { x = 842.205, y = 126.405, z = 95.382 }, rot = { x = 0.000, y = 134.598, z = 0.000 }, level = 20, area_id = 402 },
	[98283] = { config_id = 98283, gadget_id = 70310352, pos = { x = 856.848, y = 120.000, z = 91.141 }, rot = { x = 0.000, y = 270.859, z = 0.000 }, level = 1, area_id = 402 },
	[98284] = { config_id = 98284, gadget_id = 70310352, pos = { x = 854.653, y = 120.000, z = 104.589 }, rot = { x = 0.000, y = 259.664, z = 0.000 }, level = 1, area_id = 402 },
	[98285] = { config_id = 98285, gadget_id = 70290311, pos = { x = 856.459, y = 120.000, z = 97.945 }, rot = { x = 0.000, y = 77.463, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 402 },
	[98286] = { config_id = 98286, gadget_id = 70350085, pos = { x = 824.193, y = 121.000, z = 91.694 }, rot = { x = 0.000, y = 347.915, z = 0.000 }, level = 20, area_id = 402 },
	[98293] = { config_id = 98293, gadget_id = 70380004, pos = { x = 749.221, y = 120.000, z = 55.651 }, rot = { x = 0.000, y = 280.390, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100102, area_id = 402 },
	[98294] = { config_id = 98294, gadget_id = 70380004, pos = { x = 762.586, y = 124.000, z = 57.947 }, rot = { x = 0.000, y = 249.193, z = 0.000 }, level = 1, state = GadgetState.GearStart, route_id = 900100103, area_id = 402 },
	[98295] = { config_id = 98295, gadget_id = 70220110, pos = { x = 728.673, y = 122.051, z = 66.569 }, rot = { x = 0.000, y = 124.170, z = 0.000 }, level = 20, area_id = 402 },
	[98296] = { config_id = 98296, gadget_id = 70310350, pos = { x = 736.125, y = 120.000, z = 78.919 }, rot = { x = 0.000, y = 8.873, z = 0.000 }, level = 1, area_id = 402 },
	[98297] = { config_id = 98297, gadget_id = 70310408, pos = { x = 724.110, y = 120.000, z = 52.415 }, rot = { x = 0.000, y = 181.865, z = 0.000 }, level = 1, area_id = 402 },
	[98298] = { config_id = 98298, gadget_id = 70290311, pos = { x = 748.088, y = 120.000, z = 74.637 }, rot = { x = 0.000, y = 40.613, z = 0.000 }, level = 1, area_id = 402 },
	[98299] = { config_id = 98299, gadget_id = 70310408, pos = { x = 737.999, y = 120.000, z = 48.068 }, rot = { x = 0.000, y = 31.438, z = 0.000 }, level = 1, area_id = 402 },
	[98300] = { config_id = 98300, gadget_id = 70310408, pos = { x = 759.921, y = 120.000, z = 68.575 }, rot = { x = 0.000, y = 6.598, z = 0.000 }, level = 1, area_id = 402 },
	[98301] = { config_id = 98301, gadget_id = 70310408, pos = { x = 752.065, y = 120.000, z = 44.247 }, rot = { x = 0.000, y = 5.637, z = 0.000 }, level = 1, area_id = 402 },
	[98302] = { config_id = 98302, gadget_id = 70310408, pos = { x = 787.282, y = 120.000, z = 62.638 }, rot = { x = 0.000, y = 305.516, z = 0.000 }, level = 1, area_id = 402 },
	[98303] = { config_id = 98303, gadget_id = 70290311, pos = { x = 770.537, y = 120.000, z = 82.351 }, rot = { x = 0.000, y = 271.313, z = 0.000 }, level = 1, area_id = 402 },
	[98304] = { config_id = 98304, gadget_id = 70310408, pos = { x = 778.156, y = 120.000, z = 52.461 }, rot = { x = 0.000, y = 321.994, z = 0.000 }, level = 1, area_id = 402 },
	[98305] = { config_id = 98305, gadget_id = 70220110, pos = { x = 753.283, y = 120.000, z = 77.339 }, rot = { x = 0.000, y = 25.759, z = 0.000 }, level = 1, area_id = 402 },
	[98306] = { config_id = 98306, gadget_id = 70220110, pos = { x = 759.155, y = 120.000, z = 78.902 }, rot = { x = 0.000, y = 25.759, z = 0.000 }, level = 1, area_id = 402 },
	[98307] = { config_id = 98307, gadget_id = 70220110, pos = { x = 764.841, y = 120.000, z = 80.303 }, rot = { x = 0.000, y = 25.759, z = 0.000 }, level = 1, area_id = 402 },
	[98308] = { config_id = 98308, gadget_id = 70310408, pos = { x = 766.332, y = 120.000, z = 46.111 }, rot = { x = 0.000, y = 166.688, z = 0.000 }, level = 1, area_id = 402 },
	[98309] = { config_id = 98309, gadget_id = 70220110, pos = { x = 728.349, y = 124.755, z = 67.397 }, rot = { x = 0.000, y = 124.170, z = 0.000 }, level = 20, area_id = 402 },
	[98310] = { config_id = 98310, gadget_id = 70310409, pos = { x = 769.508, y = 120.000, z = 72.268 }, rot = { x = 0.000, y = 109.909, z = 0.000 }, level = 1, area_id = 402 },
	[98311] = { config_id = 98311, gadget_id = 70310409, pos = { x = 769.331, y = 120.000, z = 92.798 }, rot = { x = 0.000, y = 86.826, z = 0.000 }, level = 1, area_id = 402 },
	[98312] = { config_id = 98312, gadget_id = 70310351, pos = { x = 794.111, y = 120.000, z = 70.365 }, rot = { x = 0.000, y = 86.826, z = 0.000 }, level = 1, area_id = 402 },
	[98313] = { config_id = 98313, gadget_id = 70220110, pos = { x = 730.060, y = 124.779, z = 62.744 }, rot = { x = 0.000, y = 124.170, z = 0.000 }, level = 20, area_id = 402 },
	[98314] = { config_id = 98314, gadget_id = 70220110, pos = { x = 729.178, y = 126.405, z = 65.162 }, rot = { x = 0.000, y = 124.170, z = 0.000 }, level = 20, area_id = 402 },
	[98315] = { config_id = 98315, gadget_id = 70290311, pos = { x = 795.951, y = 120.000, z = 80.472 }, rot = { x = 0.000, y = 271.313, z = 0.000 }, level = 1, area_id = 402 },
	[98316] = { config_id = 98316, gadget_id = 70290311, pos = { x = 796.185, y = 120.000, z = 90.701 }, rot = { x = 0.000, y = 271.313, z = 0.000 }, level = 1, area_id = 402 },
	[98318] = { config_id = 98318, gadget_id = 70310351, pos = { x = 794.707, y = 120.000, z = 100.405 }, rot = { x = 0.000, y = 86.826, z = 0.000 }, level = 1, area_id = 402 }
}

-- 区域
regions = {
	-- 隐藏区域1
	[98050] = { config_id = 98050, shape = RegionShape.POLYGON, pos = { x = 211.719, y = 120.000, z = -379.222 }, height = 40.000, point_array = { { x = 196.729, y = -384.066 }, { x = 197.876, y = -375.217 }, { x = 202.665, y = -368.470 }, { x = 214.502, y = -368.483 }, { x = 226.709, y = -381.685 }, { x = 197.839, y = -389.974 } }, area_id = 401 },
	[98195] = { config_id = 98195, shape = RegionShape.SPHERE, radius = 8, pos = { x = 916.869, y = 120.000, z = 110.346 }, area_id = 402 },
	[98275] = { config_id = 98275, shape = RegionShape.SPHERE, radius = 18, pos = { x = 664.566, y = 120.000, z = 45.648 }, area_id = 402 },
	[98288] = { config_id = 98288, shape = RegionShape.POLYGON, pos = { x = 347.456, y = 120.000, z = -201.463 }, height = 40.000, point_array = { { x = -238.251, y = -560.579 }, { x = -206.760, y = -423.072 }, { x = 67.305, y = -357.399 }, { x = 274.095, y = -180.769 }, { x = 298.300, y = 58.080 }, { x = 530.767, y = 119.749 }, { x = 913.586, y = 179.920 }, { x = 933.162, y = 27.233 }, { x = 516.410, y = -56.894 }, { x = 440.701, y = -319.401 }, { x = 81.717, y = -582.845 } }, area_id = 401 },
	-- 隐藏区域2
	[98289] = { config_id = 98289, shape = RegionShape.POLYGON, pos = { x = 387.812, y = 120.000, z = -110.599 }, height = 40.000, point_array = { { x = 399.843, y = -104.627 }, { x = 398.924, y = -113.453 }, { x = 389.204, y = -123.543 }, { x = 375.782, y = -103.368 }, { x = 383.148, y = -97.655 }, { x = 395.301, y = -99.770 } }, area_id = 402 },
	-- 隐藏区域3
	[98290] = { config_id = 98290, shape = RegionShape.POLYGON, pos = { x = 631.167, y = 120.000, z = 39.490 }, height = 40.000, point_array = { { x = 640.563, y = 51.170 }, { x = 643.405, y = 45.412 }, { x = 640.591, y = 28.136 }, { x = 629.049, y = 27.811 }, { x = 618.929, y = 38.724 } }, area_id = 402 },
	-- 隐藏区域4
	[98291] = { config_id = 98291, shape = RegionShape.POLYGON, pos = { x = 696.297, y = 120.000, z = 51.587 }, height = 40.000, point_array = { { x = 683.189, y = 42.784 }, { x = 686.248, y = 54.172 }, { x = 693.066, y = 62.710 }, { x = 701.995, y = 60.016 }, { x = 709.406, y = 50.696 }, { x = 696.131, y = 40.464 } }, area_id = 402 },
	-- 教学区域
	[98292] = { config_id = 98292, shape = RegionShape.SPHERE, radius = 5, pos = { x = -165.706, y = 120.000, z = -489.431 }, area_id = 401 },
	[98317] = { config_id = 98317, shape = RegionShape.POLYGON, pos = { x = 745.760, y = 120.000, z = 74.258 }, height = 40.000, point_array = { { x = 716.271, y = 52.377 }, { x = 713.019, y = 81.201 }, { x = 743.550, y = 87.632 }, { x = 773.871, y = 96.140 }, { x = 778.500, y = 74.137 }, { x = 768.604, y = 64.431 }, { x = 746.678, y = 55.576 } }, area_id = 402 },
	[98319] = { config_id = 98319, shape = RegionShape.SPHERE, radius = 17, pos = { x = 777.216, y = 120.000, z = 84.536 }, area_id = 402 },
	-- 隐藏区域5
	[98320] = { config_id = 98320, shape = RegionShape.POLYGON, pos = { x = 754.635, y = 120.000, z = 80.621 }, height = 40.000, point_array = { { x = 753.688, y = 71.015 }, { x = 741.118, y = 82.532 }, { x = 753.133, y = 86.996 }, { x = 768.086, y = 91.564 }, { x = 768.152, y = 75.096 }, { x = 764.897, y = 69.678 } }, area_id = 402 }
}

-- 触发器
triggers = {
	{ config_id = 1098005, name = "ANY_GADGET_DIE_98005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_98005", action = "action_EVENT_ANY_GADGET_DIE_98005", trigger_count = 0 },
	{ config_id = 1098006, name = "ANY_GADGET_DIE_98006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_98006", action = "action_EVENT_ANY_GADGET_DIE_98006", trigger_count = 0 },
	{ config_id = 1098007, name = "ANY_GADGET_DIE_98007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_98007", action = "action_EVENT_ANY_GADGET_DIE_98007", trigger_count = 0 },
	{ config_id = 1098009, name = "ANY_GADGET_DIE_98009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_98009", action = "action_EVENT_ANY_GADGET_DIE_98009", trigger_count = 0 },
	{ config_id = 1098010, name = "ANY_GADGET_DIE_98010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_98010", action = "action_EVENT_ANY_GADGET_DIE_98010", trigger_count = 0 },
	{ config_id = 1098011, name = "ANY_GADGET_DIE_98011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_98011", action = "action_EVENT_ANY_GADGET_DIE_98011", trigger_count = 0 },
	{ config_id = 1098018, name = "ANY_GADGET_DIE_98018", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_98018", action = "action_EVENT_ANY_GADGET_DIE_98018", trigger_count = 0 },
	{ config_id = 1098019, name = "ANY_GADGET_DIE_98019", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_98019", action = "action_EVENT_ANY_GADGET_DIE_98019", trigger_count = 0 },
	{ config_id = 1098184, name = "ANY_GADGET_DIE_98184", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_98184", action = "action_EVENT_ANY_GADGET_DIE_98184", trigger_count = 0 },
	{ config_id = 1098196, name = "CHALLENGE_SUCCESS_98196", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "condition_EVENT_CHALLENGE_SUCCESS_98196", action = "action_EVENT_CHALLENGE_SUCCESS_98196", trigger_count = 0 },
	{ config_id = 1098235, name = "ANY_GADGET_DIE_98235", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_98235", action = "action_EVENT_ANY_GADGET_DIE_98235", trigger_count = 0 },
	{ config_id = 1098274, name = "ANY_GADGET_DIE_98274", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_98274", action = "action_EVENT_ANY_GADGET_DIE_98274", trigger_count = 0 },
	{ config_id = 1098275, name = "ENTER_REGION_98275", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_98275", action = "action_EVENT_ENTER_REGION_98275", trigger_count = 0 },
	{ config_id = 1098287, name = "ANY_GADGET_DIE_98287", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_98287", action = "action_EVENT_ANY_GADGET_DIE_98287", trigger_count = 0 },
	{ config_id = 1098317, name = "ENTER_REGION_98317", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_98317", action = "action_EVENT_ENTER_REGION_98317", trigger_count = 0 },
	{ config_id = 1098319, name = "ENTER_REGION_98319", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_98319", action = "action_EVENT_ENTER_REGION_98319", trigger_count = 0 }
}

-- 点位
points = {
	-- 复活点
	{ config_id = 98108, pos = { x = -169.121, y = 120.000, z = -477.934 }, rot = { x = 0.000, y = 190.665, z = 0.000 }, area_id = 401 },
	-- 开始点
	{ config_id = 98110, pos = { x = -170.882, y = 120.000, z = -485.901 }, rot = { x = 0.000, y = 127.636, z = 0.000 }, area_id = 401 }
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
		gadgets = { 98001, 98030 },
		regions = { 98050, 98289, 98290, 98291, 98292, 98320 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 98002, 98004, 98008, 98012, 98013, 98014, 98015, 98016, 98017, 98020, 98021, 98023, 98024, 98025, 98026, 98027, 98028, 98029, 98031, 98032, 98033, 98034, 98035, 98036, 98037, 98038, 98039, 98040, 98041, 98042, 98043, 98044, 98045, 98046, 98047 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_98184" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 98003, 98048, 98049, 98051, 98052, 98053, 98054, 98055, 98057, 98058, 98059, 98065, 98066, 98067, 98068, 98075, 98107, 98109, 98111 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_98005" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 98056, 98069, 98070, 98071, 98072, 98073, 98074, 98076, 98077, 98078, 98079, 98080, 98081, 98082, 98083 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_98007" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 98060, 98061, 98062, 98084, 98085, 98086, 98087, 98088, 98089, 98090, 98093, 98094, 98095, 98096, 98098, 98099, 98101, 98103, 98105, 98106 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_98006" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 98063, 98064, 98091, 98092, 98097, 98102, 98104, 98112, 98114, 98115, 98116, 98117, 98118, 98119, 98120, 98121, 98122, 98123, 98124 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_98009" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 98100, 98125, 98126, 98127, 98128, 98129, 98131, 98132, 98134, 98136, 98137, 98138, 98141, 98142, 98143, 98144, 98145, 98146, 98147, 98148, 98150, 98153, 98154, 98155, 98156, 98157, 98158, 98159, 98160 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_98010" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 98130, 98133, 98139, 98140, 98161, 98162, 98163, 98164, 98165, 98166, 98168, 98169, 98170, 98171, 98174, 98175, 98176, 98177, 98178, 98179, 98180, 98181 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_98011" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 98135, 98149, 98173, 98182, 98183, 98185, 98186, 98187, 98188, 98189, 98190, 98191, 98192, 98193, 98194, 98197, 98198, 98199, 98200, 98201, 98202, 98203, 98204, 98205, 98206 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_98018" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 98113, 98152, 98207, 98208, 98209, 98210, 98211, 98212, 98213, 98214, 98215, 98216, 98217, 98218, 98219, 98220, 98221, 98222, 98223 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_98019" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 98022, 98151, 98224, 98225, 98226, 98227, 98228, 98229, 98230, 98231, 98232, 98233, 98234 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_98235" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 98236, 98237, 98238, 98239, 98240, 98241, 98242, 98243, 98244, 98245, 98246, 98247, 98248, 98249, 98250, 98251, 98252, 98253, 98254, 98255, 98256, 98257, 98258, 98259, 98260, 98261, 98262, 98263, 98264, 98265, 98266, 98267, 98268, 98269, 98270, 98271, 98272, 98273, 98276, 98277, 98293, 98294, 98295, 98296, 98297, 98298, 98299, 98300, 98301, 98302, 98303, 98304, 98305, 98306, 98307, 98308, 98309, 98310, 98311, 98312, 98313, 98314, 98315, 98316, 98318 },
		regions = { 98275, 98317, 98319 },
		triggers = { "ANY_GADGET_DIE_98274", "ENTER_REGION_98275", "ENTER_REGION_98317", "ENTER_REGION_98319" },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 98278, 98279, 98280, 98281, 98282, 98283, 98284, 98285, 98286 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_98287" },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = ,
		monsters = { },
		gadgets = { 98167, 98172 },
		regions = { 98195 },
		triggers = { "CHALLENGE_SUCCESS_98196" },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 98288 },
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
function condition_EVENT_ANY_GADGET_DIE_98005(context, evt)
	if 98041 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_98005(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001098, 4)
	
	-- 将configid为 98075 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98075, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 98003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_98006(context, evt)
	if 98077 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_98006(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001098, 6)
	
	-- 将configid为 98089 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98089, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 98062 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001098, 3)
	
	-- 将configid为 98086 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98086, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 98095 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98095, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_98007(context, evt)
	if 98075 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_98007(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001098, 5)
	
	-- 将configid为 98077 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98077, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 98056 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001098, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_98009(context, evt)
	if 98089 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_98009(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001098, 7)
	
	-- 将configid为 98091 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98091, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 98092 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001098, 4)
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 98120, 900100009, {1,2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 98123, 900100009, {2,3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 98122, 900100009, {3,4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 98121, 900100009, {4,1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_98010(context, evt)
	if 98091 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_98010(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001098, 8)
	
	-- 将configid为 98131 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98131, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 98100 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001098, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_98011(context, evt)
	if 98131 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_98011(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001098, 9)
	
	-- 将configid为 98133 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98133, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 98130 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 98165 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98165, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 98171 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98171, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001098, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_98018(context, evt)
	if 98133 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_98018(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001098, 10)
	
	-- 将configid为 98135 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98135, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 98173 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001098, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_98019(context, evt)
	if 98135 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_98019(context, evt)
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001098, 11)
	
	-- 将configid为 98113 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98113, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 98152 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 98220, 900100010, {1,2,3,4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 98223, 900100010, {2,3,4,1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 98222, 900100010, {3,4,1,2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 98221, 900100010, {4,1,2,3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001098, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_98184(context, evt)
	if 98004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_98184(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001098, 3)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 98002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 98041 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98041, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 98028 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98028, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 98029 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98029, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 98044, 900100008, {1,2,3,4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 98047, 900100008, {2,3,4,1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 98046, 900100008, {3,4,1,2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 98045, 900100008, {4,1,2,3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_SUCCESS_98196(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_98196(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 98167 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 98172 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 98195 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001098, 12)
	
	-- 删除suite13的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001098, 13)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_98235(context, evt)
	if 98113 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_98235(context, evt)
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001098, 12)
	
	-- 将configid为 98022 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98022, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 98151 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 98226, 900100011, {1,2,3,4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 98229, 900100011, {2,3,4,1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 98228, 900100011, {3,4,1,2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 98227, 900100011, {4,1,2,3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001098, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_98274(context, evt)
	if 98022 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_98274(context, evt)
	-- 添加suite13的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001098, 13)
	
	-- 将configid为 98251 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98251, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 98257 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 98241 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98241, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 98245 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98245, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001098, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_98275(context, evt)
	if evt.param1 ~= 98275 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_98275(context, evt)
	-- 将configid为 98260 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98260, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 98266 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98266, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_98287(context, evt)
	if 98251 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_98287(context, evt)
	-- 添加suite14的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001098, 14)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 98286 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199001098, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_98317(context, evt)
	if evt.param1 ~= 98317 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_98317(context, evt)
	-- 将configid为 98298 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98298, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 98303 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98303, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_98319(context, evt)
	if evt.param1 ~= 98319 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_98319(context, evt)
	-- 将configid为 98316 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98316, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 98315 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 98315, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_8/BoatRace_V2"
-- 基础信息
local base_info = {
	group_id = 199004061
}

-- DEFS_MISCS
local defs = {
        --开启操作台configID
        starter_gadget = 61001,
        --终点Region的ConfigID
        end_region = 61129,
        --限定region的configID
        play_region =61130 ,
        --限定region的suite
        play_region_suite =11 ,
        --gallery_id
        gallery_id =22003 ,

        guide_region =61089 ,

        --撞毁物件的白名单
        gadget_filter={70290310,70290311,70310352,70310351,70310350,70310408 },

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
 	      {challenge_id = 2025, aim = 2},
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
	[61001] = { config_id = 61001, gadget_id = 70350250, pos = { x = -557.850, y = 120.000, z = -120.709 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[61002] = { config_id = 61002, gadget_id = 70350277, pos = { x = -557.939, y = 120.000, z = -123.811 }, rot = { x = 0.000, y = 183.815, z = 0.000 }, level = 20, area_id = 403 },
	[61003] = { config_id = 61003, gadget_id = 70310410, pos = { x = -584.181, y = 120.000, z = -247.193 }, rot = { x = 0.000, y = 23.438, z = 0.000 }, level = 20, area_id = 403 },
	[61004] = { config_id = 61004, gadget_id = 70310410, pos = { x = -672.946, y = 120.000, z = -301.826 }, rot = { x = 0.000, y = 63.156, z = 0.000 }, level = 20, area_id = 400 },
	[61005] = { config_id = 61005, gadget_id = 70350085, pos = { x = -557.569, y = 120.000, z = -172.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[61007] = { config_id = 61007, gadget_id = 70310410, pos = { x = -750.241, y = 120.000, z = -311.600 }, rot = { x = 0.000, y = 95.512, z = 0.000 }, level = 20, area_id = 403 },
	[61008] = { config_id = 61008, gadget_id = 70310410, pos = { x = -800.934, y = 120.000, z = -289.868 }, rot = { x = 0.000, y = 310.182, z = 0.000 }, level = 20, area_id = 403 },
	[61009] = { config_id = 61009, gadget_id = 70310350, pos = { x = -572.012, y = 120.000, z = -146.835 }, rot = { x = 0.000, y = 91.745, z = 0.000 }, level = 20, area_id = 403 },
	[61010] = { config_id = 61010, gadget_id = 70310350, pos = { x = -543.433, y = 120.000, z = -155.165 }, rot = { x = 0.000, y = 277.019, z = 0.000 }, level = 20, area_id = 403 },
	[61011] = { config_id = 61011, gadget_id = 70310408, pos = { x = -543.314, y = 120.000, z = -138.453 }, rot = { x = 0.000, y = 81.493, z = 0.000 }, level = 20, area_id = 403 },
	[61012] = { config_id = 61012, gadget_id = 70310410, pos = { x = -823.367, y = 120.000, z = -238.524 }, rot = { x = 0.000, y = 349.059, z = 0.000 }, level = 20, area_id = 403 },
	[61013] = { config_id = 61013, gadget_id = 70310410, pos = { x = -837.240, y = 120.000, z = -157.367 }, rot = { x = 0.000, y = 346.797, z = 0.000 }, level = 20, area_id = 403 },
	[61014] = { config_id = 61014, gadget_id = 70350085, pos = { x = -584.514, y = 120.000, z = -246.642 }, rot = { x = 0.000, y = 346.229, z = 0.000 }, level = 20, area_id = 403 },
	[61015] = { config_id = 61015, gadget_id = 70310410, pos = { x = -862.133, y = 120.000, z = -68.556 }, rot = { x = 0.000, y = 348.999, z = 0.000 }, level = 20, area_id = 403 },
	[61016] = { config_id = 61016, gadget_id = 70310425, pos = { x = -797.660, y = 111.550, z = -252.400 }, rot = { x = 0.000, y = 69.592, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 403 },
	[61017] = { config_id = 61017, gadget_id = 70290059, pos = { x = -574.092, y = 120.000, z = -185.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[61018] = { config_id = 61018, gadget_id = 70310350, pos = { x = -550.501, y = 120.000, z = -204.608 }, rot = { x = 0.000, y = 297.389, z = 0.000 }, level = 20, area_id = 403 },
	[61019] = { config_id = 61019, gadget_id = 70220110, pos = { x = -565.582, y = 124.000, z = -212.604 }, rot = { x = 0.000, y = 20.583, z = 0.000 }, level = 20, area_id = 403 },
	[61020] = { config_id = 61020, gadget_id = 70220110, pos = { x = -563.824, y = 124.000, z = -207.924 }, rot = { x = 0.000, y = 20.583, z = 0.000 }, level = 20, area_id = 403 },
	[61021] = { config_id = 61021, gadget_id = 70310408, pos = { x = -546.481, y = 120.000, z = -187.924 }, rot = { x = 0.000, y = 93.023, z = 0.000 }, level = 20, area_id = 403 },
	[61022] = { config_id = 61022, gadget_id = 70310409, pos = { x = -588.592, y = 120.000, z = -267.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[61023] = { config_id = 61023, gadget_id = 70220110, pos = { x = -572.913, y = 124.000, z = -209.958 }, rot = { x = 0.000, y = 20.583, z = 0.000 }, level = 20, area_id = 403 },
	[61024] = { config_id = 61024, gadget_id = 70220110, pos = { x = -571.156, y = 124.000, z = -205.277 }, rot = { x = 0.000, y = 20.583, z = 0.000 }, level = 20, area_id = 403 },
	[61025] = { config_id = 61025, gadget_id = 70310350, pos = { x = -586.220, y = 120.000, z = -214.010 }, rot = { x = 0.000, y = 120.434, z = 0.000 }, level = 20, area_id = 403 },
	[61026] = { config_id = 61026, gadget_id = 70310408, pos = { x = -592.146, y = 120.000, z = -230.116 }, rot = { x = 0.000, y = 286.044, z = 0.000 }, level = 20, area_id = 403 },
	[61027] = { config_id = 61027, gadget_id = 70310350, pos = { x = -565.176, y = 120.000, z = -235.210 }, rot = { x = 0.000, y = 123.466, z = 0.000 }, level = 20, area_id = 403 },
	[61028] = { config_id = 61028, gadget_id = 70310351, pos = { x = -555.417, y = 120.000, z = -219.201 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[61029] = { config_id = 61029, gadget_id = 70220110, pos = { x = -588.592, y = 123.000, z = -267.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[61030] = { config_id = 61030, gadget_id = 70310350, pos = { x = -597.941, y = 120.000, z = -278.129 }, rot = { x = 0.000, y = 339.875, z = 0.000 }, level = 20, area_id = 403 },
	[61031] = { config_id = 61031, gadget_id = 70310408, pos = { x = -578.307, y = 120.000, z = -259.467 }, rot = { x = 0.000, y = 131.899, z = 0.000 }, level = 20, area_id = 403 },
	[61032] = { config_id = 61032, gadget_id = 70310351, pos = { x = -596.802, y = 120.000, z = -249.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[61033] = { config_id = 61033, gadget_id = 70290310, pos = { x = -619.503, y = 119.244, z = -278.481 }, rot = { x = 0.000, y = 65.004, z = 0.000 }, level = 20, area_id = 403 },
	[61034] = { config_id = 61034, gadget_id = 70290310, pos = { x = -622.396, y = 119.244, z = -272.323 }, rot = { x = 0.000, y = 245.004, z = 0.000 }, level = 20, area_id = 403 },
	[61035] = { config_id = 61035, gadget_id = 70310350, pos = { x = -641.527, y = 120.000, z = -298.511 }, rot = { x = 0.000, y = 339.875, z = 0.000 }, level = 20, area_id = 400 },
	[61036] = { config_id = 61036, gadget_id = 70310350, pos = { x = -654.540, y = 120.000, z = -278.068 }, rot = { x = 0.000, y = 155.238, z = 0.000 }, level = 20, area_id = 403 },
	[61039] = { config_id = 61039, gadget_id = 70350085, pos = { x = -672.645, y = 120.000, z = -301.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	[61041] = { config_id = 61041, gadget_id = 70310425, pos = { x = -803.863, y = 101.786, z = -278.587 }, rot = { x = 27.300, y = 141.780, z = 347.960 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 403 },
	[61042] = { config_id = 61042, gadget_id = 70310425, pos = { x = -833.508, y = 111.612, z = -267.622 }, rot = { x = 19.617, y = 261.281, z = 183.164 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 403 },
	[61044] = { config_id = 61044, gadget_id = 70310419, pos = { x = -800.670, y = 107.172, z = -257.807 }, rot = { x = 0.000, y = 86.294, z = 180.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 403 },
	[61045] = { config_id = 61045, gadget_id = 70310419, pos = { x = -845.295, y = 104.438, z = -221.475 }, rot = { x = 0.000, y = 0.000, z = 189.532 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 403 },
	[61046] = { config_id = 61046, gadget_id = 70350085, pos = { x = -749.837, y = 120.000, z = -310.814 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[61047] = { config_id = 61047, gadget_id = 70310351, pos = { x = -706.501, y = 120.000, z = -311.611 }, rot = { x = 0.000, y = 116.595, z = 0.000 }, level = 20, area_id = 400 },
	[61048] = { config_id = 61048, gadget_id = 70290059, pos = { x = -701.701, y = 120.000, z = -327.928 }, rot = { x = 0.000, y = 339.630, z = 0.000 }, level = 20, area_id = 400 },
	[61049] = { config_id = 61049, gadget_id = 70290059, pos = { x = -705.291, y = 120.000, z = -295.731 }, rot = { x = 0.000, y = 180.300, z = 0.000 }, level = 20, area_id = 403 },
	[61050] = { config_id = 61050, gadget_id = 70290060, pos = { x = -704.198, y = 124.256, z = -319.252 }, rot = { x = 0.000, y = 76.512, z = 0.000 }, level = 20, area_id = 400 },
	[61051] = { config_id = 61051, gadget_id = 70290060, pos = { x = -705.953, y = 124.087, z = -304.604 }, rot = { x = 0.000, y = 284.397, z = 0.000 }, level = 20, area_id = 403 },
	[61052] = { config_id = 61052, gadget_id = 70220110, pos = { x = -710.827, y = 120.000, z = -314.644 }, rot = { x = 0.000, y = 122.093, z = 0.000 }, level = 20, area_id = 400 },
	[61053] = { config_id = 61053, gadget_id = 70220110, pos = { x = -706.777, y = 120.000, z = -317.184 }, rot = { x = 0.000, y = 73.796, z = 0.000 }, level = 20, area_id = 400 },
	[61054] = { config_id = 61054, gadget_id = 70220110, pos = { x = -702.074, y = 120.000, z = -315.817 }, rot = { x = 0.000, y = 24.830, z = 0.000 }, level = 20, area_id = 400 },
	[61055] = { config_id = 61055, gadget_id = 70220110, pos = { x = -700.330, y = 120.000, z = -311.090 }, rot = { x = 0.000, y = 24.830, z = 0.000 }, level = 20, area_id = 400 },
	[61056] = { config_id = 61056, gadget_id = 70220110, pos = { x = -703.304, y = 120.000, z = -306.361 }, rot = { x = 0.000, y = 271.297, z = 0.000 }, level = 20, area_id = 403 },
	[61057] = { config_id = 61057, gadget_id = 70220110, pos = { x = -708.201, y = 120.000, z = -306.250 }, rot = { x = 0.000, y = 271.297, z = 0.000 }, level = 20, area_id = 403 },
	[61058] = { config_id = 61058, gadget_id = 70220110, pos = { x = -711.534, y = 120.000, z = -309.952 }, rot = { x = 0.000, y = 271.297, z = 0.000 }, level = 20, area_id = 403 },
	[61059] = { config_id = 61059, gadget_id = 70310350, pos = { x = -681.330, y = 120.000, z = -321.660 }, rot = { x = 0.000, y = 326.374, z = 0.000 }, level = 20, area_id = 400 },
	[61060] = { config_id = 61060, gadget_id = 70310423, pos = { x = -847.237, y = 111.094, z = -177.086 }, rot = { x = 355.300, y = 341.870, z = 339.600 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 403 },
	[61061] = { config_id = 61061, gadget_id = 70310424, pos = { x = -832.660, y = 110.596, z = -269.106 }, rot = { x = 6.026, y = 260.018, z = 0.000 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 403 },
	[61062] = { config_id = 61062, gadget_id = 70310420, pos = { x = -839.635, y = 112.119, z = -221.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 403 },
	[61063] = { config_id = 61063, gadget_id = 70310421, pos = { x = -842.344, y = 110.329, z = -223.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 403 },
	[61065] = { config_id = 61065, gadget_id = 70310350, pos = { x = -789.831, y = 120.000, z = -315.054 }, rot = { x = 0.000, y = 32.726, z = 0.000 }, level = 20, area_id = 403 },
	[61066] = { config_id = 61066, gadget_id = 70310408, pos = { x = -773.592, y = 120.000, z = -320.609 }, rot = { x = 0.000, y = 188.360, z = 0.000 }, level = 20, area_id = 403 },
	[61067] = { config_id = 61067, gadget_id = 70310350, pos = { x = -772.239, y = 120.000, z = -292.558 }, rot = { x = 0.000, y = 32.726, z = 0.000 }, level = 20, area_id = 403 },
	[61068] = { config_id = 61068, gadget_id = 70310408, pos = { x = -756.001, y = 120.000, z = -298.112 }, rot = { x = 0.000, y = 188.360, z = 0.000 }, level = 20, area_id = 403 },
	[61069] = { config_id = 61069, gadget_id = 70310419, pos = { x = -803.211, y = 110.588, z = -219.397 }, rot = { x = 0.322, y = 358.079, z = 179.449 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 403 },
	[61070] = { config_id = 61070, gadget_id = 70310421, pos = { x = -850.016, y = 108.496, z = -177.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	[61071] = { config_id = 61071, gadget_id = 70350085, pos = { x = -801.021, y = 120.000, z = -289.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[61072] = { config_id = 61072, gadget_id = 70310421, pos = { x = -822.152, y = 108.496, z = -179.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	[61073] = { config_id = 61073, gadget_id = 70310421, pos = { x = -845.153, y = 110.322, z = -178.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	[61074] = { config_id = 61074, gadget_id = 70220110, pos = { x = -827.869, y = 120.000, z = -264.565 }, rot = { x = 0.000, y = 192.601, z = 0.000 }, level = 20, area_id = 403 },
	[61075] = { config_id = 61075, gadget_id = 70220110, pos = { x = -828.938, y = 120.000, z = -269.345 }, rot = { x = 0.000, y = 192.601, z = 0.000 }, level = 20, area_id = 403 },
	[61076] = { config_id = 61076, gadget_id = 70220110, pos = { x = -825.960, y = 120.000, z = -273.340 }, rot = { x = 0.000, y = 192.601, z = 0.000 }, level = 20, area_id = 403 },
	[61078] = { config_id = 61078, gadget_id = 70310419, pos = { x = -849.596, y = 102.795, z = -183.275 }, rot = { x = 0.000, y = 86.294, z = 180.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 403 },
	[61079] = { config_id = 61079, gadget_id = 70310419, pos = { x = -812.775, y = 108.540, z = -173.650 }, rot = { x = 0.000, y = 86.294, z = 180.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 403 },
	[61080] = { config_id = 61080, gadget_id = 70310421, pos = { x = -819.386, y = 111.571, z = -180.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 403 },
	[61081] = { config_id = 61081, gadget_id = 70310426, pos = { x = -831.208, y = 107.200, z = -138.012 }, rot = { x = 79.244, y = 3.339, z = 351.191 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 403 },
	[61082] = { config_id = 61082, gadget_id = 70350085, pos = { x = -822.389, y = 120.000, z = -239.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[61083] = { config_id = 61083, gadget_id = 70290311, pos = { x = -826.243, y = 120.000, z = -221.116 }, rot = { x = 0.000, y = 350.361, z = 0.000 }, level = 20, area_id = 403 },
	[61085] = { config_id = 61085, gadget_id = 70220110, pos = { x = -836.951, y = 126.294, z = -177.344 }, rot = { x = 23.817, y = 105.306, z = 353.529 }, level = 20, area_id = 403 },
	[61086] = { config_id = 61086, gadget_id = 70220110, pos = { x = -832.539, y = 124.275, z = -178.551 }, rot = { x = 23.817, y = 105.307, z = 353.529 }, level = 20, area_id = 403 },
	[61087] = { config_id = 61087, gadget_id = 70220110, pos = { x = -828.127, y = 122.256, z = -179.759 }, rot = { x = 23.817, y = 105.307, z = 353.529 }, level = 20, area_id = 403 },
	[61088] = { config_id = 61088, gadget_id = 70310419, pos = { x = -844.117, y = 105.962, z = -111.702 }, rot = { x = 0.000, y = 141.738, z = 180.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 403 },
	[61092] = { config_id = 61092, gadget_id = 70350085, pos = { x = -836.448, y = 120.000, z = -157.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[61094] = { config_id = 61094, gadget_id = 70220110, pos = { x = -837.517, y = 120.000, z = -110.752 }, rot = { x = 0.000, y = 164.663, z = 0.000 }, level = 20, area_id = 403 },
	[61095] = { config_id = 61095, gadget_id = 70220110, pos = { x = -836.307, y = 120.000, z = -115.164 }, rot = { x = 0.000, y = 164.663, z = 0.000 }, level = 20, area_id = 403 },
	[61096] = { config_id = 61096, gadget_id = 70220110, pos = { x = -835.097, y = 120.000, z = -119.575 }, rot = { x = 0.000, y = 164.663, z = 0.000 }, level = 20, area_id = 403 },
	[61097] = { config_id = 61097, gadget_id = 70290310, pos = { x = -851.727, y = 119.244, z = -91.327 }, rot = { x = 0.000, y = 347.076, z = 0.000 }, level = 20, area_id = 403 },
	[61098] = { config_id = 61098, gadget_id = 70290310, pos = { x = -858.354, y = 119.244, z = -92.868 }, rot = { x = 0.000, y = 167.076, z = 0.000 }, level = 20, area_id = 403 },
	[61099] = { config_id = 61099, gadget_id = 70310350, pos = { x = -866.963, y = 120.000, z = -107.652 }, rot = { x = 0.000, y = 84.036, z = 0.000 }, level = 20, area_id = 403 },
	[61100] = { config_id = 61100, gadget_id = 70310350, pos = { x = -838.708, y = 120.000, z = -90.351 }, rot = { x = 0.000, y = 258.675, z = 0.000 }, level = 20, area_id = 403 },
	[61103] = { config_id = 61103, gadget_id = 70350085, pos = { x = -863.373, y = 120.000, z = -68.058 }, rot = { x = 0.000, y = 356.675, z = 0.000 }, level = 20, area_id = 403 },
	[61113] = { config_id = 61113, gadget_id = 70690013, pos = { x = -875.776, y = 120.000, z = -11.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[61118] = { config_id = 61118, gadget_id = 70690001, pos = { x = -870.433, y = 167.963, z = 3.629 }, rot = { x = 355.952, y = 19.621, z = 0.000 }, level = 20, area_id = 403 },
	[61119] = { config_id = 61119, gadget_id = 70690001, pos = { x = -867.760, y = 168.526, z = 11.125 }, rot = { x = 345.596, y = 21.695, z = 0.000 }, level = 20, area_id = 403 },
	[61120] = { config_id = 61120, gadget_id = 70690001, pos = { x = -864.899, y = 170.514, z = 18.317 }, rot = { x = 335.213, y = 22.023, z = 0.000 }, level = 20, area_id = 403 },
	[61121] = { config_id = 61121, gadget_id = 70690001, pos = { x = -862.181, y = 173.861, z = 25.037 }, rot = { x = 320.887, y = 22.189, z = 0.000 }, level = 20, area_id = 403 },
	[61122] = { config_id = 61122, gadget_id = 70690001, pos = { x = -859.846, y = 178.889, z = 30.763 }, rot = { x = 301.090, y = 22.291, z = 0.000 }, level = 20, area_id = 403 },
	[61123] = { config_id = 61123, gadget_id = 70690001, pos = { x = -858.288, y = 185.698, z = 34.562 }, rot = { x = 280.096, y = 22.352, z = 0.000 }, level = 20, area_id = 403 },
	[61124] = { config_id = 61124, gadget_id = 70690001, pos = { x = -857.757, y = 193.535, z = 35.852 }, rot = { x = 270.114, y = 22.192, z = 0.000 }, level = 20, area_id = 403 },
	[61125] = { config_id = 61125, gadget_id = 70690001, pos = { x = -857.751, y = 201.534, z = 35.868 }, rot = { x = 270.114, y = 22.192, z = 0.000 }, level = 20, area_id = 403 },
	[61126] = { config_id = 61126, gadget_id = 70360024, pos = { x = -858.161, y = 207.195, z = 35.552 }, rot = { x = 0.000, y = 19.766, z = 0.000 }, level = 20, area_id = 403 },
	[61127] = { config_id = 61127, gadget_id = 70350085, pos = { x = -858.161, y = 207.195, z = 35.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[61131] = { config_id = 61131, gadget_id = 70310426, pos = { x = -840.160, y = 115.800, z = -221.300 }, rot = { x = 48.138, y = 74.856, z = 358.693 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 403 },
	[61132] = { config_id = 61132, gadget_id = 70310426, pos = { x = -820.600, y = 114.900, z = -180.800 }, rot = { x = 332.258, y = 75.250, z = 0.261 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 403 },
	[61133] = { config_id = 61133, gadget_id = 70310427, pos = { x = -814.500, y = 116.000, z = -217.200 }, rot = { x = 0.000, y = 0.000, z = 27.728 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 403 },
	[61134] = { config_id = 61134, gadget_id = 70310428, pos = { x = -838.170, y = 105.340, z = -114.670 }, rot = { x = 0.000, y = 345.674, z = 344.588 }, level = 20, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 403 },
	[61135] = { config_id = 61135, gadget_id = 70310410, pos = { x = -557.936, y = 120.000, z = -172.276 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 403 }
}

-- 区域
regions = {
	-- 教学区域
	[61089] = { config_id = 61089, shape = RegionShape.SPHERE, radius = 5, pos = { x = -558.200, y = 120.000, z = -120.648 }, area_id = 403 },
	[61129] = { config_id = 61129, shape = RegionShape.SPHERE, radius = 3, pos = { x = -858.161, y = 207.195, z = 35.552 }, area_id = 403 },
	[61130] = { config_id = 61130, shape = RegionShape.POLYGON, pos = { x = -711.604, y = 200.000, z = -96.885 }, height = 200.000, point_array = { { x = -913.103, y = -409.796 }, { x = -975.015, y = 168.931 }, { x = -564.177, y = 216.027 }, { x = -448.194, y = -331.780 } }, area_id = 403 }
}

-- 触发器
triggers = {
	{ config_id = 1061006, name = "ANY_GADGET_DIE_61006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_61006", action = "action_EVENT_ANY_GADGET_DIE_61006", trigger_count = 0 },
	{ config_id = 1061040, name = "ANY_GADGET_DIE_61040", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_61040", action = "action_EVENT_ANY_GADGET_DIE_61040", trigger_count = 0 },
	{ config_id = 1061043, name = "ANY_GADGET_DIE_61043", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_61043", action = "action_EVENT_ANY_GADGET_DIE_61043", trigger_count = 0 },
	{ config_id = 1061064, name = "ANY_GADGET_DIE_61064", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_61064", action = "action_EVENT_ANY_GADGET_DIE_61064", trigger_count = 0 },
	{ config_id = 1061077, name = "ANY_GADGET_DIE_61077", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_61077", action = "action_EVENT_ANY_GADGET_DIE_61077", trigger_count = 0 },
	{ config_id = 1061084, name = "ANY_GADGET_DIE_61084", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_61084", action = "action_EVENT_ANY_GADGET_DIE_61084", trigger_count = 0 },
	{ config_id = 1061093, name = "ANY_GADGET_DIE_61093", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_61093", action = "action_EVENT_ANY_GADGET_DIE_61093", trigger_count = 0 },
	{ config_id = 1061111, name = "ANY_GADGET_DIE_61111", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_61111", action = "action_EVENT_ANY_GADGET_DIE_61111", trigger_count = 0 },
	{ config_id = 1061128, name = "CHALLENGE_SUCCESS_61128", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "condition_EVENT_CHALLENGE_SUCCESS_61128", action = "action_EVENT_CHALLENGE_SUCCESS_61128", trigger_count = 0 }
}

-- 点位
points = {
	-- 浪船创生点
	{ config_id = 61037, pos = { x = -557.770, y = 120.000, z = -114.432 }, rot = { x = 0.000, y = 179.964, z = 0.000 }, area_id = 403 },
	-- 玩家复活点
	{ config_id = 61038, pos = { x = -552.408, y = 120.000, z = -109.758 }, rot = { x = 0.000, y = 226.618, z = 0.000 }, area_id = 403 }
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
		gadgets = { 61001, 61002 },
		regions = { 61089 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 61003, 61005, 61009, 61010, 61011, 61016, 61017, 61018, 61019, 61020, 61021, 61023, 61024, 61025, 61026, 61027, 61028, 61041, 61042, 61044, 61045, 61060, 61061, 61062, 61063, 61069, 61070, 61072, 61073, 61078, 61079, 61080, 61081, 61088, 61131, 61132, 61133, 61134, 61135 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_61006" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 61004, 61014, 61022, 61029, 61030, 61031, 61032, 61033, 61034, 61035, 61036 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_61040" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 61007, 61039, 61047, 61048, 61049, 61050, 61051, 61052, 61053, 61054, 61055, 61056, 61057, 61058, 61059 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_61043" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 61008, 61046, 61065, 61066, 61067, 61068 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_61064" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 61012, 61071, 61074, 61075, 61076 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_61077" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 61013, 61082, 61083, 61085, 61086, 61087 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_61084" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 61015, 61092, 61094, 61095, 61096, 61097, 61098, 61099, 61100 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_61093" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 61103, 61113 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_61111" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 61118, 61119, 61120, 61121, 61122, 61123, 61124, 61125, 61126, 61127 },
		regions = { 61129 },
		triggers = { "CHALLENGE_SUCCESS_61128" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 61130 },
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
function condition_EVENT_ANY_GADGET_DIE_61006(context, evt)
	if 61135 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_61006(context, evt)
	-- 将configid为 61003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 61003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004061, 3)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 61005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_61040(context, evt)
	if 61003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_61040(context, evt)
	-- 将configid为 61004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 61004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004061, 4)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 61014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 61033 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 61033, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 61034 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 61034, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_61043(context, evt)
	if 61004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_61043(context, evt)
	-- 将configid为 61007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 61007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004061, 5)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 61039 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_61064(context, evt)
	if 61007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_61064(context, evt)
	-- 将configid为 61008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 61008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004061, 6)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004061, 3)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 61046 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_61077(context, evt)
	if 61008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_61077(context, evt)
	-- 将configid为 61012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 61012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004061, 7)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004061, 4)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 61071 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_61084(context, evt)
	if 61012 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_61084(context, evt)
	-- 将configid为 61013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 61013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004061, 8)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004061, 5)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 61082 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 61083 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 61083, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_61093(context, evt)
	if 61013 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_61093(context, evt)
	-- 将configid为 61015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 61015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004061, 9)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004061, 6)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 61092 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 61097 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 61097, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 61098 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 61098, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_61111(context, evt)
	if 61015 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_61111(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 61103 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199004061, 10)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004061, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_SUCCESS_61128(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_61128(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 61126 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 61127 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004061, 9)
	
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004061, 10)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199004061, 8)
	
	return 0
end

require "V2_8/BoatRace_V2"
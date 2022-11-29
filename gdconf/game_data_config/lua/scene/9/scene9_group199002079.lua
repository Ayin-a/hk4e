-- 基础信息
local base_info = {
	group_id = 199002079
}

-- DEFS_MISCS
local defs = {
        --开启操作台configID
        starter_gadget = 79002,
        --终点Region的ConfigID
        end_region = 79005,
        --限定region的configID
        play_region = 79006 ,
        --限定region的suite
        play_region_suite = 10 ,
        --gallery_id
        gallery_id =22006,

        --撞毁物件的白名单
        gadget_filter={70290310,70290311,70310352,70310351,70310350,70310408 },

        guide_region =79090 ,

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
		{challenge_id = 2019, aim = 140},                
		{challenge_id = 2029, aim = 100},
                        
	},

        child_count_challenge = 
        {
 	      {challenge_id = 2025, aim = 6},
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
	[79001] = { config_id = 79001, gadget_id = 70310410, pos = { x = 70.192, y = 120.000, z = -468.091 }, rot = { x = 0.000, y = 113.852, z = 0.000 }, level = 20, area_id = 401 },
	-- 启动Gadget
	[79002] = { config_id = 79002, gadget_id = 70350250, pos = { x = 64.195, y = 120.000, z = -277.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 开始路径闪光
	[79003] = { config_id = 79003, gadget_id = 70350085, pos = { x = 49.266, y = 121.297, z = -286.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	-- 重点目标点visual
	[79004] = { config_id = 79004, gadget_id = 70360025, pos = { x = -102.735, y = 120.000, z = -726.211 }, rot = { x = 0.000, y = 45.310, z = 0.000 }, level = 20, area_id = 400 },
	[79008] = { config_id = 79008, gadget_id = 70310351, pos = { x = -17.119, y = 120.000, z = -283.478 }, rot = { x = 0.000, y = 116.182, z = 0.000 }, level = 20, area_id = 401 },
	[79009] = { config_id = 79009, gadget_id = 70310422, pos = { x = 6.757, y = 111.847, z = -303.810 }, rot = { x = 1.612, y = 329.837, z = 282.936 }, level = 20, area_id = 401 },
	[79010] = { config_id = 79010, gadget_id = 70310350, pos = { x = 43.472, y = 119.392, z = -271.912 }, rot = { x = 0.000, y = 160.267, z = 0.000 }, level = 20, area_id = 401 },
	[79011] = { config_id = 79011, gadget_id = 70310350, pos = { x = 28.806, y = 119.509, z = -274.041 }, rot = { x = 0.000, y = 1.796, z = 0.000 }, level = 20, area_id = 401 },
	[79012] = { config_id = 79012, gadget_id = 70310350, pos = { x = 40.480, y = 119.423, z = -305.954 }, rot = { x = 0.000, y = 167.700, z = 0.000 }, level = 20, area_id = 401 },
	[79013] = { config_id = 79013, gadget_id = 70310350, pos = { x = 7.010, y = 119.461, z = -278.811 }, rot = { x = 0.000, y = 184.004, z = 0.000 }, level = 20, area_id = 401 },
	[79014] = { config_id = 79014, gadget_id = 70290059, pos = { x = 28.535, y = 120.000, z = -311.804 }, rot = { x = 0.000, y = 114.261, z = 0.000 }, level = 20, area_id = 401 },
	[79015] = { config_id = 79015, gadget_id = 70290060, pos = { x = 13.390, y = 124.350, z = -301.978 }, rot = { x = 0.000, y = 32.383, z = 0.000 }, level = 20, area_id = 401 },
	[79016] = { config_id = 79016, gadget_id = 70290060, pos = { x = 21.473, y = 125.378, z = -307.028 }, rot = { x = 0.000, y = 32.383, z = 344.255 }, level = 20, area_id = 401 },
	[79017] = { config_id = 79017, gadget_id = 70310350, pos = { x = -1.890, y = 119.454, z = -453.118 }, rot = { x = 0.000, y = 210.396, z = 0.000 }, level = 20, area_id = 401 },
	[79018] = { config_id = 79018, gadget_id = 70310350, pos = { x = -43.166, y = 119.424, z = -335.742 }, rot = { x = 0.000, y = 83.238, z = 0.000 }, level = 20, area_id = 401 },
	[79019] = { config_id = 79019, gadget_id = 70310350, pos = { x = -38.115, y = 119.444, z = -357.022 }, rot = { x = 0.000, y = 82.116, z = 0.000 }, level = 20, area_id = 401 },
	[79020] = { config_id = 79020, gadget_id = 70220110, pos = { x = 9.867, y = 120.699, z = -287.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79021] = { config_id = 79021, gadget_id = 70290060, pos = { x = -25.436, y = 124.176, z = -301.713 }, rot = { x = 0.000, y = 218.073, z = 0.000 }, level = 20, area_id = 401 },
	[79022] = { config_id = 79022, gadget_id = 70220110, pos = { x = 2.200, y = 120.699, z = -288.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79023] = { config_id = 79023, gadget_id = 70220110, pos = { x = -12.601, y = 120.699, z = -293.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79024] = { config_id = 79024, gadget_id = 70220110, pos = { x = -19.781, y = 120.699, z = -297.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79025] = { config_id = 79025, gadget_id = 70220110, pos = { x = -25.793, y = 120.699, z = -303.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79026] = { config_id = 79026, gadget_id = 70310422, pos = { x = 4.031, y = 109.492, z = -302.209 }, rot = { x = 337.162, y = 205.719, z = 319.817 }, level = 20, area_id = 401 },
	[79027] = { config_id = 79027, gadget_id = 70310422, pos = { x = -3.419, y = 120.690, z = -405.588 }, rot = { x = 341.331, y = 301.951, z = 311.829 }, level = 20, area_id = 401 },
	[79028] = { config_id = 79028, gadget_id = 70310422, pos = { x = -2.745, y = 116.694, z = -400.238 }, rot = { x = 4.356, y = 224.023, z = 322.878 }, level = 20, area_id = 401 },
	[79029] = { config_id = 79029, gadget_id = 70310351, pos = { x = -11.156, y = 120.000, z = -382.131 }, rot = { x = 0.000, y = 34.132, z = 0.000 }, level = 20, area_id = 401 },
	[79030] = { config_id = 79030, gadget_id = 70290059, pos = { x = -29.314, y = 120.000, z = -380.186 }, rot = { x = 0.000, y = 196.590, z = 0.000 }, level = 20, area_id = 401 },
	[79032] = { config_id = 79032, gadget_id = 70310410, pos = { x = 142.671, y = 120.007, z = -501.420 }, rot = { x = 0.295, y = 299.426, z = 359.703 }, level = 20, area_id = 401 },
	[79033] = { config_id = 79033, gadget_id = 70310410, pos = { x = 204.590, y = 120.000, z = -587.699 }, rot = { x = 0.000, y = 4.292, z = 0.000 }, level = 20, area_id = 401 },
	[79034] = { config_id = 79034, gadget_id = 70290059, pos = { x = 4.866, y = 120.000, z = -373.802 }, rot = { x = 0.000, y = 9.377, z = 0.000 }, level = 20, area_id = 401 },
	[79036] = { config_id = 79036, gadget_id = 70310410, pos = { x = 181.701, y = 120.000, z = -642.704 }, rot = { x = 0.000, y = 30.604, z = 0.000 }, level = 20, area_id = 401 },
	-- 开始路径闪光
	[79037] = { config_id = 79037, gadget_id = 70350085, pos = { x = -14.200, y = 120.000, z = -364.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79038] = { config_id = 79038, gadget_id = 70310350, pos = { x = -32.776, y = 120.000, z = -391.801 }, rot = { x = 0.000, y = 105.079, z = 0.000 }, level = 20, area_id = 401 },
	[79039] = { config_id = 79039, gadget_id = 70310350, pos = { x = -33.813, y = 120.000, z = -409.206 }, rot = { x = 0.000, y = 258.484, z = 0.000 }, level = 20, area_id = 401 },
	[79040] = { config_id = 79040, gadget_id = 70290060, pos = { x = -3.563, y = 124.466, z = -378.835 }, rot = { x = 0.000, y = 331.314, z = 0.000 }, level = 20, area_id = 401 },
	[79041] = { config_id = 79041, gadget_id = 70290060, pos = { x = -18.916, y = 124.466, z = -381.700 }, rot = { x = 0.000, y = 191.277, z = 0.000 }, level = 20, area_id = 401 },
	[79044] = { config_id = 79044, gadget_id = 70310410, pos = { x = -26.540, y = 120.000, z = -695.509 }, rot = { x = 0.000, y = 67.388, z = 0.000 }, level = 20, area_id = 401 },
	[79045] = { config_id = 79045, gadget_id = 70290311, pos = { x = -1.146, y = 119.227, z = -383.391 }, rot = { x = 0.000, y = 141.484, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 401 },
	[79046] = { config_id = 79046, gadget_id = 70220110, pos = { x = 31.184, y = 121.485, z = -418.586 }, rot = { x = 0.000, y = 14.867, z = 0.000 }, level = 20, area_id = 401 },
	[79047] = { config_id = 79047, gadget_id = 70290059, pos = { x = -20.275, y = 120.000, z = -427.583 }, rot = { x = 0.000, y = 221.606, z = 0.000 }, level = 20, area_id = 401 },
	[79048] = { config_id = 79048, gadget_id = 70220110, pos = { x = 171.850, y = 120.215, z = -500.173 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79049] = { config_id = 79049, gadget_id = 70290059, pos = { x = 174.315, y = 120.000, z = -514.116 }, rot = { x = 0.000, y = 233.528, z = 0.000 }, level = 20, area_id = 401 },
	[79050] = { config_id = 79050, gadget_id = 70310350, pos = { x = 111.437, y = 119.784, z = -471.238 }, rot = { x = 0.000, y = 26.843, z = 0.000 }, level = 20, area_id = 401 },
	[79052] = { config_id = 79052, gadget_id = 70290059, pos = { x = -111.208, y = 120.000, z = -715.441 }, rot = { x = 0.000, y = 153.654, z = 0.000 }, level = 20, area_id = 400 },
	-- 开始路径闪光
	[79053] = { config_id = 79053, gadget_id = 70350085, pos = { x = 71.065, y = 120.000, z = -469.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79054] = { config_id = 79054, gadget_id = 70290059, pos = { x = -99.237, y = 120.000, z = -738.999 }, rot = { x = 0.000, y = 228.895, z = 0.000 }, level = 20, area_id = 400 },
	[79055] = { config_id = 79055, gadget_id = 70310350, pos = { x = 151.706, y = 119.757, z = -486.204 }, rot = { x = 0.000, y = 17.903, z = 0.000 }, level = 20, area_id = 401 },
	[79056] = { config_id = 79056, gadget_id = 70290059, pos = { x = 170.690, y = 120.000, z = -490.531 }, rot = { x = 0.000, y = 358.937, z = 0.000 }, level = 20, area_id = 401 },
	[79057] = { config_id = 79057, gadget_id = 70290059, pos = { x = 203.402, y = 120.000, z = -514.493 }, rot = { x = 0.000, y = 234.920, z = 0.000 }, level = 20, area_id = 401 },
	[79058] = { config_id = 79058, gadget_id = 70310350, pos = { x = 68.323, y = 119.411, z = -485.650 }, rot = { x = 358.924, y = 213.552, z = 0.087 }, level = 20, area_id = 401 },
	[79059] = { config_id = 79059, gadget_id = 70310350, pos = { x = 50.284, y = 119.368, z = -423.249 }, rot = { x = 0.000, y = 68.312, z = 0.000 }, level = 20, area_id = 401 },
	[79060] = { config_id = 79060, gadget_id = 70310350, pos = { x = 71.741, y = 118.956, z = -452.005 }, rot = { x = 0.000, y = 202.698, z = 0.000 }, level = 20, area_id = 401 },
	[79061] = { config_id = 79061, gadget_id = 70290311, pos = { x = 93.993, y = 120.035, z = -487.766 }, rot = { x = 0.000, y = 293.946, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 401 },
	[79062] = { config_id = 79062, gadget_id = 70310351, pos = { x = 188.551, y = 119.866, z = -517.248 }, rot = { x = 0.000, y = 347.067, z = 0.000 }, level = 20, area_id = 401 },
	[79063] = { config_id = 79063, gadget_id = 70310350, pos = { x = 138.351, y = 120.279, z = -518.765 }, rot = { x = 0.000, y = 36.249, z = 0.000 }, level = 20, area_id = 401 },
	[79064] = { config_id = 79064, gadget_id = 70290311, pos = { x = 98.223, y = 120.057, z = -477.777 }, rot = { x = 0.000, y = 293.946, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 401 },
	[79065] = { config_id = 79065, gadget_id = 70220110, pos = { x = 28.918, y = 121.485, z = -420.444 }, rot = { x = 0.000, y = 14.867, z = 0.000 }, level = 20, area_id = 401 },
	[79066] = { config_id = 79066, gadget_id = 70310350, pos = { x = 91.509, y = 119.580, z = -494.775 }, rot = { x = 0.000, y = 200.372, z = 0.000 }, level = 20, area_id = 401 },
	[79067] = { config_id = 79067, gadget_id = 70290060, pos = { x = 170.169, y = 124.505, z = -500.148 }, rot = { x = 0.000, y = 267.395, z = 0.000 }, level = 20, area_id = 401 },
	[79068] = { config_id = 79068, gadget_id = 70310351, pos = { x = 170.009, y = 120.000, z = -507.839 }, rot = { x = 0.000, y = 347.067, z = 0.000 }, level = 20, area_id = 401 },
	[79069] = { config_id = 79069, gadget_id = 70310350, pos = { x = 3.754, y = 119.362, z = -426.044 }, rot = { x = 0.000, y = 45.689, z = 0.000 }, level = 20, area_id = 401 },
	[79070] = { config_id = 79070, gadget_id = 70310350, pos = { x = 55.915, y = 119.409, z = -438.171 }, rot = { x = 0.000, y = 73.274, z = 0.000 }, level = 20, area_id = 401 },
	[79071] = { config_id = 79071, gadget_id = 70290059, pos = { x = 26.451, y = 120.000, z = -435.595 }, rot = { x = 0.000, y = 225.723, z = 0.000 }, level = 20, area_id = 401 },
	-- 开始路径闪光
	[79072] = { config_id = 79072, gadget_id = 70350085, pos = { x = 142.598, y = 120.000, z = -502.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79073] = { config_id = 79073, gadget_id = 70310409, pos = { x = 96.419, y = 120.000, z = -637.540 }, rot = { x = 0.000, y = 351.859, z = 0.000 }, level = 20, area_id = 401 },
	[79074] = { config_id = 79074, gadget_id = 70310409, pos = { x = 77.297, y = 120.000, z = -647.733 }, rot = { x = 0.000, y = 351.859, z = 0.000 }, level = 20, area_id = 401 },
	[79075] = { config_id = 79075, gadget_id = 70380004, pos = { x = 62.468, y = 120.000, z = -628.810 }, rot = { x = 0.000, y = 93.347, z = 0.000 }, level = 20, state = GadgetState.GearStart, route_id = 900200012, area_id = 401 },
	[79076] = { config_id = 79076, gadget_id = 70310350, pos = { x = 228.388, y = 119.280, z = -536.212 }, rot = { x = 0.000, y = 269.087, z = 0.000 }, level = 20, area_id = 401 },
	[79077] = { config_id = 79077, gadget_id = 70310350, pos = { x = 225.539, y = 119.009, z = -552.443 }, rot = { x = 0.000, y = 117.811, z = 0.000 }, level = 20, area_id = 401 },
	[79078] = { config_id = 79078, gadget_id = 70310350, pos = { x = 168.817, y = 119.208, z = -539.868 }, rot = { x = 0.000, y = 238.220, z = 0.000 }, level = 20, area_id = 401 },
	[79079] = { config_id = 79079, gadget_id = 70310350, pos = { x = 178.581, y = 119.446, z = -553.349 }, rot = { x = 0.000, y = 59.862, z = 0.000 }, level = 20, area_id = 401 },
	[79080] = { config_id = 79080, gadget_id = 70290059, pos = { x = 157.159, y = 120.000, z = -528.592 }, rot = { x = 0.000, y = 266.826, z = 0.000 }, level = 20, area_id = 401 },
	[79081] = { config_id = 79081, gadget_id = 70310351, pos = { x = 169.981, y = 120.000, z = -518.915 }, rot = { x = 0.000, y = 328.351, z = 0.000 }, level = 20, area_id = 401 },
	[79082] = { config_id = 79082, gadget_id = 70290060, pos = { x = 163.819, y = 124.370, z = -522.747 }, rot = { x = 0.000, y = 144.203, z = 0.000 }, level = 20, area_id = 401 },
	[79083] = { config_id = 79083, gadget_id = 70290060, pos = { x = 195.241, y = 124.059, z = -516.643 }, rot = { x = 0.000, y = 358.042, z = 0.000 }, level = 20, area_id = 401 },
	-- 开始路径闪光
	[79086] = { config_id = 79086, gadget_id = 70350085, pos = { x = 204.985, y = 120.000, z = -588.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79087] = { config_id = 79087, gadget_id = 70290059, pos = { x = 26.705, y = 120.000, z = -459.082 }, rot = { x = 0.000, y = 179.433, z = 0.000 }, level = 20, area_id = 401 },
	[79088] = { config_id = 79088, gadget_id = 70310409, pos = { x = 195.900, y = 120.000, z = -535.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79089] = { config_id = 79089, gadget_id = 70310409, pos = { x = 125.524, y = 120.000, z = -654.288 }, rot = { x = 0.000, y = 351.859, z = 0.000 }, level = 20, area_id = 401 },
	[79091] = { config_id = 79091, gadget_id = 70350277, pos = { x = 60.357, y = 120.000, z = -279.317 }, rot = { x = 0.000, y = 247.762, z = 0.000 }, level = 1, area_id = 401 },
	-- 开始路径闪光
	[79092] = { config_id = 79092, gadget_id = 70350085, pos = { x = 183.750, y = 121.188, z = -642.173 }, rot = { x = 0.000, y = 345.807, z = 0.000 }, level = 20, area_id = 401 },
	-- 开始路径闪光
	[79093] = { config_id = 79093, gadget_id = 70350085, pos = { x = -102.735, y = 120.000, z = -726.211 }, rot = { x = 0.000, y = 32.326, z = 0.000 }, level = 20, area_id = 400 },
	[79095] = { config_id = 79095, gadget_id = 70290310, pos = { x = 166.074, y = 119.378, z = -524.926 }, rot = { x = 0.000, y = 141.149, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 401 },
	[79096] = { config_id = 79096, gadget_id = 70290310, pos = { x = 191.338, y = 119.522, z = -620.322 }, rot = { x = 0.000, y = 214.168, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 401 },
	[79097] = { config_id = 79097, gadget_id = 70310350, pos = { x = 211.170, y = 120.000, z = -640.948 }, rot = { x = 0.000, y = 154.361, z = 0.000 }, level = 20, area_id = 401 },
	[79098] = { config_id = 79098, gadget_id = 70310350, pos = { x = 175.799, y = 120.000, z = -679.806 }, rot = { x = 0.000, y = 317.680, z = 0.000 }, level = 20, area_id = 401 },
	[79099] = { config_id = 79099, gadget_id = 70290059, pos = { x = 135.959, y = 120.095, z = -667.632 }, rot = { x = 0.000, y = 43.025, z = 0.000 }, level = 20, area_id = 401 },
	[79100] = { config_id = 79100, gadget_id = 70310422, pos = { x = 148.094, y = 118.073, z = -647.132 }, rot = { x = 334.010, y = 339.512, z = 251.135 }, level = 20, area_id = 401 },
	[79101] = { config_id = 79101, gadget_id = 70310351, pos = { x = 46.921, y = 120.000, z = -651.117 }, rot = { x = 0.000, y = 280.225, z = 0.000 }, level = 20, area_id = 401 },
	[79102] = { config_id = 79102, gadget_id = 70290059, pos = { x = 39.517, y = 120.000, z = -635.739 }, rot = { x = 0.000, y = 157.185, z = 0.000 }, level = 20, area_id = 401 },
	[79103] = { config_id = 79103, gadget_id = 70220110, pos = { x = 28.244, y = 124.189, z = -421.023 }, rot = { x = 0.000, y = 14.867, z = 0.000 }, level = 20, area_id = 401 },
	[79104] = { config_id = 79104, gadget_id = 70220110, pos = { x = 32.212, y = 124.212, z = -417.770 }, rot = { x = 0.000, y = 14.867, z = 0.000 }, level = 20, area_id = 401 },
	[79105] = { config_id = 79105, gadget_id = 70220110, pos = { x = 30.079, y = 126.195, z = -419.503 }, rot = { x = 0.000, y = 14.867, z = 0.000 }, level = 20, area_id = 401 },
	-- 开始路径闪光
	[79106] = { config_id = 79106, gadget_id = 70350085, pos = { x = -25.438, y = 121.325, z = -693.905 }, rot = { x = 0.000, y = 28.076, z = 0.000 }, level = 20, area_id = 401 },
	[79107] = { config_id = 79107, gadget_id = 70310350, pos = { x = 143.477, y = 120.000, z = -691.786 }, rot = { x = 0.000, y = 31.356, z = 0.000 }, level = 20, area_id = 401 },
	[79108] = { config_id = 79108, gadget_id = 70310350, pos = { x = 155.202, y = 120.000, z = -694.473 }, rot = { x = 0.000, y = 174.783, z = 0.000 }, level = 20, area_id = 401 },
	[79109] = { config_id = 79109, gadget_id = 70290060, pos = { x = 136.885, y = 124.386, z = -676.517 }, rot = { x = 0.000, y = 268.324, z = 0.000 }, level = 20, area_id = 401 },
	[79110] = { config_id = 79110, gadget_id = 70310351, pos = { x = 137.814, y = 120.000, z = -684.235 }, rot = { x = 0.000, y = 104.550, z = 0.000 }, level = 20, area_id = 401 },
	[79111] = { config_id = 79111, gadget_id = 70290310, pos = { x = 196.583, y = 119.492, z = -623.457 }, rot = { x = 0.000, y = 208.250, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 401 },
	[79112] = { config_id = 79112, gadget_id = 70290310, pos = { x = 133.295, y = 119.427, z = -677.940 }, rot = { x = 0.000, y = 263.425, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 401 },
	[79113] = { config_id = 79113, gadget_id = 70310351, pos = { x = 144.548, y = 120.000, z = -653.729 }, rot = { x = 0.000, y = 104.550, z = 0.000 }, level = 20, area_id = 401 },
	[79114] = { config_id = 79114, gadget_id = 70290060, pos = { x = 140.791, y = 124.292, z = -660.000 }, rot = { x = 0.000, y = 116.212, z = 0.000 }, level = 20, area_id = 401 },
	[79115] = { config_id = 79115, gadget_id = 70290311, pos = { x = 57.217, y = 119.437, z = -690.365 }, rot = { x = 0.000, y = 261.494, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 401 },
	[79116] = { config_id = 79116, gadget_id = 70220110, pos = { x = 74.029, y = 124.189, z = -685.757 }, rot = { x = 0.000, y = 318.340, z = 0.000 }, level = 20, area_id = 401 },
	[79117] = { config_id = 79117, gadget_id = 70220110, pos = { x = 73.617, y = 121.485, z = -681.960 }, rot = { x = 0.000, y = 318.340, z = 0.000 }, level = 20, area_id = 401 },
	[79118] = { config_id = 79118, gadget_id = 70220110, pos = { x = 73.772, y = 126.195, z = -683.387 }, rot = { x = 0.000, y = 318.340, z = 0.000 }, level = 20, area_id = 401 },
	[79119] = { config_id = 79119, gadget_id = 70220110, pos = { x = 73.503, y = 124.212, z = -680.653 }, rot = { x = 0.000, y = 318.340, z = 0.000 }, level = 20, area_id = 401 },
	[79120] = { config_id = 79120, gadget_id = 70310350, pos = { x = -8.531, y = 119.437, z = -281.132 }, rot = { x = 0.000, y = 336.880, z = 0.000 }, level = 20, area_id = 401 },
	[79121] = { config_id = 79121, gadget_id = 70310350, pos = { x = -0.041, y = 119.400, z = -309.415 }, rot = { x = 0.000, y = 317.763, z = 0.000 }, level = 20, area_id = 401 },
	[79122] = { config_id = 79122, gadget_id = 70290310, pos = { x = 13.351, y = 119.224, z = -306.215 }, rot = { x = 0.000, y = 212.569, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 401 },
	[79123] = { config_id = 79123, gadget_id = 70310351, pos = { x = -44.911, y = 120.000, z = -323.499 }, rot = { x = 0.000, y = 308.579, z = 0.000 }, level = 20, area_id = 401 },
	[79124] = { config_id = 79124, gadget_id = 70310350, pos = { x = -15.374, y = 119.336, z = -440.417 }, rot = { x = 0.000, y = 57.873, z = 0.000 }, level = 20, area_id = 401 },
	[79125] = { config_id = 79125, gadget_id = 70220110, pos = { x = 73.917, y = 121.485, z = -684.875 }, rot = { x = 0.000, y = 318.340, z = 0.000 }, level = 20, area_id = 401 },
	[79126] = { config_id = 79126, gadget_id = 70310350, pos = { x = -45.143, y = 119.572, z = -311.294 }, rot = { x = 0.000, y = 101.671, z = 0.000 }, level = 20, area_id = 401 },
	[79127] = { config_id = 79127, gadget_id = 70310350, pos = { x = 9.558, y = 119.206, z = -342.973 }, rot = { x = 0.000, y = 300.633, z = 0.000 }, level = 20, area_id = 401 },
	[79128] = { config_id = 79128, gadget_id = 70310350, pos = { x = 21.514, y = 119.481, z = -385.782 }, rot = { x = 0.000, y = 52.513, z = 0.000 }, level = 20, area_id = 401 },
	[79129] = { config_id = 79129, gadget_id = 70310422, pos = { x = -4.391, y = 109.769, z = -403.973 }, rot = { x = 342.223, y = 330.088, z = 303.934 }, level = 20, area_id = 401 },
	[79130] = { config_id = 79130, gadget_id = 70310350, pos = { x = 8.448, y = 120.000, z = -410.824 }, rot = { x = 0.000, y = 53.955, z = 0.000 }, level = 20, area_id = 401 },
	[79131] = { config_id = 79131, gadget_id = 70310350, pos = { x = 183.892, y = 119.957, z = -491.572 }, rot = { x = 0.087, y = 4.574, z = 358.819 }, level = 20, area_id = 401 },
	[79132] = { config_id = 79132, gadget_id = 70310350, pos = { x = 201.258, y = 120.000, z = -497.418 }, rot = { x = 0.000, y = 218.857, z = 0.000 }, level = 20, area_id = 401 },
	[79133] = { config_id = 79133, gadget_id = 70310350, pos = { x = 181.593, y = 119.191, z = -524.071 }, rot = { x = 0.000, y = 238.220, z = 0.000 }, level = 20, area_id = 401 },
	[79134] = { config_id = 79134, gadget_id = 70310350, pos = { x = 179.836, y = 119.322, z = -622.579 }, rot = { x = 0.000, y = 133.654, z = 0.000 }, level = 20, area_id = 401 },
	[79135] = { config_id = 79135, gadget_id = 70290060, pos = { x = 43.935, y = 124.256, z = -643.797 }, rot = { x = 0.000, y = 246.342, z = 0.000 }, level = 20, area_id = 401 },
	[79136] = { config_id = 79136, gadget_id = 70290311, pos = { x = -48.624, y = 119.159, z = -705.005 }, rot = { x = 0.000, y = 65.836, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 401 },
	[79137] = { config_id = 79137, gadget_id = 70310350, pos = { x = 126.830, y = 120.000, z = -642.638 }, rot = { x = 0.000, y = 30.046, z = 0.000 }, level = 20, area_id = 401 },
	[79138] = { config_id = 79138, gadget_id = 70290059, pos = { x = 102.056, y = 120.000, z = -651.114 }, rot = { x = 0.000, y = 79.206, z = 0.000 }, level = 20, area_id = 401 },
	[79139] = { config_id = 79139, gadget_id = 70310350, pos = { x = 106.162, y = 120.000, z = -659.854 }, rot = { x = 0.000, y = 30.920, z = 0.000 }, level = 20, area_id = 401 },
	[79140] = { config_id = 79140, gadget_id = 70310350, pos = { x = 98.791, y = 120.000, z = -632.499 }, rot = { x = 0.000, y = 12.631, z = 0.000 }, level = 20, area_id = 401 },
	[79141] = { config_id = 79141, gadget_id = 70310350, pos = { x = 225.292, y = 119.246, z = -592.385 }, rot = { x = 0.000, y = 79.189, z = 0.000 }, level = 20, area_id = 401 },
	[79142] = { config_id = 79142, gadget_id = 70310350, pos = { x = 223.960, y = 119.580, z = -614.191 }, rot = { x = 0.000, y = 300.300, z = 0.000 }, level = 20, area_id = 401 },
	[79143] = { config_id = 79143, gadget_id = 70310350, pos = { x = 91.645, y = 120.000, z = -669.516 }, rot = { x = 0.000, y = 0.228, z = 0.000 }, level = 20, area_id = 401 },
	[79144] = { config_id = 79144, gadget_id = 70290311, pos = { x = 55.693, y = 119.437, z = -680.174 }, rot = { x = 0.000, y = 261.494, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 401 },
	[79145] = { config_id = 79145, gadget_id = 70310350, pos = { x = 88.652, y = 119.030, z = -654.458 }, rot = { x = 0.000, y = 2.828, z = 0.000 }, level = 20, area_id = 401 },
	[79146] = { config_id = 79146, gadget_id = 70310350, pos = { x = 121.509, y = 119.589, z = -668.873 }, rot = { x = 0.000, y = 357.556, z = 0.000 }, level = 20, area_id = 401 },
	[79147] = { config_id = 79147, gadget_id = 70310350, pos = { x = 55.762, y = 119.298, z = -699.143 }, rot = { x = 0.000, y = 357.625, z = 0.000 }, level = 20, area_id = 401 },
	[79148] = { config_id = 79148, gadget_id = 70290059, pos = { x = 86.419, y = 120.000, z = -633.178 }, rot = { x = 0.000, y = 23.185, z = 0.000 }, level = 20, area_id = 401 },
	[79149] = { config_id = 79149, gadget_id = 70310350, pos = { x = 64.893, y = 119.449, z = -649.551 }, rot = { x = 0.000, y = 6.472, z = 0.000 }, level = 20, area_id = 401 },
	[79150] = { config_id = 79150, gadget_id = 70310350, pos = { x = 52.215, y = 119.456, z = -625.723 }, rot = { x = 0.000, y = 349.445, z = 0.000 }, level = 20, area_id = 401 },
	[79151] = { config_id = 79151, gadget_id = 70310350, pos = { x = 64.739, y = 119.460, z = -624.723 }, rot = { x = 0.000, y = 193.921, z = 0.000 }, level = 20, area_id = 401 },
	[79152] = { config_id = 79152, gadget_id = 70310350, pos = { x = 56.994, y = 120.000, z = -670.737 }, rot = { x = 0.000, y = 358.975, z = 0.000 }, level = 20, area_id = 401 },
	[79153] = { config_id = 79153, gadget_id = 70220110, pos = { x = -36.547, y = 124.189, z = -703.432 }, rot = { x = 0.000, y = 302.050, z = 0.000 }, level = 20, area_id = 401 },
	[79154] = { config_id = 79154, gadget_id = 70310350, pos = { x = 116.312, y = 118.979, z = -692.517 }, rot = { x = 0.000, y = 356.101, z = 0.000 }, level = 20, area_id = 401 },
	[79155] = { config_id = 79155, gadget_id = 70220110, pos = { x = -38.007, y = 121.485, z = -699.903 }, rot = { x = 0.000, y = 302.050, z = 0.000 }, level = 20, area_id = 401 },
	[79156] = { config_id = 79156, gadget_id = 70220110, pos = { x = -37.458, y = 126.195, z = -701.229 }, rot = { x = 0.000, y = 302.050, z = 0.000 }, level = 20, area_id = 401 },
	[79158] = { config_id = 79158, gadget_id = 70220110, pos = { x = 136.690, y = 126.028, z = -679.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79159] = { config_id = 79159, gadget_id = 70220110, pos = { x = 136.639, y = 127.753, z = -675.107 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79160] = { config_id = 79160, gadget_id = 70220110, pos = { x = 102.025, y = 120.938, z = -642.936 }, rot = { x = 0.000, y = 351.859, z = 0.000 }, level = 20, area_id = 401 },
	[79161] = { config_id = 79161, gadget_id = 70220110, pos = { x = 87.351, y = 120.938, z = -643.308 }, rot = { x = 0.000, y = 351.859, z = 0.000 }, level = 20, area_id = 401 },
	[79162] = { config_id = 79162, gadget_id = 70310409, pos = { x = 191.346, y = 120.000, z = -522.105 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79163] = { config_id = 79163, gadget_id = 70310409, pos = { x = 202.618, y = 120.000, z = -524.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79164] = { config_id = 79164, gadget_id = 70310409, pos = { x = 195.365, y = 120.000, z = -560.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79165] = { config_id = 79165, gadget_id = 70310409, pos = { x = 191.067, y = 120.000, z = -593.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79166] = { config_id = 79166, gadget_id = 70310409, pos = { x = 218.979, y = 120.000, z = -633.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79167] = { config_id = 79167, gadget_id = 70310352, pos = { x = -51.305, y = 120.000, z = -697.703 }, rot = { x = 0.000, y = 74.769, z = 0.000 }, level = 1, area_id = 401 },
	[79168] = { config_id = 79168, gadget_id = 70310352, pos = { x = -45.436, y = 120.000, z = -712.016 }, rot = { x = 0.000, y = 51.129, z = 0.000 }, level = 1, area_id = 401 },
	[79169] = { config_id = 79169, gadget_id = 70220110, pos = { x = -38.483, y = 124.212, z = -698.680 }, rot = { x = 0.000, y = 302.050, z = 0.000 }, level = 20, area_id = 401 },
	[79170] = { config_id = 79170, gadget_id = 70220110, pos = { x = -17.849, y = 120.731, z = -379.343 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79171] = { config_id = 79171, gadget_id = 70220110, pos = { x = -20.948, y = 120.731, z = -387.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79172] = { config_id = 79172, gadget_id = 70310409, pos = { x = 17.703, y = 120.000, z = -331.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79173] = { config_id = 79173, gadget_id = 70220110, pos = { x = -23.129, y = 120.731, z = -396.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79174] = { config_id = 79174, gadget_id = 70220110, pos = { x = -14.352, y = 120.731, z = -419.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79175] = { config_id = 79175, gadget_id = 70220110, pos = { x = 3.356, y = 120.731, z = -439.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79176] = { config_id = 79176, gadget_id = 70310409, pos = { x = -6.066, y = 120.000, z = -422.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79177] = { config_id = 79177, gadget_id = 70310409, pos = { x = 13.529, y = 120.000, z = -456.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79178] = { config_id = 79178, gadget_id = 70380004, pos = { x = -28.204, y = 120.434, z = -414.700 }, rot = { x = 0.000, y = 2.161, z = 0.000 }, level = 20, state = GadgetState.GearStart, route_id = 900200005, area_id = 401 },
	[79179] = { config_id = 79179, gadget_id = 70220110, pos = { x = -36.902, y = 121.485, z = -702.617 }, rot = { x = 0.000, y = 302.050, z = 0.000 }, level = 20, area_id = 401 },
	[79180] = { config_id = 79180, gadget_id = 70310409, pos = { x = 165.846, y = 120.000, z = -690.088 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79181] = { config_id = 79181, gadget_id = 70310409, pos = { x = -23.039, y = 120.000, z = -290.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79182] = { config_id = 79182, gadget_id = 70310350, pos = { x = 190.162, y = 119.618, z = -604.180 }, rot = { x = 0.000, y = 277.267, z = 0.000 }, level = 20, area_id = 401 },
	[79184] = { config_id = 79184, gadget_id = 70310409, pos = { x = -24.298, y = 120.000, z = -311.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79185] = { config_id = 79185, gadget_id = 70310351, pos = { x = 185.287, y = 120.000, z = -559.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79186] = { config_id = 79186, gadget_id = 70310409, pos = { x = -16.228, y = 120.000, z = -399.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79187] = { config_id = 79187, gadget_id = 70290059, pos = { x = 204.934, y = 120.000, z = -622.862 }, rot = { x = 0.000, y = 299.285, z = 0.000 }, level = 20, area_id = 401 },
	[79188] = { config_id = 79188, gadget_id = 70290060, pos = { x = 196.887, y = 124.371, z = -618.991 }, rot = { x = 0.000, y = 30.806, z = 0.000 }, level = 20, area_id = 401 },
	[79189] = { config_id = 79189, gadget_id = 70310351, pos = { x = 189.871, y = 120.000, z = -614.542 }, rot = { x = 0.000, y = 83.725, z = 0.000 }, level = 20, area_id = 401 },
	[79190] = { config_id = 79190, gadget_id = 70310422, pos = { x = 32.176, y = 119.609, z = -667.627 }, rot = { x = 321.790, y = 27.514, z = 332.941 }, level = 20, area_id = 401 },
	[79191] = { config_id = 79191, gadget_id = 70310351, pos = { x = 15.980, y = 120.000, z = -275.984 }, rot = { x = 0.000, y = 102.199, z = 0.000 }, level = 20, area_id = 401 },
	[79192] = { config_id = 79192, gadget_id = 70310350, pos = { x = 22.222, y = 119.420, z = -321.637 }, rot = { x = 0.000, y = 300.152, z = 0.000 }, level = 20, area_id = 401 },
	[79193] = { config_id = 79193, gadget_id = 70290310, pos = { x = 19.369, y = 119.285, z = -309.650 }, rot = { x = 0.000, y = 208.272, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 401 },
	[79194] = { config_id = 79194, gadget_id = 70290059, pos = { x = -32.300, y = 120.000, z = -296.928 }, rot = { x = 0.000, y = 83.860, z = 0.000 }, level = 20, area_id = 401 },
	[79195] = { config_id = 79195, gadget_id = 70310351, pos = { x = -18.807, y = 120.000, z = -306.016 }, rot = { x = 0.000, y = 308.579, z = 0.000 }, level = 20, area_id = 401 },
	[79197] = { config_id = 79197, gadget_id = 70290059, pos = { x = -16.006, y = 120.000, z = -329.628 }, rot = { x = 0.000, y = 283.160, z = 0.000 }, level = 20, area_id = 401 },
	[79198] = { config_id = 79198, gadget_id = 70310350, pos = { x = -9.332, y = 119.275, z = -321.577 }, rot = { x = 0.000, y = 313.367, z = 0.000 }, level = 20, area_id = 401 },
	[79199] = { config_id = 79199, gadget_id = 70310350, pos = { x = -10.349, y = 120.000, z = -302.598 }, rot = { x = 0.000, y = 330.823, z = 0.000 }, level = 20, area_id = 401 },
	[79200] = { config_id = 79200, gadget_id = 70310350, pos = { x = -0.265, y = 119.528, z = -299.685 }, rot = { x = 0.000, y = 166.657, z = 0.000 }, level = 20, area_id = 401 },
	[79201] = { config_id = 79201, gadget_id = 70310350, pos = { x = -18.933, y = 119.354, z = -321.282 }, rot = { x = 0.000, y = 265.947, z = 0.000 }, level = 20, area_id = 401 },
	[79202] = { config_id = 79202, gadget_id = 70310350, pos = { x = 21.330, y = 119.510, z = -426.947 }, rot = { x = 0.000, y = 227.272, z = 0.000 }, level = 20, area_id = 401 },
	[79203] = { config_id = 79203, gadget_id = 70290060, pos = { x = -12.352, y = 124.210, z = -420.715 }, rot = { x = 0.000, y = 139.034, z = 0.000 }, level = 20, area_id = 401 },
	[79204] = { config_id = 79204, gadget_id = 70310409, pos = { x = 116.055, y = 120.000, z = -662.077 }, rot = { x = 0.000, y = 351.859, z = 0.000 }, level = 20, area_id = 401 },
	[79205] = { config_id = 79205, gadget_id = 70310409, pos = { x = 9.768, y = 120.000, z = -434.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79207] = { config_id = 79207, gadget_id = 70220110, pos = { x = 16.095, y = 120.731, z = -446.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79210] = { config_id = 79210, gadget_id = 70220110, pos = { x = 97.132, y = 126.448, z = -481.659 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79211] = { config_id = 79211, gadget_id = 70220110, pos = { x = 99.974, y = 126.352, z = -473.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79212] = { config_id = 79212, gadget_id = 70310409, pos = { x = 116.401, y = 120.000, z = -641.089 }, rot = { x = 0.000, y = 351.859, z = 0.000 }, level = 20, area_id = 401 },
	[79213] = { config_id = 79213, gadget_id = 70220110, pos = { x = 96.038, y = 126.291, z = -484.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79214] = { config_id = 79214, gadget_id = 70220110, pos = { x = 93.058, y = 126.693, z = -490.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79215] = { config_id = 79215, gadget_id = 70310409, pos = { x = 84.001, y = 120.000, z = -650.198 }, rot = { x = 0.000, y = 351.859, z = 0.000 }, level = 20, area_id = 401 },
	[79216] = { config_id = 79216, gadget_id = 70220110, pos = { x = 180.688, y = 120.215, z = -501.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79217] = { config_id = 79217, gadget_id = 70220110, pos = { x = 191.346, y = 122.000, z = -522.105 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79218] = { config_id = 79218, gadget_id = 70220110, pos = { x = 202.618, y = 122.000, z = -524.102 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79219] = { config_id = 79219, gadget_id = 70220110, pos = { x = 195.900, y = 122.000, z = -535.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79220] = { config_id = 79220, gadget_id = 70220110, pos = { x = 202.813, y = 120.000, z = -555.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79221] = { config_id = 79221, gadget_id = 70220110, pos = { x = 173.063, y = 120.215, z = -532.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79222] = { config_id = 79222, gadget_id = 70220110, pos = { x = 177.348, y = 120.215, z = -538.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79223] = { config_id = 79223, gadget_id = 70220110, pos = { x = 182.271, y = 120.215, z = -545.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79225] = { config_id = 79225, gadget_id = 70310422, pos = { x = 37.139, y = 112.931, z = -670.584 }, rot = { x = 19.729, y = 329.593, z = 337.565 }, level = 20, area_id = 401 },
	[79226] = { config_id = 79226, gadget_id = 70380004, pos = { x = 186.805, y = 120.000, z = -507.143 }, rot = { x = 0.000, y = 287.241, z = 0.000 }, level = 20, state = GadgetState.GearStart, route_id = 900200006, area_id = 401 },
	[79227] = { config_id = 79227, gadget_id = 70290059, pos = { x = 192.833, y = 120.000, z = -545.024 }, rot = { x = 0.000, y = 200.999, z = 0.000 }, level = 20, area_id = 401 },
	[79228] = { config_id = 79228, gadget_id = 70290059, pos = { x = 217.805, y = 120.000, z = -577.988 }, rot = { x = 0.000, y = 146.032, z = 0.000 }, level = 20, area_id = 401 },
	[79229] = { config_id = 79229, gadget_id = 70290060, pos = { x = 188.308, y = 124.303, z = -552.404 }, rot = { x = 0.000, y = 306.999, z = 0.000 }, level = 20, area_id = 401 },
	[79230] = { config_id = 79230, gadget_id = 70310351, pos = { x = 213.063, y = 120.000, z = -554.215 }, rot = { x = 0.000, y = 330.367, z = 0.000 }, level = 20, area_id = 401 },
	[79231] = { config_id = 79231, gadget_id = 70310350, pos = { x = 189.192, y = 119.377, z = -569.395 }, rot = { x = 0.000, y = 261.107, z = 0.000 }, level = 20, area_id = 401 },
	[79232] = { config_id = 79232, gadget_id = 70310351, pos = { x = 196.214, y = 120.000, z = -568.462 }, rot = { x = 0.000, y = 295.088, z = 0.000 }, level = 20, area_id = 401 },
	[79233] = { config_id = 79233, gadget_id = 70220110, pos = { x = 205.869, y = 120.215, z = -563.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79234] = { config_id = 79234, gadget_id = 70220110, pos = { x = 204.831, y = 120.215, z = -574.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79236] = { config_id = 79236, gadget_id = 70310422, pos = { x = 39.498, y = 114.206, z = -662.971 }, rot = { x = 313.732, y = 37.461, z = 328.175 }, level = 20, area_id = 401 },
	[79237] = { config_id = 79237, gadget_id = 70290059, pos = { x = 58.621, y = 120.000, z = -452.247 }, rot = { x = 0.000, y = 221.606, z = 0.000 }, level = 20, area_id = 401 },
	[79238] = { config_id = 79238, gadget_id = 70290060, pos = { x = 53.380, y = 124.320, z = -459.219 }, rot = { x = 0.000, y = 311.718, z = 0.000 }, level = 20, area_id = 401 },
	[79239] = { config_id = 79239, gadget_id = 70310351, pos = { x = 48.410, y = 120.000, z = -464.080 }, rot = { x = 0.000, y = 59.683, z = 0.000 }, level = 20, area_id = 401 },
	[79240] = { config_id = 79240, gadget_id = 70310350, pos = { x = 38.556, y = 119.434, z = -464.689 }, rot = { x = 0.000, y = 200.240, z = 0.000 }, level = 20, area_id = 401 },
	[79241] = { config_id = 79241, gadget_id = 70310410, pos = { x = -14.179, y = 120.000, z = -363.508 }, rot = { x = 0.000, y = 352.223, z = 0.000 }, level = 20, area_id = 401 },
	[79242] = { config_id = 79242, gadget_id = 70220110, pos = { x = 22.626, y = 127.569, z = -307.381 }, rot = { x = 0.000, y = 338.985, z = 0.000 }, level = 20, area_id = 401 },
	[79243] = { config_id = 79243, gadget_id = 70220110, pos = { x = 18.703, y = 127.313, z = -305.150 }, rot = { x = 0.000, y = 338.985, z = 0.000 }, level = 20, area_id = 401 },
	[79244] = { config_id = 79244, gadget_id = 70220110, pos = { x = 21.967, y = 120.000, z = -304.452 }, rot = { x = 0.000, y = 338.985, z = 0.000 }, level = 20, area_id = 401 },
	[79245] = { config_id = 79245, gadget_id = 70220110, pos = { x = 16.209, y = 120.000, z = -300.926 }, rot = { x = 0.000, y = 338.985, z = 0.000 }, level = 20, area_id = 401 },
	[79246] = { config_id = 79246, gadget_id = 70220110, pos = { x = 14.640, y = 126.902, z = -302.641 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	[79263] = { config_id = 79263, gadget_id = 70310422, pos = { x = 7.043, y = 119.471, z = -300.053 }, rot = { x = 14.078, y = 23.224, z = 289.405 }, level = 20, area_id = 401 },
	[79271] = { config_id = 79271, gadget_id = 70310410, pos = { x = 48.462, y = 120.000, z = -286.792 }, rot = { x = 0.000, y = 71.383, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 401 },
	[79272] = { config_id = 79272, gadget_id = 70310422, pos = { x = -5.051, y = 104.078, z = -396.926 }, rot = { x = 4.696, y = 92.014, z = 85.973 }, level = 20, area_id = 401 },
	[79273] = { config_id = 79273, gadget_id = 70310351, pos = { x = -7.569, y = 120.000, z = -415.234 }, rot = { x = 0.000, y = 122.214, z = 0.000 }, level = 20, area_id = 401 },
	[79274] = { config_id = 79274, gadget_id = 70310350, pos = { x = -7.716, y = 119.296, z = -391.128 }, rot = { x = 0.000, y = 256.375, z = 0.000 }, level = 20, area_id = 401 },
	[79275] = { config_id = 79275, gadget_id = 70310350, pos = { x = 188.170, y = 119.106, z = -534.189 }, rot = { x = 0.000, y = 246.680, z = 0.000 }, level = 20, area_id = 401 },
	[79276] = { config_id = 79276, gadget_id = 70310409, pos = { x = 207.552, y = 120.000, z = -547.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 }
}

-- 区域
regions = {
	-- 终点触发Trigger
	[79005] = { config_id = 79005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -102.626, y = 120.000, z = -726.029 }, area_id = 400 },
	-- 赛道范围
	[79006] = { config_id = 79006, shape = RegionShape.POLYGON, pos = { x = 73.559, y = 131.306, z = -563.219 }, height = 66.553, point_array = { { x = -67.458, y = -414.909 }, { x = -90.139, y = -325.201 }, { x = -23.048, y = -238.610 }, { x = 71.807, y = -234.320 }, { x = 113.719, y = -289.271 }, { x = 91.382, y = -370.779 }, { x = 311.619, y = -554.913 }, { x = 113.114, y = -892.117 }, { x = -98.721, y = -862.313 }, { x = -157.762, y = -817.023 }, { x = -164.501, y = -732.904 }, { x = -111.187, y = -638.582 }, { x = 31.775, y = -540.764 }, { x = -13.133, y = -474.125 } }, area_id = 401 },
	-- 教学区域
	[79090] = { config_id = 79090, shape = RegionShape.SPHERE, radius = 5, pos = { x = 63.897, y = 120.000, z = -277.141 }, area_id = 401 }
}

-- 触发器
triggers = {
	{ config_id = 1079007, name = "ANY_GADGET_DIE_79007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_79007", action = "action_EVENT_ANY_GADGET_DIE_79007" },
	{ config_id = 1079031, name = "ANY_GADGET_DIE_79031", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_79031", action = "action_EVENT_ANY_GADGET_DIE_79031" },
	{ config_id = 1079035, name = "ANY_GADGET_DIE_79035", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_79035", action = "action_EVENT_ANY_GADGET_DIE_79035" },
	{ config_id = 1079042, name = "ANY_GADGET_DIE_79042", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_79042", action = "action_EVENT_ANY_GADGET_DIE_79042" },
	{ config_id = 1079043, name = "ANY_GADGET_DIE_79043", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_79043", action = "action_EVENT_ANY_GADGET_DIE_79043" },
	{ config_id = 1079051, name = "ANY_GADGET_DIE_79051", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_79051", action = "action_EVENT_ANY_GADGET_DIE_79051" },
	-- 删除指引
	{ config_id = 1079094, name = "CHALLENGE_SUCCESS_79094", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "condition_EVENT_CHALLENGE_SUCCESS_79094", action = "action_EVENT_CHALLENGE_SUCCESS_79094", trigger_count = 0 },
	{ config_id = 1079157, name = "ANY_GADGET_DIE_79157", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_79157", action = "action_EVENT_ANY_GADGET_DIE_79157" }
}

-- 点位
points = {
	-- 复活点
	{ config_id = 79084, pos = { x = 80.289, y = 120.000, z = -277.921 }, rot = { x = 0.000, y = 289.585, z = 0.000 }, area_id = 401 },
	-- 创船点
	{ config_id = 79085, pos = { x = 73.861, y = 120.000, z = -273.333 }, rot = { x = 0.000, y = 248.892, z = 0.000 }, area_id = 401 }
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
		gadgets = { 79002, 79091 },
		regions = { 79090 },
		triggers = { "CHALLENGE_SUCCESS_79094" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 79003, 79008, 79009, 79010, 79011, 79012, 79013, 79014, 79015, 79016, 79018, 79019, 79020, 79021, 79022, 79023, 79024, 79025, 79026, 79027, 79028, 79120, 79121, 79122, 79123, 79126, 79127, 79129, 79172, 79181, 79184, 79190, 79191, 79192, 79193, 79194, 79195, 79197, 79198, 79199, 79200, 79201, 79225, 79236, 79241, 79242, 79243, 79244, 79245, 79246, 79263, 79271, 79272 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_79157" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 79001, 79017, 79029, 79030, 79034, 79037, 79038, 79039, 79040, 79041, 79045, 79046, 79047, 79065, 79069, 79071, 79087, 79103, 79104, 79105, 79124, 79128, 79130, 79170, 79171, 79173, 79174, 79175, 79176, 79177, 79178, 79186, 79202, 79203, 79205, 79207, 79273, 79274 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_79007" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 79032, 79050, 79053, 79055, 79058, 79059, 79060, 79061, 79063, 79064, 79066, 79070, 79210, 79211, 79213, 79214, 79237, 79238, 79239, 79240 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_79031" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 79033, 79048, 79049, 79056, 79057, 79062, 79067, 79068, 79072, 79076, 79077, 79078, 79079, 79080, 79081, 79082, 79083, 79088, 79095, 79131, 79132, 79133, 79162, 79163, 79164, 79185, 79216, 79217, 79218, 79219, 79220, 79221, 79222, 79223, 79226, 79227, 79228, 79229, 79230, 79231, 79232, 79233, 79234, 79275, 79276 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_79035" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 79036, 79086, 79096, 79097, 79111, 79134, 79141, 79142, 79165, 79166, 79182, 79187, 79188, 79189 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_79042" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 79044, 79089, 79092, 79098, 79099, 79100, 79107, 79108, 79109, 79110, 79112, 79113, 79114, 79137, 79139, 79146, 79154, 79158, 79159, 79180, 79204, 79212 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_79043" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 79052, 79054, 79073, 79074, 79075, 79101, 79102, 79106, 79115, 79116, 79117, 79118, 79119, 79125, 79135, 79136, 79138, 79140, 79143, 79144, 79145, 79147, 79148, 79149, 79150, 79151, 79152, 79153, 79155, 79156, 79160, 79161, 79167, 79168, 79169, 79179, 79215 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_79051" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 79004, 79093 },
		regions = { 79005 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 79006 },
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
function condition_EVENT_ANY_GADGET_DIE_79007(context, evt)
	if 79241 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_79007(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002079, 4)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 79037 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 改变指定group组199002079中， configid为79001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199002079, 79001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_79031(context, evt)
	if 79001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_79031(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002079, 5)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 79053 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 改变指定group组199002079中， configid为79032的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199002079, 79032, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199002079, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_79035(context, evt)
	if 79032 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_79035(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002079, 6)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 79072 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 改变指定group组199002079中， configid为79033的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199002079, 79033, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199002079, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_79042(context, evt)
	if 79033 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_79042(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002079, 7)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 79086 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 改变指定group组199002079中， configid为79036的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199002079, 79036, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199002079, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_79043(context, evt)
	if 79036 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_79043(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002079, 8)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 79092 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 改变指定group组199002079中， configid为79044的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199002079, 79044, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_79051(context, evt)
	if 79044 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_79051(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 79106 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002079, 9)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199002079, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199002079, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_SUCCESS_79094(context, evt)
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_79094(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 79004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 79093 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199002079, 8)
	
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 199002079, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_79157(context, evt)
	if 79271 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_79157(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199002079, 3)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 79003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 改变指定group组199002079中， configid为79241的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 199002079, 79241, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

require "V2_8/BoatRace_V2"
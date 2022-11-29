-- 基础信息
local base_info = {
	group_id = 133302061
}

-- DEFS_MISCS
local defs = 
{
gallery_id = 24001,
challenge_time = 120,
--挑战操作台的configID
starter_gadget = 61001, 
--终点region的configID
end_regionID = 61006, 
--开启操作台后立刻加载的suites
load_on_start = {2, 4, 5}, 
--终点所在的suite
end_suite = 4, 
--赛道regions
parkour_regions = {61008},
--教学区region的configID
guide_regionID = 61005,
look_pos = {x=-840.3, y=171.3, z=2305.5},
duration = 2,

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
	{ config_id = 61001, gadget_id = 70350457, pos = { x = -844.049, y = 167.168, z = 2295.671 }, rot = { x = 350.632, y = 14.565, z = 12.972 }, level = 30, area_id = 24 },
	{ config_id = 61002, gadget_id = 70360025, pos = { x = -803.024, y = 161.632, z = 2429.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61003, gadget_id = 70220103, pos = { x = -840.317, y = 171.381, z = 2305.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61010, gadget_id = 70690011, pos = { x = -844.471, y = 131.077, z = 2330.293 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61011, gadget_id = 70220122, pos = { x = -855.195, y = 163.444, z = 2340.367 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61012, gadget_id = 70220103, pos = { x = -844.471, y = 163.050, z = 2330.293 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61013, gadget_id = 70220103, pos = { x = -855.192, y = 164.820, z = 2340.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61014, gadget_id = 70220103, pos = { x = -803.666, y = 164.566, z = 2427.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	-- C4
	{ config_id = 61015, gadget_id = 70350085, pos = { x = -802.973, y = 161.534, z = 2429.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 61016, gadget_id = 70220121, pos = { x = -840.317, y = 168.380, z = 2305.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61017, gadget_id = 70220121, pos = { x = -840.317, y = 169.782, z = 2305.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61018, gadget_id = 70350349, pos = { x = -839.749, y = 160.826, z = 2307.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61019, gadget_id = 70220122, pos = { x = -838.348, y = 161.226, z = 2319.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61020, gadget_id = 70690029, pos = { x = -825.363, y = 122.233, z = 2415.505 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61021, gadget_id = 70350349, pos = { x = -832.960, y = 147.395, z = 2397.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61022, gadget_id = 70690013, pos = { x = -855.200, y = 116.337, z = 2340.205 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61023, gadget_id = 70350349, pos = { x = -833.543, y = 148.446, z = 2399.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61024, gadget_id = 70220084, pos = { x = -859.808, y = 162.003, z = 2350.226 }, rot = { x = 324.614, y = 16.703, z = 32.499 }, level = 1, area_id = 24 },
	{ config_id = 61025, gadget_id = 70350349, pos = { x = -837.930, y = 149.728, z = 2404.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61026, gadget_id = 70220122, pos = { x = -843.601, y = 167.922, z = 2296.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61027, gadget_id = 70220121, pos = { x = -860.223, y = 164.000, z = 2349.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61028, gadget_id = 70220122, pos = { x = -860.223, y = 161.874, z = 2349.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61029, gadget_id = 70690001, pos = { x = -856.974, y = 167.115, z = 2358.942 }, rot = { x = 12.574, y = 22.650, z = 20.350 }, level = 30, area_id = 24 },
	{ config_id = 61030, gadget_id = 70690001, pos = { x = -852.420, y = 163.513, z = 2371.460 }, rot = { x = 16.203, y = 23.042, z = 21.928 }, level = 30, area_id = 24 },
	{ config_id = 61031, gadget_id = 70220121, pos = { x = -860.223, y = 166.000, z = 2349.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61032, gadget_id = 70220121, pos = { x = -860.223, y = 168.000, z = 2349.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61036, gadget_id = 70220121, pos = { x = -835.260, y = 146.493, z = 2392.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61038, gadget_id = 70220121, pos = { x = -835.831, y = 150.110, z = 2401.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61039, gadget_id = 70350349, pos = { x = -838.909, y = 144.277, z = 2391.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61040, gadget_id = 70220121, pos = { x = -837.204, y = 150.314, z = 2409.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61041, gadget_id = 70220122, pos = { x = -832.096, y = 150.313, z = 2412.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61042, gadget_id = 70220121, pos = { x = -803.632, y = 162.396, z = 2427.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61043, gadget_id = 70220121, pos = { x = -802.361, y = 163.149, z = 2426.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61044, gadget_id = 70220121, pos = { x = -804.789, y = 162.909, z = 2428.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61047, gadget_id = 70360095, pos = { x = -838.829, y = 145.459, z = 2387.746 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 330200045, area_id = 24 },
	{ config_id = 61048, gadget_id = 70220121, pos = { x = -856.974, y = 167.115, z = 2358.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61049, gadget_id = 70360095, pos = { x = -828.746, y = 149.005, z = 2399.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 330200046, area_id = 24 },
	{ config_id = 61050, gadget_id = 70360095, pos = { x = -836.993, y = 150.044, z = 2416.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 330200047, area_id = 24 },
	{ config_id = 61051, gadget_id = 70220121, pos = { x = -853.363, y = 164.213, z = 2369.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61052, gadget_id = 70220121, pos = { x = -852.420, y = 163.513, z = 2371.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61054, gadget_id = 70220084, pos = { x = -843.989, y = 168.225, z = 2295.908 }, rot = { x = 349.148, y = 21.988, z = 349.667 }, level = 1, area_id = 24 },
	-- C1
	{ config_id = 61055, gadget_id = 70710126, pos = { x = -838.348, y = 159.694, z = 2319.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	-- C1
	{ config_id = 61056, gadget_id = 70350085, pos = { x = -838.348, y = 161.131, z = 2319.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	-- C2
	{ config_id = 61057, gadget_id = 70710126, pos = { x = -860.223, y = 161.201, z = 2349.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 61058, gadget_id = 70220122, pos = { x = -825.363, y = 156.007, z = 2415.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	-- C2
	{ config_id = 61059, gadget_id = 70350085, pos = { x = -860.223, y = 161.590, z = 2349.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	-- C3
	{ config_id = 61060, gadget_id = 70350085, pos = { x = -845.174, y = 145.380, z = 2392.651 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 61061, gadget_id = 70220121, pos = { x = -840.317, y = 163.218, z = 2305.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61062, gadget_id = 70350347, pos = { x = -838.356, y = 160.563, z = 2310.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61063, gadget_id = 70350347, pos = { x = -837.756, y = 160.411, z = 2314.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61064, gadget_id = 70220121, pos = { x = -840.317, y = 164.821, z = 2305.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61065, gadget_id = 70220121, pos = { x = -840.317, y = 166.740, z = 2305.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61067, gadget_id = 70220121, pos = { x = -843.672, y = 160.855, z = 2330.556 }, rot = { x = 274.126, y = 20.125, z = 318.029 }, level = 30, area_id = 24 },
	{ config_id = 61068, gadget_id = 70220121, pos = { x = -842.650, y = 162.799, z = 2331.079 }, rot = { x = 274.126, y = 20.125, z = 318.029 }, level = 30, area_id = 24 },
	{ config_id = 61069, gadget_id = 70220121, pos = { x = -843.573, y = 164.844, z = 2330.824 }, rot = { x = 274.126, y = 20.125, z = 318.029 }, level = 30, area_id = 24 },
	{ config_id = 61070, gadget_id = 70220121, pos = { x = -845.369, y = 160.942, z = 2329.877 }, rot = { x = 274.126, y = 20.125, z = 318.029 }, level = 30, area_id = 24 },
	{ config_id = 61071, gadget_id = 70220121, pos = { x = -846.572, y = 163.002, z = 2329.511 }, rot = { x = 274.126, y = 20.125, z = 318.029 }, level = 30, area_id = 24 },
	{ config_id = 61072, gadget_id = 70220121, pos = { x = -845.270, y = 164.932, z = 2330.147 }, rot = { x = 274.126, y = 20.125, z = 318.029 }, level = 30, area_id = 24 },
	{ config_id = 61073, gadget_id = 70220121, pos = { x = -854.132, y = 163.055, z = 2338.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61074, gadget_id = 70220121, pos = { x = -852.880, y = 163.055, z = 2340.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61075, gadget_id = 70220121, pos = { x = -854.132, y = 163.055, z = 2342.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61076, gadget_id = 70220121, pos = { x = -855.962, y = 163.055, z = 2338.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61077, gadget_id = 70220121, pos = { x = -857.247, y = 163.055, z = 2340.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61078, gadget_id = 70220121, pos = { x = -855.962, y = 163.055, z = 2342.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61079, gadget_id = 70220121, pos = { x = -837.580, y = 161.356, z = 2317.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61080, gadget_id = 70220121, pos = { x = -836.371, y = 161.584, z = 2319.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61081, gadget_id = 70220121, pos = { x = -837.580, y = 160.978, z = 2321.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61082, gadget_id = 70220121, pos = { x = -839.409, y = 160.754, z = 2317.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61083, gadget_id = 70220121, pos = { x = -840.506, y = 160.015, z = 2319.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61084, gadget_id = 70220121, pos = { x = -839.409, y = 160.551, z = 2321.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61085, gadget_id = 70690001, pos = { x = -853.363, y = 164.213, z = 2369.243 }, rot = { x = 16.203, y = 23.042, z = 21.928 }, level = 30, area_id = 24 },
	{ config_id = 61086, gadget_id = 70690001, pos = { x = -857.917, y = 167.661, z = 2356.683 }, rot = { x = 12.574, y = 22.650, z = 20.350 }, level = 30, area_id = 24 },
	{ config_id = 61089, gadget_id = 70220121, pos = { x = -844.200, y = 145.025, z = 2390.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61090, gadget_id = 70220121, pos = { x = -842.753, y = 145.129, z = 2392.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61091, gadget_id = 70220121, pos = { x = -844.200, y = 146.343, z = 2394.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61092, gadget_id = 70220121, pos = { x = -846.030, y = 145.703, z = 2390.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61093, gadget_id = 70220121, pos = { x = -847.613, y = 146.405, z = 2392.570 }, rot = { x = 8.657, y = 17.230, z = 348.462 }, level = 30, area_id = 24 },
	{ config_id = 61094, gadget_id = 70220121, pos = { x = -846.030, y = 146.294, z = 2394.570 }, rot = { x = 0.000, y = 0.000, z = 329.061 }, level = 30, area_id = 24 },
	{ config_id = 61095, gadget_id = 70220121, pos = { x = -803.632, y = 165.695, z = 2427.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61096, gadget_id = 70220121, pos = { x = -824.610, y = 155.100, z = 2413.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61097, gadget_id = 70220121, pos = { x = -823.484, y = 155.100, z = 2415.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61098, gadget_id = 70220121, pos = { x = -824.610, y = 155.100, z = 2417.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61099, gadget_id = 70220121, pos = { x = -826.440, y = 155.100, z = 2413.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61100, gadget_id = 70220121, pos = { x = -827.712, y = 155.100, z = 2415.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61101, gadget_id = 70220121, pos = { x = -826.440, y = 155.100, z = 2417.354 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61102, gadget_id = 70220121, pos = { x = -802.361, y = 164.938, z = 2426.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	{ config_id = 61103, gadget_id = 70220121, pos = { x = -804.789, y = 164.623, z = 2428.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 },
	-- C3
	{ config_id = 61104, gadget_id = 70710126, pos = { x = -845.174, y = 145.380, z = 2392.651 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 61105, gadget_id = 70220084, pos = { x = -844.653, y = 145.521, z = 2392.867 }, rot = { x = 1.716, y = 93.990, z = 351.372 }, level = 1, area_id = 24 },
	-- C4
	{ config_id = 61106, gadget_id = 70350085, pos = { x = -803.638, y = 164.012, z = 2427.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	-- C4
	{ config_id = 61107, gadget_id = 70710126, pos = { x = -803.075, y = 161.539, z = 2429.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 61112, gadget_id = 70220084, pos = { x = -838.348, y = 161.131, z = 2319.502 }, rot = { x = 351.865, y = 331.276, z = 352.604 }, level = 1, area_id = 24 },
	{ config_id = 61113, gadget_id = 70220084, pos = { x = -832.096, y = 150.313, z = 2412.179 }, rot = { x = 322.962, y = 64.493, z = 96.362 }, level = 1, area_id = 24 },
	-- 2
	{ config_id = 61128, gadget_id = 70330197, pos = { x = -860.223, y = 160.108, z = 2349.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 61004, shape = RegionShape.SPHERE, radius = 3, pos = { x = -838.348, y = 161.131, z = 2319.502 }, area_id = 24 },
	{ config_id = 61005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -844.046, y = 167.061, z = 2295.664 }, area_id = 24 },
	{ config_id = 61006, shape = RegionShape.SPHERE, radius = 2, pos = { x = -802.938, y = 161.577, z = 2430.032 }, area_id = 24 },
	{ config_id = 61007, shape = RegionShape.SPHERE, radius = 3, pos = { x = -859.711, y = 162.157, z = 2349.748 }, area_id = 24 },
	{ config_id = 61008, shape = RegionShape.CUBIC, size = { x = 120.000, y = 120.000, z = 200.000 }, pos = { x = -850.979, y = 132.000, z = 2364.491 }, area_id = 24 },
	{ config_id = 61110, shape = RegionShape.SPHERE, radius = 3, pos = { x = -845.174, y = 145.380, z = 2392.651 }, area_id = 24 },
	{ config_id = 61111, shape = RegionShape.SPHERE, radius = 3, pos = { x = -803.638, y = 164.012, z = 2427.369 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1061004, name = "ENTER_REGION_61004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_61004", action = "action_EVENT_ENTER_REGION_61004" },
	{ config_id = 1061007, name = "ENTER_REGION_61007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_61007", action = "action_EVENT_ENTER_REGION_61007" },
	{ config_id = 1061110, name = "ENTER_REGION_61110", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_61110", action = "action_EVENT_ENTER_REGION_61110" },
	{ config_id = 1061111, name = "ENTER_REGION_61111", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_61111", action = "action_EVENT_ENTER_REGION_61111" }
}

-- 点位
points = {
	{ config_id = 61009, pos = { x = -842.389, y = 167.608, z = 2295.269 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 24 }
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
		-- description = 起点,
		monsters = { },
		gadgets = { 61001 },
		regions = { 61005 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 分段1,
		monsters = { },
		gadgets = { 61003, 61010, 61016, 61017, 61018, 61019, 61022, 61026, 61054, 61055, 61056, 61061, 61062, 61063, 61064, 61065, 61079, 61080, 61081, 61082, 61083, 61084, 61112 },
		regions = { 61004 },
		triggers = { "ENTER_REGION_61004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 分段2,
		monsters = { },
		gadgets = { 61011, 61012, 61013, 61024, 61027, 61028, 61031, 61032, 61057, 61059, 61067, 61068, 61069, 61070, 61071, 61072, 61073, 61074, 61075, 61076, 61077, 61078, 61128 },
		regions = { 61007 },
		triggers = { "ENTER_REGION_61007" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 终点,
		monsters = { },
		gadgets = { 61002 },
		regions = { 61006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 挑战范围,
		monsters = { },
		gadgets = { },
		regions = { 61008 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 分段3,
		monsters = { },
		gadgets = { 61021, 61023, 61025, 61029, 61030, 61036, 61038, 61039, 61047, 61048, 61049, 61050, 61051, 61052, 61060, 61085, 61086, 61089, 61090, 61091, 61092, 61093, 61094, 61104, 61105, 61113 },
		regions = { 61110 },
		triggers = { "ENTER_REGION_61110" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 分段4,
		monsters = { },
		gadgets = { 61014, 61020, 61040, 61041, 61042, 61043, 61044, 61058, 61095, 61096, 61097, 61098, 61099, 61100, 61101, 61102, 61103, 61106, 61107 },
		regions = { 61111 },
		triggers = { "ENTER_REGION_61111" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 分段5,
		monsters = { },
		gadgets = { 61015 },
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

-- 触发条件
function condition_EVENT_ENTER_REGION_61004(context, evt)
	if evt.param1 ~= 61004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_61004(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302061, 3)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302061, EntityType.GADGET, 61055 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302061, EntityType.GADGET, 61056 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_61007(context, evt)
	if evt.param1 ~= 61007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_61007(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302061, 6)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302061, 2)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302061, EntityType.GADGET, 61057 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302061, EntityType.GADGET, 61059 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_61110(context, evt)
	if evt.param1 ~= 61110 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_61110(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302061, 7)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302061, 3)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302061, EntityType.GADGET, 61060 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302061, EntityType.GADGET, 61104 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_61111(context, evt)
	if evt.param1 ~= 61111 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_61111(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302061, 8)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302061, 6)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302061, EntityType.GADGET, 61106 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V3_0/Activity_Parkour"
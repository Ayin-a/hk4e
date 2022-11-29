-- 基础信息
local base_info = {
	group_id = 133302185
}

-- DEFS_MISCS
local defs = 
{
gallery_id = 24002,
challenge_time = 120,
--挑战操作台的configID
starter_gadget = 185001, 
--终点region的configID
end_regionID = 185006, 
--开启操作台后立刻加载的suites
load_on_start = {2, 4, 5}, 
--终点所在的suite
end_suite = 4, 
--赛道regions
parkour_regions = {185008},
--教学区region的configID
guide_regionID = 185005,
look_pos = {x=-1362.3, y=158.2, z=2371.697},
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
	{ config_id = 185001, gadget_id = 70350457, pos = { x = -1357.146, y = 158.594, z = 2368.060 }, rot = { x = 4.880, y = 359.018, z = 348.612 }, level = 30, area_id = 21 },
	{ config_id = 185002, gadget_id = 70360025, pos = { x = -1469.935, y = 194.327, z = 2327.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 185003, gadget_id = 70360095, pos = { x = -1476.232, y = 194.237, z = 2336.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 330200050, area_id = 21 },
	{ config_id = 185004, gadget_id = 70360095, pos = { x = -1478.925, y = 193.766, z = 2342.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 330200048, area_id = 21 },
	{ config_id = 185010, gadget_id = 70220122, pos = { x = -1362.363, y = 158.127, z = 2371.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185011, gadget_id = 70220121, pos = { x = -1476.575, y = 198.057, z = 2333.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185013, gadget_id = 70220121, pos = { x = -1381.771, y = 152.000, z = 2400.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185014, gadget_id = 70220121, pos = { x = -1384.823, y = 151.000, z = 2403.321 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185015, gadget_id = 70220121, pos = { x = -1388.473, y = 150.000, z = 2406.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185016, gadget_id = 70330197, pos = { x = -1377.217, y = 140.728, z = 2396.488 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185017, gadget_id = 70220121, pos = { x = -1377.217, y = 143.907, z = 2396.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185018, gadget_id = 70220121, pos = { x = -1377.217, y = 146.182, z = 2396.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185019, gadget_id = 70220121, pos = { x = -1377.217, y = 148.381, z = 2396.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185020, gadget_id = 70220121, pos = { x = -1400.208, y = 153.857, z = 2415.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185021, gadget_id = 70220103, pos = { x = -1392.964, y = 150.225, z = 2410.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185022, gadget_id = 70220121, pos = { x = -1398.419, y = 152.743, z = 2413.960 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185023, gadget_id = 70220103, pos = { x = -1419.782, y = 166.366, z = 2420.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185024, gadget_id = 70220121, pos = { x = -1416.274, y = 163.413, z = 2420.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185025, gadget_id = 70220122, pos = { x = -1407.380, y = 157.618, z = 2417.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185026, gadget_id = 70330197, pos = { x = -1419.782, y = 160.680, z = 2420.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185027, gadget_id = 70220121, pos = { x = -1419.782, y = 164.500, z = 2420.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185028, gadget_id = 70330197, pos = { x = -1454.996, y = 169.664, z = 2412.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185029, gadget_id = 70220122, pos = { x = -1455.048, y = 171.578, z = 2412.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185030, gadget_id = 70220103, pos = { x = -1454.996, y = 173.269, z = 2412.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185032, gadget_id = 70330197, pos = { x = -1470.945, y = 173.437, z = 2392.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185033, gadget_id = 70330197, pos = { x = -1481.389, y = 190.702, z = 2349.579 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185036, gadget_id = 70220121, pos = { x = -1470.945, y = 181.570, z = 2392.417 }, rot = { x = 0.000, y = 23.602, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185037, gadget_id = 70220121, pos = { x = -1477.651, y = 185.632, z = 2374.407 }, rot = { x = 292.054, y = 53.433, z = 11.442 }, level = 1, area_id = 21 },
	{ config_id = 185038, gadget_id = 70220103, pos = { x = -1470.945, y = 179.945, z = 2392.417 }, rot = { x = 0.000, y = 23.602, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185039, gadget_id = 70220103, pos = { x = -1478.943, y = 190.000, z = 2374.614 }, rot = { x = 0.000, y = 23.602, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185042, gadget_id = 70220103, pos = { x = -1481.389, y = 196.000, z = 2349.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185043, gadget_id = 70220121, pos = { x = -1476.575, y = 198.057, z = 2336.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185044, gadget_id = 70220121, pos = { x = -1475.015, y = 198.057, z = 2333.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185045, gadget_id = 70220121, pos = { x = -1475.015, y = 198.057, z = 2336.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185046, gadget_id = 70220121, pos = { x = -1477.239, y = 198.057, z = 2335.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185047, gadget_id = 70220121, pos = { x = -1474.246, y = 198.057, z = 2335.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185048, gadget_id = 70220121, pos = { x = -1378.167, y = 142.003, z = 2394.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185050, gadget_id = 70220121, pos = { x = -1378.167, y = 142.003, z = 2398.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185051, gadget_id = 70220121, pos = { x = -1376.606, y = 142.003, z = 2394.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185052, gadget_id = 70220121, pos = { x = -1376.606, y = 142.003, z = 2398.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185053, gadget_id = 70220121, pos = { x = -1378.830, y = 142.003, z = 2396.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185054, gadget_id = 70220121, pos = { x = -1375.838, y = 142.003, z = 2396.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185055, gadget_id = 70220121, pos = { x = -1413.259, y = 161.128, z = 2419.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185056, gadget_id = 70220121, pos = { x = -1453.519, y = 171.499, z = 2412.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185057, gadget_id = 70220121, pos = { x = -1456.512, y = 171.499, z = 2412.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185058, gadget_id = 70220121, pos = { x = -1454.288, y = 171.499, z = 2410.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185059, gadget_id = 70220121, pos = { x = -1454.288, y = 171.499, z = 2413.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185060, gadget_id = 70220121, pos = { x = -1455.848, y = 171.499, z = 2413.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185061, gadget_id = 70220121, pos = { x = -1455.848, y = 171.499, z = 2410.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185062, gadget_id = 70220121, pos = { x = -1419.782, y = 167.789, z = 2420.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185063, gadget_id = 70220121, pos = { x = -1469.795, y = 179.128, z = 2391.914 }, rot = { x = 0.000, y = 23.602, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185064, gadget_id = 70220121, pos = { x = -1472.071, y = 179.128, z = 2392.909 }, rot = { x = 0.000, y = 23.602, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185065, gadget_id = 70220121, pos = { x = -1470.945, y = 178.109, z = 2392.417 }, rot = { x = 0.000, y = 23.602, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185066, gadget_id = 70220121, pos = { x = -1469.795, y = 180.447, z = 2391.914 }, rot = { x = 0.000, y = 23.602, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185067, gadget_id = 70220121, pos = { x = -1472.071, y = 180.447, z = 2392.909 }, rot = { x = 0.000, y = 23.602, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185068, gadget_id = 70220121, pos = { x = -1480.644, y = 185.632, z = 2374.407 }, rot = { x = 292.054, y = 53.433, z = 11.442 }, level = 1, area_id = 21 },
	{ config_id = 185069, gadget_id = 70220121, pos = { x = -1478.420, y = 185.632, z = 2372.873 }, rot = { x = 292.054, y = 53.433, z = 11.442 }, level = 1, area_id = 21 },
	{ config_id = 185070, gadget_id = 70220121, pos = { x = -1478.420, y = 185.632, z = 2375.964 }, rot = { x = 292.054, y = 53.433, z = 11.442 }, level = 1, area_id = 21 },
	{ config_id = 185071, gadget_id = 70220121, pos = { x = -1479.980, y = 185.632, z = 2375.964 }, rot = { x = 292.054, y = 53.433, z = 11.442 }, level = 1, area_id = 21 },
	{ config_id = 185072, gadget_id = 70220121, pos = { x = -1479.980, y = 185.632, z = 2372.873 }, rot = { x = 292.054, y = 53.433, z = 11.442 }, level = 1, area_id = 21 },
	{ config_id = 185073, gadget_id = 70220122, pos = { x = -1479.480, y = 192.828, z = 2369.193 }, rot = { x = 5.835, y = 26.708, z = 0.910 }, level = 1, area_id = 21 },
	{ config_id = 185074, gadget_id = 70220121, pos = { x = -1480.559, y = 193.934, z = 2363.300 }, rot = { x = 13.884, y = 29.877, z = 6.464 }, level = 1, area_id = 21 },
	{ config_id = 185075, gadget_id = 70220121, pos = { x = -1480.930, y = 195.006, z = 2356.482 }, rot = { x = 359.561, y = 36.393, z = 359.688 }, level = 1, area_id = 21 },
	{ config_id = 185076, gadget_id = 70690031, pos = { x = -1478.215, y = 193.805, z = 2339.351 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, route_id = 330200049, area_id = 21 },
	{ config_id = 185077, gadget_id = 70220121, pos = { x = -1410.358, y = 158.986, z = 2418.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185078, gadget_id = 70220084, pos = { x = -1357.146, y = 159.283, z = 2368.060 }, rot = { x = 1.233, y = 306.275, z = 357.063 }, level = 1, area_id = 21 },
	{ config_id = 185080, gadget_id = 70330197, pos = { x = -1478.943, y = 183.381, z = 2374.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185081, gadget_id = 70220122, pos = { x = -1478.943, y = 185.412, z = 2374.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185082, gadget_id = 70220121, pos = { x = -1402.257, y = 154.731, z = 2416.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185083, gadget_id = 70220121, pos = { x = -1432.871, y = 172.936, z = 2418.776 }, rot = { x = 0.000, y = 12.422, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185084, gadget_id = 70220121, pos = { x = -1439.635, y = 173.000, z = 2417.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185085, gadget_id = 70220121, pos = { x = -1446.620, y = 173.000, z = 2415.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185087, gadget_id = 70220103, pos = { x = -1475.869, y = 199.000, z = 2335.462 }, rot = { x = 0.000, y = 23.602, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185088, gadget_id = 70220084, pos = { x = -1470.945, y = 179.945, z = 2392.417 }, rot = { x = 330.000, y = 205.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185089, gadget_id = 70220121, pos = { x = -1478.943, y = 188.137, z = 2374.614 }, rot = { x = 0.000, y = 23.602, z = 0.000 }, level = 1, area_id = 21 },
	-- C1
	{ config_id = 185090, gadget_id = 70350085, pos = { x = -1377.406, y = 142.546, z = 2396.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	-- C1
	{ config_id = 185091, gadget_id = 70710126, pos = { x = -1377.406, y = 142.546, z = 2396.506 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	-- C2
	{ config_id = 185092, gadget_id = 70350085, pos = { x = -1419.782, y = 162.492, z = 2420.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	-- C2
	{ config_id = 185093, gadget_id = 70710126, pos = { x = -1419.782, y = 163.118, z = 2420.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	-- C3
	{ config_id = 185094, gadget_id = 70350085, pos = { x = -1478.943, y = 183.615, z = 2374.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	-- C3
	{ config_id = 185095, gadget_id = 70710126, pos = { x = -1478.943, y = 184.938, z = 2374.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	-- C4
	{ config_id = 185096, gadget_id = 70350085, pos = { x = -1470.165, y = 194.830, z = 2327.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	-- C4
	{ config_id = 185097, gadget_id = 70710126, pos = { x = -1470.162, y = 194.830, z = 2327.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 185100, gadget_id = 70350349, pos = { x = -1396.715, y = 151.271, z = 2412.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185101, gadget_id = 70330197, pos = { x = -1367.866, y = 140.694, z = 2383.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 185102, gadget_id = 70220103, pos = { x = -1377.217, y = 151.000, z = 2396.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
	-- 指引教学
	{ config_id = 185005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1356.349, y = 158.901, z = 2368.078 }, area_id = 21 },
	{ config_id = 185006, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1469.905, y = 194.156, z = 2327.372 }, area_id = 21 },
	{ config_id = 185007, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1419.782, y = 163.118, z = 2420.900 }, area_id = 21 },
	{ config_id = 185008, shape = RegionShape.CUBIC, size = { x = 160.000, y = 120.000, z = 120.000 }, pos = { x = -1421.808, y = 161.310, z = 2380.958 }, area_id = 21 },
	{ config_id = 185098, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1377.406, y = 142.546, z = 2396.506 }, area_id = 21 },
	{ config_id = 185099, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1479.075, y = 184.921, z = 2374.938 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1185007, name = "ENTER_REGION_185007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_185007", action = "action_EVENT_ENTER_REGION_185007" },
	{ config_id = 1185098, name = "ENTER_REGION_185098", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_185098", action = "action_EVENT_ENTER_REGION_185098" },
	{ config_id = 1185099, name = "ENTER_REGION_185099", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_185099", action = "action_EVENT_ENTER_REGION_185099" }
}

-- 点位
points = {
	{ config_id = 185009, pos = { x = -1355.390, y = 158.594, z = 2368.060 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, area_id = 21 }
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
		gadgets = { 185001 },
		regions = { 185005 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 分段1,
		monsters = { },
		gadgets = { 185010, 185016, 185017, 185018, 185019, 185048, 185050, 185051, 185052, 185053, 185054, 185078, 185090, 185091, 185101, 185102 },
		regions = { 185098 },
		triggers = { "ENTER_REGION_185098" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 分段2,
		monsters = { },
		gadgets = { 185013, 185014, 185015, 185020, 185021, 185022, 185023, 185024, 185025, 185026, 185027, 185055, 185062, 185077, 185082, 185092, 185093, 185100 },
		regions = { 185007 },
		triggers = { "ENTER_REGION_185007" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 终点,
		monsters = { },
		gadgets = { 185002 },
		regions = { 185006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 挑战区域,
		monsters = { },
		gadgets = { },
		regions = { 185008 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 分段3,
		monsters = { },
		gadgets = { 185028, 185029, 185030, 185032, 185036, 185037, 185038, 185039, 185056, 185057, 185058, 185059, 185060, 185061, 185063, 185064, 185065, 185066, 185067, 185068, 185069, 185070, 185071, 185072, 185080, 185081, 185083, 185084, 185085, 185088, 185089, 185094, 185095 },
		regions = { 185099 },
		triggers = { "ENTER_REGION_185099" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 分段4,
		monsters = { },
		gadgets = { 185003, 185004, 185011, 185033, 185042, 185043, 185044, 185045, 185046, 185047, 185073, 185074, 185075, 185076, 185087, 185096, 185097 },
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
function condition_EVENT_ENTER_REGION_185007(context, evt)
	if evt.param1 ~= 185007 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_185007(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302185, 6)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302185, 2)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302185, EntityType.GADGET, 185092 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302185, EntityType.GADGET, 185093 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_185098(context, evt)
	if evt.param1 ~= 185098 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_185098(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302185, 3)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302185, EntityType.GADGET, 185090 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302185, EntityType.GADGET, 185091 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_185099(context, evt)
	if evt.param1 ~= 185099 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_185099(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302185, 7)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302185, 3)
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302185, EntityType.GADGET, 185094 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302185, EntityType.GADGET, 185095 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V3_0/Activity_Parkour"
-- 基础信息
local base_info = {
	group_id = 133225086
}

-- DEFS_MISCS
defs = {
        group_id = 133225086,
        questList = {7216719,7216619,7217226,7217320},          --按天填入完成的任务ID
        chestList = {86004,86005,86006},        --按Suite组填入每组Suite完成时打开的宝箱ID
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 86001, monster_id = 21020801, pos = { x = -6471.881, y = 202.614, z = -2792.422 }, rot = { x = 0.000, y = 47.477, z = 0.000 }, level = 33, drop_tag = "丘丘岩盔王", climate_area_id = 7, area_id = 18 },
	{ config_id = 86027, monster_id = 21010101, pos = { x = -6462.543, y = 201.937, z = -2798.093 }, rot = { x = 0.000, y = 231.056, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, climate_area_id = 7, area_id = 18 },
	{ config_id = 86029, monster_id = 21010101, pos = { x = -6459.602, y = 201.254, z = -2777.680 }, rot = { x = 0.000, y = 350.252, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, climate_area_id = 7, area_id = 18 },
	{ config_id = 86030, monster_id = 21010401, pos = { x = -6478.163, y = 201.909, z = -2785.081 }, rot = { x = 0.000, y = 295.293, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, climate_area_id = 7, area_id = 18 },
	{ config_id = 86070, monster_id = 21020801, pos = { x = -6487.821, y = 200.353, z = -2682.204 }, rot = { x = 0.000, y = 141.372, z = 0.000 }, level = 33, drop_tag = "丘丘岩盔王", disableWander = true, pose_id = 401, climate_area_id = 7, area_id = 18 },
	{ config_id = 86072, monster_id = 21010101, pos = { x = -6486.570, y = 200.147, z = -2689.487 }, rot = { x = 0.000, y = 13.247, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, climate_area_id = 7, area_id = 18 },
	{ config_id = 86073, monster_id = 21010101, pos = { x = -6482.446, y = 200.472, z = -2687.465 }, rot = { x = 0.000, y = 276.991, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, climate_area_id = 7, area_id = 18 },
	{ config_id = 86074, monster_id = 21020801, pos = { x = -6597.684, y = 200.329, z = -2710.091 }, rot = { x = 0.000, y = 121.591, z = 0.000 }, level = 33, drop_tag = "丘丘岩盔王", disableWander = true, pose_id = 401, area_id = 18 },
	{ config_id = 86076, monster_id = 22050201, pos = { x = -6472.482, y = 202.485, z = -2790.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "兽境猎犬", pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 86077, monster_id = 22040201, pos = { x = -6462.056, y = 202.694, z = -2791.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 86078, monster_id = 22040201, pos = { x = -6468.068, y = 201.824, z = -2782.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 86079, monster_id = 22050201, pos = { x = -6472.482, y = 202.485, z = -2790.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "兽境猎犬", pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 86080, monster_id = 22050201, pos = { x = -6462.056, y = 202.694, z = -2791.208 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "兽境猎犬", pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 86081, monster_id = 22050201, pos = { x = -6468.068, y = 201.824, z = -2782.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "兽境猎犬", pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 86085, monster_id = 24010101, pos = { x = -6497.138, y = 201.893, z = -2666.138 }, rot = { x = 0.000, y = 142.050, z = 0.000 }, level = 33, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101, climate_area_id = 7, area_id = 18 },
	{ config_id = 86086, monster_id = 24010101, pos = { x = -6480.707, y = 201.195, z = -2671.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "遗迹守卫", pose_id = 100, climate_area_id = 7, area_id = 18 },
	{ config_id = 86087, monster_id = 24010101, pos = { x = -6472.152, y = 202.687, z = -2680.288 }, rot = { x = 0.000, y = 272.100, z = 0.000 }, level = 33, drop_tag = "遗迹守卫", disableWander = true, pose_id = 100, climate_area_id = 7, area_id = 18 },
	{ config_id = 86088, monster_id = 22040201, pos = { x = -6460.724, y = 202.694, z = -2786.275 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "兽境幼兽", pose_id = 101, climate_area_id = 7, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 86002, gadget_id = 70310001, pos = { x = -6456.268, y = 201.835, z = -2794.644 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 86003, gadget_id = 70300086, pos = { x = -6464.042, y = 200.081, z = -2807.145 }, rot = { x = 0.000, y = 0.000, z = 339.165 }, level = 33, area_id = 18 },
	{ config_id = 86004, gadget_id = 70211002, pos = { x = -6467.840, y = 203.060, z = -2787.174 }, rot = { x = 0.000, y = 46.982, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 86005, gadget_id = 70211151, pos = { x = -6491.080, y = 200.185, z = -2685.510 }, rot = { x = 0.000, y = 127.318, z = 0.000 }, level = 26, chest_drop_id = 21910029, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 86006, gadget_id = 70211151, pos = { x = -6598.654, y = 200.255, z = -2715.717 }, rot = { x = 1.757, y = 23.216, z = 5.919 }, level = 26, chest_drop_id = 21910030, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 86010, gadget_id = 70300086, pos = { x = -6464.042, y = 200.081, z = -2807.145 }, rot = { x = 0.000, y = 0.000, z = 339.165 }, level = 33, area_id = 18 },
	{ config_id = 86011, gadget_id = 70300086, pos = { x = -6483.979, y = 200.617, z = -2784.579 }, rot = { x = 12.166, y = 0.000, z = 17.470 }, level = 33, area_id = 18 },
	{ config_id = 86012, gadget_id = 70300086, pos = { x = -6460.116, y = 200.274, z = -2775.272 }, rot = { x = 12.234, y = 357.440, z = 348.087 }, level = 33, area_id = 18 },
	{ config_id = 86013, gadget_id = 70310006, pos = { x = -6464.609, y = 201.812, z = -2799.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 86014, gadget_id = 70220013, pos = { x = -6466.689, y = 200.964, z = -2805.559 }, rot = { x = 0.000, y = 0.000, z = 350.389 }, level = 33, area_id = 18 },
	{ config_id = 86015, gadget_id = 70220013, pos = { x = -6462.084, y = 201.208, z = -2804.707 }, rot = { x = 356.560, y = 328.764, z = 354.351 }, level = 33, area_id = 18 },
	{ config_id = 86016, gadget_id = 70220026, pos = { x = -6462.010, y = 201.369, z = -2802.531 }, rot = { x = 0.000, y = 0.000, z = 357.834 }, level = 33, area_id = 18 },
	{ config_id = 86017, gadget_id = 70220026, pos = { x = -6463.938, y = 201.172, z = -2803.865 }, rot = { x = 0.000, y = 0.000, z = 349.905 }, level = 33, area_id = 18 },
	{ config_id = 86018, gadget_id = 70220026, pos = { x = -6468.461, y = 201.174, z = -2802.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 86019, gadget_id = 70300085, pos = { x = -6468.012, y = 202.661, z = -2787.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 86020, gadget_id = 70300088, pos = { x = -6483.272, y = 201.472, z = -2787.386 }, rot = { x = 0.000, y = 358.370, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 86021, gadget_id = 70300088, pos = { x = -6481.740, y = 201.179, z = -2782.097 }, rot = { x = 0.000, y = 33.902, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 86022, gadget_id = 70300088, pos = { x = -6479.763, y = 201.031, z = -2780.417 }, rot = { x = 0.000, y = 32.748, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 86023, gadget_id = 70220014, pos = { x = -6460.149, y = 200.887, z = -2775.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 86024, gadget_id = 70220014, pos = { x = -6457.666, y = 200.613, z = -2775.886 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 86025, gadget_id = 70220014, pos = { x = -6457.797, y = 200.707, z = -2777.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 86026, gadget_id = 70220014, pos = { x = -6461.476, y = 200.660, z = -2772.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 86028, gadget_id = 70300085, pos = { x = -6468.012, y = 202.661, z = -2787.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 86031, gadget_id = 70300086, pos = { x = -6464.042, y = 200.081, z = -2807.145 }, rot = { x = 0.000, y = 0.000, z = 339.165 }, level = 33, area_id = 18 },
	{ config_id = 86032, gadget_id = 70300086, pos = { x = -6483.979, y = 200.617, z = -2784.579 }, rot = { x = 12.166, y = 0.000, z = 17.470 }, level = 33, area_id = 18 },
	{ config_id = 86033, gadget_id = 70300086, pos = { x = -6460.116, y = 200.274, z = -2775.272 }, rot = { x = 12.234, y = 357.440, z = 348.087 }, level = 33, area_id = 18 },
	{ config_id = 86034, gadget_id = 70220013, pos = { x = -6465.469, y = 201.000, z = -2805.354 }, rot = { x = 21.332, y = 353.321, z = 332.545 }, level = 33, area_id = 18 },
	{ config_id = 86035, gadget_id = 70220013, pos = { x = -6462.209, y = 201.065, z = -2804.707 }, rot = { x = 337.278, y = 337.716, z = 316.696 }, level = 33, area_id = 18 },
	{ config_id = 86036, gadget_id = 70220026, pos = { x = -6460.114, y = 201.355, z = -2800.573 }, rot = { x = 0.000, y = 0.000, z = 306.912 }, level = 33, area_id = 18 },
	{ config_id = 86037, gadget_id = 70220026, pos = { x = -6466.159, y = 201.563, z = -2800.261 }, rot = { x = 24.298, y = 347.131, z = 320.867 }, level = 33, area_id = 18 },
	{ config_id = 86038, gadget_id = 70220026, pos = { x = -6466.381, y = 202.536, z = -2791.371 }, rot = { x = 18.365, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 86040, gadget_id = 70300088, pos = { x = -6479.291, y = 200.914, z = -2786.712 }, rot = { x = 1.368, y = 359.113, z = 57.040 }, level = 33, area_id = 18 },
	{ config_id = 86041, gadget_id = 70300088, pos = { x = -6463.985, y = 202.545, z = -2786.385 }, rot = { x = 0.536, y = 62.130, z = 68.897 }, level = 33, area_id = 18 },
	{ config_id = 86042, gadget_id = 70300088, pos = { x = -6479.638, y = 199.963, z = -2780.417 }, rot = { x = 2.492, y = 42.759, z = 43.353 }, level = 33, area_id = 18 },
	{ config_id = 86043, gadget_id = 70220014, pos = { x = -6466.121, y = 201.703, z = -2784.842 }, rot = { x = 15.965, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 86044, gadget_id = 70220014, pos = { x = -6456.745, y = 200.402, z = -2773.594 }, rot = { x = 330.306, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 86045, gadget_id = 70220014, pos = { x = -6457.423, y = 200.772, z = -2779.055 }, rot = { x = 19.428, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 86046, gadget_id = 70220014, pos = { x = -6461.476, y = 200.660, z = -2772.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 86047, gadget_id = 70310001, pos = { x = -6477.504, y = 200.989, z = -2799.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 86048, gadget_id = 70310001, pos = { x = -6471.066, y = 200.671, z = -2776.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 86049, gadget_id = 70310001, pos = { x = -6456.254, y = 201.694, z = -2793.975 }, rot = { x = 14.400, y = 184.337, z = -0.001 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 86050, gadget_id = 70310001, pos = { x = -6477.391, y = 201.146, z = -2799.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 86051, gadget_id = 70310001, pos = { x = -6471.066, y = 200.096, z = -2776.468 }, rot = { x = 39.319, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 86052, gadget_id = 70300086, pos = { x = -6483.979, y = 200.617, z = -2784.579 }, rot = { x = 12.166, y = 0.000, z = 17.470 }, level = 33, area_id = 18 },
	{ config_id = 86053, gadget_id = 70300086, pos = { x = -6460.116, y = 200.274, z = -2775.272 }, rot = { x = 12.234, y = 357.440, z = 348.087 }, level = 33, area_id = 18 },
	{ config_id = 86054, gadget_id = 70220013, pos = { x = -6465.469, y = 201.000, z = -2805.354 }, rot = { x = 21.332, y = 353.321, z = 332.545 }, level = 33, area_id = 18 },
	{ config_id = 86055, gadget_id = 70220013, pos = { x = -6462.209, y = 201.065, z = -2804.707 }, rot = { x = 337.278, y = 337.716, z = 316.696 }, level = 33, area_id = 18 },
	{ config_id = 86056, gadget_id = 70220026, pos = { x = -6460.114, y = 201.355, z = -2800.573 }, rot = { x = 0.000, y = 0.000, z = 306.912 }, level = 33, area_id = 18 },
	{ config_id = 86057, gadget_id = 70220026, pos = { x = -6466.159, y = 201.563, z = -2800.261 }, rot = { x = 24.298, y = 347.131, z = 320.867 }, level = 33, area_id = 18 },
	{ config_id = 86058, gadget_id = 70220026, pos = { x = -6466.381, y = 202.536, z = -2791.371 }, rot = { x = 18.365, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 86060, gadget_id = 70300088, pos = { x = -6479.291, y = 200.914, z = -2786.712 }, rot = { x = 1.368, y = 359.113, z = 57.040 }, level = 33, area_id = 18 },
	{ config_id = 86061, gadget_id = 70300088, pos = { x = -6464.021, y = 202.449, z = -2786.372 }, rot = { x = 0.536, y = 62.130, z = 68.897 }, level = 33, area_id = 18 },
	{ config_id = 86062, gadget_id = 70300088, pos = { x = -6479.638, y = 199.963, z = -2780.417 }, rot = { x = 2.492, y = 42.759, z = 43.353 }, level = 33, area_id = 18 },
	{ config_id = 86063, gadget_id = 70220014, pos = { x = -6466.121, y = 201.703, z = -2784.842 }, rot = { x = 15.965, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 86064, gadget_id = 70220014, pos = { x = -6456.745, y = 200.402, z = -2773.594 }, rot = { x = 330.306, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 86065, gadget_id = 70220014, pos = { x = -6457.423, y = 200.772, z = -2779.055 }, rot = { x = 19.428, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 86066, gadget_id = 70220014, pos = { x = -6461.476, y = 200.660, z = -2772.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 86067, gadget_id = 70310001, pos = { x = -6456.254, y = 201.694, z = -2793.975 }, rot = { x = 14.400, y = 184.337, z = -0.001 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 86068, gadget_id = 70310001, pos = { x = -6477.401, y = 201.258, z = -2799.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 86069, gadget_id = 70310001, pos = { x = -6471.066, y = 200.096, z = -2776.468 }, rot = { x = 39.319, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 86071, gadget_id = 70310006, pos = { x = -6484.893, y = 200.257, z = -2687.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 86075, gadget_id = 70310006, pos = { x = -6594.258, y = 200.418, z = -2712.404 }, rot = { x = 2.047, y = 359.791, z = 354.185 }, level = 33, state = GadgetState.GearStart, area_id = 18 },
	{ config_id = 86082, gadget_id = 70310007, pos = { x = -6472.152, y = 202.687, z = -2680.288 }, rot = { x = 0.000, y = 272.100, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 86083, gadget_id = 70310007, pos = { x = -6512.236, y = 200.173, z = -2684.644 }, rot = { x = 0.000, y = 73.120, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 86084, gadget_id = 70310007, pos = { x = -6497.138, y = 201.893, z = -2666.138 }, rot = { x = 0.000, y = 142.050, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 86089, gadget_id = 70300085, pos = { x = -6468.012, y = 202.661, z = -2787.237 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1086007, name = "ANY_MONSTER_DIE_86007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_86007", action = "action_EVENT_ANY_MONSTER_DIE_86007" },
	{ config_id = 1086008, name = "ANY_MONSTER_DIE_86008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_86008", action = "action_EVENT_ANY_MONSTER_DIE_86008" },
	{ config_id = 1086009, name = "ANY_MONSTER_DIE_86009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_86009", action = "action_EVENT_ANY_MONSTER_DIE_86009" }
}

-- 变量
variables = {
	{ config_id = 1, name = "chestState", value = 0, no_refresh = true },
	{ config_id = 2, name = "suiteBySeq", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 86039, gadget_id = 70300085, pos = { x = -6467.225, y = 202.847, z = -2789.052 }, rot = { x = 10.140, y = 268.491, z = 357.521 }, level = 33, area_id = 18 },
		{ config_id = 86059, gadget_id = 70300085, pos = { x = -6468.522, y = 202.139, z = -2787.237 }, rot = { x = 42.753, y = 71.303, z = 347.067 }, level = 33, area_id = 18 }
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
		monsters = { 86001, 86027, 86029, 86030 },
		gadgets = { 86002, 86004, 86010, 86011, 86012, 86013, 86014, 86015, 86016, 86017, 86018, 86019, 86020, 86021, 86022, 86023, 86024, 86025, 86026, 86047, 86048, 86082, 86083, 86084 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_86007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 86070, 86072, 86073, 86076, 86077, 86078, 86088 },
		gadgets = { 86005, 86028, 86031, 86032, 86033, 86034, 86035, 86036, 86037, 86038, 86040, 86041, 86042, 86043, 86044, 86045, 86046, 86049, 86050, 86051, 86071, 86082, 86083, 86084 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_86008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 86074, 86079, 86080, 86081, 86085, 86086, 86087 },
		gadgets = { 86003, 86006, 86052, 86053, 86054, 86055, 86056, 86057, 86058, 86060, 86061, 86062, 86063, 86064, 86065, 86066, 86067, 86068, 86069, 86075, 86089 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_86009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_86007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_86007(context, evt)
	-- 将configid为 86004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 86004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_86008(context, evt)
	--判断死亡怪物的configid是否为 86070
	if evt.param1 ~= 86070 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_86008(context, evt)
	-- 将configid为 86005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 86005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_86009(context, evt)
	--判断死亡怪物的configid是否为 86074
	if evt.param1 ~= 86074 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_86009(context, evt)
	-- 将configid为 86006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 86006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_2/DayFinishSuite"
-- 基础信息
local base_info = {
	group_id = 247022002
}

-- DEFS_MISCS
local defs ={
        gallery_id = 27005,
        finish_region = 2020,
        operator_time_1 = 20,
        operator_time_2 = 20,
        challenge_id = 8,
        ball_challenge_id = 7,
        ball_challenge_time = 30, 
        ability_region = 2135,
    }

local windball_list = {
 [2027] = 2,
 [2076] = 4,
 [2114] = 10,
}

local operator_list = {
        [2002] = {2001},
}

local revivepoint_list = {
        [2037] =2038,
        [2039] =2040,
        [2041] =2042,
        [2043] =2044,
}

local transfer_list = {
        [2098]=2038,
        [2009]=2040,
        [2083]=2042,
        [2094]=2044,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2050, monster_id = 21020201, pos = { x = -403.438, y = -3.875, z = -356.430 }, rot = { x = 0.000, y = 179.685, z = 0.000 }, level = 1, disableWander = true, pose_id = 401 },
	{ config_id = 2051, monster_id = 21010201, pos = { x = -407.223, y = -3.874, z = -357.687 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9002 },
	{ config_id = 2052, monster_id = 21010201, pos = { x = -398.457, y = -3.847, z = -357.912 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 9002 },
	{ config_id = 2053, monster_id = 21010501, pos = { x = -407.196, y = -3.875, z = -352.922 }, rot = { x = 0.000, y = 159.632, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 },
	{ config_id = 2054, monster_id = 21010501, pos = { x = -397.792, y = -3.875, z = -352.373 }, rot = { x = 0.000, y = 204.585, z = 0.000 }, level = 1, disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2001, gadget_id = 70800246, pos = { x = -389.111, y = -3.199, z = -417.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_Dir"]=2} },
	{ config_id = 2002, gadget_id = 70800247, pos = { x = -387.053, y = -2.116, z = -427.429 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 2003, gadget_id = 70800269, pos = { x = -412.789, y = 8.733, z = -393.404 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2004, gadget_id = 70800277, pos = { x = -398.490, y = -8.089, z = -388.900 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, is_guest_can_operate = true, server_global_value_config = {["SGV_Left_Dir"]=2} },
	{ config_id = 2005, gadget_id = 70800275, pos = { x = -408.377, y = -0.775, z = -391.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2006, gadget_id = 70800246, pos = { x = -396.733, y = -8.108, z = -383.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true },
	{ config_id = 2007, gadget_id = 70800246, pos = { x = -412.870, y = 0.530, z = -391.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true },
	{ config_id = 2008, gadget_id = 70800246, pos = { x = -504.514, y = 16.884, z = -407.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true },
	{ config_id = 2010, gadget_id = 70800277, pos = { x = -413.135, y = 0.508, z = -421.018 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, is_guest_can_operate = true, server_global_value_config = {["SGV_Left_Dir"]=2} },
	{ config_id = 2011, gadget_id = 70800246, pos = { x = -413.507, y = 0.441, z = -414.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_Dir"]=1} },
	{ config_id = 2012, gadget_id = 70800269, pos = { x = -460.302, y = 14.799, z = -401.659 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2013, gadget_id = 70800246, pos = { x = -429.069, y = 0.296, z = -418.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true },
	{ config_id = 2014, gadget_id = 70800246, pos = { x = -423.127, y = 0.293, z = -418.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_UpDown"]=1} },
	{ config_id = 2015, gadget_id = 70800246, pos = { x = -434.567, y = 0.285, z = -417.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true },
	{ config_id = 2016, gadget_id = 70800280, pos = { x = -434.022, y = 2.985, z = -418.607 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 2017, gadget_id = 70800280, pos = { x = -429.036, y = 2.985, z = -418.601 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 2018, gadget_id = 70800280, pos = { x = -424.013, y = 2.985, z = -418.619 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 2019, gadget_id = 70350355, pos = { x = -538.950, y = 16.772, z = -402.423 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 2021, gadget_id = 70800268, pos = { x = -496.825, y = 23.507, z = -391.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2022, gadget_id = 70800268, pos = { x = -501.311, y = 23.507, z = -391.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2023, gadget_id = 70800268, pos = { x = -504.525, y = 26.289, z = -394.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2024, gadget_id = 70800246, pos = { x = -505.019, y = 20.588, z = -391.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_UpDown"]=1} },
	{ config_id = 2025, gadget_id = 70800246, pos = { x = -493.816, y = 16.919, z = -395.116 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_UpDown"]=1} },
	{ config_id = 2026, gadget_id = 70800246, pos = { x = -493.678, y = 22.138, z = -391.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_Dir"]=3} },
	{ config_id = 2027, gadget_id = 70800281, pos = { x = -489.009, y = 18.170, z = -401.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2028, gadget_id = 70800268, pos = { x = -493.534, y = 18.331, z = -401.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2029, gadget_id = 70800268, pos = { x = -493.655, y = 20.023, z = -398.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2030, gadget_id = 70800268, pos = { x = -493.731, y = 21.291, z = -395.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2031, gadget_id = 70800268, pos = { x = -493.656, y = 23.361, z = -395.217 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2032, gadget_id = 70800268, pos = { x = -493.935, y = 23.755, z = -393.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2033, gadget_id = 70800268, pos = { x = -504.891, y = 24.207, z = -391.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2034, gadget_id = 70800268, pos = { x = -504.979, y = 26.291, z = -391.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2035, gadget_id = 70800268, pos = { x = -504.525, y = 23.537, z = -402.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2036, gadget_id = 70800268, pos = { x = -504.525, y = 25.061, z = -398.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2046, gadget_id = 70800268, pos = { x = -504.444, y = 24.660, z = -407.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2047, gadget_id = 70800269, pos = { x = -403.581, y = -2.775, z = -378.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2048, gadget_id = 70800269, pos = { x = -403.581, y = -2.625, z = -373.527 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2049, gadget_id = 70800269, pos = { x = -403.581, y = -2.467, z = -367.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2056, gadget_id = 70800269, pos = { x = -403.631, y = -2.550, z = -355.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2057, gadget_id = 70800269, pos = { x = -403.631, y = -2.550, z = -358.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2058, gadget_id = 70800269, pos = { x = -403.631, y = -2.550, z = -361.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2059, gadget_id = 70800269, pos = { x = -403.631, y = -2.550, z = -364.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2060, gadget_id = 70800269, pos = { x = -403.631, y = -2.550, z = -368.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2061, gadget_id = 70800246, pos = { x = -499.939, y = 16.953, z = -413.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, is_guest_can_operate = true, server_global_value_config = {["SGV_Switch_Dir"]=1} },
	{ config_id = 2062, gadget_id = 70800268, pos = { x = -501.171, y = 22.631, z = -413.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2063, gadget_id = 70800268, pos = { x = -504.444, y = 22.057, z = -407.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2064, gadget_id = 70800268, pos = { x = -504.547, y = 23.668, z = -413.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2065, gadget_id = 70800268, pos = { x = -497.768, y = 21.771, z = -413.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2066, gadget_id = 70800268, pos = { x = -494.515, y = 18.365, z = -413.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2067, gadget_id = 70800269, pos = { x = -412.835, y = 5.971, z = -391.066 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2068, gadget_id = 70800269, pos = { x = -412.835, y = 7.777, z = -391.119 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2069, gadget_id = 70350005, pos = { x = -518.231, y = 16.752, z = -402.648 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 2070, gadget_id = 70360002, pos = { x = -487.234, y = 16.886, z = -413.458 }, rot = { x = 0.154, y = 270.000, z = 359.935 }, level = 1, state = GadgetState.GearStop, is_guest_can_operate = true },
	{ config_id = 2072, gadget_id = 70800268, pos = { x = -491.028, y = 18.390, z = -413.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2073, gadget_id = 70360001, pos = { x = -487.214, y = 17.934, z = -413.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 2076, gadget_id = 70800281, pos = { x = -389.407, y = -1.833, z = -422.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2077, gadget_id = 70800269, pos = { x = -398.500, y = 1.482, z = -393.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2078, gadget_id = 70800269, pos = { x = -418.177, y = 2.026, z = -418.969 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2079, gadget_id = 70800269, pos = { x = -418.177, y = 2.026, z = -423.511 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2080, gadget_id = 70800269, pos = { x = -418.177, y = 2.026, z = -428.440 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2081, gadget_id = 70800269, pos = { x = -418.177, y = 2.026, z = -432.133 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2082, gadget_id = 70800269, pos = { x = -417.127, y = 2.026, z = -439.256 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2084, gadget_id = 70800268, pos = { x = -392.685, y = -2.164, z = -418.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2085, gadget_id = 70800268, pos = { x = -396.887, y = -2.164, z = -418.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2086, gadget_id = 70800268, pos = { x = -399.673, y = -2.164, z = -415.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2087, gadget_id = 70800268, pos = { x = -401.476, y = -1.712, z = -411.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2088, gadget_id = 70800268, pos = { x = -403.771, y = -6.507, z = -385.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2089, gadget_id = 70800268, pos = { x = -403.585, y = -5.583, z = -404.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2090, gadget_id = 70800268, pos = { x = -403.585, y = -6.684, z = -399.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2091, gadget_id = 70800268, pos = { x = -403.585, y = -6.727, z = -394.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2092, gadget_id = 70800268, pos = { x = -403.585, y = -6.629, z = -390.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2093, gadget_id = 70800268, pos = { x = -403.585, y = -4.741, z = -381.893 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2095, gadget_id = 70800269, pos = { x = -398.500, y = 2.518, z = -391.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2096, gadget_id = 70800269, pos = { x = -398.500, y = 0.123, z = -396.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2097, gadget_id = 70800269, pos = { x = -412.835, y = 9.460, z = -391.223 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2099, gadget_id = 70800269, pos = { x = -413.814, y = 2.026, z = -439.256 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2100, gadget_id = 70800269, pos = { x = -465.508, y = 15.884, z = -401.819 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2101, gadget_id = 70800269, pos = { x = -468.398, y = 17.366, z = -401.667 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2102, gadget_id = 70800269, pos = { x = -455.074, y = 14.562, z = -401.789 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2104, gadget_id = 70900201, pos = { x = -387.017, y = -1.392, z = -427.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2105, gadget_id = 70900201, pos = { x = -396.635, y = -5.413, z = -383.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2106, gadget_id = 70900201, pos = { x = -413.471, y = 2.768, z = -414.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2108, gadget_id = 70900201, pos = { x = -487.147, y = 18.598, z = -413.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2109, gadget_id = 70800269, pos = { x = -418.067, y = 2.026, z = -435.318 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2110, gadget_id = 70800269, pos = { x = -472.162, y = 18.261, z = -401.667 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2111, gadget_id = 70800269, pos = { x = -413.223, y = 2.026, z = -404.971 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2112, gadget_id = 70800269, pos = { x = -412.789, y = 8.065, z = -395.759 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2113, gadget_id = 70800269, pos = { x = -403.631, y = -2.550, z = -371.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, vision_level = VisionLevelType.VISION_LEVEL_NORMAL },
	{ config_id = 2114, gadget_id = 70800281, pos = { x = -418.708, y = 10.950, z = -418.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2115, gadget_id = 70800268, pos = { x = -423.473, y = 11.097, z = -418.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2116, gadget_id = 70800268, pos = { x = -425.927, y = 11.097, z = -418.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2117, gadget_id = 70800268, pos = { x = -428.224, y = 11.097, z = -418.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2118, gadget_id = 70800268, pos = { x = -431.077, y = 11.097, z = -418.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2119, gadget_id = 70800268, pos = { x = -434.923, y = 11.097, z = -418.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2120, gadget_id = 70800268, pos = { x = -439.572, y = 11.329, z = -418.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2121, gadget_id = 70800268, pos = { x = -444.739, y = 12.157, z = -418.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2122, gadget_id = 70800268, pos = { x = -449.078, y = 12.157, z = -418.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2123, gadget_id = 70800268, pos = { x = -454.299, y = 12.157, z = -417.921 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2124, gadget_id = 70800268, pos = { x = -454.861, y = 12.470, z = -414.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2125, gadget_id = 70800268, pos = { x = -454.861, y = 13.306, z = -411.898 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2126, gadget_id = 70800268, pos = { x = -454.861, y = 14.513, z = -407.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2134, gadget_id = 70900201, pos = { x = -403.321, y = -0.537, z = -356.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2139, gadget_id = 70900201, pos = { x = -538.963, y = 21.272, z = -402.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- region 2
	{ config_id = 2009, shape = RegionShape.CUBIC, size = { x = 200.000, y = 40.000, z = 180.000 }, pos = { x = -420.002, y = -35.000, z = -417.070 } },
	{ config_id = 2020, shape = RegionShape.SPHERE, radius = 5, pos = { x = -539.038, y = 17.616, z = -402.268 } },
	{ config_id = 2037, shape = RegionShape.SPHERE, radius = 5, pos = { x = -379.765, y = 0.071, z = -446.752 } },
	{ config_id = 2039, shape = RegionShape.SPHERE, radius = 5, pos = { x = -403.655, y = -7.396, z = -394.596 } },
	{ config_id = 2041, shape = RegionShape.SPHERE, radius = 5, pos = { x = -413.857, y = 1.963, z = -406.676 } },
	{ config_id = 2043, shape = RegionShape.SPHERE, radius = 5, pos = { x = -441.373, y = 11.618, z = -419.006 } },
	-- region 3
	{ config_id = 2083, shape = RegionShape.CUBIC, size = { x = 200.000, y = 40.000, z = 180.000 }, pos = { x = -416.127, y = -35.000, z = -417.070 } },
	-- region 3
	{ config_id = 2094, shape = RegionShape.CUBIC, size = { x = 180.000, y = 40.000, z = 150.000 }, pos = { x = -474.407, y = -36.000, z = -403.377 } },
	-- region 1
	{ config_id = 2098, shape = RegionShape.CUBIC, size = { x = 200.000, y = 40.000, z = 180.000 }, pos = { x = -413.987, y = -35.000, z = -417.070 } },
	{ config_id = 2103, shape = RegionShape.SPHERE, radius = 3, pos = { x = -403.466, y = -3.231, z = -373.135 } },
	{ config_id = 2107, shape = RegionShape.SPHERE, radius = 4, pos = { x = -478.206, y = 17.459, z = -401.647 } },
	-- 倾斜平台1UI移除
	{ config_id = 2127, shape = RegionShape.SPHERE, radius = 3, pos = { x = -396.536, y = -7.686, z = -383.554 } },
	{ config_id = 2128, shape = RegionShape.SPHERE, radius = 3, pos = { x = -387.121, y = -2.476, z = -427.606 } },
	-- 倾斜平台2UI移除
	{ config_id = 2129, shape = RegionShape.SPHERE, radius = 3, pos = { x = -413.530, y = 0.985, z = -414.394 } },
	{ config_id = 2130, shape = RegionShape.SPHERE, radius = 2, pos = { x = -487.174, y = 18.025, z = -413.345 } },
	-- 教程——开关
	{ config_id = 2131, shape = RegionShape.SPHERE, radius = 5, pos = { x = -387.071, y = -2.997, z = -428.271 } },
	-- 教程——浮力
	{ config_id = 2132, shape = RegionShape.SPHERE, radius = 5, pos = { x = -422.486, y = 1.706, z = -418.236 } },
	-- 教程——倾斜
	{ config_id = 2133, shape = RegionShape.SPHERE, radius = 5, pos = { x = -397.289, y = -7.724, z = -387.369 } },
	{ config_id = 2135, shape = RegionShape.SPHERE, radius = 150, pos = { x = -431.573, y = 4.419, z = -417.055 } },
	{ config_id = 2136, shape = RegionShape.SPHERE, radius = 10, pos = { x = -403.042, y = -3.837, z = -365.922 } },
	{ config_id = 2137, shape = RegionShape.SPHERE, radius = 3, pos = { x = -387.121, y = -2.476, z = -427.606 } },
	{ config_id = 2138, shape = RegionShape.SPHERE, radius = 5, pos = { x = -413.857, y = 1.963, z = -406.676 } },
	{ config_id = 2140, shape = RegionShape.SPHERE, radius = 2, pos = { x = -487.174, y = 18.025, z = -413.345 } },
	-- 倾斜平台2UI移除-保底
	{ config_id = 2141, shape = RegionShape.SPHERE, radius = 3, pos = { x = -413.530, y = 0.985, z = -414.394 } }
}

-- 触发器
triggers = {
	-- region 2
	{ config_id = 1002009, name = "ENTER_REGION_2009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", forbid_guest = false },
	{ config_id = 1002020, name = "ENTER_REGION_2020", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2020", action = "action_EVENT_ENTER_REGION_2020", trigger_count = 0, forbid_guest = false },
	{ config_id = 1002037, name = "ENTER_REGION_2037", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2037", action = "action_EVENT_ENTER_REGION_2037", forbid_guest = false },
	{ config_id = 1002039, name = "ENTER_REGION_2039", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2039", action = "action_EVENT_ENTER_REGION_2039", forbid_guest = false },
	{ config_id = 1002041, name = "ENTER_REGION_2041", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2041", action = "action_EVENT_ENTER_REGION_2041", trigger_count = 0, forbid_guest = false },
	{ config_id = 1002043, name = "ENTER_REGION_2043", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2043", action = "action_EVENT_ENTER_REGION_2043", forbid_guest = false },
	{ config_id = 1002045, name = "VARIABLE_CHANGE_2045", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_2045", action = "action_EVENT_VARIABLE_CHANGE_2045" },
	{ config_id = 1002055, name = "ANY_MONSTER_DIE_2055", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2055", action = "action_EVENT_ANY_MONSTER_DIE_2055" },
	{ config_id = 1002071, name = "GADGET_STATE_CHANGE_2071", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_2071", action = "action_EVENT_GADGET_STATE_CHANGE_2071" },
	{ config_id = 1002074, name = "GADGET_CREATE_2074", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_2074", action = "action_EVENT_GADGET_CREATE_2074" },
	{ config_id = 1002075, name = "SELECT_OPTION_2075", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2075", action = "action_EVENT_SELECT_OPTION_2075", forbid_guest = false },
	-- region 3
	{ config_id = 1002083, name = "ENTER_REGION_2083", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", forbid_guest = false },
	-- region 3
	{ config_id = 1002094, name = "ENTER_REGION_2094", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", forbid_guest = false },
	-- region 1
	{ config_id = 1002098, name = "ENTER_REGION_2098", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", forbid_guest = false },
	{ config_id = 1002103, name = "ENTER_REGION_2103", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2103", action = "action_EVENT_ENTER_REGION_2103" },
	{ config_id = 1002107, name = "ENTER_REGION_2107", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2107", action = "action_EVENT_ENTER_REGION_2107", forbid_guest = false },
	-- 倾斜平台1UI移除
	{ config_id = 1002127, name = "ENTER_REGION_2127", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2127", action = "action_EVENT_ENTER_REGION_2127", forbid_guest = false },
	{ config_id = 1002128, name = "ENTER_REGION_2128", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2128", action = "action_EVENT_ENTER_REGION_2128" },
	-- 倾斜平台2UI移除
	{ config_id = 1002129, name = "ENTER_REGION_2129", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2129", action = "action_EVENT_ENTER_REGION_2129", forbid_guest = false },
	{ config_id = 1002130, name = "ENTER_REGION_2130", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2130", action = "action_EVENT_ENTER_REGION_2130" },
	-- 教程——开关
	{ config_id = 1002131, name = "ENTER_REGION_2131", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2131", action = "action_EVENT_ENTER_REGION_2131" },
	-- 教程——浮力
	{ config_id = 1002132, name = "ENTER_REGION_2132", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2132", action = "action_EVENT_ENTER_REGION_2132" },
	-- 教程——倾斜
	{ config_id = 1002133, name = "ENTER_REGION_2133", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2133", action = "action_EVENT_ENTER_REGION_2133" },
	{ config_id = 1002135, name = "ENTER_REGION_2135", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0, forbid_guest = false },
	{ config_id = 1002136, name = "ENTER_REGION_2136", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2136", action = "action_EVENT_ENTER_REGION_2136" },
	{ config_id = 1002137, name = "ENTER_REGION_2137", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2137", action = "action_EVENT_ENTER_REGION_2137", trigger_count = 0 },
	{ config_id = 1002138, name = "ENTER_REGION_2138", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2138", action = "action_EVENT_ENTER_REGION_2138", forbid_guest = false },
	{ config_id = 1002140, name = "ENTER_REGION_2140", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2140", action = "action_EVENT_ENTER_REGION_2140", trigger_count = 0 },
	-- 倾斜平台2UI移除-保底
	{ config_id = 1002141, name = "ENTER_REGION_2141", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2141", action = "action_EVENT_ENTER_REGION_2141", trigger_count = 0, forbid_guest = false }
}

-- 点位
points = {
	{ config_id = 2038, pos = { x = -388.765, y = -3.152, z = -430.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 2040, pos = { x = -404.484, y = -8.138, z = -388.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 2042, pos = { x = -418.308, y = 0.538, z = -419.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 2044, pos = { x = -457.118, y = 13.561, z = -400.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
}

-- 变量
variables = {
}

-- 视野组
sight_groups = {
	{ 2006, 2004 },
	{ 2011, 2010 },
	{ 2015, 2016 },
	{ 2013, 2017 },
	{ 2014, 2018 }
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
		monsters = { 2050, 2051, 2052, 2053, 2054 },
		gadgets = { 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2024, 2025, 2026, 2027, 2047, 2048, 2049, 2061, 2067, 2068, 2069, 2070, 2076, 2077, 2078, 2079, 2080, 2081, 2082, 2095, 2096, 2097, 2099, 2100, 2101, 2102, 2109, 2110, 2111, 2112, 2114 },
		regions = { 2020, 2037, 2039, 2041, 2043, 2107, 2127, 2128, 2129, 2130, 2131, 2132, 2133, 2135, 2137, 2138, 2140, 2141 },
		triggers = { "ENTER_REGION_2020", "ENTER_REGION_2037", "ENTER_REGION_2039", "ENTER_REGION_2041", "ENTER_REGION_2043", "VARIABLE_CHANGE_2045", "ANY_MONSTER_DIE_2055", "GADGET_STATE_CHANGE_2071", "GADGET_CREATE_2074", "SELECT_OPTION_2075", "ENTER_REGION_2107", "ENTER_REGION_2127", "ENTER_REGION_2128", "ENTER_REGION_2129", "ENTER_REGION_2130", "ENTER_REGION_2131", "ENTER_REGION_2132", "ENTER_REGION_2133", "ENTER_REGION_2135", "ENTER_REGION_2137", "ENTER_REGION_2138", "ENTER_REGION_2140", "ENTER_REGION_2141" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 2021, 2022, 2023, 2028, 2029, 2030, 2031, 2032, 2033, 2034, 2035, 2036, 2046, 2062, 2063, 2064, 2065, 2066, 2072 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 2056, 2057, 2058, 2059, 2060, 2113 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 2084, 2085, 2086, 2087, 2088, 2089, 2090, 2091, 2092, 2093 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 2098 },
		triggers = { "ENTER_REGION_2098" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 2009 },
		triggers = { "ENTER_REGION_2009" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 2083 },
		triggers = { "ENTER_REGION_2083" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 2094 },
		triggers = { "ENTER_REGION_2094" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 2103 },
		triggers = { "ENTER_REGION_2103" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 2115, 2116, 2117, 2118, 2119, 2120, 2121, 2122, 2123, 2124, 2125, 2126 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 2105 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 2106 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 2104 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = ,
		monsters = { },
		gadgets = { 2134 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 2136 },
		triggers = { "ENTER_REGION_2136" },
		rand_weight = 100
	},
	{
		-- suite_id = 16,
		-- description = ,
		monsters = { },
		gadgets = { 2108 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 17,
		-- description = ,
		monsters = { },
		gadgets = { 2139 },
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
function condition_EVENT_ENTER_REGION_2020(context, evt)
	if evt.param1 ~= 2020 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2020(context, evt)
	-- 删除suite17的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 17)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2037(context, evt)
	if evt.param1 ~= 2037 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2037(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247022002, 5)
	
	-- 添加suite13的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247022002, 13)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 7)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2039(context, evt)
	if evt.param1 ~= 2039 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2039(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247022002, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 7)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2041(context, evt)
	if evt.param1 ~= 2041 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2041(context, evt)
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2043(context, evt)
	if evt.param1 ~= 2043 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2043(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 6)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 7)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247022002, 8)
	
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_2045(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Ball_Challenge_Finish"为2027
	if ScriptLib.GetGroupVariableValue(context, "Ball_Challenge_Finish") ~= 2027 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_2045(context, evt)
	-- 将configid为 2070 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2070, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为2073的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2073 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2055(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2055(context, evt)
	-- 删除suite14的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 14)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247022002, 3)
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247022002, 9)
	
	-- 调用提示id为 470210105 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 470210105) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_2071(context, evt)
	if 2070 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_2071(context, evt)
	-- 将configid为 2069 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2069, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-510，17，-402.5），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-510, y=17, z=-402.5}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_2074(context, evt)
	if 2073 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_2074(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 247022002, 2073, {789}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_2075(context, evt)
	-- 判断是gadgetid 2073 option_id 789
	if 2073 ~= evt.param1 then
		return false	
	end
	
	if 789 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2075(context, evt)
	-- 将configid为 2069 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2069, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 2073 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 2070 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2070, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 247022002 ；指定config：2073；物件身上指定option：789；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247022002, 2073, 789) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2103(context, evt)
	if evt.param1 ~= 2103 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2103(context, evt)
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247022002, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2107(context, evt)
	if evt.param1 ~= 2107 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2107(context, evt)
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 12)
	
	-- 添加suite16的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247022002, 16)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2127(context, evt)
	if evt.param1 ~= 2127 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2127(context, evt)
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 11)
	
	-- 删除suite15的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 15)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2128(context, evt)
	if evt.param1 ~= 2128 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2128(context, evt)
	-- 删除suite13的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 13)
	
	-- 添加suite14的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247022002, 14)
	
	-- 添加suite15的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247022002, 15)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2129(context, evt)
	if evt.param1 ~= 2129 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2129(context, evt)
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2130(context, evt)
	if evt.param1 ~= 2130 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2130(context, evt)
	-- 删除suite16的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 16)
	
	-- 添加suite17的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247022002, 17)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2131(context, evt)
	if evt.param1 ~= 2131 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2131(context, evt)
	local list = {ScriptLib.GetSceneUidList(context),}
	local count = 0
	for k,v in pairs(list) do
	    count = count + 1
	end
	
	if count == 1 then
		ScriptLib.AssignPlayerShowTemplateReminder(context, 206, {param_vec = {}, param_uid_vec = {}, uid_vec = {context.uid}})
	
		return 0
	else return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2132(context, evt)
	if evt.param1 ~= 2132 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2132(context, evt)
	local list = {ScriptLib.GetSceneUidList(context),}
	local count = 0
	for k,v in pairs(list) do
	    count = count + 1
	end
	
	if count == 1 then
		ScriptLib.AssignPlayerShowTemplateReminder(context, 209, {param_vec = {}, param_uid_vec = {}, uid_vec = {context.uid}})
	
		return 0
	else return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2133(context, evt)
	if evt.param1 ~= 2133 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2133(context, evt)
	local list = {ScriptLib.GetSceneUidList(context),}
	local count = 0
	for k,v in pairs(list) do
	    count = count + 1
	end
	
	if count == 1 then
		ScriptLib.AssignPlayerShowTemplateReminder(context, 208, {param_vec = {}, param_uid_vec = {}, uid_vec = {context.uid}})
	
		return 0
	else return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2136(context, evt)
	if evt.param1 ~= 2136 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2136(context, evt)
	-- 删除suite14的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 14)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2137(context, evt)
	if evt.param1 ~= 2137 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2137(context, evt)
	-- 删除suite13的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 13)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2138(context, evt)
	if evt.param1 ~= 2138 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2138(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 5)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 6)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247022002, 7)
	
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247022002, 12)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 11)
	
	-- 删除suite13的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 13)
	
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 8)
	
	-- 删除suite15的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 15)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2140(context, evt)
	if evt.param1 ~= 2140 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2140(context, evt)
	-- 删除suite16的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 16)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_2141(context, evt)
	if evt.param1 ~= 2141 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2141(context, evt)
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 247022002, 12)
	
	return 0
end

require "V3_1/Activity_WindMaze"
require "V3_1/Activity_WindMaze_Normal"
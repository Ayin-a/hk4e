-- 基础信息
local base_info = {
	group_id = 133304053
}

-- DEFS_MISCS
local defs = 
{
    
    challenge_id = 2010057,

    starter_option_id = 175,
    dig_option_id = 39,
    energy_ball_suite = 14,

}

local play_stage =
{
    [1] = 
    {
        gallery_id = 26003,
        challenge_time = 120,
        optimize_region = 53089,
        
        element_target = 6,
        starter_operator_configID = 53012,
        dig_operator_configID = 53016,

        starter_operator_suite = 2,
        level_suite = 3,
        dig_operator_suite = 4,
        treasure_suite = 5,
        treasure_configID = 53017,
    },

    [2] = 
    {
        gallery_id = 26003,
        challenge_time = 120,
        optimize_region = 53090,

        element_target = 7,

        starter_operator_configID = 53026,
        dig_operator_configID = 53027,

        starter_operator_suite = 6,
        level_suite = 7,
        dig_operator_suite = 8,
        treasure_suite = 9,
        treasure_configID = 53028,

    },

    [3] = 
    {
        gallery_id = 26003,
        challenge_time = 120,
        optimize_region = 53091,

        element_target = 5,

        starter_operator_configID = 53029,
        dig_operator_configID = 53033,

        starter_operator_suite = 10,
        level_suite = 11,
        dig_operator_suite = 12,
        treasure_suite = 13,
        treasure_configID = 53034,

    }

}

local extra_elements =
{
    53018,53019,53020,53021,53022,53023,53024
,53025,53074,53075,53076,53077,53078,53079,53080,53081
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 53001, monster_id = 26120101, pos = { x = -1734.310, y = 256.667, z = 2861.148 }, rot = { x = 0.000, y = 226.411, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 201, area_id = 21 },
	{ config_id = 53002, monster_id = 26090701, pos = { x = -1728.197, y = 257.783, z = 2856.070 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 101, area_id = 21 },
	{ config_id = 53013, monster_id = 20010601, pos = { x = -1713.369, y = 229.356, z = 2919.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 21 },
	{ config_id = 53014, monster_id = 20011201, pos = { x = -1714.708, y = 230.083, z = 2916.588 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 21 },
	{ config_id = 53015, monster_id = 20011201, pos = { x = -1710.099, y = 229.364, z = 2920.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 21 },
	{ config_id = 53030, monster_id = 26090701, pos = { x = -1737.703, y = 257.197, z = 2859.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 101, area_id = 21 },
	{ config_id = 53031, monster_id = 20010601, pos = { x = -1731.592, y = 259.542, z = 2850.340 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 21 },
	{ config_id = 53032, monster_id = 20010601, pos = { x = -1738.106, y = 259.352, z = 2853.060 }, rot = { x = 0.000, y = 33.847, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 21 },
	{ config_id = 53054, monster_id = 26120101, pos = { x = -1715.424, y = 229.595, z = 2920.807 }, rot = { x = 0.000, y = 109.882, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 201, area_id = 21 },
	{ config_id = 53055, monster_id = 26090401, pos = { x = -1716.780, y = 230.512, z = 2916.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 101, area_id = 21 },
	{ config_id = 53071, monster_id = 26090401, pos = { x = -1712.043, y = 229.785, z = 2923.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 101, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 53003, gadget_id = 70290449, pos = { x = -1676.779, y = 260.883, z = 2821.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 53004, gadget_id = 70290449, pos = { x = -1690.784, y = 260.484, z = 2779.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 53005, gadget_id = 70290449, pos = { x = -1738.379, y = 270.732, z = 2796.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 53006, gadget_id = 70290449, pos = { x = -1662.713, y = 228.984, z = 2877.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 53007, gadget_id = 70290449, pos = { x = -1760.664, y = 266.266, z = 2862.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 53008, gadget_id = 70290449, pos = { x = -1792.958, y = 238.366, z = 2965.743 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 53009, gadget_id = 70290449, pos = { x = -1850.864, y = 253.954, z = 2907.165 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 53010, gadget_id = 70290449, pos = { x = -1853.448, y = 262.605, z = 2839.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 53011, gadget_id = 70290449, pos = { x = -1897.650, y = 248.396, z = 2889.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 53012, gadget_id = 70290406, pos = { x = -1709.600, y = 228.754, z = 2915.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 53016, gadget_id = 70290450, pos = { x = -1709.600, y = 228.754, z = 2915.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 53017, gadget_id = 70210121, pos = { x = -1709.600, y = 228.708, z = 2915.870 }, rot = { x = 0.000, y = 305.086, z = 0.000 }, level = 26, chest_drop_id = 200020131, drop_count = 1, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 53018, gadget_id = 70290551, pos = { x = -1720.980, y = 265.395, z = 2833.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 53019, gadget_id = 70290551, pos = { x = -1723.366, y = 265.439, z = 2833.660 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 53020, gadget_id = 70290551, pos = { x = -1721.609, y = 265.239, z = 2834.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 53021, gadget_id = 70290551, pos = { x = -1718.186, y = 265.555, z = 2831.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 53022, gadget_id = 70290551, pos = { x = -1719.224, y = 265.262, z = 2834.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 53023, gadget_id = 70290551, pos = { x = -1717.448, y = 265.022, z = 2835.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 53024, gadget_id = 70290551, pos = { x = -1718.504, y = 265.579, z = 2831.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 53025, gadget_id = 70290551, pos = { x = -1716.749, y = 265.147, z = 2833.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 53026, gadget_id = 70290406, pos = { x = -1857.036, y = 258.307, z = 2854.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 53027, gadget_id = 70290450, pos = { x = -1857.036, y = 258.307, z = 2854.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 53028, gadget_id = 70210121, pos = { x = -1857.033, y = 258.174, z = 2854.302 }, rot = { x = 7.813, y = 0.205, z = 3.435 }, level = 26, chest_drop_id = 200020132, drop_count = 1, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 53029, gadget_id = 70290406, pos = { x = -1733.339, y = 258.419, z = 2854.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 53033, gadget_id = 70290450, pos = { x = -1733.339, y = 258.419, z = 2854.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 53034, gadget_id = 70210121, pos = { x = -1733.341, y = 258.395, z = 2854.719 }, rot = { x = 0.000, y = 291.619, z = 345.936 }, level = 26, chest_drop_id = 200020133, drop_count = 1, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 53036, gadget_id = 70290452, pos = { x = -1709.600, y = 228.754, z = 2915.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53037, gadget_id = 70290452, pos = { x = -1857.036, y = 258.307, z = 2854.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53038, gadget_id = 70290452, pos = { x = -1733.288, y = 258.790, z = 2854.815 }, rot = { x = 14.673, y = 8.713, z = 354.592 }, level = 1, area_id = 21 },
	{ config_id = 53039, gadget_id = 70290451, pos = { x = -1709.600, y = 228.754, z = 2915.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 330400034, area_id = 21 },
	{ config_id = 53040, gadget_id = 70290451, pos = { x = -1733.339, y = 258.419, z = 2854.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 330400036, area_id = 21 },
	{ config_id = 53041, gadget_id = 70290451, pos = { x = -1857.036, y = 258.307, z = 2854.309 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 330400035, area_id = 21 },
	{ config_id = 53042, gadget_id = 70330197, pos = { x = -1786.288, y = 232.587, z = 2964.616 }, rot = { x = 0.000, y = 120.679, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53043, gadget_id = 70220109, pos = { x = -1739.019, y = 269.934, z = 2797.856 }, rot = { x = 0.000, y = 263.165, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53047, gadget_id = 70220103, pos = { x = -1691.012, y = 263.792, z = 2780.155 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53049, gadget_id = 70220109, pos = { x = -1737.871, y = 269.444, z = 2797.583 }, rot = { x = 0.000, y = 99.481, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53050, gadget_id = 70220109, pos = { x = -1737.660, y = 269.038, z = 2796.049 }, rot = { x = 0.000, y = 315.622, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53051, gadget_id = 70220109, pos = { x = -1738.909, y = 268.987, z = 2794.674 }, rot = { x = 0.000, y = 51.616, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53052, gadget_id = 70220109, pos = { x = -1739.929, y = 269.588, z = 2795.235 }, rot = { x = 0.000, y = 277.550, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53056, gadget_id = 70220109, pos = { x = -1739.921, y = 270.170, z = 2797.187 }, rot = { x = 0.000, y = 203.769, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53058, gadget_id = 70330197, pos = { x = -1680.355, y = 253.636, z = 2822.631 }, rot = { x = 1.862, y = 50.314, z = 356.181 }, level = 1, area_id = 21 },
	{ config_id = 53060, gadget_id = 70290408, pos = { x = -1857.797, y = 257.876, z = 2862.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53061, gadget_id = 70290408, pos = { x = -1861.702, y = 257.322, z = 2867.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53062, gadget_id = 70290408, pos = { x = -1865.267, y = 261.818, z = 2872.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53063, gadget_id = 70290408, pos = { x = -1868.951, y = 261.818, z = 2873.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53064, gadget_id = 70290408, pos = { x = -1876.621, y = 261.818, z = 2873.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53065, gadget_id = 70290408, pos = { x = -1883.744, y = 262.797, z = 2865.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53066, gadget_id = 70290408, pos = { x = -1881.145, y = 263.151, z = 2852.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53067, gadget_id = 70330197, pos = { x = -1865.267, y = 255.606, z = 2872.182 }, rot = { x = 0.000, y = 182.483, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53069, gadget_id = 70690011, pos = { x = -1880.295, y = 245.427, z = 2872.333 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53070, gadget_id = 70220103, pos = { x = -1878.470, y = 264.975, z = 2849.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53074, gadget_id = 70290551, pos = { x = -1722.910, y = 259.999, z = 2842.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53075, gadget_id = 70290551, pos = { x = -1720.303, y = 259.160, z = 2843.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53076, gadget_id = 70290551, pos = { x = -1724.169, y = 259.727, z = 2844.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53077, gadget_id = 70290551, pos = { x = -1726.091, y = 260.779, z = 2841.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53078, gadget_id = 70290551, pos = { x = -1720.886, y = 259.967, z = 2841.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53079, gadget_id = 70290551, pos = { x = -1718.312, y = 258.705, z = 2844.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53080, gadget_id = 70290551, pos = { x = -1723.620, y = 261.101, z = 2839.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53081, gadget_id = 70290551, pos = { x = -1719.241, y = 259.697, z = 2841.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 53082, gadget_id = 70330197, pos = { x = -1853.752, y = 261.681, z = 2806.838 }, rot = { x = 359.018, y = 304.635, z = 1.421 }, level = 1, area_id = 21 },
	{ config_id = 53083, gadget_id = 70330197, pos = { x = -1854.762, y = 261.710, z = 2809.132 }, rot = { x = 0.558, y = 37.706, z = 4.216 }, level = 1, area_id = 21 },
	{ config_id = 53084, gadget_id = 70330197, pos = { x = -1891.130, y = 244.011, z = 2898.495 }, rot = { x = 341.995, y = 61.266, z = 10.053 }, level = 1, area_id = 21 },
	{ config_id = 53085, gadget_id = 70330197, pos = { x = -1890.850, y = 244.790, z = 2901.525 }, rot = { x = 341.401, y = 105.056, z = 358.022 }, level = 1, area_id = 21 },
	{ config_id = 53086, gadget_id = 70220103, pos = { x = -1897.650, y = 252.720, z = 2889.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
	-- 玩法区域 REGION
	{ config_id = 53035, shape = RegionShape.SPHERE, radius = 170, pos = { x = -1773.742, y = 288.254, z = 2858.601 }, area_id = 21 },
	-- 挑战1region
	{ config_id = 53089, shape = RegionShape.SPHERE, radius = 60, pos = { x = -1696.327, y = 227.836, z = 2907.586 }, area_id = 21 },
	-- 挑战2region
	{ config_id = 53090, shape = RegionShape.POLYGON, pos = { x = -1876.440, y = 252.200, z = 2860.766 }, height = 118.200, point_array = { { x = -1826.515, y = 2861.438 }, { x = -1842.650, y = 2821.283 }, { x = -1871.033, y = 2812.019 }, { x = -1895.559, y = 2824.496 }, { x = -1926.364, y = 2866.687 }, { x = -1891.222, y = 2909.513 }, { x = -1854.280, y = 2899.702 } }, area_id = 21 },
	-- 挑战3region
	{ config_id = 53091, shape = RegionShape.SPHERE, radius = 50, pos = { x = -1733.736, y = 259.396, z = 2854.903 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1053053, name = "ANY_MONSTER_DIE_53053", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_53053", action = "action_EVENT_ANY_MONSTER_DIE_53053" },
	{ config_id = 1053057, name = "CHALLENGE_FAIL_53057", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_53057", trigger_count = 0 },
	{ config_id = 1053072, name = "ANY_MONSTER_DIE_53072", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_53072", action = "action_EVENT_ANY_MONSTER_DIE_53072" },
	{ config_id = 1053073, name = "CHALLENGE_FAIL_53073", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_53073", trigger_count = 0 },
	{ config_id = 1053087, name = "GADGET_CREATE_53087", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_53087", action = "action_EVENT_GADGET_CREATE_53087", trigger_count = 0 },
	{ config_id = 1053088, name = "GADGET_CREATE_53088", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_53088", action = "action_EVENT_GADGET_CREATE_53088", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 53044, monster_id = 20010601, pos = { x = -1862.458, y = 257.924, z = 2849.604 }, rot = { x = 0.000, y = 27.569, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 21 },
		{ config_id = 53045, monster_id = 20011201, pos = { x = -1856.622, y = 258.777, z = 2848.733 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 21 },
		{ config_id = 53046, monster_id = 20011201, pos = { x = -1864.776, y = 256.768, z = 2855.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 21 }
	},
	gadgets = {
		{ config_id = 53048, gadget_id = 70220103, pos = { x = -1640.771, y = 236.898, z = 2876.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
		{ config_id = 53059, gadget_id = 70220103, pos = { x = -1673.824, y = 263.462, z = 2821.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
		{ config_id = 53068, gadget_id = 70220103, pos = { x = -1871.558, y = 261.818, z = 2873.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 }
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
		monsters = { },
		gadgets = { 53042, 53043, 53047, 53049, 53050, 53051, 53052, 53056, 53058, 53082, 53083, 53084, 53085, 53086 },
		regions = { 53035 },
		triggers = { "GADGET_CREATE_53087", "GADGET_CREATE_53088" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 53012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 53013, 53014, 53015 },
		gadgets = { 53036, 53039 },
		regions = { 53089 },
		triggers = { "ANY_MONSTER_DIE_53053", "CHALLENGE_FAIL_53057" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 53016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 53017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 53026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 53037, 53041, 53060, 53061, 53062, 53063, 53064, 53065, 53066, 53067, 53069, 53070 },
		regions = { 53090 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 53027 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 53028 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 53029 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { 53001, 53002, 53030 },
		gadgets = { 53038, 53040 },
		regions = { 53091 },
		triggers = { "ANY_MONSTER_DIE_53072", "CHALLENGE_FAIL_53073" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 53033 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 53034 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = ,
		monsters = { },
		gadgets = { 53003, 53004, 53005, 53006, 53007, 53008, 53009, 53010, 53011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = ,
		monsters = { 53054, 53055, 53071 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 16,
		-- description = ,
		monsters = { 53031, 53032 },
		gadgets = { },
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
function condition_EVENT_ANY_MONSTER_DIE_53053(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_53053(context, evt)
	-- 添加suite15的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304053, 15)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_53057(context, evt)
	-- 删除suite15的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304053, 15)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_53072(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_53072(context, evt)
	-- 添加suite16的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304053, 16)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_53073(context, evt)
	-- 删除suite16的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304053, 16)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_53087(context, evt)
	if 53041 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_53087(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304053, EntityType.GADGET, 53086 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_53088(context, evt)
	if 53011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_53088(context, evt)
	-- 创建id为53086的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 53086 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V3_0/Activity_TreasureSeelie"
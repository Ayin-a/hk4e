-- 基础信息
local base_info = {
	group_id = 133302232
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
        gallery_id = 26005,
        challenge_time = 120, 
        optimize_region = 232099,
        
        element_target = 5,
        starter_operator_configID = 232012,
        dig_operator_configID = 232016,

        starter_operator_suite = 2,
        level_suite = 3,
        dig_operator_suite = 4,
        treasure_suite = 5,
        treasure_configID = 232017,
    },

    [2] = 
    {
        gallery_id = 26005,
        challenge_time = 120, 
        optimize_region = 232100,

        element_target = 10,

        starter_operator_configID = 232026,
        dig_operator_configID = 232027,

        starter_operator_suite = 6,
        level_suite = 7,
        dig_operator_suite = 8,
        treasure_suite = 9,
        treasure_configID = 232028,

    },

    [3] = 
    {
        gallery_id = 26005,
        challenge_time = 120, 
        optimize_region = 232101,

        element_target = 11,

        starter_operator_configID = 232029,
        dig_operator_configID = 232033,

        starter_operator_suite = 10,
        level_suite = 11,
        dig_operator_suite = 12,
        treasure_suite = 13,
        treasure_configID = 232034,
    }

}

local extra_elements =
{
    232018,232019,232020,232021,232022,232023,232024
,232025,232063,232064,232065,232066,232067,232068,232069,232070
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 232001, monster_id = 20010901, pos = { x = -825.290, y = 177.640, z = 2186.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, area_id = 24 },
	{ config_id = 232002, monster_id = 20010901, pos = { x = -831.224, y = 177.092, z = 2187.806 }, rot = { x = 0.000, y = 47.098, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, area_id = 24 },
	{ config_id = 232045, monster_id = 26120101, pos = { x = -918.777, y = 197.227, z = 2301.415 }, rot = { x = 0.000, y = 292.093, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 201, area_id = 24 },
	{ config_id = 232046, monster_id = 26090401, pos = { x = -918.414, y = 197.366, z = 2304.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 24 },
	{ config_id = 232047, monster_id = 26090401, pos = { x = -922.289, y = 197.879, z = 2300.313 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 24 },
	{ config_id = 232051, monster_id = 20010601, pos = { x = -918.618, y = 197.196, z = 2300.986 }, rot = { x = 0.000, y = 297.483, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, area_id = 24 },
	{ config_id = 232052, monster_id = 20010801, pos = { x = -916.419, y = 196.975, z = 2302.674 }, rot = { x = 0.000, y = 280.618, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, area_id = 24 },
	{ config_id = 232054, monster_id = 26090201, pos = { x = -824.833, y = 177.404, z = 2189.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 24 },
	{ config_id = 232055, monster_id = 26090201, pos = { x = -829.570, y = 177.008, z = 2188.915 }, rot = { x = 0.000, y = 28.823, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 24 },
	{ config_id = 232056, monster_id = 26120301, pos = { x = -827.400, y = 177.477, z = 2186.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 24 },
	{ config_id = 232057, monster_id = 20010801, pos = { x = -919.390, y = 197.416, z = 2298.686 }, rot = { x = 0.000, y = 340.017, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, area_id = 24 },
	{ config_id = 232059, monster_id = 26090501, pos = { x = -919.028, y = 197.647, z = 2307.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 24 },
	{ config_id = 232060, monster_id = 26090501, pos = { x = -922.698, y = 198.033, z = 2298.939 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 24 },
	{ config_id = 232061, monster_id = 26090401, pos = { x = -915.410, y = 196.907, z = 2303.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 24 },
	{ config_id = 232062, monster_id = 26090401, pos = { x = -917.528, y = 197.052, z = 2299.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 232003, gadget_id = 70290449, pos = { x = -804.860, y = 170.210, z = 2273.180 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 24 },
	{ config_id = 232004, gadget_id = 70290449, pos = { x = -818.992, y = 180.075, z = 2251.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 24 },
	{ config_id = 232005, gadget_id = 70290449, pos = { x = -878.634, y = 196.380, z = 2177.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 24 },
	{ config_id = 232006, gadget_id = 70290449, pos = { x = -859.977, y = 184.615, z = 2219.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 24 },
	{ config_id = 232007, gadget_id = 70290449, pos = { x = -897.335, y = 184.918, z = 2253.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 24 },
	{ config_id = 232008, gadget_id = 70290449, pos = { x = -865.072, y = 166.460, z = 2240.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 24 },
	{ config_id = 232009, gadget_id = 70290449, pos = { x = -879.208, y = 201.186, z = 2301.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 24 },
	{ config_id = 232010, gadget_id = 70290449, pos = { x = -946.550, y = 207.414, z = 2307.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 24 },
	{ config_id = 232011, gadget_id = 70290449, pos = { x = -863.102, y = 169.874, z = 2279.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 24 },
	{ config_id = 232012, gadget_id = 70290406, pos = { x = -826.954, y = 176.944, z = 2190.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 232013, gadget_id = 70690011, pos = { x = -883.667, y = 160.294, z = 2267.198 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232014, gadget_id = 70330197, pos = { x = -888.960, y = 192.561, z = 2301.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232015, gadget_id = 70220103, pos = { x = -880.364, y = 204.508, z = 2301.780 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232016, gadget_id = 70290450, pos = { x = -826.954, y = 176.944, z = 2190.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 232017, gadget_id = 70210121, pos = { x = -826.954, y = 176.944, z = 2190.752 }, rot = { x = 10.851, y = 0.000, z = 1.318 }, level = 26, chest_drop_id = 200020151, drop_count = 1, isOneoff = true, persistent = true, area_id = 24 },
	{ config_id = 232018, gadget_id = 70290551, pos = { x = -857.737, y = 159.000, z = 2252.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 232019, gadget_id = 70290551, pos = { x = -860.125, y = 159.000, z = 2252.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 232020, gadget_id = 70290551, pos = { x = -858.356, y = 159.000, z = 2253.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 232021, gadget_id = 70290551, pos = { x = -854.927, y = 159.000, z = 2249.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 232022, gadget_id = 70290551, pos = { x = -855.977, y = 159.000, z = 2252.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 232023, gadget_id = 70290551, pos = { x = -854.190, y = 159.000, z = 2254.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 232024, gadget_id = 70290551, pos = { x = -695.540, y = 338.599, z = 2113.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 19 },
	{ config_id = 232025, gadget_id = 70290551, pos = { x = -853.499, y = 159.000, z = 2252.181 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 232026, gadget_id = 70290406, pos = { x = -923.833, y = 198.207, z = 2304.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 232027, gadget_id = 70290450, pos = { x = -923.833, y = 198.207, z = 2304.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 232028, gadget_id = 70210121, pos = { x = -923.838, y = 198.168, z = 2304.306 }, rot = { x = 1.332, y = 2.159, z = 350.817 }, level = 26, chest_drop_id = 200020152, drop_count = 1, isOneoff = true, persistent = true, area_id = 24 },
	{ config_id = 232029, gadget_id = 70290406, pos = { x = -847.033, y = 160.051, z = 2242.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 232030, gadget_id = 70290408, pos = { x = -850.723, y = 161.079, z = 2256.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232031, gadget_id = 70330197, pos = { x = -863.093, y = 163.093, z = 2288.468 }, rot = { x = 352.853, y = 305.372, z = 9.941 }, level = 1, area_id = 24 },
	{ config_id = 232032, gadget_id = 70220020, pos = { x = -946.074, y = 206.929, z = 2308.787 }, rot = { x = 358.056, y = 17.682, z = 352.302 }, level = 1, area_id = 24 },
	{ config_id = 232033, gadget_id = 70290450, pos = { x = -847.033, y = 160.051, z = 2242.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 232034, gadget_id = 70210121, pos = { x = -847.033, y = 160.051, z = 2242.254 }, rot = { x = 357.740, y = 359.236, z = 2.517 }, level = 26, chest_drop_id = 200020153, drop_count = 1, isOneoff = true, persistent = true, area_id = 24 },
	{ config_id = 232036, gadget_id = 70290451, pos = { x = -826.954, y = 176.944, z = 2190.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 330200081, area_id = 24 },
	{ config_id = 232037, gadget_id = 70290451, pos = { x = -923.833, y = 198.207, z = 2304.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 330200082, area_id = 24 },
	{ config_id = 232038, gadget_id = 70290451, pos = { x = -847.033, y = 160.051, z = 2242.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 330200083, area_id = 24 },
	{ config_id = 232039, gadget_id = 70290452, pos = { x = -826.954, y = 177.721, z = 2190.752 }, rot = { x = 2.777, y = 358.789, z = 3.528 }, level = 1, area_id = 24 },
	{ config_id = 232040, gadget_id = 70290452, pos = { x = -923.912, y = 198.682, z = 2304.404 }, rot = { x = 358.693, y = 1.224, z = 351.738 }, level = 1, area_id = 24 },
	{ config_id = 232041, gadget_id = 70290452, pos = { x = -847.033, y = 161.148, z = 2242.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232042, gadget_id = 70220020, pos = { x = -947.395, y = 206.533, z = 2305.996 }, rot = { x = 357.600, y = 19.181, z = 350.642 }, level = 1, area_id = 24 },
	{ config_id = 232043, gadget_id = 70220020, pos = { x = -945.081, y = 206.357, z = 2307.042 }, rot = { x = 0.000, y = 101.904, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232044, gadget_id = 70220020, pos = { x = -947.808, y = 207.191, z = 2307.743 }, rot = { x = 0.000, y = 293.957, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232048, gadget_id = 70290408, pos = { x = -876.622, y = 188.484, z = 2233.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232049, gadget_id = 70290408, pos = { x = -882.352, y = 186.692, z = 2264.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232063, gadget_id = 70290551, pos = { x = -832.787, y = 160.404, z = 2262.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232064, gadget_id = 70290551, pos = { x = -836.276, y = 160.602, z = 2263.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232065, gadget_id = 70290551, pos = { x = -837.939, y = 160.573, z = 2266.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232066, gadget_id = 70290551, pos = { x = -839.155, y = 160.415, z = 2264.335 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232067, gadget_id = 70290551, pos = { x = -841.298, y = 160.272, z = 2265.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232068, gadget_id = 70290551, pos = { x = -843.194, y = 159.961, z = 2265.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232069, gadget_id = 70290551, pos = { x = -840.405, y = 160.572, z = 2267.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232070, gadget_id = 70290551, pos = { x = -837.738, y = 161.667, z = 2267.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232071, gadget_id = 70290408, pos = { x = -881.542, y = 182.645, z = 2272.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232074, gadget_id = 70220103, pos = { x = -876.622, y = 191.816, z = 2233.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232075, gadget_id = 70330197, pos = { x = -862.420, y = 159.017, z = 2240.763 }, rot = { x = 0.000, y = 274.633, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232077, gadget_id = 70290408, pos = { x = -871.478, y = 168.554, z = 2273.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232078, gadget_id = 70290408, pos = { x = -875.681, y = 175.209, z = 2271.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232079, gadget_id = 70290408, pos = { x = -853.359, y = 159.436, z = 2264.722 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232080, gadget_id = 70290408, pos = { x = -864.925, y = 165.749, z = 2271.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232081, gadget_id = 70290408, pos = { x = -879.410, y = 180.407, z = 2271.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232082, gadget_id = 70220103, pos = { x = -882.352, y = 188.463, z = 2264.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232083, gadget_id = 70290408, pos = { x = -882.352, y = 186.692, z = 2254.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232084, gadget_id = 70290408, pos = { x = -882.352, y = 186.692, z = 2248.245 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232085, gadget_id = 70220103, pos = { x = -817.600, y = 184.841, z = 2256.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232086, gadget_id = 70330197, pos = { x = -805.575, y = 168.577, z = 2262.803 }, rot = { x = 342.340, y = 158.691, z = 0.106 }, level = 1, area_id = 24 },
	{ config_id = 232087, gadget_id = 70330197, pos = { x = -818.220, y = 169.103, z = 2251.367 }, rot = { x = 0.000, y = 44.661, z = 11.864 }, level = 1, area_id = 24 },
	{ config_id = 232089, gadget_id = 70690001, pos = { x = -882.352, y = 186.692, z = 2251.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232090, gadget_id = 70690001, pos = { x = -882.352, y = 186.692, z = 2257.475 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232091, gadget_id = 70220103, pos = { x = -859.977, y = 188.353, z = 2219.753 }, rot = { x = 0.000, y = 75.687, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232092, gadget_id = 70330197, pos = { x = -890.606, y = 163.187, z = 2249.810 }, rot = { x = 0.000, y = 314.870, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 232098, gadget_id = 70330197, pos = { x = -871.142, y = 186.185, z = 2175.790 }, rot = { x = 357.230, y = 296.333, z = 358.491 }, level = 1, area_id = 24 }
}

-- 区域
regions = {
	-- 玩法区域 REGION
	{ config_id = 232035, shape = RegionShape.SPHERE, radius = 160, pos = { x = -866.451, y = 148.484, z = 2273.291 }, area_id = 24 },
	-- 挑战1region
	{ config_id = 232099, shape = RegionShape.SPHERE, radius = 40, pos = { x = -827.162, y = 178.775, z = 2191.232 }, area_id = 24 },
	-- 挑战2region
	{ config_id = 232100, shape = RegionShape.SPHERE, radius = 40, pos = { x = -924.338, y = 197.302, z = 2304.247 }, area_id = 24 },
	-- 挑战3region
	{ config_id = 232101, shape = RegionShape.POLYGON, pos = { x = -871.089, y = 183.650, z = 2254.937 }, height = 89.300, point_array = { { x = -869.291, y = 2309.616 }, { x = -904.006, y = 2299.279 }, { x = -925.729, y = 2269.739 }, { x = -917.783, y = 2234.005 }, { x = -892.234, y = 2208.504 }, { x = -844.137, y = 2200.258 }, { x = -816.449, y = 2249.715 }, { x = -833.693, y = 2294.668 } }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1232050, name = "ANY_MONSTER_DIE_232050", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_232050", action = "action_EVENT_ANY_MONSTER_DIE_232050" },
	{ config_id = 1232053, name = "ANY_MONSTER_DIE_232053", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_232053", action = "action_EVENT_ANY_MONSTER_DIE_232053" },
	{ config_id = 1232058, name = "ANY_MONSTER_DIE_232058", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_232058", action = "action_EVENT_ANY_MONSTER_DIE_232058" },
	{ config_id = 1232072, name = "CHALLENGE_FAIL_232072", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_232072", trigger_count = 0 },
	{ config_id = 1232073, name = "CHALLENGE_FAIL_232073", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_232073", trigger_count = 0 },
	{ config_id = 1232088, name = "ANY_GADGET_DIE_232088", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_232088", action = "action_EVENT_ANY_GADGET_DIE_232088", trigger_count = 0 },
	{ config_id = 1232093, name = "GADGET_CREATE_232093", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_232093", action = "action_EVENT_GADGET_CREATE_232093", trigger_count = 0 },
	{ config_id = 1232094, name = "GADGET_CREATE_232094", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_232094", action = "action_EVENT_GADGET_CREATE_232094" },
	{ config_id = 1232095, name = "ANY_GADGET_DIE_232095", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_232095", action = "action_EVENT_ANY_GADGET_DIE_232095", trigger_count = 0 },
	{ config_id = 1232096, name = "CHALLENGE_SUCCESS_232096", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_232096" },
	{ config_id = 1232097, name = "CHALLENGE_FAIL_232097", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_232097" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 232076, gadget_id = 70220103, pos = { x = -882.352, y = 187.487, z = 2257.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 }
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
		gadgets = { 232014, 232015, 232031, 232032, 232042, 232043, 232044, 232075, 232085, 232086, 232087, 232091, 232092, 232098 },
		regions = { 232035 },
		triggers = { "GADGET_CREATE_232093", "GADGET_CREATE_232094" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 232012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 232001, 232002 },
		gadgets = { 232036, 232039 },
		regions = { 232099 },
		triggers = { "ANY_MONSTER_DIE_232053", "CHALLENGE_FAIL_232072" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 232016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 232017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 232026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 232045, 232046, 232047 },
		gadgets = { 232037, 232040 },
		regions = { 232100 },
		triggers = { "ANY_MONSTER_DIE_232050", "CHALLENGE_FAIL_232073" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 232027 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 232028 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 232029 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 232030, 232038, 232041, 232048, 232049, 232071, 232077, 232078, 232079, 232080, 232081, 232082, 232083, 232084, 232089, 232090 },
		regions = { 232101 },
		triggers = { "ANY_GADGET_DIE_232088", "ANY_GADGET_DIE_232095", "CHALLENGE_SUCCESS_232096", "CHALLENGE_FAIL_232097" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 232033 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 232034 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = ,
		monsters = { },
		gadgets = { 232003, 232004, 232005, 232006, 232007, 232008, 232009, 232010, 232011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = ,
		monsters = { 232054, 232055, 232056 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 16,
		-- description = ,
		monsters = { 232051, 232052, 232057 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_232058" },
		rand_weight = 100
	},
	{
		-- suite_id = 17,
		-- description = ,
		monsters = { 232059, 232060, 232061, 232062 },
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
function condition_EVENT_ANY_MONSTER_DIE_232050(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_232050(context, evt)
	-- 添加suite16的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302232, 16)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_232053(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_232053(context, evt)
	-- 添加suite15的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302232, 15)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_232058(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_232058(context, evt)
	-- 添加suite17的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133302232, 17)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_232072(context, evt)
	-- 删除suite15的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302232, 15)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_232073(context, evt)
	-- 删除suite16的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302232, 16)
	
	-- 删除suite17的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133302232, 17)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_232088(context, evt)
	if 232049 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_232088(context, evt)
	-- 创建id为232013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 232013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_232093(context, evt)
	if 232038 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_232093(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302232, EntityType.GADGET, 232091 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_232094(context, evt)
	if 232034 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_232094(context, evt)
	-- 创建id为232091的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 232091 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_232095(context, evt)
	if 232083 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_232095(context, evt)
	-- 创建id为232074的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 232074 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_232096(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302232, EntityType.GADGET, 232074 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302232, EntityType.GADGET, 232013 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_232097(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302232, EntityType.GADGET, 232013 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133302232, EntityType.GADGET, 232074 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V3_0/Activity_TreasureSeelie"
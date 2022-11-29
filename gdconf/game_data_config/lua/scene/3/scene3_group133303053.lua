-- 基础信息
local base_info = {
	group_id = 133303053
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
        gallery_id = 26006,
        challenge_time = 120, 
        optimize_region = 53088,
        
        element_target = 8,
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
        gallery_id = 26006,
        challenge_time = 120, 
        optimize_region = 53089,

        element_target = 10,

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
        gallery_id = 26006,
        challenge_time = 120, 
        optimize_region = 53090,

        element_target = 6,

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
,53025,53055,53056,53057,53058
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 53013, monster_id = 20011301, pos = { x = -1304.740, y = 126.000, z = 3415.046 }, rot = { x = 0.000, y = 247.240, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 23 },
	{ config_id = 53014, monster_id = 20010901, pos = { x = -1305.226, y = 126.000, z = 3416.304 }, rot = { x = 0.000, y = 196.509, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 23 },
	{ config_id = 53015, monster_id = 20010501, pos = { x = -1308.151, y = 126.000, z = 3417.680 }, rot = { x = 0.000, y = 49.206, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 23 },
	{ config_id = 53030, monster_id = 20060701, pos = { x = -1335.887, y = 163.454, z = 3362.180 }, rot = { x = 0.000, y = 178.253, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 53031, monster_id = 20060701, pos = { x = -1340.781, y = 162.654, z = 3360.808 }, rot = { x = 0.000, y = 254.723, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 53032, monster_id = 20060701, pos = { x = -1332.500, y = 163.793, z = 3365.839 }, rot = { x = 0.000, y = 250.349, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 101, area_id = 23 },
	{ config_id = 53042, monster_id = 20010501, pos = { x = -1313.146, y = 126.196, z = 3415.489 }, rot = { x = 0.000, y = 204.774, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 23 },
	{ config_id = 53043, monster_id = 20010601, pos = { x = -1312.407, y = 126.000, z = 3410.570 }, rot = { x = 0.000, y = 17.624, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 23 },
	{ config_id = 53044, monster_id = 20010801, pos = { x = -1305.389, y = 126.078, z = 3413.413 }, rot = { x = 0.000, y = 172.631, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 23 },
	{ config_id = 53045, monster_id = 20010801, pos = { x = -1306.775, y = 126.000, z = 3410.623 }, rot = { x = 0.000, y = 288.447, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 23 },
	{ config_id = 53060, monster_id = 20011301, pos = { x = -1311.118, y = 126.000, z = 3417.190 }, rot = { x = 0.000, y = 128.122, z = 0.000 }, level = 28, drop_id = 1000100, area_id = 23 },
	{ config_id = 53079, monster_id = 20060501, pos = { x = -1342.611, y = 161.914, z = 3365.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 53080, monster_id = 20060501, pos = { x = -1343.380, y = 161.027, z = 3370.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 53081, monster_id = 20060501, pos = { x = -1341.027, y = 161.148, z = 3373.733 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 53001, gadget_id = 70290408, pos = { x = -1410.702, y = 190.149, z = 3331.666 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53002, gadget_id = 70290408, pos = { x = -1413.102, y = 187.729, z = 3338.821 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53003, gadget_id = 70290449, pos = { x = -1302.628, y = 132.560, z = 3401.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 23 },
	{ config_id = 53004, gadget_id = 70290449, pos = { x = -1277.410, y = 133.148, z = 3427.947 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 23 },
	{ config_id = 53005, gadget_id = 70290449, pos = { x = -1334.867, y = 157.609, z = 3411.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 23 },
	{ config_id = 53006, gadget_id = 70290449, pos = { x = -1434.791, y = 187.259, z = 3352.630 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 23 },
	{ config_id = 53007, gadget_id = 70290449, pos = { x = -1384.595, y = 201.011, z = 3298.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 23 },
	{ config_id = 53008, gadget_id = 70290449, pos = { x = -1378.086, y = 192.463, z = 3334.923 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 23 },
	{ config_id = 53009, gadget_id = 70290449, pos = { x = -1346.366, y = 156.996, z = 3390.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 23 },
	{ config_id = 53010, gadget_id = 70290449, pos = { x = -1310.746, y = 196.866, z = 3335.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 23 },
	{ config_id = 53011, gadget_id = 70290449, pos = { x = -1309.529, y = 163.355, z = 3378.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 23 },
	{ config_id = 53012, gadget_id = 70290406, pos = { x = -1310.070, y = 126.000, z = 3414.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 53016, gadget_id = 70290450, pos = { x = -1310.070, y = 126.000, z = 3414.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 53017, gadget_id = 70210121, pos = { x = -1310.071, y = 125.658, z = 3414.014 }, rot = { x = 0.000, y = 54.762, z = 351.267 }, level = 26, chest_drop_id = 200020161, drop_count = 1, isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 53018, gadget_id = 70290551, pos = { x = -1297.349, y = 125.401, z = 3421.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 53019, gadget_id = 70290551, pos = { x = -1299.735, y = 125.445, z = 3421.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 53020, gadget_id = 70290551, pos = { x = -1297.978, y = 125.244, z = 3423.079 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 53021, gadget_id = 70290551, pos = { x = -1294.555, y = 125.560, z = 3419.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 53022, gadget_id = 70290551, pos = { x = -1295.593, y = 125.267, z = 3422.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 53023, gadget_id = 70290551, pos = { x = -1293.817, y = 125.027, z = 3423.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 53024, gadget_id = 70290551, pos = { x = -1294.873, y = 125.584, z = 3419.322 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 53025, gadget_id = 70290551, pos = { x = -1293.118, y = 125.152, z = 3421.898 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 53026, gadget_id = 70290406, pos = { x = -1413.141, y = 189.509, z = 3326.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 53027, gadget_id = 70290450, pos = { x = -1413.141, y = 189.509, z = 3326.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 53028, gadget_id = 70210121, pos = { x = -1413.138, y = 189.481, z = 3326.978 }, rot = { x = 353.320, y = 47.247, z = 1.611 }, level = 26, chest_drop_id = 200020162, drop_count = 1, isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 53029, gadget_id = 70290406, pos = { x = -1338.711, y = 162.198, z = 3370.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 53033, gadget_id = 70290450, pos = { x = -1338.711, y = 162.198, z = 3370.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 53034, gadget_id = 70210121, pos = { x = -1338.708, y = 162.166, z = 3370.592 }, rot = { x = 11.567, y = 1.740, z = 8.615 }, level = 26, chest_drop_id = 200020163, drop_count = 1, isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 53036, gadget_id = 70290452, pos = { x = -1310.070, y = 126.000, z = 3414.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53037, gadget_id = 70290452, pos = { x = -1413.141, y = 189.509, z = 3326.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53038, gadget_id = 70290452, pos = { x = -1338.711, y = 162.198, z = 3370.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53039, gadget_id = 70290451, pos = { x = -1310.070, y = 126.000, z = 3414.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 330300031, area_id = 23 },
	{ config_id = 53040, gadget_id = 70290451, pos = { x = -1413.141, y = 189.509, z = 3326.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 330300032, area_id = 23 },
	{ config_id = 53041, gadget_id = 70290451, pos = { x = -1338.711, y = 162.198, z = 3370.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 330300033, area_id = 23 },
	{ config_id = 53048, gadget_id = 70290408, pos = { x = -1362.471, y = 227.621, z = 3367.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53049, gadget_id = 70290408, pos = { x = -1418.300, y = 195.756, z = 3353.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53050, gadget_id = 70290408, pos = { x = -1418.300, y = 200.727, z = 3353.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53051, gadget_id = 70290408, pos = { x = -1418.300, y = 206.914, z = 3353.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53053, gadget_id = 70330197, pos = { x = -1301.046, y = 178.638, z = 3334.574 }, rot = { x = 0.000, y = 133.099, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53055, gadget_id = 70290551, pos = { x = -1345.501, y = 161.734, z = 3366.986 }, rot = { x = 0.000, y = 80.074, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53056, gadget_id = 70290551, pos = { x = -1341.358, y = 162.165, z = 3363.188 }, rot = { x = 0.000, y = 214.226, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53057, gadget_id = 70290551, pos = { x = -1347.137, y = 161.969, z = 3364.464 }, rot = { x = 0.000, y = 131.693, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53058, gadget_id = 70290551, pos = { x = -1343.206, y = 161.779, z = 3366.659 }, rot = { x = 0.000, y = 317.371, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53059, gadget_id = 70220103, pos = { x = -1324.054, y = 165.273, z = 3397.629 }, rot = { x = 0.000, y = 151.963, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53062, gadget_id = 70690011, pos = { x = -1416.692, y = 181.689, z = 3354.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53063, gadget_id = 70690001, pos = { x = -1418.300, y = 198.024, z = 3353.490 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53064, gadget_id = 70690001, pos = { x = -1418.300, y = 204.155, z = 3353.490 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53065, gadget_id = 70690001, pos = { x = -1396.970, y = 209.990, z = 3362.966 }, rot = { x = 3.378, y = 77.292, z = 0.942 }, level = 1, area_id = 23 },
	{ config_id = 53066, gadget_id = 70690001, pos = { x = -1389.747, y = 209.553, z = 3364.595 }, rot = { x = 3.378, y = 77.292, z = 0.942 }, level = 1, area_id = 23 },
	{ config_id = 53067, gadget_id = 70690001, pos = { x = -1380.731, y = 209.008, z = 3366.628 }, rot = { x = 3.378, y = 77.292, z = 0.942 }, level = 1, area_id = 23 },
	{ config_id = 53069, gadget_id = 70290408, pos = { x = -1393.310, y = 209.769, z = 3363.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53070, gadget_id = 70290408, pos = { x = -1386.625, y = 209.364, z = 3365.299 }, rot = { x = 3.378, y = 77.292, z = 0.942 }, level = 1, area_id = 23 },
	{ config_id = 53071, gadget_id = 70290408, pos = { x = -1377.048, y = 208.785, z = 3367.458 }, rot = { x = 3.378, y = 77.292, z = 0.942 }, level = 1, area_id = 23 },
	{ config_id = 53072, gadget_id = 70290408, pos = { x = -1362.471, y = 220.674, z = 3367.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53073, gadget_id = 70690013, pos = { x = -1362.471, y = 178.326, z = 3367.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53074, gadget_id = 70330216, pos = { x = -1310.811, y = 162.725, z = 3376.436 }, rot = { x = 0.000, y = 2.680, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53075, gadget_id = 70330216, pos = { x = -1307.376, y = 162.874, z = 3377.787 }, rot = { x = 355.861, y = 127.179, z = 2.398 }, level = 1, area_id = 23 },
	{ config_id = 53076, gadget_id = 70330216, pos = { x = -1309.881, y = 161.819, z = 3379.513 }, rot = { x = 356.469, y = 166.339, z = 9.743 }, level = 1, area_id = 23 },
	{ config_id = 53077, gadget_id = 70330197, pos = { x = -1307.236, y = 187.558, z = 3340.464 }, rot = { x = 0.000, y = 207.924, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53078, gadget_id = 70220103, pos = { x = -1418.300, y = 192.995, z = 3353.490 }, rot = { x = 0.000, y = 175.394, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53084, gadget_id = 70690001, pos = { x = -1362.471, y = 224.958, z = 3367.458 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 53085, gadget_id = 70220103, pos = { x = -1362.471, y = 213.781, z = 3367.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 }
}

-- 区域
regions = {
	-- 玩法区域 REGION
	{ config_id = 53035, shape = RegionShape.SPHERE, radius = 180, pos = { x = -1353.682, y = 147.673, z = 3400.611 }, area_id = 23 },
	-- 挑战1region
	{ config_id = 53088, shape = RegionShape.SPHERE, radius = 40, pos = { x = -1311.115, y = 126.000, z = 3414.224 }, area_id = 23 },
	-- 挑战2region
	{ config_id = 53089, shape = RegionShape.POLYGON, pos = { x = -1383.811, y = 186.800, z = 3353.202 }, height = 146.600, point_array = { { x = -1386.852, y = 3273.287 }, { x = -1330.283, y = 3307.259 }, { x = -1288.613, y = 3382.647 }, { x = -1345.608, y = 3433.116 }, { x = -1404.761, y = 3411.966 }, { x = -1455.764, y = 3380.408 }, { x = -1479.010, y = 3311.416 } }, area_id = 23 },
	-- 挑战3region
	{ config_id = 53090, shape = RegionShape.SPHERE, radius = 45, pos = { x = -1329.381, y = 163.125, z = 3362.812 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1053046, name = "ANY_MONSTER_DIE_53046", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_53046", action = "action_EVENT_ANY_MONSTER_DIE_53046" },
	{ config_id = 1053047, name = "ANY_MONSTER_DIE_53047", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_53047", action = "action_EVENT_ANY_MONSTER_DIE_53047" },
	{ config_id = 1053061, name = "CHALLENGE_FAIL_53061", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_53061", trigger_count = 0 },
	{ config_id = 1053082, name = "ANY_MONSTER_DIE_53082", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_53082", action = "action_EVENT_ANY_MONSTER_DIE_53082" },
	{ config_id = 1053083, name = "CHALLENGE_FAIL_53083", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_53083", trigger_count = 0 },
	{ config_id = 1053086, name = "ANY_GADGET_DIE_53086", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_53086", action = "action_EVENT_ANY_GADGET_DIE_53086", trigger_count = 0 },
	{ config_id = 1053087, name = "GADGET_CREATE_53087", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_53087", action = "action_EVENT_GADGET_CREATE_53087" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 53052, gadget_id = 70330197, pos = { x = -1277.947, y = 180.857, z = 3336.092 }, rot = { x = 0.000, y = 253.050, z = 0.000 }, level = 1, area_id = 23 },
		{ config_id = 53054, gadget_id = 70220103, pos = { x = -1288.497, y = 186.435, z = 3358.971 }, rot = { x = 0.000, y = 169.800, z = 0.000 }, level = 1, area_id = 23 },
		{ config_id = 53068, gadget_id = 70220103, pos = { x = -1396.780, y = 210.607, z = 3362.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 }
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
		gadgets = { 53053, 53059, 53074, 53075, 53076, 53077 },
		regions = { 53035 },
		triggers = { "GADGET_CREATE_53087" },
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
		monsters = { 53013, 53060 },
		gadgets = { 53036, 53039 },
		regions = { 53088 },
		triggers = { "ANY_MONSTER_DIE_53046", "CHALLENGE_FAIL_53061" },
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
		gadgets = { 53001, 53002, 53037, 53040, 53048, 53049, 53050, 53051, 53062, 53063, 53064, 53065, 53066, 53067, 53069, 53070, 53071, 53072, 53073, 53078, 53084, 53085 },
		regions = { 53089 },
		triggers = { "ANY_GADGET_DIE_53086" },
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
		monsters = { 53030, 53031, 53032 },
		gadgets = { 53038, 53041 },
		regions = { 53090 },
		triggers = { "ANY_MONSTER_DIE_53082", "CHALLENGE_FAIL_53083" },
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
		monsters = { 53014, 53015, 53042 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_53047" },
		rand_weight = 100
	},
	{
		-- suite_id = 16,
		-- description = ,
		monsters = { 53043, 53044, 53045 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 17,
		-- description = ,
		monsters = { 53079, 53080, 53081 },
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
function condition_EVENT_ANY_MONSTER_DIE_53046(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_53046(context, evt)
	-- 添加suite15的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303053, 15)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_53047(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_53047(context, evt)
	-- 添加suite16的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303053, 16)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_53061(context, evt)
	-- 删除suite15的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303053, 15)
	
	-- 删除suite16的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303053, 16)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_53082(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_53082(context, evt)
	-- 添加suite17的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303053, 17)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_53083(context, evt)
	-- 删除suite17的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303053, 17)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_53086(context, evt)
	if 53070 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_53086(context, evt)
	-- 创建id为53085的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 53085 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_53087(context, evt)
	if 53028 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_53087(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303053, EntityType.GADGET, 53085 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

require "V3_0/Activity_TreasureSeelie"
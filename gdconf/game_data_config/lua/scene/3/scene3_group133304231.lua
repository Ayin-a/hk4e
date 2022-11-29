-- 基础信息
local base_info = {
	group_id = 133304231
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
        gallery_id = 26004,
        challenge_time = 120, 
        optimize_region = 231091,
        
        element_target = 7,
        starter_operator_configID = 231012,
        dig_operator_configID = 231016,

        starter_operator_suite = 2,
        level_suite = 3,
        dig_operator_suite = 4,
        treasure_suite = 5,
        treasure_configID = 231017,
    },

    [2] = 
    {
        gallery_id = 26004,
        challenge_time = 120, 
        optimize_region = 231092,

        element_target = 6,

        starter_operator_configID = 231026,
        dig_operator_configID = 231027,

        starter_operator_suite = 6,
        level_suite = 7,
        dig_operator_suite = 8,
        treasure_suite = 9,
        treasure_configID = 231028,

    },

    [3] = 
    {
        gallery_id = 26004,
        challenge_time = 120, 
        optimize_region = 231093,

        element_target = 7,

        starter_operator_configID = 231029,
        dig_operator_configID = 231033,

        starter_operator_suite = 10,
        level_suite = 11,
        dig_operator_suite = 12,
        treasure_suite = 13,
        treasure_configID = 231034,

    }

}

local extra_elements =
{
    231018,231019,231020,231021,231022,231023,231024
,231025,231059,231060,231061,231062,231063,231064
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 231002, monster_id = 26120101, pos = { x = -1356.777, y = 257.169, z = 2581.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 201, area_id = 21 },
	{ config_id = 231047, monster_id = 26090401, pos = { x = -1350.529, y = 256.454, z = 2577.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 101, area_id = 21 },
	{ config_id = 231049, monster_id = 26090401, pos = { x = -1358.261, y = 258.626, z = 2588.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 101, area_id = 21 },
	{ config_id = 231050, monster_id = 26120201, pos = { x = -1353.510, y = 257.417, z = 2583.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 201, area_id = 21 },
	{ config_id = 231057, monster_id = 26090701, pos = { x = -1359.290, y = 258.147, z = 2585.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 101, area_id = 21 },
	{ config_id = 231058, monster_id = 26090701, pos = { x = -1355.204, y = 256.371, z = 2577.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, pose_id = 101, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 231001, gadget_id = 70220004, pos = { x = -1359.691, y = 256.609, z = 2532.467 }, rot = { x = 0.000, y = 350.965, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231003, gadget_id = 70290449, pos = { x = -1358.395, y = 257.502, z = 2532.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 231004, gadget_id = 70290449, pos = { x = -1366.646, y = 256.846, z = 2620.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 231005, gadget_id = 70290449, pos = { x = -1317.279, y = 269.579, z = 2611.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 231006, gadget_id = 70290449, pos = { x = -1278.220, y = 275.977, z = 2606.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 231007, gadget_id = 70290449, pos = { x = -1179.941, y = 257.369, z = 2587.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 231008, gadget_id = 70290449, pos = { x = -1217.965, y = 256.309, z = 2543.676 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 231009, gadget_id = 70290449, pos = { x = -1213.072, y = 272.504, z = 2701.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 231010, gadget_id = 70290449, pos = { x = -1196.538, y = 299.579, z = 2535.441 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 231011, gadget_id = 70290449, pos = { x = -1239.048, y = 268.798, z = 2637.909 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 21 },
	{ config_id = 231012, gadget_id = 70290406, pos = { x = -1210.025, y = 249.074, z = 2568.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 231013, gadget_id = 70290408, pos = { x = -1200.770, y = 249.310, z = 2571.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 231014, gadget_id = 70290408, pos = { x = -1204.175, y = 257.339, z = 2586.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 231015, gadget_id = 70290408, pos = { x = -1210.968, y = 258.049, z = 2586.227 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 231016, gadget_id = 70290450, pos = { x = -1210.025, y = 249.074, z = 2568.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 231017, gadget_id = 70210121, pos = { x = -1210.026, y = 249.045, z = 2568.351 }, rot = { x = 352.986, y = 0.000, z = 358.170 }, level = 26, chest_drop_id = 200020141, drop_count = 1, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 231018, gadget_id = 70290551, pos = { x = -1132.735, y = 244.279, z = 2568.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 231019, gadget_id = 70290551, pos = { x = -1135.118, y = 244.366, z = 2568.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 231020, gadget_id = 70290551, pos = { x = -1133.359, y = 244.234, z = 2569.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 231021, gadget_id = 70290551, pos = { x = -1129.939, y = 244.199, z = 2566.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 231022, gadget_id = 70290551, pos = { x = -1130.979, y = 244.170, z = 2568.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 231023, gadget_id = 70290551, pos = { x = -1129.203, y = 244.040, z = 2570.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 231024, gadget_id = 70290551, pos = { x = -1130.258, y = 244.220, z = 2565.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 231025, gadget_id = 70290551, pos = { x = -1128.502, y = 244.086, z = 2568.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 231026, gadget_id = 70290406, pos = { x = -1348.831, y = 258.160, z = 2587.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 231027, gadget_id = 70290450, pos = { x = -1348.831, y = 258.160, z = 2587.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 231028, gadget_id = 70210121, pos = { x = -1348.831, y = 258.160, z = 2587.360 }, rot = { x = 354.095, y = 358.075, z = 359.520 }, level = 26, chest_drop_id = 200020142, drop_count = 1, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 231029, gadget_id = 70290406, pos = { x = -1225.386, y = 264.412, z = 2684.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 231030, gadget_id = 70220004, pos = { x = -1358.873, y = 256.478, z = 2531.479 }, rot = { x = 0.000, y = 167.914, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231031, gadget_id = 70220004, pos = { x = -1358.561, y = 256.581, z = 2533.210 }, rot = { x = 0.000, y = 326.730, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231032, gadget_id = 70220004, pos = { x = -1357.670, y = 256.278, z = 2532.217 }, rot = { x = 0.000, y = 234.634, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231033, gadget_id = 70290450, pos = { x = -1225.386, y = 264.412, z = 2684.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 231034, gadget_id = 70210121, pos = { x = -1225.388, y = 264.386, z = 2684.206 }, rot = { x = 357.166, y = 0.000, z = 355.531 }, level = 26, chest_drop_id = 200020143, drop_count = 1, isOneoff = true, persistent = true, area_id = 21 },
	{ config_id = 231036, gadget_id = 70290451, pos = { x = -1210.025, y = 249.074, z = 2568.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 330400037, area_id = 21 },
	{ config_id = 231037, gadget_id = 70290451, pos = { x = -1348.831, y = 258.160, z = 2587.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 330400038, area_id = 21 },
	{ config_id = 231038, gadget_id = 70290451, pos = { x = -1225.386, y = 264.412, z = 2684.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 330400039, area_id = 21 },
	{ config_id = 231039, gadget_id = 70290452, pos = { x = -1210.025, y = 249.074, z = 2568.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231040, gadget_id = 70290452, pos = { x = -1348.831, y = 258.160, z = 2587.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231041, gadget_id = 70290452, pos = { x = -1225.386, y = 264.412, z = 2684.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231042, gadget_id = 70290408, pos = { x = -1216.019, y = 258.855, z = 2585.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 231043, gadget_id = 70290408, pos = { x = -1224.537, y = 252.271, z = 2572.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 231044, gadget_id = 70290408, pos = { x = -1218.300, y = 249.267, z = 2560.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 231045, gadget_id = 70290408, pos = { x = -1207.190, y = 251.256, z = 2557.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 231046, gadget_id = 70330197, pos = { x = -1179.941, y = 249.351, z = 2587.729 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231051, gadget_id = 70330197, pos = { x = -1315.193, y = 263.873, z = 2593.697 }, rot = { x = 0.000, y = 16.062, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231052, gadget_id = 70220103, pos = { x = -1239.048, y = 270.403, z = 2637.909 }, rot = { x = 0.000, y = 178.595, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231053, gadget_id = 70220103, pos = { x = -1219.000, y = 271.434, z = 2682.374 }, rot = { x = 0.000, y = 134.335, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231054, gadget_id = 70330197, pos = { x = -1213.246, y = 261.495, z = 2702.313 }, rot = { x = 0.000, y = 260.491, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231059, gadget_id = 70290551, pos = { x = -1133.291, y = 244.293, z = 2568.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231060, gadget_id = 70290551, pos = { x = -1133.359, y = 244.307, z = 2568.455 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231061, gadget_id = 70290551, pos = { x = -1132.910, y = 244.261, z = 2569.004 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231062, gadget_id = 70290551, pos = { x = -1133.383, y = 244.275, z = 2569.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231063, gadget_id = 70290551, pos = { x = -1133.192, y = 244.277, z = 2568.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231064, gadget_id = 70290551, pos = { x = -1132.952, y = 244.251, z = 2569.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231070, gadget_id = 70290408, pos = { x = -1234.269, y = 266.866, z = 2674.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231072, gadget_id = 70290408, pos = { x = -1249.178, y = 266.379, z = 2675.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231073, gadget_id = 70290408, pos = { x = -1267.148, y = 264.608, z = 2677.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231074, gadget_id = 70290408, pos = { x = -1277.384, y = 264.608, z = 2678.785 }, rot = { x = 0.000, y = 93.077, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231076, gadget_id = 70290408, pos = { x = -1309.085, y = 261.571, z = 2689.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231077, gadget_id = 70290408, pos = { x = -1309.085, y = 269.088, z = 2689.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231078, gadget_id = 70220103, pos = { x = -1249.178, y = 263.418, z = 2675.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231079, gadget_id = 70690013, pos = { x = -1249.178, y = 213.020, z = 2675.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231080, gadget_id = 70220103, pos = { x = -1234.269, y = 268.066, z = 2674.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231081, gadget_id = 70690001, pos = { x = -1263.492, y = 264.608, z = 2678.039 }, rot = { x = 0.000, y = 93.077, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231082, gadget_id = 70690001, pos = { x = -1272.191, y = 264.608, z = 2678.506 }, rot = { x = 0.000, y = 93.077, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231084, gadget_id = 70220103, pos = { x = -1309.085, y = 257.241, z = 2689.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231085, gadget_id = 70690013, pos = { x = -1310.642, y = 219.161, z = 2689.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231086, gadget_id = 70690001, pos = { x = -1309.085, y = 266.703, z = 2689.463 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231087, gadget_id = 70290408, pos = { x = -1309.085, y = 273.935, z = 2689.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 231088, gadget_id = 70690001, pos = { x = -1309.085, y = 271.647, z = 2689.463 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
	-- 玩法区域 REGION
	{ config_id = 231035, shape = RegionShape.SPHERE, radius = 170, pos = { x = -1263.474, y = 249.010, z = 2632.689 }, area_id = 21 },
	-- 挑战1region
	{ config_id = 231091, shape = RegionShape.SPHERE, radius = 40, pos = { x = -1210.005, y = 250.444, z = 2568.469 }, area_id = 21 },
	-- 挑战2region
	{ config_id = 231092, shape = RegionShape.SPHERE, radius = 60, pos = { x = -1360.243, y = 259.038, z = 2586.985 }, area_id = 21 },
	-- 挑战3region
	{ config_id = 231093, shape = RegionShape.POLYGON, pos = { x = -1269.596, y = 257.302, z = 2686.955 }, height = 152.196, point_array = { { x = -1277.750, y = 2634.035 }, { x = -1203.059, y = 2636.783 }, { x = -1174.823, y = 2717.820 }, { x = -1243.982, y = 2739.300 }, { x = -1315.973, y = 2739.875 }, { x = -1364.368, y = 2717.789 }, { x = -1352.377, y = 2641.166 } }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1231048, name = "ANY_MONSTER_DIE_231048", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_231048", action = "action_EVENT_ANY_MONSTER_DIE_231048" },
	{ config_id = 1231055, name = "GADGET_CREATE_231055", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_231055", action = "action_EVENT_GADGET_CREATE_231055", trigger_count = 0 },
	{ config_id = 1231056, name = "CHALLENGE_SUCCESS_231056", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_231056" },
	{ config_id = 1231065, name = "CHALLENGE_FAIL_231065", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_231065", trigger_count = 0 },
	{ config_id = 1231066, name = "CHALLENGE_FAIL_231066", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_231066", trigger_count = 0 },
	{ config_id = 1231067, name = "ANY_GADGET_DIE_231067", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_231067", action = "action_EVENT_ANY_GADGET_DIE_231067", trigger_count = 0 },
	{ config_id = 1231089, name = "ANY_GADGET_DIE_231089", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_231089", action = "action_EVENT_ANY_GADGET_DIE_231089", trigger_count = 0 },
	{ config_id = 1231090, name = "ANY_GADGET_DIE_231090", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_231090", action = "action_EVENT_ANY_GADGET_DIE_231090", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 231068, gadget_id = 70290408, pos = { x = -1228.472, y = 264.523, z = 2678.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
		{ config_id = 231069, gadget_id = 70290408, pos = { x = -1230.575, y = 264.102, z = 2674.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
		{ config_id = 231071, gadget_id = 70290408, pos = { x = -1235.260, y = 265.325, z = 2673.575 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
		{ config_id = 231075, gadget_id = 70290408, pos = { x = -1290.736, y = 262.316, z = 2678.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
		{ config_id = 231083, gadget_id = 70690001, pos = { x = -1281.354, y = 264.608, z = 2678.999 }, rot = { x = 0.000, y = 93.077, z = 0.000 }, level = 1, area_id = 21 }
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
		gadgets = { 231001, 231030, 231031, 231032, 231046, 231051, 231052, 231053, 231054 },
		regions = { 231035 },
		triggers = { "GADGET_CREATE_231055" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 231012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 231013, 231014, 231015, 231036, 231039, 231042, 231043, 231044, 231045 },
		regions = { 231091 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 231016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 231017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 231026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 231002, 231057, 231058 },
		gadgets = { 231037, 231040 },
		regions = { 231092 },
		triggers = { "ANY_MONSTER_DIE_231048", "CHALLENGE_FAIL_231065" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 231027 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 231028 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 231029 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 231038, 231041, 231070, 231072, 231073, 231074, 231076, 231077, 231079, 231080, 231081, 231082, 231085, 231086, 231087, 231088 },
		regions = { 231093 },
		triggers = { "CHALLENGE_SUCCESS_231056", "CHALLENGE_FAIL_231066", "ANY_GADGET_DIE_231067", "ANY_GADGET_DIE_231089", "ANY_GADGET_DIE_231090" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 231033 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 231034 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = ,
		monsters = { },
		gadgets = { 231003, 231004, 231005, 231006, 231007, 231008, 231009, 231010, 231011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = ,
		monsters = { 231047, 231049, 231050 },
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
function condition_EVENT_ANY_MONSTER_DIE_231048(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_231048(context, evt)
	-- 添加suite15的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304231, 15)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_231055(context, evt)
	if 231038 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_231055(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304231, EntityType.GADGET, 231052 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304231, EntityType.GADGET, 231053 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_231056(context, evt)
	-- 创建id为231052的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 231052 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为231053的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 231053 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304231, EntityType.GADGET, 231078 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304231, EntityType.GADGET, 231084 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_231065(context, evt)
	-- 删除suite15的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133304231, 15)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_231066(context, evt)
	-- 创建id为231052的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 231052 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为231053的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 231053 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304231, EntityType.GADGET, 231078 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304231, EntityType.GADGET, 231084 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_231067(context, evt)
	if 231070 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_231067(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304231, EntityType.GADGET, 231080 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	-- 创建id为231078的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 231078 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_231089(context, evt)
	if 231072 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_231089(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304231, EntityType.GADGET, 231078 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_231090(context, evt)
	if 231074 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_231090(context, evt)
	-- 创建id为231084的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 231084 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V3_0/Activity_TreasureSeelie"
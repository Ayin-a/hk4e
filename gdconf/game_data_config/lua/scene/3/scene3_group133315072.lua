-- 基础信息
local base_info = {
	group_id = 133315072
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
        gallery_id = 26001,
        challenge_time = 120, 
        optimize_region = 72031,
        
        element_target = 6,
        starter_operator_configID = 72012,
        dig_operator_configID = 72016,

        starter_operator_suite = 2,
        level_suite = 3,
        dig_operator_suite = 4,
        treasure_suite = 5,
        treasure_configID = 72017,
    },

    [2] = 
    {
        gallery_id = 26001,
        challenge_time = 120, 
        optimize_region = 72079,

        element_target = 12,

        starter_operator_configID = 72026,
        dig_operator_configID = 72027,

        starter_operator_suite = 6,
        level_suite = 7,
        dig_operator_suite = 8,
        treasure_suite = 9,
        treasure_configID = 72028,

    },

    [3] = 
    {
        gallery_id = 26001,
        challenge_time = 120,
        optimize_region = 72081,

        element_target = 6,

        starter_operator_configID = 72029,
        dig_operator_configID = 72033,

        starter_operator_suite = 10,
        level_suite = 11,
        dig_operator_suite = 12,
        treasure_suite = 13,
        treasure_configID = 72034,
    }

}

local extra_elements =
{
    72018,72019,72020,72021,72022,72023,72024
,72025,72032,72046,72047,72048,72049,72066,720667,72068,72069,72070,72071
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 72001, monster_id = 20010801, pos = { x = 90.613, y = 246.826, z = 2830.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, area_id = 20 },
	{ config_id = 72013, monster_id = 26120201, pos = { x = -56.875, y = 280.692, z = 2781.367 }, rot = { x = 0.000, y = 292.663, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 201, area_id = 20 },
	{ config_id = 72030, monster_id = 20010801, pos = { x = 90.084, y = 246.857, z = 2824.949 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, area_id = 20 },
	{ config_id = 72045, monster_id = 20010601, pos = { x = 91.858, y = 246.680, z = 2826.498 }, rot = { x = 0.000, y = 269.614, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, area_id = 20 },
	{ config_id = 72051, monster_id = 26090401, pos = { x = -57.046, y = 281.132, z = 2784.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 20 },
	{ config_id = 72052, monster_id = 26090401, pos = { x = -60.552, y = 280.448, z = 2778.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 20 },
	{ config_id = 72054, monster_id = 20060501, pos = { x = 87.614, y = 247.015, z = 2830.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 20 },
	{ config_id = 72055, monster_id = 20060701, pos = { x = 84.960, y = 247.008, z = 2827.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 20 },
	{ config_id = 72056, monster_id = 20060701, pos = { x = 87.614, y = 246.996, z = 2824.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 20 },
	{ config_id = 72061, monster_id = 20010901, pos = { x = -63.967, y = 280.782, z = 2782.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, area_id = 20 },
	{ config_id = 72062, monster_id = 20011001, pos = { x = -64.010, y = 280.920, z = 2786.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, area_id = 20 },
	{ config_id = 72063, monster_id = 20011001, pos = { x = -64.937, y = 280.734, z = 2779.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 72002, gadget_id = 70330197, pos = { x = 88.215, y = 247.611, z = 2810.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72003, gadget_id = 70290449, pos = { x = 79.289, y = 260.819, z = 2752.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 20 },
	{ config_id = 72004, gadget_id = 70290449, pos = { x = 88.079, y = 253.058, z = 2810.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 20 },
	{ config_id = 72005, gadget_id = 70290449, pos = { x = 90.194, y = 249.204, z = 2913.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 20 },
	{ config_id = 72006, gadget_id = 70290449, pos = { x = -43.234, y = 302.628, z = 2800.945 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 20 },
	{ config_id = 72007, gadget_id = 70290449, pos = { x = -28.122, y = 278.898, z = 2765.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 20 },
	{ config_id = 72008, gadget_id = 70290449, pos = { x = 161.490, y = 275.456, z = 2849.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 20 },
	{ config_id = 72009, gadget_id = 70290449, pos = { x = -79.690, y = 291.536, z = 2780.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 20 },
	{ config_id = 72010, gadget_id = 70290449, pos = { x = 58.530, y = 257.379, z = 2876.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 20 },
	{ config_id = 72011, gadget_id = 70290449, pos = { x = 146.417, y = 261.244, z = 2756.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 20 },
	{ config_id = 72012, gadget_id = 70290406, pos = { x = -60.552, y = 280.798, z = 2782.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 72014, gadget_id = 70290408, pos = { x = 107.370, y = 251.593, z = 2756.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72015, gadget_id = 70330197, pos = { x = 158.724, y = 259.846, z = 2850.795 }, rot = { x = 358.019, y = 131.795, z = 353.770 }, level = 1, area_id = 20 },
	{ config_id = 72016, gadget_id = 70290450, pos = { x = -60.552, y = 280.798, z = 2782.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 72017, gadget_id = 70210121, pos = { x = -60.552, y = 280.798, z = 2782.903 }, rot = { x = 354.035, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 200020111, drop_count = 1, isOneoff = true, persistent = true, area_id = 20 },
	{ config_id = 72018, gadget_id = 70290551, pos = { x = 103.544, y = 246.204, z = 2811.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 72019, gadget_id = 70290551, pos = { x = 101.158, y = 244.941, z = 2821.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 72020, gadget_id = 70290551, pos = { x = 102.915, y = 246.047, z = 2812.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 72021, gadget_id = 70290551, pos = { x = 144.003, y = 253.724, z = 2847.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 72022, gadget_id = 70290551, pos = { x = 105.300, y = 246.070, z = 2812.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 72023, gadget_id = 70290551, pos = { x = 107.076, y = 245.830, z = 2813.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 72024, gadget_id = 70290551, pos = { x = 106.020, y = 246.387, z = 2809.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 72025, gadget_id = 70290551, pos = { x = 107.775, y = 245.955, z = 2811.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 72026, gadget_id = 70290406, pos = { x = 101.859, y = 251.298, z = 2759.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 72027, gadget_id = 70290450, pos = { x = 101.859, y = 251.298, z = 2759.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 72028, gadget_id = 70210121, pos = { x = 101.859, y = 251.219, z = 2759.369 }, rot = { x = 7.190, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 200020112, drop_count = 1, isOneoff = true, persistent = true, area_id = 20 },
	{ config_id = 72029, gadget_id = 70290406, pos = { x = 87.614, y = 247.094, z = 2827.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 72032, gadget_id = 70290551, pos = { x = 112.123, y = 244.973, z = 2804.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72033, gadget_id = 70290450, pos = { x = 87.614, y = 247.094, z = 2827.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 72034, gadget_id = 70210121, pos = { x = 87.614, y = 247.094, z = 2827.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 200020113, drop_count = 1, isOneoff = true, persistent = true, area_id = 20 },
	{ config_id = 72036, gadget_id = 70290451, pos = { x = -60.552, y = 280.798, z = 2782.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 331500044, area_id = 20 },
	{ config_id = 72037, gadget_id = 70290451, pos = { x = 101.859, y = 251.298, z = 2759.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 331500045, area_id = 20 },
	{ config_id = 72038, gadget_id = 70290451, pos = { x = 87.614, y = 247.094, z = 2827.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 331500046, area_id = 20 },
	{ config_id = 72039, gadget_id = 70290452, pos = { x = -60.552, y = 280.798, z = 2782.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 72040, gadget_id = 70290452, pos = { x = 101.852, y = 251.482, z = 2759.389 }, rot = { x = 6.996, y = 359.918, z = 2.000 }, level = 27, area_id = 20 },
	{ config_id = 72041, gadget_id = 70290452, pos = { x = 87.614, y = 247.094, z = 2827.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 72042, gadget_id = 70290408, pos = { x = 113.105, y = 250.392, z = 2754.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72043, gadget_id = 70290408, pos = { x = 95.908, y = 241.314, z = 2729.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72044, gadget_id = 70290408, pos = { x = 98.269, y = 242.063, z = 2723.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72046, gadget_id = 70290551, pos = { x = 103.907, y = 245.687, z = 2805.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72047, gadget_id = 70290551, pos = { x = 127.670, y = 248.737, z = 2803.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72048, gadget_id = 70290551, pos = { x = 133.368, y = 246.694, z = 2800.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72049, gadget_id = 70290551, pos = { x = 128.331, y = 249.216, z = 2808.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72050, gadget_id = 70620003, pos = { x = 146.438, y = 259.774, z = 2757.022 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72058, gadget_id = 70290408, pos = { x = 118.510, y = 265.856, z = 2716.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72059, gadget_id = 70290408, pos = { x = 126.893, y = 270.536, z = 2724.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72066, gadget_id = 70290551, pos = { x = 21.026, y = 299.627, z = 2830.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72067, gadget_id = 70290551, pos = { x = 84.934, y = 247.064, z = 2830.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72068, gadget_id = 70290551, pos = { x = 84.244, y = 246.928, z = 2828.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72069, gadget_id = 70290551, pos = { x = 83.619, y = 246.887, z = 2830.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72070, gadget_id = 70290551, pos = { x = 86.435, y = 247.176, z = 2834.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72071, gadget_id = 70290551, pos = { x = 84.267, y = 246.879, z = 2832.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72072, gadget_id = 70290408, pos = { x = 131.848, y = 269.324, z = 2734.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72073, gadget_id = 70220103, pos = { x = -79.690, y = 295.059, z = 2780.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72074, gadget_id = 70330197, pos = { x = -31.720, y = 301.656, z = 2805.977 }, rot = { x = 358.137, y = 169.754, z = 352.049 }, level = 1, area_id = 20 },
	{ config_id = 72075, gadget_id = 70220103, pos = { x = 72.750, y = 265.563, z = 2751.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72076, gadget_id = 70330197, pos = { x = 51.120, y = 251.901, z = 2875.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72078, gadget_id = 70290408, pos = { x = 101.478, y = 242.804, z = 2718.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72080, gadget_id = 70290408, pos = { x = 96.549, y = 245.838, z = 2736.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72083, gadget_id = 70290408, pos = { x = 133.486, y = 265.912, z = 2741.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72084, gadget_id = 70290408, pos = { x = 131.100, y = 254.696, z = 2753.709 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 72085, gadget_id = 70330197, pos = { x = 134.149, y = 258.358, z = 2741.869 }, rot = { x = 350.388, y = 181.473, z = 331.902 }, level = 1, area_id = 20 },
	{ config_id = 72086, gadget_id = 70290408, pos = { x = 133.628, y = 259.809, z = 2742.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 }
}

-- 区域
regions = {
	-- 挑战1region
	{ config_id = 72031, shape = RegionShape.SPHERE, radius = 40, pos = { x = -59.907, y = 279.898, z = 2782.678 }, area_id = 20 },
	-- 玩法区域 REGION
	{ config_id = 72035, shape = RegionShape.SPHERE, radius = 180, pos = { x = 55.447, y = 251.975, z = 2790.426 }, area_id = 20 },
	-- 挑战2region
	{ config_id = 72079, shape = RegionShape.POLYGON, pos = { x = 104.843, y = 225.400, z = 2725.066 }, height = 166.400, point_array = { { x = 46.236, y = 2711.246 }, { x = 64.664, y = 2784.754 }, { x = 123.650, y = 2787.100 }, { x = 151.579, y = 2770.686 }, { x = 163.450, y = 2716.043 }, { x = 141.403, y = 2663.032 }, { x = 79.041, y = 2669.626 } }, area_id = 20 },
	-- 挑战3region
	{ config_id = 72081, shape = RegionShape.SPHERE, radius = 35, pos = { x = 89.212, y = 244.126, z = 2827.398 }, area_id = 20 }
}

-- 触发器
triggers = {
	{ config_id = 1072053, name = "ANY_GADGET_DIE_72053", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_72053", action = "action_EVENT_ANY_GADGET_DIE_72053" },
	{ config_id = 1072057, name = "ANY_MONSTER_DIE_72057", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_72057", action = "action_EVENT_ANY_MONSTER_DIE_72057" },
	{ config_id = 1072060, name = "CHALLENGE_FAIL_72060", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_72060", trigger_count = 0 },
	{ config_id = 1072064, name = "ANY_MONSTER_DIE_72064", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_72064", action = "action_EVENT_ANY_MONSTER_DIE_72064" },
	{ config_id = 1072065, name = "CHALLENGE_FAIL_72065", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_72065", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 72077, gadget_id = 70330197, pos = { x = 52.416, y = 252.053, z = 2873.485 }, rot = { x = 0.000, y = 301.133, z = 0.000 }, level = 1, area_id = 20 }
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
		gadgets = { 72002, 72015, 72050, 72073, 72074, 72075, 72076, 72085 },
		regions = { 72035 },
		triggers = { "ANY_GADGET_DIE_72053" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 72012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 72013, 72051, 72052 },
		gadgets = { 72036, 72039 },
		regions = { 72031 },
		triggers = { "ANY_MONSTER_DIE_72064", "CHALLENGE_FAIL_72065" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 72016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 72017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 72026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 72014, 72037, 72040, 72042, 72043, 72044, 72058, 72059, 72072, 72078, 72080, 72083, 72084, 72086 },
		regions = { 72079 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 72027 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 72028 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 72029 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { 72001, 72030, 72045 },
		gadgets = { 72038, 72041 },
		regions = { 72081 },
		triggers = { "ANY_MONSTER_DIE_72057", "CHALLENGE_FAIL_72060" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 72033 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 72034 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = ,
		monsters = { },
		gadgets = { 72003, 72004, 72005, 72006, 72007, 72008, 72009, 72010, 72011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 16,
		-- description = ,
		monsters = { 72054, 72055, 72056 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 17,
		-- description = ,
		monsters = { 72061, 72062, 72063 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 18,
		-- description = ,
		monsters = { },
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
function condition_EVENT_ANY_GADGET_DIE_72053(context, evt)
	if 72011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_72053(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133315072, EntityType.GADGET, 72050 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_72057(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_72057(context, evt)
	-- 添加suite16的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315072, 16)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_72060(context, evt)
	-- 删除suite16的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315072, 16)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_72064(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_72064(context, evt)
	-- 添加suite17的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315072, 17)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_72065(context, evt)
	-- 删除suite17的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315072, 17)
	
	return 0
end

require "V3_0/Activity_TreasureSeelie"
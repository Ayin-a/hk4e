-- 基础信息
local base_info = {
	group_id = 133301019
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
        gallery_id = 26002,
        challenge_time = 120, 
        optimize_region = 19084,
        
        element_target = 6,
        starter_operator_configID = 19012,
        dig_operator_configID = 19016,

        starter_operator_suite = 2,
        level_suite = 3,
        dig_operator_suite = 4,
        treasure_suite = 5,
        treasure_configID = 19017,
    },

    [2] = 
    {
        gallery_id = 26002,
        challenge_time = 120, 
        optimize_region = 19085,

        element_target = 8,

        starter_operator_configID = 19026,
        dig_operator_configID = 19027,

        starter_operator_suite = 6,
        level_suite = 7,
        dig_operator_suite = 8,
        treasure_suite = 9,
        treasure_configID = 19028,

    },

    [3] = 
    {
        gallery_id = 26002,
        challenge_time = 120, 
        optimize_region = 19086,

        element_target = 10,

        starter_operator_configID = 19029,
        dig_operator_configID = 19033,

        starter_operator_suite = 10,
        level_suite = 11,
        dig_operator_suite = 12,
        treasure_suite = 13,
        treasure_configID = 19034,
    }

}

local extra_elements =
{
    19018,19019,19020,19021,19022,19023,19024
,19025,19060,19061,19071,19072,19073,19074,19075,19076
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 19001, monster_id = 20011301, pos = { x = -273.805, y = 250.194, z = 3758.080 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, area_id = 22 },
	{ config_id = 19002, monster_id = 20010501, pos = { x = -268.894, y = 250.865, z = 3758.672 }, rot = { x = 0.000, y = 320.503, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, area_id = 22 },
	{ config_id = 19030, monster_id = 20010801, pos = { x = -392.067, y = 207.958, z = 3809.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, area_id = 22 },
	{ config_id = 19031, monster_id = 20010801, pos = { x = -391.721, y = 209.210, z = 3815.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, area_id = 22 },
	{ config_id = 19045, monster_id = 20010501, pos = { x = -277.985, y = 249.453, z = 3756.252 }, rot = { x = 0.000, y = 26.481, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, area_id = 22 },
	{ config_id = 19047, monster_id = 26120201, pos = { x = -276.371, y = 247.133, z = 3768.345 }, rot = { x = 0.000, y = 173.557, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 201, area_id = 22 },
	{ config_id = 19056, monster_id = 26090401, pos = { x = -270.351, y = 248.946, z = 3765.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 22 },
	{ config_id = 19057, monster_id = 26090401, pos = { x = -279.555, y = 247.600, z = 3764.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 22 },
	{ config_id = 19059, monster_id = 20010601, pos = { x = -394.364, y = 208.227, z = 3813.281 }, rot = { x = 0.000, y = 66.649, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, area_id = 22 },
	{ config_id = 19062, monster_id = 26090901, pos = { x = -391.508, y = 208.407, z = 3811.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 22 },
	{ config_id = 19063, monster_id = 26090901, pos = { x = -392.897, y = 208.949, z = 3815.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 22 },
	{ config_id = 19064, monster_id = 26090201, pos = { x = -390.884, y = 208.924, z = 3813.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 22 },
	{ config_id = 19065, monster_id = 26090201, pos = { x = -389.876, y = 209.688, z = 3816.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 22 },
	{ config_id = 19066, monster_id = 26120101, pos = { x = -387.660, y = 208.414, z = 3809.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 201, area_id = 22 },
	{ config_id = 19067, monster_id = 26090701, pos = { x = -391.867, y = 207.559, z = 3807.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 22 },
	{ config_id = 19068, monster_id = 26090701, pos = { x = -387.904, y = 208.097, z = 3807.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 28, drop_id = 1000100, disableWander = true, pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 19003, gadget_id = 70290449, pos = { x = -226.926, y = 248.949, z = 3753.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 22 },
	{ config_id = 19004, gadget_id = 70290449, pos = { x = -298.898, y = 259.410, z = 3714.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 22 },
	{ config_id = 19005, gadget_id = 70290449, pos = { x = -352.482, y = 235.994, z = 3740.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 22 },
	{ config_id = 19006, gadget_id = 70290449, pos = { x = -294.894, y = 252.906, z = 3788.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 22 },
	{ config_id = 19007, gadget_id = 70290449, pos = { x = -277.237, y = 248.212, z = 3851.039 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 22 },
	{ config_id = 19008, gadget_id = 70290449, pos = { x = -238.100, y = 239.495, z = 3836.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 22 },
	{ config_id = 19009, gadget_id = 70290449, pos = { x = -353.949, y = 241.346, z = 3856.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 22 },
	{ config_id = 19010, gadget_id = 70290449, pos = { x = -303.274, y = 236.867, z = 3836.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 22 },
	{ config_id = 19011, gadget_id = 70290449, pos = { x = -394.585, y = 205.189, z = 3780.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, area_id = 22 },
	{ config_id = 19012, gadget_id = 70290406, pos = { x = -275.076, y = 248.999, z = 3763.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 19013, gadget_id = 70290408, pos = { x = -229.502, y = 223.148, z = 3845.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 19014, gadget_id = 70290408, pos = { x = -231.704, y = 220.625, z = 3852.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 19015, gadget_id = 70290408, pos = { x = -229.379, y = 226.651, z = 3856.234 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 19016, gadget_id = 70290450, pos = { x = -275.076, y = 248.999, z = 3763.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 19017, gadget_id = 70210121, pos = { x = -275.069, y = 248.961, z = 3763.142 }, rot = { x = 12.695, y = 355.896, z = 9.517 }, level = 26, chest_drop_id = 200020121, drop_count = 1, isOneoff = true, persistent = true, area_id = 22 },
	{ config_id = 19018, gadget_id = 70290551, pos = { x = -261.724, y = 284.536, z = 3694.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 19019, gadget_id = 70290551, pos = { x = -264.110, y = 284.580, z = 3694.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 19020, gadget_id = 70290551, pos = { x = -262.353, y = 284.379, z = 3695.954 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 19021, gadget_id = 70290551, pos = { x = -258.930, y = 284.695, z = 3692.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 19022, gadget_id = 70290551, pos = { x = -259.968, y = 284.403, z = 3695.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 19023, gadget_id = 70290551, pos = { x = -258.192, y = 284.162, z = 3696.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 19024, gadget_id = 70290551, pos = { x = -259.248, y = 284.720, z = 3692.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 19025, gadget_id = 70290551, pos = { x = -257.493, y = 284.287, z = 3694.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 19026, gadget_id = 70290406, pos = { x = -242.524, y = 218.458, z = 3844.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 19027, gadget_id = 70290450, pos = { x = -242.524, y = 218.458, z = 3844.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 19028, gadget_id = 70210121, pos = { x = -242.524, y = 218.458, z = 3844.364 }, rot = { x = 0.000, y = 29.656, z = 0.000 }, level = 26, chest_drop_id = 200020122, drop_count = 1, isOneoff = true, persistent = true, area_id = 22 },
	{ config_id = 19029, gadget_id = 70290406, pos = { x = -387.024, y = 209.206, z = 3813.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 19032, gadget_id = 70290452, pos = { x = -275.076, y = 248.999, z = 3763.151 }, rot = { x = 17.618, y = 6.636, z = 9.533 }, level = 1, area_id = 22 },
	{ config_id = 19033, gadget_id = 70290450, pos = { x = -387.024, y = 209.206, z = 3813.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 19034, gadget_id = 70210121, pos = { x = -387.010, y = 209.221, z = 3813.230 }, rot = { x = 358.008, y = 65.259, z = 349.361 }, level = 26, chest_drop_id = 200020123, drop_count = 1, isOneoff = true, persistent = true, area_id = 22 },
	{ config_id = 19036, gadget_id = 70290452, pos = { x = -242.524, y = 218.458, z = 3844.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 22 },
	{ config_id = 19037, gadget_id = 70290452, pos = { x = -387.024, y = 209.206, z = 3813.206 }, rot = { x = 349.253, y = 353.292, z = 8.648 }, level = 1, area_id = 22 },
	{ config_id = 19038, gadget_id = 70290451, pos = { x = -275.076, y = 248.999, z = 3763.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 330100081, area_id = 22 },
	{ config_id = 19039, gadget_id = 70290451, pos = { x = -242.524, y = 218.458, z = 3844.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 330100082, area_id = 22 },
	{ config_id = 19040, gadget_id = 70290451, pos = { x = -387.024, y = 209.206, z = 3813.206 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 330100083, area_id = 22 },
	{ config_id = 19041, gadget_id = 70330197, pos = { x = -291.399, y = 241.804, z = 3780.974 }, rot = { x = 6.837, y = 0.000, z = 0.000 }, level = 1, area_id = 22 },
	{ config_id = 19042, gadget_id = 70330197, pos = { x = -351.495, y = 221.590, z = 3845.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 22 },
	{ config_id = 19043, gadget_id = 70330197, pos = { x = -345.472, y = 238.026, z = 3863.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 22 },
	{ config_id = 19044, gadget_id = 70220103, pos = { x = -347.256, y = 249.955, z = 3858.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 22 },
	{ config_id = 19048, gadget_id = 70290408, pos = { x = -244.412, y = 220.809, z = 3862.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 22 },
	{ config_id = 19049, gadget_id = 70290408, pos = { x = -250.068, y = 222.320, z = 3856.849 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 22 },
	{ config_id = 19050, gadget_id = 70290408, pos = { x = -250.981, y = 221.073, z = 3835.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 22 },
	{ config_id = 19051, gadget_id = 70290408, pos = { x = -250.887, y = 227.015, z = 3835.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 22 },
	{ config_id = 19052, gadget_id = 70290408, pos = { x = -244.601, y = 229.966, z = 3833.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 22 },
	{ config_id = 19054, gadget_id = 70330197, pos = { x = -250.689, y = 219.291, z = 3834.876 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 22 },
	{ config_id = 19055, gadget_id = 70220103, pos = { x = -238.100, y = 242.065, z = 3836.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 22 },
	{ config_id = 19060, gadget_id = 70290551, pos = { x = -407.461, y = 204.297, z = 3810.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 22 },
	{ config_id = 19061, gadget_id = 70290551, pos = { x = -407.094, y = 204.497, z = 3809.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 22 },
	{ config_id = 19071, gadget_id = 70290551, pos = { x = -393.133, y = 203.202, z = 3791.529 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 22 },
	{ config_id = 19072, gadget_id = 70290551, pos = { x = -387.092, y = 204.447, z = 3791.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 22 },
	{ config_id = 19073, gadget_id = 70290551, pos = { x = -396.550, y = 202.460, z = 3792.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 22 },
	{ config_id = 19074, gadget_id = 70290551, pos = { x = -390.611, y = 203.740, z = 3789.880 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 22 },
	{ config_id = 19075, gadget_id = 70290551, pos = { x = -397.243, y = 202.236, z = 3791.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 22 },
	{ config_id = 19076, gadget_id = 70290551, pos = { x = -395.440, y = 202.798, z = 3788.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 22 },
	{ config_id = 19083, gadget_id = 70330197, pos = { x = -297.734, y = 249.721, z = 3720.990 }, rot = { x = 351.938, y = 154.436, z = 341.104 }, level = 1, area_id = 22 }
}

-- 区域
regions = {
	-- 玩法区域 REGION
	{ config_id = 19035, shape = RegionShape.SPHERE, radius = 150, pos = { x = -304.673, y = 233.757, z = 3785.022 }, area_id = 22 },
	-- 挑战1region
	{ config_id = 19084, shape = RegionShape.SPHERE, radius = 40, pos = { x = -274.567, y = 247.269, z = 3763.585 }, area_id = 22 },
	-- 挑战2region
	{ config_id = 19085, shape = RegionShape.SPHERE, radius = 60, pos = { x = -243.223, y = 225.663, z = 3844.736 }, area_id = 22 },
	-- 挑战3region
	{ config_id = 19086, shape = RegionShape.SPHERE, radius = 40, pos = { x = -387.096, y = 211.278, z = 3810.274 }, area_id = 22 }
}

-- 触发器
triggers = {
	{ config_id = 1019046, name = "ANY_MONSTER_DIE_19046", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_19046", action = "action_EVENT_ANY_MONSTER_DIE_19046" },
	{ config_id = 1019058, name = "CHALLENGE_FAIL_19058", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_19058", trigger_count = 0 },
	{ config_id = 1019069, name = "ANY_MONSTER_DIE_19069", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_19069", action = "action_EVENT_ANY_MONSTER_DIE_19069" },
	{ config_id = 1019070, name = "ANY_MONSTER_DIE_19070", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_19070", action = "action_EVENT_ANY_MONSTER_DIE_19070" },
	{ config_id = 1019077, name = "CHALLENGE_FAIL_19077", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_19077", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 19053, gadget_id = 70290408, pos = { x = -239.175, y = 220.775, z = 3832.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 22 },
		{ config_id = 19078, gadget_id = 70510006, pos = { x = -277.743, y = 248.013, z = 3853.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 22 },
		{ config_id = 19079, gadget_id = 70510006, pos = { x = -275.675, y = 247.650, z = 3852.027 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 22 },
		{ config_id = 19080, gadget_id = 70510006, pos = { x = -276.179, y = 247.370, z = 3849.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 22 },
		{ config_id = 19081, gadget_id = 70510006, pos = { x = -279.236, y = 247.877, z = 3851.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 22 },
		{ config_id = 19082, gadget_id = 70510006, pos = { x = -278.581, y = 247.524, z = 3848.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, persistent = true, area_id = 22 }
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
		gadgets = { 19041, 19042, 19043, 19044, 19054, 19055, 19083 },
		regions = { 19035 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 19012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 19001, 19002, 19045 },
		gadgets = { 19032, 19038 },
		regions = { 19084 },
		triggers = { "ANY_MONSTER_DIE_19046", "CHALLENGE_FAIL_19058" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 19016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 19017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 19026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 19013, 19014, 19015, 19036, 19039, 19048, 19049, 19050, 19051, 19052 },
		regions = { 19085 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 19027 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 19028 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 19029 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { 19030, 19031, 19059 },
		gadgets = { 19037, 19040 },
		regions = { 19086 },
		triggers = { "ANY_MONSTER_DIE_19070", "CHALLENGE_FAIL_19077" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 19033 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 19034 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = ,
		monsters = { },
		gadgets = { 19003, 19004, 19005, 19006, 19007, 19008, 19009, 19010, 19011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = ,
		monsters = { 19047, 19056, 19057 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 16,
		-- description = ,
		monsters = { 19062, 19063, 19064, 19065 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_19069" },
		rand_weight = 100
	},
	{
		-- suite_id = 17,
		-- description = ,
		monsters = { 19066, 19067, 19068 },
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
function condition_EVENT_ANY_MONSTER_DIE_19046(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_19046(context, evt)
	-- 添加suite15的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301019, 15)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_19058(context, evt)
	-- 删除suite15的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301019, 15)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_19069(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_19069(context, evt)
	-- 添加suite17的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301019, 17)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_19070(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_19070(context, evt)
	-- 添加suite16的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301019, 16)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_19077(context, evt)
	-- 删除suite16的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133301019, 16)
	
	return 0
end

require "V3_0/Activity_TreasureSeelie"
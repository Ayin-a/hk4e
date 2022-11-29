-- 基础信息
local base_info = {
	group_id = 133213554
}

-- DEFS_MISCS
local defs = {

        group_id = 133213554,

        --触发开始/接续挑战的region，此region在suite1
        start_region_id = 554038,

        -- 挑战index
        ChallengeIndex = 3001,

        --开始挑战后，哪些suit要Add
        challenge_suits = 
        { 2,3,4,5 },

        --玩法限定region，出圈触发暂离，此region在suite1
        level_region_id = 554039,

        --挑战id
        challenge_id = 2003001,

        --开始小光柱id
        starting_point_id = 554037,

        --目标捕捉数
        taget_score = 3,

        --目标捕捉数，配在陈列室表里，每个营地对应各自的陈列室ID
        exhibition_id = 10801003,

        --狗和寻路点。格式为：[狗configid] = {startMarkFlag, endMarkFlag},
        waypoint = {
                [554002] = {4, 6},
                [554004] = {7, 8},
        }
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 554001, monster_id = 28020901, pos = { x = -3263.858, y = 202.710, z = -3264.492 }, rot = { x = 0.000, y = 74.100, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, affix = { 5122, 5119 }, area_id = 12 },
	{ config_id = 554002, monster_id = 28020901, pos = { x = -3277.753, y = 200.312, z = -3232.966 }, rot = { x = 0.000, y = 60.390, z = 0.000 }, level = 30, drop_tag = "走兽", affix = { 5122 }, area_id = 12 },
	{ config_id = 554003, monster_id = 28020901, pos = { x = -3293.865, y = 200.521, z = -3239.224 }, rot = { x = 0.000, y = 88.078, z = 0.000 }, level = 30, drop_tag = "走兽", affix = { 5119, 5121, 5122 }, area_id = 12 },
	{ config_id = 554004, monster_id = 28020901, pos = { x = -3302.596, y = 200.484, z = -3211.463 }, rot = { x = 0.000, y = 183.175, z = 0.000 }, level = 30, drop_tag = "走兽", affix = { 5122 }, area_id = 12 },
	{ config_id = 554005, monster_id = 28020901, pos = { x = -3257.524, y = 200.651, z = -3266.702 }, rot = { x = 0.000, y = 84.714, z = 0.000 }, level = 30, drop_tag = "走兽", affix = { 5119, 5121, 5122 }, area_id = 12 },
	{ config_id = 554006, monster_id = 28020901, pos = { x = -3256.683, y = 200.274, z = -3259.578 }, rot = { x = 0.000, y = 21.842, z = 0.000 }, level = 30, drop_tag = "走兽", affix = { 5119, 5121, 5122 }, area_id = 12 },
	{ config_id = 554007, monster_id = 28020901, pos = { x = -3305.500, y = 200.032, z = -3220.759 }, rot = { x = 0.000, y = 241.043, z = 0.000 }, level = 30, drop_tag = "走兽", affix = { 5119, 5121, 5122 }, area_id = 12 },
	{ config_id = 554009, monster_id = 28020509, pos = { x = -3283.324, y = 200.814, z = -3231.338 }, rot = { x = 0.000, y = 85.221, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, affix = { 5124, 5129 }, pose_id = 22, area_id = 12 },
	{ config_id = 554010, monster_id = 28020702, pos = { x = -3296.338, y = 200.000, z = -3220.930 }, rot = { x = 0.000, y = 83.275, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, affix = { 5124, 5129 }, pose_id = 22, area_id = 12 },
	{ config_id = 554011, monster_id = 28020406, pos = { x = -3253.263, y = 200.305, z = -3262.556 }, rot = { x = 0.000, y = 38.321, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, affix = { 5124, 5129 }, pose_id = 22, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 554012, gadget_id = 70350356, pos = { x = -3245.206, y = 200.094, z = -3257.460 }, rot = { x = 0.000, y = 237.879, z = 0.000 }, level = 27, mark_flag = 1, area_id = 12 },
	{ config_id = 554013, gadget_id = 70350356, pos = { x = -3264.369, y = 202.805, z = -3269.344 }, rot = { x = 0.000, y = 71.896, z = 0.000 }, level = 27, mark_flag = 2, area_id = 12 },
	{ config_id = 554014, gadget_id = 70350356, pos = { x = -3264.077, y = 202.710, z = -3264.536 }, rot = { x = 0.000, y = 72.253, z = 0.000 }, level = 27, mark_flag = 3, area_id = 12 },
	{ config_id = 554015, gadget_id = 70350356, pos = { x = -3277.806, y = 200.304, z = -3233.069 }, rot = { x = 0.000, y = 64.217, z = 0.000 }, level = 27, mark_flag = 4, area_id = 12 },
	{ config_id = 554016, gadget_id = 70310127, pos = { x = -3315.708, y = 200.411, z = -3230.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 65, area_id = 12 },
	{ config_id = 554017, gadget_id = 70310142, pos = { x = -3252.368, y = 200.182, z = -3275.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554018, gadget_id = 70310142, pos = { x = -3257.451, y = 200.642, z = -3266.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554019, gadget_id = 70310142, pos = { x = -3257.535, y = 200.171, z = -3254.134 }, rot = { x = 0.000, y = 352.848, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554021, gadget_id = 70310142, pos = { x = -3317.046, y = 200.139, z = -3227.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554022, gadget_id = 70310142, pos = { x = -3306.014, y = 200.161, z = -3229.737 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554023, gadget_id = 70310142, pos = { x = -3249.766, y = 200.069, z = -3254.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554024, gadget_id = 70310142, pos = { x = -3279.776, y = 200.427, z = -3243.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554025, gadget_id = 70310142, pos = { x = -3271.744, y = 200.408, z = -3247.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554032, gadget_id = 70310126, pos = { x = -3307.293, y = 201.317, z = -3246.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 64, area_id = 12 },
	{ config_id = 554033, gadget_id = 70310127, pos = { x = -3248.672, y = 200.136, z = -3269.018 }, rot = { x = 0.000, y = 115.372, z = 0.000 }, level = 27, interact_id = 65, area_id = 12 },
	{ config_id = 554034, gadget_id = 70310126, pos = { x = -3263.322, y = 200.281, z = -3251.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 65, area_id = 12 },
	{ config_id = 554035, gadget_id = 70310126, pos = { x = -3273.239, y = 202.795, z = -3261.027 }, rot = { x = 0.000, y = 266.807, z = 0.000 }, level = 27, interact_id = 64, area_id = 12 },
	{ config_id = 554036, gadget_id = 70310128, pos = { x = -3268.159, y = 200.524, z = -3250.995 }, rot = { x = 0.000, y = 146.285, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554037, gadget_id = 70310148, pos = { x = -3299.738, y = 224.694, z = -3255.958 }, rot = { x = 0.000, y = 44.479, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554040, gadget_id = 70310128, pos = { x = -3267.097, y = 200.306, z = -3249.875 }, rot = { x = 0.000, y = 296.823, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554041, gadget_id = 70310128, pos = { x = -3261.470, y = 200.431, z = -3257.712 }, rot = { x = 0.000, y = 217.618, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554042, gadget_id = 70310128, pos = { x = -3289.537, y = 200.354, z = -3237.529 }, rot = { x = 0.000, y = 188.082, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554043, gadget_id = 70310128, pos = { x = -3269.396, y = 202.830, z = -3260.632 }, rot = { x = 0.000, y = 208.721, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554044, gadget_id = 70310128, pos = { x = -3260.751, y = 200.543, z = -3259.276 }, rot = { x = 0.000, y = 80.271, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554045, gadget_id = 70310128, pos = { x = -3297.771, y = 201.028, z = -3242.549 }, rot = { x = 0.000, y = 5.732, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554046, gadget_id = 70310128, pos = { x = -3299.385, y = 201.080, z = -3242.830 }, rot = { x = 0.000, y = 338.598, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554047, gadget_id = 70310128, pos = { x = -3300.004, y = 200.050, z = -3222.714 }, rot = { x = 0.000, y = 44.388, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554048, gadget_id = 70310128, pos = { x = -3301.324, y = 200.111, z = -3230.482 }, rot = { x = 0.000, y = 186.841, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554049, gadget_id = 70310128, pos = { x = -3305.379, y = 200.612, z = -3237.904 }, rot = { x = 0.000, y = 172.827, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554050, gadget_id = 70310128, pos = { x = -3303.870, y = 200.571, z = -3237.979 }, rot = { x = 0.000, y = 23.305, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554051, gadget_id = 70310128, pos = { x = -3310.541, y = 200.104, z = -3226.947 }, rot = { x = 0.000, y = 155.474, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554052, gadget_id = 70310128, pos = { x = -3308.845, y = 200.093, z = -3226.576 }, rot = { x = 0.000, y = 6.969, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554053, gadget_id = 70310128, pos = { x = -3301.540, y = 200.044, z = -3221.907 }, rot = { x = 0.000, y = 185.272, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554054, gadget_id = 70310127, pos = { x = -3270.133, y = 200.383, z = -3248.156 }, rot = { x = 0.000, y = 187.654, z = 0.000 }, level = 27, interact_id = 64, area_id = 12 },
	{ config_id = 554055, gadget_id = 70310127, pos = { x = -3264.417, y = 202.805, z = -3269.334 }, rot = { x = 0.000, y = 214.689, z = 0.000 }, level = 27, interact_id = 64, area_id = 12 },
	{ config_id = 554056, gadget_id = 70350356, pos = { x = -3283.766, y = 201.075, z = -3228.371 }, rot = { x = 0.000, y = 343.624, z = 0.000 }, level = 27, mark_flag = 5, area_id = 12 },
	{ config_id = 554057, gadget_id = 70350356, pos = { x = -3283.277, y = 200.550, z = -3233.997 }, rot = { x = 0.000, y = 208.122, z = 0.000 }, level = 27, mark_flag = 6, area_id = 12 },
	{ config_id = 554058, gadget_id = 70310128, pos = { x = -3288.271, y = 200.399, z = -3238.141 }, rot = { x = 0.000, y = 29.962, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554059, gadget_id = 70350356, pos = { x = -3303.285, y = 200.426, z = -3216.541 }, rot = { x = 0.000, y = 176.751, z = 0.000 }, level = 27, mark_flag = 7, area_id = 12 },
	{ config_id = 554060, gadget_id = 70350356, pos = { x = -3302.543, y = 200.469, z = -3211.561 }, rot = { x = 0.000, y = 9.588, z = 0.000 }, level = 27, mark_flag = 8, area_id = 12 },
	{ config_id = 554061, gadget_id = 70310128, pos = { x = -3299.847, y = 200.104, z = -3231.018 }, rot = { x = 0.000, y = 28.518, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554062, gadget_id = 70300093, pos = { x = -3301.798, y = 200.123, z = -3220.645 }, rot = { x = 0.000, y = 199.774, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 554066, gadget_id = 70220049, pos = { x = -3252.323, y = 200.320, z = -3261.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 12 },
	{ config_id = 554068, gadget_id = 70330064, pos = { x = -3321.802, y = 204.674, z = -3246.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 12 },
	{ config_id = 554069, gadget_id = 70900380, pos = { x = -3318.379, y = 213.617, z = -3246.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 554070, gadget_id = 70900380, pos = { x = -3313.674, y = 220.056, z = -3246.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 554071, gadget_id = 70900380, pos = { x = -3310.346, y = 225.934, z = -3246.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 554074, gadget_id = 70220013, pos = { x = -3312.385, y = 200.090, z = -3226.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 12 },
	{ config_id = 554075, gadget_id = 70220013, pos = { x = -3286.483, y = 200.365, z = -3238.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 12 },
	{ config_id = 554076, gadget_id = 70220014, pos = { x = -3266.003, y = 200.238, z = -3248.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 12 },
	{ config_id = 554077, gadget_id = 70220014, pos = { x = -3298.621, y = 200.074, z = -3230.694 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 12 },
	{ config_id = 554078, gadget_id = 70220014, pos = { x = -3306.663, y = 200.611, z = -3237.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 12 },
	{ config_id = 554079, gadget_id = 70220014, pos = { x = -3311.006, y = 200.081, z = -3226.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 12 },
	{ config_id = 554080, gadget_id = 70220014, pos = { x = -3281.277, y = 200.918, z = -3245.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 12 },
	{ config_id = 554084, gadget_id = 70310126, pos = { x = -3282.663, y = 202.216, z = -3249.211 }, rot = { x = 0.000, y = 266.807, z = 0.000 }, level = 27, interact_id = 64, area_id = 12 },
	{ config_id = 554085, gadget_id = 70310128, pos = { x = -3263.021, y = 200.582, z = -3257.571 }, rot = { x = 0.000, y = 163.471, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 554086, gadget_id = 70310004, pos = { x = -3282.278, y = 200.780, z = -3231.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 554038, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3299.738, y = 224.694, z = -3255.958 }, area_id = 12 },
	{ config_id = 554039, shape = RegionShape.SPHERE, radius = 60, pos = { x = -3287.351, y = 208.363, z = -3253.261 }, area_id = 12 },
	{ config_id = 554081, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3299.738, y = 224.694, z = -3255.958 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1554072, name = "GADGET_STATE_CHANGE_554072", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_554072", action = "action_EVENT_GADGET_STATE_CHANGE_554072", trigger_count = 0 },
	{ config_id = 1554073, name = "GADGET_STATE_CHANGE_554073", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_554073", action = "action_EVENT_GADGET_STATE_CHANGE_554073", trigger_count = 0 },
	{ config_id = 1554081, name = "ENTER_REGION_554081", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_554081", action = "action_EVENT_ENTER_REGION_554081" },
	-- fight_first=0 战斗没完成
	{ config_id = 1554082, name = "CHALLENGE_SUCCESS_554082", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "3001", condition = "condition_EVENT_CHALLENGE_SUCCESS_554082", action = "action_EVENT_CHALLENGE_SUCCESS_554082" },
	-- fight_first=1 战斗已完成
	{ config_id = 1554083, name = "CHALLENGE_SUCCESS_554083", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "3001", condition = "condition_EVENT_CHALLENGE_SUCCESS_554083", action = "action_EVENT_CHALLENGE_SUCCESS_554083" }
}

-- 变量
variables = {
	{ config_id = 1, name = "fight_first", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 554008, monster_id = 28020901, pos = { x = -3314.574, y = 202.002, z = -3265.434 }, rot = { x = 0.000, y = 191.546, z = 0.000 }, level = 27, drop_tag = "走兽", affix = { 5119 }, area_id = 12 },
		{ config_id = 554063, monster_id = 28040101, pos = { x = -3291.404, y = 200.000, z = -3220.101 }, rot = { x = 0.000, y = 299.606, z = 0.000 }, level = 1, drop_tag = "水族", isOneoff = true, area_id = 12 },
		{ config_id = 554064, monster_id = 28040101, pos = { x = -3292.455, y = 200.000, z = -3220.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "水族", isOneoff = true, area_id = 12 }
	},
	gadgets = {
		{ config_id = 554020, gadget_id = 70310142, pos = { x = -3243.964, y = 200.156, z = -3261.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 554026, gadget_id = 70310142, pos = { x = -3302.248, y = 200.000, z = -3205.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 554027, gadget_id = 70310142, pos = { x = -3302.248, y = 200.000, z = -3205.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 554028, gadget_id = 70310142, pos = { x = -3302.248, y = 200.000, z = -3205.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 554029, gadget_id = 70310142, pos = { x = -3302.248, y = 200.000, z = -3205.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 554030, gadget_id = 70310142, pos = { x = -3302.248, y = 200.000, z = -3205.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 554031, gadget_id = 70310142, pos = { x = -3302.248, y = 200.000, z = -3205.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
		{ config_id = 554065, gadget_id = 70560005, pos = { x = -3281.423, y = 200.825, z = -3230.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, isOneoff = true, area_id = 12 },
		{ config_id = 554067, gadget_id = 70540003, pos = { x = -3254.178, y = 200.302, z = -3263.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 12 }
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
		gadgets = { 554036, 554037, 554040, 554041, 554042, 554043, 554044, 554045, 554046, 554047, 554048, 554049, 554050, 554051, 554052, 554053, 554058, 554061, 554062, 554066, 554068, 554074, 554075, 554076, 554077, 554078, 554079, 554080, 554085, 554086 },
		regions = { 554038, 554039, 554081 },
		triggers = { "GADGET_STATE_CHANGE_554072", "GADGET_STATE_CHANGE_554073", "ENTER_REGION_554081", "CHALLENGE_SUCCESS_554082", "CHALLENGE_SUCCESS_554083" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 闪现狗,
		monsters = { 554002, 554004 },
		gadgets = { 554012, 554013, 554014, 554015, 554056, 554057, 554059, 554060 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 走路狗,
		monsters = { 554001, 554003, 554005, 554006, 554007 },
		gadgets = { 554017, 554018, 554019, 554021, 554022, 554023, 554024, 554025 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 机关,
		monsters = { },
		gadgets = { 554016, 554032, 554033, 554034, 554035, 554054, 554055, 554084 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 小动物,
		monsters = { 554009, 554010, 554011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 554069, 554070, 554071 },
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
function condition_EVENT_GADGET_STATE_CHANGE_554072(context, evt)
	if 554068 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_554072(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213554, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_554073(context, evt)
	if 554068 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_554073(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213554, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_554081(context, evt)
	if evt.param1 ~= 554081 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_554081(context, evt)
	-- 调用提示id为 32210201 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32210201) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_SUCCESS_554082(context, evt)
	-- 判断变量"fight_first"为0
	if ScriptLib.GetGroupVariableValue(context, "fight_first") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_554082(context, evt)
	-- 调用提示id为 32210203 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32210203) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "sneak_first" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "sneak_first", 1, 133213555) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CHALLENGE_SUCCESS_554083(context, evt)
	-- 判断变量"fight_first"为1
	if ScriptLib.GetGroupVariableValue(context, "fight_first") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_554083(context, evt)
	-- 调用提示id为 32210204 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32210204) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "sneak_first" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "sneak_first", 1, 133213555) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V2_3/HachiSneak"
require "V2_0/ElectricCore"
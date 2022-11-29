-- 基础信息
local base_info = {
	group_id = 133221068
}

-- DEFS_MISCS
local defs = {

        group_id = 133221068,

        --触发开始/接续挑战的region，此region在suite1
        start_region_id = 68038,

        -- 挑战index
        ChallengeIndex = 2001,

        --开始挑战后，哪些suit要Add
        challenge_suits = 
        { 2,3,4,5 },

        --玩法限定region，出圈触发暂离，此region在suite1
        level_region_id = 68039,

        --挑战id
        challenge_id = 2003001,

        --开始小光柱id
        starting_point_id = 68037,

        --目标捕捉数
        taget_score = 3,

        --目标捕捉数（new）
         exhibition_id = 10801002,

        --狗和寻路点。格式为：[狗configid] = {startMarkFlag, endMarkFlag},
        waypoint = {
                [68007] = {1, 2},
                [68065] = {5, 6},
        }
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 2号狗子
	{ config_id = 68002, monster_id = 28020901, pos = { x = -3199.890, y = 200.816, z = -4760.088 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", affix = { 5119, 5122 }, area_id = 11 },
	-- 4号狗子
	{ config_id = 68003, monster_id = 28020901, pos = { x = -3163.282, y = 200.681, z = -4762.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", affix = { 5119, 5122 }, area_id = 11 },
	-- 5号狗子
	{ config_id = 68004, monster_id = 28020901, pos = { x = -3159.149, y = 200.295, z = -4739.132 }, rot = { x = 0.000, y = 82.534, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, affix = { 5119, 5122 }, area_id = 11 },
	-- 6号狗子
	{ config_id = 68005, monster_id = 28020901, pos = { x = -3167.228, y = 201.105, z = -4734.972 }, rot = { x = 0.000, y = 20.217, z = 0.000 }, level = 30, drop_tag = "走兽", affix = { 5119, 5122 }, area_id = 11 },
	-- 3号狗子
	{ config_id = 68006, monster_id = 28020901, pos = { x = -3176.562, y = 201.616, z = -4754.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", affix = { 5119, 5122 }, area_id = 11 },
	-- 1号闪现
	{ config_id = 68007, monster_id = 28020901, pos = { x = -3175.190, y = 205.922, z = -4714.194 }, rot = { x = 0.000, y = 105.429, z = 0.000 }, level = 30, drop_tag = "走兽", affix = { 5121, 5122 }, area_id = 11 },
	{ config_id = 68009, monster_id = 28020509, pos = { x = -3157.274, y = 200.261, z = -4761.061 }, rot = { x = 0.000, y = 138.196, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, affix = { 5124, 5129 }, pose_id = 22, area_id = 11 },
	{ config_id = 68010, monster_id = 28020702, pos = { x = -3174.392, y = 200.298, z = -4768.175 }, rot = { x = 355.034, y = 187.341, z = 4.642 }, level = 30, drop_tag = "走兽", disableWander = true, affix = { 5124, 5129 }, pose_id = 22, area_id = 11 },
	{ config_id = 68011, monster_id = 28020406, pos = { x = -3166.445, y = 200.249, z = -4712.261 }, rot = { x = 0.000, y = 184.109, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, affix = { 5124, 5129 }, pose_id = 22, area_id = 11 },
	-- 2号闪现
	{ config_id = 68065, monster_id = 28020901, pos = { x = -3172.606, y = 201.665, z = -4752.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "走兽", affix = { 5121, 5122 }, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 68001, gadget_id = 70310128, pos = { x = -3180.013, y = 201.070, z = -4760.380 }, rot = { x = 0.000, y = 357.633, z = 0.000 }, level = 27, area_id = 11 },
	-- 1号闪现路径
	{ config_id = 68012, gadget_id = 70350356, pos = { x = -3174.900, y = 205.774, z = -4714.458 }, rot = { x = 0.000, y = 121.971, z = 0.000 }, level = 27, mark_flag = 1, area_id = 11 },
	-- 1号闪现路径
	{ config_id = 68014, gadget_id = 70350356, pos = { x = -3160.873, y = 200.000, z = -4721.509 }, rot = { x = 0.000, y = 203.401, z = 0.000 }, level = 27, mark_flag = 2, area_id = 11 },
	{ config_id = 68016, gadget_id = 70310127, pos = { x = -3173.847, y = 201.310, z = -4757.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 65, area_id = 11 },
	-- 1号
	{ config_id = 68017, gadget_id = 70310142, pos = { x = -3242.762, y = 204.250, z = -4686.262 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	-- 1号
	{ config_id = 68018, gadget_id = 70310142, pos = { x = -3257.373, y = 202.096, z = -4679.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	-- 2号
	{ config_id = 68019, gadget_id = 70310142, pos = { x = -3199.024, y = 200.739, z = -4760.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	-- 2号
	{ config_id = 68020, gadget_id = 70310142, pos = { x = -3171.934, y = 200.710, z = -4764.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	-- 2号
	{ config_id = 68021, gadget_id = 70310142, pos = { x = -3186.128, y = 200.962, z = -4760.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	-- 3号
	{ config_id = 68022, gadget_id = 70310142, pos = { x = -3171.663, y = 202.580, z = -4752.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	-- 3号
	{ config_id = 68023, gadget_id = 70310142, pos = { x = -3193.763, y = 201.276, z = -4757.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	-- 4号
	{ config_id = 68024, gadget_id = 70310142, pos = { x = -3163.354, y = 200.717, z = -4761.433 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	-- 5号
	{ config_id = 68025, gadget_id = 70310142, pos = { x = -3167.211, y = 201.102, z = -4735.020 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	-- 5号
	{ config_id = 68026, gadget_id = 70310142, pos = { x = -3164.503, y = 200.316, z = -4716.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	-- 5号
	{ config_id = 68028, gadget_id = 70310142, pos = { x = -3159.149, y = 200.295, z = -4739.132 }, rot = { x = 0.000, y = 82.534, z = 0.000 }, level = 27, area_id = 11 },
	-- 7号
	{ config_id = 68029, gadget_id = 70310142, pos = { x = -3248.616, y = 242.488, z = -4704.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	-- 7号
	{ config_id = 68030, gadget_id = 70310142, pos = { x = -3242.518, y = 238.813, z = -4719.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	-- 2号闪现路径
	{ config_id = 68031, gadget_id = 70350356, pos = { x = -3173.227, y = 201.867, z = -4750.881 }, rot = { x = 0.000, y = 141.593, z = 0.000 }, level = 27, mark_flag = 5, area_id = 11 },
	{ config_id = 68032, gadget_id = 70310126, pos = { x = -3167.159, y = 200.454, z = -4766.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 64, area_id = 11 },
	{ config_id = 68033, gadget_id = 70310127, pos = { x = -3169.674, y = 201.576, z = -4737.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 65, area_id = 11 },
	{ config_id = 68034, gadget_id = 70310127, pos = { x = -3170.607, y = 200.497, z = -4712.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 65, area_id = 11 },
	{ config_id = 68035, gadget_id = 70310128, pos = { x = -3178.670, y = 201.093, z = -4760.357 }, rot = { x = 0.000, y = 347.015, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68036, gadget_id = 70310128, pos = { x = -3181.476, y = 204.772, z = -4718.399 }, rot = { x = 0.000, y = 137.064, z = 18.660 }, level = 27, area_id = 11 },
	{ config_id = 68037, gadget_id = 70310148, pos = { x = -3184.918, y = 218.604, z = -4735.044 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	-- 4号
	{ config_id = 68041, gadget_id = 70310142, pos = { x = -3160.840, y = 200.424, z = -4745.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68042, gadget_id = 70310126, pos = { x = -3162.336, y = 200.073, z = -4733.770 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 64, area_id = 11 },
	{ config_id = 68043, gadget_id = 70310128, pos = { x = -3160.811, y = 199.699, z = -4726.468 }, rot = { x = 0.000, y = 284.081, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68044, gadget_id = 70310126, pos = { x = -3159.309, y = 200.562, z = -4754.551 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 64, area_id = 11 },
	{ config_id = 68045, gadget_id = 70310128, pos = { x = -3161.533, y = 199.699, z = -4727.719 }, rot = { x = 0.000, y = 314.257, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68047, gadget_id = 70220065, pos = { x = -3167.550, y = 200.429, z = -4702.652 }, rot = { x = 0.000, y = 109.032, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68048, gadget_id = 70220065, pos = { x = -3202.332, y = 200.445, z = -4762.165 }, rot = { x = 0.000, y = 36.261, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68049, gadget_id = 70220065, pos = { x = -3163.916, y = 200.135, z = -4704.277 }, rot = { x = 0.000, y = 162.242, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68050, gadget_id = 70220066, pos = { x = -3165.953, y = 200.244, z = -4703.653 }, rot = { x = 0.000, y = 145.292, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68051, gadget_id = 70310128, pos = { x = -3171.016, y = 200.727, z = -4704.738 }, rot = { x = 0.000, y = 320.396, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68052, gadget_id = 70310128, pos = { x = -3170.222, y = 200.711, z = -4703.584 }, rot = { x = 0.000, y = 298.475, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68053, gadget_id = 70220065, pos = { x = -3203.185, y = 200.866, z = -4759.798 }, rot = { x = 0.000, y = 81.564, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68054, gadget_id = 70310128, pos = { x = -3180.598, y = 204.182, z = -4717.468 }, rot = { x = 4.270, y = 124.292, z = 18.182 }, level = 27, area_id = 11 },
	{ config_id = 68055, gadget_id = 70310128, pos = { x = -3184.890, y = 200.590, z = -4764.013 }, rot = { x = 0.000, y = 24.009, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68056, gadget_id = 70310128, pos = { x = -3183.677, y = 200.533, z = -4764.592 }, rot = { x = 0.000, y = 13.391, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68057, gadget_id = 70310128, pos = { x = -3169.260, y = 200.987, z = -4760.694 }, rot = { x = 0.000, y = 140.993, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68058, gadget_id = 70310128, pos = { x = -3170.317, y = 200.911, z = -4761.799 }, rot = { x = 0.000, y = 125.057, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68059, gadget_id = 70310128, pos = { x = -3159.303, y = 200.444, z = -4751.918 }, rot = { x = 0.000, y = 196.153, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68060, gadget_id = 70310128, pos = { x = -3160.838, y = 200.611, z = -4751.805 }, rot = { x = 0.000, y = 170.742, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68061, gadget_id = 70310128, pos = { x = -3167.123, y = 201.053, z = -4728.713 }, rot = { x = 0.000, y = 268.515, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68062, gadget_id = 70310126, pos = { x = -3165.089, y = 200.185, z = -4708.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 64, area_id = 11 },
	{ config_id = 68063, gadget_id = 70310128, pos = { x = -3168.718, y = 201.435, z = -4745.586 }, rot = { x = 0.000, y = 341.930, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68064, gadget_id = 70310128, pos = { x = -3167.248, y = 201.254, z = -4745.352 }, rot = { x = 0.000, y = 3.047, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68066, gadget_id = 70310128, pos = { x = -3161.131, y = 199.839, z = -4711.259 }, rot = { x = 0.000, y = 265.507, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68067, gadget_id = 70310128, pos = { x = -3161.253, y = 199.839, z = -4712.750 }, rot = { x = 0.000, y = 281.852, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68068, gadget_id = 70310128, pos = { x = -3161.411, y = 199.848, z = -4714.474 }, rot = { x = 0.000, y = 273.449, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68069, gadget_id = 70310128, pos = { x = -3171.395, y = 199.760, z = -4770.951 }, rot = { x = 0.000, y = 172.890, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68070, gadget_id = 70310128, pos = { x = -3172.933, y = 199.760, z = -4770.833 }, rot = { x = 0.000, y = 187.352, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68071, gadget_id = 70310128, pos = { x = -3174.483, y = 199.760, z = -4770.634 }, rot = { x = 0.000, y = 187.352, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 68072, gadget_id = 70310126, pos = { x = -3181.955, y = 200.167, z = -4766.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 64, area_id = 11 },
	{ config_id = 68074, gadget_id = 70330064, pos = { x = -3199.952, y = 207.276, z = -4711.671 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 11 },
	-- 2号闪现路径
	{ config_id = 68075, gadget_id = 70350356, pos = { x = -3156.952, y = 200.240, z = -4759.152 }, rot = { x = 0.000, y = 348.928, z = 0.000 }, level = 27, mark_flag = 6, area_id = 11 },
	{ config_id = 68076, gadget_id = 70310128, pos = { x = -3168.692, y = 201.068, z = -4721.893 }, rot = { x = 4.094, y = 180.616, z = 3.959 }, level = 27, area_id = 11 },
	{ config_id = 68077, gadget_id = 70310128, pos = { x = -3167.191, y = 200.859, z = -4722.156 }, rot = { x = 1.790, y = 208.230, z = 5.405 }, level = 27, area_id = 11 },
	{ config_id = 68079, gadget_id = 70900380, pos = { x = -3204.134, y = 212.736, z = -4713.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 68080, gadget_id = 70900380, pos = { x = -3212.563, y = 218.626, z = -4719.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 68081, gadget_id = 70900380, pos = { x = -3208.672, y = 223.114, z = -4731.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 68082, gadget_id = 70900380, pos = { x = -3198.677, y = 226.285, z = -4738.030 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 68085, gadget_id = 70310128, pos = { x = -3167.463, y = 201.141, z = -4730.133 }, rot = { x = 0.000, y = 298.691, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
	-- 玩法起始trigger
	{ config_id = 68038, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3185.442, y = 218.630, z = -4735.395 }, area_id = 11 },
	-- 玩法范围
	{ config_id = 68039, shape = RegionShape.SPHERE, radius = 50, pos = { x = -3170.313, y = 201.617, z = -4745.526 }, area_id = 11 },
	-- 开始Reminder
	{ config_id = 68046, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3185.442, y = 218.630, z = -4735.395 }, area_id = 11 }
}

-- 触发器
triggers = {
	-- 开始Reminder
	{ config_id = 1068046, name = "ENTER_REGION_68046", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_68046", action = "action_EVENT_ENTER_REGION_68046" },
	{ config_id = 1068073, name = "CHALLENGE_SUCCESS_68073", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2001", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_68073" },
	{ config_id = 1068083, name = "GADGET_STATE_CHANGE_68083", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_68083", action = "action_EVENT_GADGET_STATE_CHANGE_68083", trigger_count = 0 },
	{ config_id = 1068084, name = "GADGET_STATE_CHANGE_68084", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_68084", action = "action_EVENT_GADGET_STATE_CHANGE_68084", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "Endflag_slip", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 68008, monster_id = 28020901, pos = { x = -3245.571, y = 240.988, z = -4709.709 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", affix = { 5119 }, area_id = 11 },
		{ config_id = 68040, monster_id = 28020901, pos = { x = -3241.678, y = 204.239, z = -4686.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 11 }
	},
	gadgets = {
		{ config_id = 68013, gadget_id = 70350085, pos = { x = -3176.276, y = 207.854, z = -4741.713 }, rot = { x = 0.000, y = 113.652, z = 0.000 }, level = 27, mark_flag = 2, area_id = 11 },
		{ config_id = 68015, gadget_id = 70350085, pos = { x = -3180.343, y = 200.132, z = -4767.285 }, rot = { x = 0.000, y = 85.149, z = 0.000 }, level = 27, mark_flag = 4, area_id = 11 },
		{ config_id = 68027, gadget_id = 70310142, pos = { x = -3168.612, y = 200.528, z = -4716.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
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
		-- description = 逻辑和常驻物件,
		monsters = { },
		gadgets = { 68001, 68035, 68036, 68037, 68043, 68045, 68047, 68048, 68049, 68050, 68051, 68052, 68053, 68054, 68055, 68056, 68057, 68058, 68059, 68060, 68061, 68063, 68064, 68066, 68067, 68068, 68069, 68070, 68071, 68074, 68076, 68077, 68085 },
		regions = { 68038, 68039, 68046 },
		triggers = { "ENTER_REGION_68046", "CHALLENGE_SUCCESS_68073", "GADGET_STATE_CHANGE_68083", "GADGET_STATE_CHANGE_68084" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 闪现狗,
		monsters = { 68007, 68065 },
		gadgets = { 68012, 68014, 68031, 68075 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 走路狗,
		monsters = { 68002, 68003, 68004, 68005, 68006 },
		gadgets = { 68017, 68018, 68019, 68020, 68021, 68022, 68023, 68024, 68025, 68026, 68028, 68029, 68030, 68041 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 机关,
		monsters = { },
		gadgets = { 68016, 68032, 68033, 68034, 68042, 68044, 68062, 68072 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 小动物,
		monsters = { 68009, 68010, 68011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 雷樱枝条和飞雷核,
		monsters = { },
		gadgets = { 68079, 68080, 68081, 68082 },
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
function condition_EVENT_ENTER_REGION_68046(context, evt)
	if evt.param1 ~= 68046 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_68046(context, evt)
	-- 调用提示id为 32210101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 32210101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_68073(context, evt)
	--潜行营地对话处理
	if ScriptLib.GetGroupVariableValueByGroup(context, "Endflag_slip",133221068) ~= 0 then
	
	
	
		-- 调用提示id为 400021 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
		if 0 ~= ScriptLib.ShowReminder(context, 32210107) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			return -1
		end
	
	
		ScriptLib.PrintContextLog(context, "先完成了战斗营地 播放两段对话")
	
	else
	
		-- 调用提示id为 400021 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
		if 0 ~= ScriptLib.ShowReminder(context, 32210103) then
		  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
			return -1
		end
	
		ScriptLib.PrintContextLog(context, "尚未完成战斗营地 只播第一段对话")
	
		if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "Endflag_battle", 1, 133220703) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	    	return -1
		end
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_68083(context, evt)
	if 68074 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_68083(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133221068, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_68084(context, evt)
	if 68074 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_68084(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133221068, 6)
	
	return 0
end

require "V2_3/HachiSneak"
require "V2_0/ElectricCore"
-- 基础信息
local base_info = {
	group_id = 201051003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- P1怪物
	{ config_id = 3001, monster_id = 23010201, pos = { x = -2.277, y = -1.870, z = 96.170 }, rot = { x = 0.000, y = 124.805, z = 0.000 }, level = 1, affix = { 1021, 1030 } },
	-- P1怪物
	{ config_id = 3002, monster_id = 23010501, pos = { x = 0.837, y = -1.871, z = 95.914 }, rot = { x = 0.000, y = 222.002, z = 0.000 }, level = 1, affix = { 1021, 1030 } },
	-- P1怪物
	{ config_id = 3003, monster_id = 23010601, pos = { x = -28.529, y = -1.863, z = 67.139 }, rot = { x = 0.000, y = 127.022, z = 0.000 }, level = 1, affix = { 1021, 1030 } },
	-- P1怪物
	{ config_id = 3004, monster_id = 23010601, pos = { x = -28.529, y = -1.863, z = 63.116 }, rot = { x = 0.000, y = 67.622, z = 0.000 }, level = 1, affix = { 1021, 1030 } },
	-- P1怪物
	{ config_id = 3005, monster_id = 23010501, pos = { x = 28.556, y = -1.871, z = 63.756 }, rot = { x = 0.000, y = 310.561, z = 0.000 }, level = 1, affix = { 1021, 1030 } },
	-- P1怪物
	{ config_id = 3006, monster_id = 23010401, pos = { x = 28.553, y = -1.870, z = 66.489 }, rot = { x = 0.000, y = 249.708, z = 0.000 }, level = 1, affix = { 1021, 1030 } },
	-- P2怪物潮
	{ config_id = 3007, monster_id = 23010301, pos = { x = 1.936, y = -1.807, z = 95.590 }, rot = { x = 0.000, y = 179.255, z = 0.000 }, level = 1, affix = { 1007, 1021 } },
	-- P2怪物潮
	{ config_id = 3008, monster_id = 23010301, pos = { x = -1.861, y = -1.872, z = 95.582 }, rot = { x = 0.000, y = 176.166, z = 0.000 }, level = 1, affix = { 1007 } },
	-- P2怪物潮
	{ config_id = 3009, monster_id = 23010201, pos = { x = -0.109, y = -1.871, z = 96.642 }, rot = { x = 0.000, y = 176.967, z = 0.000 }, level = 1, affix = { 1007 } },
	-- P2怪物潮
	{ config_id = 3010, monster_id = 23010201, pos = { x = 29.919, y = -1.871, z = 68.549 }, rot = { x = 0.000, y = 257.416, z = 0.000 }, level = 1, affix = { 1007 } },
	-- P2怪物潮
	{ config_id = 3011, monster_id = 23010101, pos = { x = 29.926, y = -1.871, z = 62.234 }, rot = { x = 0.000, y = 277.835, z = 0.000 }, level = 1, affix = { 1007, 1031 } },
	-- P2怪物潮
	{ config_id = 3012, monster_id = 23010501, pos = { x = 29.970, y = -1.871, z = 65.195 }, rot = { x = 0.000, y = 243.183, z = 0.000 }, level = 1, affix = { 1007 } },
	-- P2怪物潮
	{ config_id = 3013, monster_id = 23010301, pos = { x = -28.567, y = -1.863, z = 63.347 }, rot = { x = 0.000, y = 86.373, z = 0.000 }, level = 1, affix = { 1007 } },
	-- P2怪物潮
	{ config_id = 3014, monster_id = 23010301, pos = { x = -28.657, y = -1.863, z = 66.656 }, rot = { x = 0.000, y = 108.194, z = 0.000 }, level = 1, affix = { 1007 } },
	-- P2怪物潮
	{ config_id = 3015, monster_id = 23010601, pos = { x = -28.517, y = -1.865, z = 65.142 }, rot = { x = 0.000, y = 90.094, z = 0.000 }, level = 1, affix = { 1007, 1031 } },
	-- 萍姥姥怪物
	{ config_id = 3017, monster_id = 23020101, pos = { x = -0.048, y = -1.871, z = 95.841 }, rot = { x = 0.000, y = 181.479, z = 0.000 }, level = 1, affix = { 1007 } },
	-- 萍姥姥怪物
	{ config_id = 3018, monster_id = 23010301, pos = { x = -1.432, y = -1.870, z = 95.921 }, rot = { x = 0.000, y = 157.091, z = 0.000 }, level = 1, affix = { 1007 } },
	-- 萍姥姥怪物
	{ config_id = 3019, monster_id = 23010301, pos = { x = 1.459, y = -1.871, z = 95.597 }, rot = { x = 0.000, y = 227.067, z = 0.000 }, level = 1, affix = { 1007 } },
	-- 萍姥姥怪物
	{ config_id = 3020, monster_id = 23020101, pos = { x = 29.751, y = -1.871, z = 65.548 }, rot = { x = 0.000, y = 255.361, z = 0.000 }, level = 1, affix = { 1007, 9002 } },
	-- 萍姥姥怪物
	{ config_id = 3021, monster_id = 23010401, pos = { x = 30.020, y = -1.871, z = 68.162 }, rot = { x = 0.000, y = 254.742, z = 0.000 }, level = 1, affix = { 1007 } },
	-- 萍姥姥怪物
	{ config_id = 3022, monster_id = 23010401, pos = { x = 30.130, y = -1.871, z = 62.820 }, rot = { x = 0.000, y = 293.895, z = 0.000 }, level = 1, affix = { 1007 } },
	-- 萍姥姥怪物
	{ config_id = 3023, monster_id = 23010301, pos = { x = -29.958, y = -1.863, z = 66.283 }, rot = { x = 0.000, y = 89.693, z = 0.000 }, level = 1, affix = { 1007 } },
	-- 萍姥姥怪物
	{ config_id = 3024, monster_id = 23010301, pos = { x = -30.209, y = -1.863, z = 63.273 }, rot = { x = 0.000, y = 59.634, z = 0.000 }, level = 1, affix = { 1007 } },
	-- 萍姥姥怪物
	{ config_id = 3025, monster_id = 23020101, pos = { x = -29.669, y = -1.866, z = 65.207 }, rot = { x = 0.000, y = 89.332, z = 0.000 }, level = 1, affix = { 1007 } },
	-- 甘雨怪物
	{ config_id = 3027, monster_id = 23010301, pos = { x = 2.323, y = -1.900, z = 94.602 }, rot = { x = 0.000, y = 191.196, z = 0.000 }, level = 1, affix = { 1031 } },
	-- 甘雨怪物
	{ config_id = 3028, monster_id = 23020101, pos = { x = -0.011, y = -1.900, z = 95.030 }, rot = { x = 0.000, y = 177.744, z = 0.000 }, level = 1, affix = { 1030, 1031 } },
	-- 甘雨怪物
	{ config_id = 3029, monster_id = 23020101, pos = { x = 0.554, y = -1.900, z = 95.616 }, rot = { x = 0.000, y = 173.636, z = 0.000 }, level = 1, affix = { 1030, 1031 } },
	-- 甘雨怪物
	{ config_id = 3030, monster_id = 23010301, pos = { x = -2.475, y = -1.863, z = 96.268 }, rot = { x = 0.000, y = 180.301, z = 0.000 }, level = 1 },
	-- 甘雨怪物
	{ config_id = 3031, monster_id = 23030101, pos = { x = -0.040, y = -1.871, z = 96.400 }, rot = { x = 0.000, y = 181.205, z = 0.000 }, level = 1, affix = { 9002 } },
	-- 甘雨怪物
	{ config_id = 3032, monster_id = 23010301, pos = { x = 2.289, y = -1.871, z = 95.726 }, rot = { x = 0.000, y = 185.516, z = 0.000 }, level = 1 },
	-- P3怪物潮
	{ config_id = 3081, monster_id = 23010301, pos = { x = 30.025, y = -1.864, z = 68.010 }, rot = { x = 0.000, y = 267.095, z = 0.000 }, level = 1, affix = { 1007, 1031 } },
	-- P3怪物潮
	{ config_id = 3082, monster_id = 23030101, pos = { x = 30.293, y = -1.873, z = 65.586 }, rot = { x = 0.000, y = 267.999, z = 0.000 }, level = 1, affix = { 1007, 9002 } },
	-- P3怪物潮
	{ config_id = 3083, monster_id = 23010301, pos = { x = 29.750, y = -1.873, z = 63.223 }, rot = { x = 0.000, y = 272.311, z = 0.000 }, level = 1, affix = { 1007, 1031 } },
	-- P3怪物潮
	{ config_id = 3084, monster_id = 23010101, pos = { x = -30.410, y = -1.855, z = 62.660 }, rot = { x = 0.000, y = 90.071, z = 0.000 }, level = 1, affix = { 1007, 1031 } },
	-- P3怪物潮
	{ config_id = 3085, monster_id = 23030101, pos = { x = -30.552, y = -1.864, z = 65.095 }, rot = { x = 0.000, y = 90.974, z = 0.000 }, level = 1, affix = { 1007, 9002 } },
	-- P3怪物潮
	{ config_id = 3086, monster_id = 23010201, pos = { x = -29.887, y = -1.864, z = 67.427 }, rot = { x = 0.000, y = 95.286, z = 0.000 }, level = 1, affix = { 1007, 1031 } },
	-- P3怪物潮
	{ config_id = 3089, monster_id = 23010601, pos = { x = -2.418, y = -1.900, z = 94.100 }, rot = { x = 0.000, y = 173.990, z = 0.000 }, level = 1, affix = { 1007, 1031 } },
	-- P3怪物潮
	{ config_id = 3090, monster_id = 23030101, pos = { x = -0.102, y = -1.900, z = 95.406 }, rot = { x = 0.000, y = 174.893, z = 0.000 }, level = 1, affix = { 1007, 9002 } },
	-- P3怪物潮
	{ config_id = 3091, monster_id = 23010401, pos = { x = 1.601, y = -1.900, z = 94.586 }, rot = { x = 0.000, y = 179.205, z = 0.000 }, level = 1, affix = { 1007, 1031 } },
	-- P3怪物潮
	{ config_id = 3092, monster_id = 23010301, pos = { x = 30.338, y = -1.900, z = 68.171 }, rot = { x = 0.000, y = 267.095, z = 0.000 }, level = 1, affix = { 1007, 1031 } },
	-- P3怪物潮
	{ config_id = 3093, monster_id = 23030101, pos = { x = 30.606, y = -1.900, z = 65.747 }, rot = { x = 0.000, y = 267.999, z = 0.000 }, level = 1, affix = { 1007, 9002 } },
	-- P3怪物潮
	{ config_id = 3094, monster_id = 23010501, pos = { x = 30.063, y = -1.900, z = 63.383 }, rot = { x = 0.000, y = 272.311, z = 0.000 }, level = 1, affix = { 1007, 1031 } },
	-- 怪9
	{ config_id = 3095, monster_id = 23020101, pos = { x = -31.495, y = -3.154, z = 62.845 }, rot = { x = 0.000, y = 90.071, z = 0.000 }, level = 1, affix = { 1007, 1031 } },
	-- 怪9
	{ config_id = 3096, monster_id = 23030101, pos = { x = -31.637, y = -3.154, z = 65.279 }, rot = { x = 0.000, y = 90.974, z = 0.000 }, level = 1, affix = { 1007, 9002 } },
	-- 怪9
	{ config_id = 3097, monster_id = 23020101, pos = { x = -30.972, y = -3.154, z = 67.611 }, rot = { x = 0.000, y = 95.286, z = 0.000 }, level = 1, affix = { 1007, 1031 } },
	-- 怪9
	{ config_id = 3098, monster_id = 23020101, pos = { x = -2.600, y = -1.900, z = 94.244 }, rot = { x = 0.000, y = 173.990, z = 0.000 }, level = 1, affix = { 1007, 1031 } },
	-- 怪9
	{ config_id = 3099, monster_id = 23030101, pos = { x = -0.284, y = -1.900, z = 95.550 }, rot = { x = 0.000, y = 174.893, z = 0.000 }, level = 1, affix = { 1007, 9002 } },
	-- 怪9
	{ config_id = 3100, monster_id = 23020101, pos = { x = 1.418, y = -1.900, z = 94.730 }, rot = { x = 0.000, y = 179.205, z = 0.000 }, level = 1, affix = { 1007, 1031 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3026, gadget_id = 72000017, pos = { x = -14.020, y = -1.920, z = 65.150 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3035, gadget_id = 72000007, pos = { x = -14.020, y = -1.920, z = 65.150 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, mark_flag = 128 },
	{ config_id = 3036, gadget_id = 72000007, pos = { x = 14.020, y = -1.920, z = 65.150 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, mark_flag = 256 },
	{ config_id = 3037, gadget_id = 72000007, pos = { x = 0.000, y = -1.920, z = 79.350 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, mark_flag = 512 },
	{ config_id = 3040, gadget_id = 72000017, pos = { x = 14.020, y = -1.920, z = 65.150 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 3045, gadget_id = 72000008, pos = { x = 0.000, y = -1.900, z = 65.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, mark_flag = 64 },
	{ config_id = 3047, gadget_id = 72000006, pos = { x = -0.912, y = -1.812, z = 63.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3048, gadget_id = 72000001, pos = { x = 0.000, y = -125.000, z = 1000.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, mark_flag = 2 },
	{ config_id = 3049, gadget_id = 72000002, pos = { x = 0.000, y = -125.000, z = 1000.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, mark_flag = 4 },
	{ config_id = 3050, gadget_id = 72000003, pos = { x = 0.000, y = -125.000, z = 1000.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, mark_flag = 8 },
	{ config_id = 3051, gadget_id = 72000004, pos = { x = 0.000, y = -125.000, z = 1000.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, mark_flag = 16 },
	{ config_id = 3052, gadget_id = 72000005, pos = { x = 0.000, y = -125.000, z = 1000.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, mark_flag = 32 },
	{ config_id = 3069, gadget_id = 72000013, pos = { x = -32.660, y = -1.864, z = 65.298 }, rot = { x = 0.000, y = 89.393, z = 0.000 }, level = 1 },
	{ config_id = 3070, gadget_id = 72000013, pos = { x = 0.000, y = -1.869, z = 97.012 }, rot = { x = 0.000, y = 177.974, z = 0.000 }, level = 1 },
	{ config_id = 3071, gadget_id = 72000013, pos = { x = 32.660, y = -1.900, z = 65.375 }, rot = { x = 0.000, y = 266.840, z = 0.000 }, level = 1 },
	{ config_id = 3074, gadget_id = 72000010, pos = { x = -0.055, y = 2.973, z = 78.511 }, rot = { x = 0.000, y = 350.980, z = 0.000 }, level = 1 },
	{ config_id = 3075, gadget_id = 72000011, pos = { x = 14.020, y = 2.973, z = 64.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3076, gadget_id = 72000012, pos = { x = -14.020, y = 2.973, z = 64.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3109, gadget_id = 72000017, pos = { x = 0.000, y = -1.920, z = 79.350 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003016, name = "GADGET_CREATE_3016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3016", action = "action_EVENT_GADGET_CREATE_3016" },
	{ config_id = 1003033, name = "CHALLENGE_FAIL_3033", event = EventType.EVENT_CHALLENGE_FAIL, source = "110100", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3033" },
	{ config_id = 1003034, name = "CHALLENGE_SUCCESS_3034", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "110100", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3034" },
	{ config_id = 1003038, name = "TIMER_EVENT_3038", event = EventType.EVENT_TIMER_EVENT, source = "monster12", condition = "condition_EVENT_TIMER_EVENT_3038", action = "action_EVENT_TIMER_EVENT_3038" },
	{ config_id = 1003039, name = "TIMER_EVENT_3039", event = EventType.EVENT_TIMER_EVENT, source = "monster13", condition = "condition_EVENT_TIMER_EVENT_3039", action = "action_EVENT_TIMER_EVENT_3039" },
	{ config_id = 1003041, name = "TIMER_EVENT_3041", event = EventType.EVENT_TIMER_EVENT, source = "event1", condition = "", action = "action_EVENT_TIMER_EVENT_3041" },
	{ config_id = 1003042, name = "TIMER_EVENT_3042", event = EventType.EVENT_TIMER_EVENT, source = "event2", condition = "", action = "action_EVENT_TIMER_EVENT_3042" },
	{ config_id = 1003043, name = "TIMER_EVENT_3043", event = EventType.EVENT_TIMER_EVENT, source = "event3", condition = "", action = "action_EVENT_TIMER_EVENT_3043" },
	{ config_id = 1003044, name = "TIMER_EVENT_3044", event = EventType.EVENT_TIMER_EVENT, source = "event4", condition = "", action = "action_EVENT_TIMER_EVENT_3044" },
	{ config_id = 1003046, name = "TIMER_EVENT_3046", event = EventType.EVENT_TIMER_EVENT, source = "event5", condition = "", action = "action_EVENT_TIMER_EVENT_3046" },
	{ config_id = 1003053, name = "TIMER_EVENT_3053", event = EventType.EVENT_TIMER_EVENT, source = "event6", condition = "", action = "action_EVENT_TIMER_EVENT_3053" },
	{ config_id = 1003054, name = "TIMER_EVENT_3054", event = EventType.EVENT_TIMER_EVENT, source = "event7", condition = "", action = "action_EVENT_TIMER_EVENT_3054" },
	{ config_id = 1003056, name = "TIMER_EVENT_3056", event = EventType.EVENT_TIMER_EVENT, source = "event9", condition = "", action = "action_EVENT_TIMER_EVENT_3056" },
	{ config_id = 1003057, name = "TIMER_EVENT_3057", event = EventType.EVENT_TIMER_EVENT, source = "event12", condition = "", action = "action_EVENT_TIMER_EVENT_3057" },
	{ config_id = 1003058, name = "TIMER_EVENT_3058", event = EventType.EVENT_TIMER_EVENT, source = "event13", condition = "", action = "action_EVENT_TIMER_EVENT_3058" },
	{ config_id = 1003059, name = "TIMER_EVENT_3059", event = EventType.EVENT_TIMER_EVENT, source = "event11", condition = "", action = "action_EVENT_TIMER_EVENT_3059" },
	{ config_id = 1003060, name = "TIMER_EVENT_3060", event = EventType.EVENT_TIMER_EVENT, source = "event10", condition = "", action = "action_EVENT_TIMER_EVENT_3060" },
	{ config_id = 1003061, name = "TIMER_EVENT_3061", event = EventType.EVENT_TIMER_EVENT, source = "event16", condition = "", action = "action_EVENT_TIMER_EVENT_3061" },
	{ config_id = 1003062, name = "TIMER_EVENT_3062", event = EventType.EVENT_TIMER_EVENT, source = "event17", condition = "", action = "action_EVENT_TIMER_EVENT_3062" },
	{ config_id = 1003063, name = "TIMER_EVENT_3063", event = EventType.EVENT_TIMER_EVENT, source = "event19", condition = "", action = "action_EVENT_TIMER_EVENT_3063" },
	{ config_id = 1003064, name = "TIMER_EVENT_3064", event = EventType.EVENT_TIMER_EVENT, source = "event18", condition = "", action = "action_EVENT_TIMER_EVENT_3064" },
	{ config_id = 1003065, name = "TIMER_EVENT_3065", event = EventType.EVENT_TIMER_EVENT, source = "event20", condition = "", action = "action_EVENT_TIMER_EVENT_3065" },
	{ config_id = 1003066, name = "TIMER_EVENT_3066", event = EventType.EVENT_TIMER_EVENT, source = "event21", condition = "", action = "action_EVENT_TIMER_EVENT_3066" },
	{ config_id = 1003067, name = "TIMER_EVENT_3067", event = EventType.EVENT_TIMER_EVENT, source = "event22", condition = "", action = "action_EVENT_TIMER_EVENT_3067" },
	{ config_id = 1003068, name = "TIMER_EVENT_3068", event = EventType.EVENT_TIMER_EVENT, source = "event23", condition = "", action = "action_EVENT_TIMER_EVENT_3068" },
	{ config_id = 1003072, name = "TIMER_EVENT_3072", event = EventType.EVENT_TIMER_EVENT, source = "event14", condition = "", action = "action_EVENT_TIMER_EVENT_3072" },
	{ config_id = 1003073, name = "TIMER_EVENT_3073", event = EventType.EVENT_TIMER_EVENT, source = "event15", condition = "", action = "action_EVENT_TIMER_EVENT_3073" },
	{ config_id = 1003077, name = "TIMER_EVENT_3077", event = EventType.EVENT_TIMER_EVENT, source = "timeOneReady", condition = "", action = "action_EVENT_TIMER_EVENT_3077", trigger_count = 0 },
	{ config_id = 1003078, name = "TIMER_EVENT_3078", event = EventType.EVENT_TIMER_EVENT, source = "monster1", condition = "", action = "action_EVENT_TIMER_EVENT_3078" },
	{ config_id = 1003079, name = "TIMER_EVENT_3079", event = EventType.EVENT_TIMER_EVENT, source = "monster2", condition = "", action = "action_EVENT_TIMER_EVENT_3079" },
	{ config_id = 1003080, name = "TIMER_EVENT_3080", event = EventType.EVENT_TIMER_EVENT, source = "monster3", condition = "", action = "action_EVENT_TIMER_EVENT_3080" },
	{ config_id = 1003087, name = "TIMER_EVENT_3087", event = EventType.EVENT_TIMER_EVENT, source = "monster4", condition = "", action = "action_EVENT_TIMER_EVENT_3087" },
	{ config_id = 1003088, name = "TIMER_EVENT_3088", event = EventType.EVENT_TIMER_EVENT, source = "timeAllReady", condition = "", action = "action_EVENT_TIMER_EVENT_3088", trigger_count = 0 },
	{ config_id = 1003101, name = "TIMER_EVENT_3101", event = EventType.EVENT_TIMER_EVENT, source = "skillFllow", condition = "", action = "action_EVENT_TIMER_EVENT_3101", trigger_count = 0 },
	{ config_id = 1003102, name = "TIMER_EVENT_3102", event = EventType.EVENT_TIMER_EVENT, source = "skillAct3", condition = "", action = "action_EVENT_TIMER_EVENT_3102", trigger_count = 0 },
	{ config_id = 1003103, name = "ANY_MONSTER_LIVE_3103", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3103", action = "action_EVENT_ANY_MONSTER_LIVE_3103", trigger_count = 0 },
	{ config_id = 1003104, name = "ANY_MONSTER_LIVE_3104", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3104", action = "action_EVENT_ANY_MONSTER_LIVE_3104", trigger_count = 0 },
	{ config_id = 1003105, name = "ANY_MONSTER_LIVE_3105", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3105", action = "action_EVENT_ANY_MONSTER_LIVE_3105", trigger_count = 0 },
	{ config_id = 1003106, name = "TIMER_EVENT_3106", event = EventType.EVENT_TIMER_EVENT, source = "time3069", condition = "", action = "action_EVENT_TIMER_EVENT_3106", trigger_count = 0 },
	{ config_id = 1003107, name = "TIMER_EVENT_3107", event = EventType.EVENT_TIMER_EVENT, source = "time3070", condition = "", action = "action_EVENT_TIMER_EVENT_3107", trigger_count = 0 },
	{ config_id = 1003108, name = "TIMER_EVENT_3108", event = EventType.EVENT_TIMER_EVENT, source = "time3071", condition = "", action = "action_EVENT_TIMER_EVENT_3108", trigger_count = 0 },
	{ config_id = 1003110, name = "GADGET_CREATE_3110", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3110", action = "action_EVENT_GADGET_CREATE_3110" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1003055, name = "TIMER_EVENT_3055", event = EventType.EVENT_TIMER_EVENT, source = "event8", condition = "", action = "" }
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
		gadgets = { 3045, 3047, 3048, 3049, 3050, 3051, 3052 },
		regions = { },
		triggers = { "GADGET_CREATE_3016", "CHALLENGE_FAIL_3033", "CHALLENGE_SUCCESS_3034", "TIMER_EVENT_3038", "TIMER_EVENT_3039", "TIMER_EVENT_3041", "TIMER_EVENT_3042", "TIMER_EVENT_3043", "TIMER_EVENT_3044", "TIMER_EVENT_3046", "TIMER_EVENT_3053", "TIMER_EVENT_3054", "TIMER_EVENT_3056", "TIMER_EVENT_3057", "TIMER_EVENT_3058", "TIMER_EVENT_3059", "TIMER_EVENT_3060", "TIMER_EVENT_3061", "TIMER_EVENT_3062", "TIMER_EVENT_3063", "TIMER_EVENT_3064", "TIMER_EVENT_3065", "TIMER_EVENT_3066", "TIMER_EVENT_3067", "TIMER_EVENT_3068", "TIMER_EVENT_3072", "TIMER_EVENT_3073", "TIMER_EVENT_3077", "TIMER_EVENT_3078", "TIMER_EVENT_3079", "TIMER_EVENT_3080", "TIMER_EVENT_3087", "TIMER_EVENT_3088", "TIMER_EVENT_3101", "TIMER_EVENT_3102", "ANY_MONSTER_LIVE_3103", "ANY_MONSTER_LIVE_3104", "ANY_MONSTER_LIVE_3105", "TIMER_EVENT_3106", "TIMER_EVENT_3107", "TIMER_EVENT_3108", "GADGET_CREATE_3110" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3001, 3002, 3003, 3004, 3005, 3006, 3007, 3008, 3009, 3010, 3011, 3012, 3013, 3014, 3015, 3017, 3018, 3019, 3020, 3021, 3022, 3023, 3024, 3025, 3027, 3028, 3029, 3030, 3031, 3032, 3081, 3082, 3083, 3084, 3085, 3086, 3089, 3090, 3091, 3092, 3093, 3094, 3095, 3096, 3097, 3098, 3099, 3100 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 3026, 3035, 3036, 3037, 3040, 3074, 3075, 3076, 3109 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 3069, 3070, 3071 },
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
function condition_EVENT_GADGET_CREATE_3016(context, evt)
	if 3074 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3016(context, evt)
	-- 延迟25秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："event1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "event1", 25) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟50秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："event2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "event2", 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟80秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："event3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "event3", 80) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟100秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："event4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "event4", 100) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟125秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："event5" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "event5", 125) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟130秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："event6" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "event6", 130) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟145秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："event7" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "event7", 145) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟180秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："event9" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "event9", 180) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟195秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："event10" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "event10", 195) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟205秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："event11" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "event11", 205) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟215秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："event12" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "event12", 215) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟225秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："event13" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "event13", 225) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟232秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："event14" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "event14", 232) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟245秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："event15" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "event15", 245) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟250秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："event16" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "event16", 250) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟285秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："event17" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "event17", 285) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟300秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："event18" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "event18", 300) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟330秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："event19" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "event19", 330) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟345秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："event20" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "event20", 345) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟370秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："event21" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "event21", 370) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟380秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："event22" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "event22", 380) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟390秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："event23" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "event23", 390) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："monster1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "monster1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟28秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："monster12" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "monster12", 28) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 延迟55秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："monster13" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "monster13", 55) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 调用提示id为 10510101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10510101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 3074 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3074, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3033(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 201051003, "event23") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3034(context, evt)
	-- 终止识别id为100的挑战，并判定成功
		ScriptLib.StopChallenge(context, 100, 1)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "20105100301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 杀死Group内所有monster
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 201051003, kill_policy = GroupKillPolicy.GROUP_KILL_MONSTER }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monster_by_group")
			return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_3038(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201051003) > 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3038(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_3039(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 201051003) > 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3039(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3005, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3006, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3041(context, evt)
	-- 将configid为 3047 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3047, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟5秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："timeAllReady" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "timeAllReady", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3042(context, evt)
	-- 将configid为 3047 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3047, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟5秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："timeOneReady" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "timeOneReady", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3043(context, evt)
	-- 将configid为 3045 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3045, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3047 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3047, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 10510201 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10510201) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 延迟15秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："skillFllow" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "skillFllow", 15) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3044(context, evt)
	-- 将configid为 3047 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3047, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟5秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："timeOneReady" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "timeOneReady", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 创建编号为301（该怪物潮的识别id)的怪物潮，创建怪物总数为999，场上怪物最少3只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 301, 201051003, {3007,3008,3009,3010,3011,3012,3013,3014,3015}, 999, 3, 3) then
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3046(context, evt)
	-- 将configid为 3045 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3045, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 10510301 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10510301) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3053(context, evt)
	-- 将configid为 3047 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3047, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟5秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："timeOneReady" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "timeOneReady", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3054(context, evt)
	-- 调用提示id为 10510401 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10510401) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 调用提示id为 400006 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400006) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 3074 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3074, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3056(context, evt)
	-- 将configid为 3047 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3047, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟5秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："timeOneReady" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "timeOneReady", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 停止编号为301的怪物潮，end_type为1则是成功停止，0是失败停止（一般就是1）
	if 0 ~= ScriptLib.EndMonsterTide(context, 201051003, 301, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : end_monster_tide")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3057(context, evt)
	-- 调用提示id为 10510501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10510501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 调用提示id为 400007 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400007) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 3074 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3074, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3045 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3045, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3058(context, evt)
	-- 将configid为 3045 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3045, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3059(context, evt)
	-- 将configid为 3047 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3047, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟5秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："timeAllReady" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "timeAllReady", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3060(context, evt)
	-- 调用提示id为 10510701 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10510701) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 调用提示id为 400008 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400008) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将configid为 3074 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3074, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3047 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3047, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3045 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3045, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3061(context, evt)
	-- 将configid为 3074 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3074, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 10510901 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10510901) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 调用提示id为 400009 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400009) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 延迟1秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："monster4" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "monster4", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3062(context, evt)
	-- 将configid为 3047 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3047, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟5秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："timeOneReady" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "timeOneReady", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3063(context, evt)
	-- 将configid为 3047 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3047, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟5秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："timeAllReady" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "timeAllReady", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3064(context, evt)
	-- 将configid为 3047 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3047, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3045 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3045, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 10510801 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10510801) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 延迟15秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："skillFllow" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "skillFllow", 15) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3065(context, evt)
	-- 将configid为 3045 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3045, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟15秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："skillFllow" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "skillFllow", 15) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3066(context, evt)
	-- 调用提示id为 10511001 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 10511001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 停止编号为303的怪物潮，end_type为1则是成功停止，0是失败停止（一般就是1）
	if 0 ~= ScriptLib.EndMonsterTide(context, 201051003, 303, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : end_monster_tide")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3067(context, evt)
	-- 将configid为 3047 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3047, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3068(context, evt)
	-- 终止识别id为110100的挑战，并判定成功
		ScriptLib.StopChallenge(context, 110100, 1)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "20105100301") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3072(context, evt)
	-- 将configid为 3045 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3045, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3073(context, evt)
	-- 将configid为 3047 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3047, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 延迟5秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："timeOneReady" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "timeOneReady", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3077(context, evt)
	-- 将configid为 3047 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3047, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3078(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 将configid为 3047 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3047, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3079(context, evt)
	-- 创建编号为302（该怪物潮的识别id)的怪物潮，创建怪物总数为999，场上怪物最少1只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 302, 201051003, {3017,3018,3019,3020,3021,3022,3023,3024,3025}, 999, 1, 3) then
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3080(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 3028, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3087(context, evt)
	-- 创建编号为303（该怪物潮的识别id)的怪物潮，创建怪物总数为999，场上怪物最少1只，最多3只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 303, 201051003, {3081,3082,3083,3084,3085,3086,3089,3090,3091,3092,3093,3094}, 999, 1, 3) then
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3088(context, evt)
	-- 将configid为 3047 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3047, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3101(context, evt)
	-- 将configid为 3045 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3045, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3102(context, evt)
	-- 将configid为 3045 的物件更改为状态 GadgetState.Action03
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3045, GadgetState.Action03) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3103(context, evt)
	if (3001 ~= evt.param1) and (3002 ~= evt.param1) and (3007 ~= evt.param1) and (3008 ~= evt.param1) and (3009 ~= evt.param1) and (3017 ~= evt.param1) and (3018 ~= evt.param1) and (3019 ~= evt.param1) and (3027 ~= evt.param1) and (3028 ~= evt.param1) and (3029 ~= evt.param1) and (3089 ~= evt.param1) and (3090 ~= evt.param1) and (3091 ~= evt.param1) and (3098 ~= evt.param1) and (3099 ~= evt.param1) and (3100 ~= evt.param1) then
		return false
	end
	
	return true
	
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3103(context, evt)
	-- 创建id为3070的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3070 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："time3070" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "time3070", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3104(context, evt)
	if (3003 ~= evt.param1) and (3004 ~= evt.param1) and (3013 ~= evt.param1) and (3014 ~= evt.param1) and (3015 ~= evt.param1) and (3023 ~= evt.param1) and (3024 ~= evt.param1) and (3025 ~= evt.param1) and (3084 ~= evt.param1) and (3085 ~= evt.param1) and (3086 ~= evt.param1) and (3095 ~= evt.param1) and (3096 ~= evt.param1) and (3097 ~= evt.param1) then
		return false
	end
	
	return true
	
	
	
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3104(context, evt)
	-- 创建id为3069的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3069 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："time3069" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "time3069", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3105(context, evt)
	if (3005 ~= evt.param1) and (3006 ~= evt.param1) and (3010 ~= evt.param1) and (3011 ~= evt.param1) and (3012 ~= evt.param1) and (3020 ~= evt.param1) and (3021 ~= evt.param1) and (3022 ~= evt.param1) and (3081 ~= evt.param1) and (3082 ~= evt.param1) and (3083 ~= evt.param1) and (3092 ~= evt.param1) and (3093 ~= evt.param1) and (3094 ~= evt.param1) then
		return false
	end
	
	return true
	
	
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3105(context, evt)
	-- 创建id为3071的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 3071 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 延迟2秒后,向groupId为：201051003的对象,请求一次调用,并将string参数："time3071" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 201051003, "time3071", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3106(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201051003, EntityType.GADGET, 3069 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3107(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201051003, EntityType.GADGET, 3070 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_3108(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 201051003, EntityType.GADGET, 3071 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_3110(context, evt)
	if 3075 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3110(context, evt)
	ScriptLib.CreateFatherChallenge(context, 110100, 110100, 400, {success = 3, fail = 1, fail_on_wipe=true})
	ScriptLib.AttachChildChallenge(context, 110100, 110101, 110101, {400,201051003,3037,0},{},{success=1,fail=1})
	ScriptLib.AttachChildChallenge(context, 110100, 110102, 110102, {400,201051003,3035,0},{},{success=1,fail=1})
	ScriptLib.AttachChildChallenge(context, 110100, 110103, 110103, {400,201051003,3036,0},{},{success=1,fail=1})
	ScriptLib.StartFatherChallenge(context, 110100)
	return 0
end
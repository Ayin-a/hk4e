-- 基础信息
local base_info = {
	group_id = 133209008
}

-- DEFS_MISCS
local defs = {
	RegionID =  8066,
	group_1 = 133209008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[8001] = { config_id = 8001, monster_id = 21020701, pos = { x = -2191.033, y = 200.421, z = -3470.839 }, rot = { x = 0.000, y = 171.598, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[8002] = { config_id = 8002, monster_id = 21020701, pos = { x = -2194.316, y = 200.503, z = -3485.004 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[8003] = { config_id = 8003, monster_id = 21020701, pos = { x = -2181.240, y = 200.480, z = -3480.628 }, rot = { x = 0.000, y = 285.688, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[8004] = { config_id = 8004, monster_id = 20010601, pos = { x = -2189.260, y = 200.389, z = -3488.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[8005] = { config_id = 8005, monster_id = 20010501, pos = { x = -2199.197, y = 200.351, z = -3483.626 }, rot = { x = 0.000, y = 60.742, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[8006] = { config_id = 8006, monster_id = 20010501, pos = { x = -2199.217, y = 200.409, z = -3476.903 }, rot = { x = 0.000, y = 114.816, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[8007] = { config_id = 8007, monster_id = 20010701, pos = { x = -2185.333, y = 200.406, z = -3470.878 }, rot = { x = 0.000, y = 183.842, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[8008] = { config_id = 8008, monster_id = 20010501, pos = { x = -2180.720, y = 200.357, z = -3475.707 }, rot = { x = 0.000, y = 237.942, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[8009] = { config_id = 8009, monster_id = 20010501, pos = { x = -2182.996, y = 200.469, z = -3489.491 }, rot = { x = 0.000, y = 322.335, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[8010] = { config_id = 8010, monster_id = 21010701, pos = { x = -2186.036, y = 200.409, z = -3482.458 }, rot = { x = 0.000, y = 321.479, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[8011] = { config_id = 8011, monster_id = 21010701, pos = { x = -2193.394, y = 200.412, z = -3480.707 }, rot = { x = 0.000, y = 37.908, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[8012] = { config_id = 8012, monster_id = 21010701, pos = { x = -2185.909, y = 200.481, z = -3475.031 }, rot = { x = 335.923, y = 223.461, z = 358.039 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[8013] = { config_id = 8013, monster_id = 21010701, pos = { x = -2195.808, y = 200.289, z = -3472.878 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[8014] = { config_id = 8014, monster_id = 21010701, pos = { x = -2181.239, y = 200.336, z = -3471.837 }, rot = { x = 0.000, y = 231.995, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[8015] = { config_id = 8015, monster_id = 21010701, pos = { x = -2192.155, y = 200.271, z = -3476.391 }, rot = { x = 0.000, y = 270.000, z = 127.157 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	-- 挑战关专用
	[8016] = { config_id = 8016, monster_id = 25080101, pos = { x = -2191.033, y = 200.421, z = -3470.839 }, rot = { x = 0.000, y = 171.598, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, pose_id = 1, area_id = 11 },
	-- 挑战关专用
	[8017] = { config_id = 8017, monster_id = 25080201, pos = { x = -2194.316, y = 200.503, z = -3485.004 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, pose_id = 1, area_id = 11 },
	-- 挑战关专用
	[8018] = { config_id = 8018, monster_id = 25080301, pos = { x = -2181.240, y = 200.480, z = -3480.628 }, rot = { x = 0.000, y = 285.688, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, pose_id = 1, area_id = 11 },
	-- 挑战关专用
	[8019] = { config_id = 8019, monster_id = 25030201, pos = { x = -2189.260, y = 200.389, z = -3488.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[8020] = { config_id = 8020, monster_id = 25030301, pos = { x = -2199.197, y = 200.351, z = -3483.626 }, rot = { x = 0.000, y = 60.742, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[8021] = { config_id = 8021, monster_id = 25010201, pos = { x = -2199.217, y = 200.409, z = -3476.903 }, rot = { x = 0.000, y = 114.816, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[8022] = { config_id = 8022, monster_id = 25010201, pos = { x = -2185.333, y = 200.406, z = -3470.878 }, rot = { x = 0.000, y = 183.842, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[8023] = { config_id = 8023, monster_id = 25030201, pos = { x = -2180.720, y = 200.357, z = -3475.707 }, rot = { x = 0.000, y = 237.942, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[8024] = { config_id = 8024, monster_id = 25030301, pos = { x = -2182.996, y = 200.469, z = -3489.491 }, rot = { x = 0.000, y = 322.335, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[8025] = { config_id = 8025, monster_id = 25010201, pos = { x = -2186.036, y = 200.409, z = -3482.458 }, rot = { x = 0.000, y = 321.479, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[8026] = { config_id = 8026, monster_id = 25010201, pos = { x = -2193.394, y = 200.412, z = -3480.707 }, rot = { x = 0.000, y = 37.908, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[8027] = { config_id = 8027, monster_id = 25030201, pos = { x = -2185.909, y = 200.481, z = -3475.031 }, rot = { x = 335.923, y = 223.461, z = 358.039 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[8028] = { config_id = 8028, monster_id = 25030301, pos = { x = -2195.808, y = 200.289, z = -3472.878 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[8029] = { config_id = 8029, monster_id = 25010201, pos = { x = -2181.239, y = 200.336, z = -3471.837 }, rot = { x = 0.000, y = 231.995, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[8030] = { config_id = 8030, monster_id = 25010201, pos = { x = -2192.155, y = 200.271, z = -3476.391 }, rot = { x = 0.000, y = 270.000, z = 127.157 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 难度3专用
	[8031] = { config_id = 8031, monster_id = 21020701, pos = { x = -2191.033, y = 200.421, z = -3470.839 }, rot = { x = 0.000, y = 171.598, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[8032] = { config_id = 8032, monster_id = 21020701, pos = { x = -2194.316, y = 200.503, z = -3485.004 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[8033] = { config_id = 8033, monster_id = 21020701, pos = { x = -2181.240, y = 200.480, z = -3480.628 }, rot = { x = 0.000, y = 285.688, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[8034] = { config_id = 8034, monster_id = 20010601, pos = { x = -2189.260, y = 200.389, z = -3488.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[8035] = { config_id = 8035, monster_id = 20010501, pos = { x = -2199.197, y = 200.351, z = -3483.626 }, rot = { x = 0.000, y = 60.742, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[8036] = { config_id = 8036, monster_id = 20010501, pos = { x = -2199.217, y = 200.409, z = -3476.903 }, rot = { x = 0.000, y = 114.816, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[8037] = { config_id = 8037, monster_id = 20010701, pos = { x = -2185.333, y = 200.406, z = -3470.878 }, rot = { x = 0.000, y = 183.842, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[8038] = { config_id = 8038, monster_id = 20010501, pos = { x = -2180.720, y = 200.357, z = -3475.707 }, rot = { x = 0.000, y = 237.942, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[8039] = { config_id = 8039, monster_id = 20010501, pos = { x = -2182.996, y = 200.469, z = -3489.491 }, rot = { x = 0.000, y = 322.335, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[8040] = { config_id = 8040, monster_id = 21010701, pos = { x = -2186.036, y = 200.409, z = -3482.458 }, rot = { x = 0.000, y = 321.479, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[8041] = { config_id = 8041, monster_id = 21010701, pos = { x = -2193.394, y = 200.412, z = -3480.707 }, rot = { x = 0.000, y = 37.908, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[8042] = { config_id = 8042, monster_id = 21010701, pos = { x = -2185.909, y = 200.481, z = -3475.031 }, rot = { x = 335.923, y = 223.461, z = 358.039 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[8043] = { config_id = 8043, monster_id = 21010701, pos = { x = -2195.808, y = 200.289, z = -3472.878 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[8044] = { config_id = 8044, monster_id = 21010701, pos = { x = -2181.239, y = 200.336, z = -3471.837 }, rot = { x = 0.000, y = 231.995, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[8045] = { config_id = 8045, monster_id = 21010701, pos = { x = -2192.155, y = 200.271, z = -3476.391 }, rot = { x = 0.000, y = 270.000, z = 127.157 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	[8046] = { config_id = 8046, monster_id = 21011001, pos = { x = -2196.795, y = 200.454, z = -3485.364 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033 }, pose_id = 32, area_id = 11 },
	[8047] = { config_id = 8047, monster_id = 21011001, pos = { x = -2195.092, y = 200.550, z = -3487.776 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033 }, pose_id = 32, area_id = 11 },
	[8052] = { config_id = 8052, monster_id = 21011001, pos = { x = -2181.457, y = 200.288, z = -3485.794 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033 }, pose_id = 32, area_id = 11 },
	[8053] = { config_id = 8053, monster_id = 21011001, pos = { x = -2183.729, y = 200.289, z = -3487.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033 }, pose_id = 32, area_id = 11 },
	[8077] = { config_id = 8077, monster_id = 21011001, pos = { x = -2178.257, y = 200.289, z = -3476.251 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033 }, pose_id = 32, area_id = 11 },
	[8078] = { config_id = 8078, monster_id = 21011001, pos = { x = -2178.217, y = 200.289, z = -3478.803 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033 }, pose_id = 32, area_id = 11 },
	[8080] = { config_id = 8080, monster_id = 21011001, pos = { x = -2197.698, y = 200.289, z = -3479.470 }, rot = { x = 0.000, y = 85.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033 }, pose_id = 32, area_id = 11 },
	[8081] = { config_id = 8081, monster_id = 21011001, pos = { x = -2197.634, y = 200.289, z = -3477.387 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033 }, pose_id = 32, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[8055] = { config_id = 8055, gadget_id = 70950060, pos = { x = -2187.858, y = 200.425, z = -3481.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 11 },
	[8056] = { config_id = 8056, gadget_id = 70710001, pos = { x = -2188.420, y = 200.309, z = -3477.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	[8067] = { config_id = 8067, gadget_id = 70330071, pos = { x = -2194.155, y = 200.429, z = -3481.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	[8068] = { config_id = 8068, gadget_id = 70330071, pos = { x = -2183.660, y = 200.496, z = -3481.772 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	[8069] = { config_id = 8069, gadget_id = 70330071, pos = { x = -2187.276, y = 200.433, z = -3477.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	[8070] = { config_id = 8070, gadget_id = 70330072, pos = { x = -2194.023, y = 200.435, z = -3481.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	[8071] = { config_id = 8071, gadget_id = 70330072, pos = { x = -2183.660, y = 200.496, z = -3481.772 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	[8072] = { config_id = 8072, gadget_id = 70330072, pos = { x = -2187.276, y = 200.433, z = -3477.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	[8076] = { config_id = 8076, gadget_id = 70330064, pos = { x = -2187.426, y = 200.459, z = -3485.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 11 }
}

-- 区域
regions = {
	[8066] = { config_id = 8066, shape = RegionShape.SPHERE, radius = 27, pos = { x = -2187.972, y = 200.425, z = -3479.096 }, area_id = 11 },
	[8092] = { config_id = 8092, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2189.408, y = 200.430, z = -3480.588 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1008048, name = "GADGET_CREATE_8048", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8048", action = "action_EVENT_GADGET_CREATE_8048", tlog_tag = "1" },
	{ config_id = 1008049, name = "ANY_MONSTER_LIVE_8049", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_8049", action = "action_EVENT_ANY_MONSTER_LIVE_8049" },
	{ config_id = 1008050, name = "TIMER_EVENT_8050", event = EventType.EVENT_TIMER_EVENT, source = "R1", condition = "", action = "action_EVENT_TIMER_EVENT_8050" },
	{ config_id = 1008051, name = "GADGET_CREATE_8051", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8051", action = "action_EVENT_GADGET_CREATE_8051", tlog_tag = "1" },
	{ config_id = 1008054, name = "GADGET_CREATE_8054", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8054", action = "action_EVENT_GADGET_CREATE_8054", tlog_tag = "1" },
	{ config_id = 1008057, name = "GADGET_CREATE_8057", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8057", action = "action_EVENT_GADGET_CREATE_8057", tlog_tag = "2" },
	{ config_id = 1008058, name = "CHALLENGE_SUCCESS_8058", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "422", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_8058" },
	{ config_id = 1008059, name = "CHALLENGE_FAIL_8059", event = EventType.EVENT_CHALLENGE_FAIL, source = "422", condition = "", action = "action_EVENT_CHALLENGE_FAIL_8059" },
	{ config_id = 1008060, name = "GADGET_CREATE_8060", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8060", action = "action_EVENT_GADGET_CREATE_8060", tlog_tag = "3" },
	{ config_id = 1008061, name = "CHALLENGE_SUCCESS_8061", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "433", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_8061" },
	{ config_id = 1008062, name = "GADGET_CREATE_8062", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8062", action = "action_EVENT_GADGET_CREATE_8062", tlog_tag = "1" },
	{ config_id = 1008063, name = "CHALLENGE_FAIL_8063", event = EventType.EVENT_CHALLENGE_FAIL, source = "433", condition = "", action = "action_EVENT_CHALLENGE_FAIL_8063" },
	{ config_id = 1008064, name = "CHALLENGE_SUCCESS_8064", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "411", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_8064" },
	{ config_id = 1008065, name = "CHALLENGE_FAIL_8065", event = EventType.EVENT_CHALLENGE_FAIL, source = "411", condition = "", action = "action_EVENT_CHALLENGE_FAIL_8065" },
	{ config_id = 1008073, name = "CHALLENGE_SUCCESS_8073", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "444", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_8073" },
	{ config_id = 1008074, name = "CHALLENGE_FAIL_8074", event = EventType.EVENT_CHALLENGE_FAIL, source = "444", condition = "", action = "action_EVENT_CHALLENGE_FAIL_8074" },
	{ config_id = 1008075, name = "GADGET_CREATE_8075", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8075", action = "action_EVENT_GADGET_CREATE_8075", tlog_tag = "4" },
	{ config_id = 1008079, name = "GADGET_CREATE_8079", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8079", action = "action_EVENT_GADGET_CREATE_8079", tlog_tag = "1" },
	{ config_id = 1008082, name = "ANY_MONSTER_LIVE_8082", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_8082", action = "action_EVENT_ANY_MONSTER_LIVE_8082" },
	{ config_id = 1008083, name = "TIMER_EVENT_8083", event = EventType.EVENT_TIMER_EVENT, source = "R2", condition = "", action = "action_EVENT_TIMER_EVENT_8083" },
	{ config_id = 1008084, name = "ANY_MONSTER_LIVE_8084", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_8084", action = "action_EVENT_ANY_MONSTER_LIVE_8084" },
	{ config_id = 1008085, name = "TIMER_EVENT_8085", event = EventType.EVENT_TIMER_EVENT, source = "R3", condition = "", action = "action_EVENT_TIMER_EVENT_8085" },
	{ config_id = 1008086, name = "ANY_MONSTER_DIE_8086", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8086", action = "action_EVENT_ANY_MONSTER_DIE_8086" },
	{ config_id = 1008087, name = "ANY_MONSTER_DIE_8087", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8087", action = "action_EVENT_ANY_MONSTER_DIE_8087" },
	{ config_id = 1008088, name = "ANY_MONSTER_DIE_8088", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8088", action = "action_EVENT_ANY_MONSTER_DIE_8088" },
	{ config_id = 1008089, name = "ANY_MONSTER_DIE_8089", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8089", action = "action_EVENT_ANY_MONSTER_DIE_8089" },
	{ config_id = 1008090, name = "ANY_MONSTER_DIE_8090", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8090", action = "action_EVENT_ANY_MONSTER_DIE_8090" },
	{ config_id = 1008091, name = "ANY_MONSTER_DIE_8091", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_8091", action = "action_EVENT_ANY_MONSTER_DIE_8091" },
	{ config_id = 1008092, name = "ENTER_REGION_8092", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", tag = "582" },
	{ config_id = 1008093, name = "VARIABLE_CHANGE_8093", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "", trigger_count = 0, tag = "582" },
	{ config_id = 1008094, name = "GADGET_CREATE_8094", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8094", action = "action_EVENT_GADGET_CREATE_8094", tlog_tag = "1" },
	{ config_id = 1008095, name = "GADGET_CREATE_8095", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8095", action = "action_EVENT_GADGET_CREATE_8095", tlog_tag = "1" }
}

-- 变量
variables = {
	{ config_id = 1, name = "tool_trigger", value = 0, no_refresh = false }
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
		gadgets = { 8076 },
		regions = { 8066 },
		triggers = { "ANY_MONSTER_DIE_8086", "ANY_MONSTER_DIE_8087", "ANY_MONSTER_DIE_8088", "ANY_MONSTER_DIE_8089", "ANY_MONSTER_DIE_8090", "ANY_MONSTER_DIE_8091" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 8055, 8056, 8067, 8068, 8069 },
		regions = { 8092 },
		triggers = { "GADGET_CREATE_8048", "GADGET_CREATE_8051", "GADGET_CREATE_8054", "GADGET_CREATE_8062", "CHALLENGE_SUCCESS_8064", "CHALLENGE_FAIL_8065", "ENTER_REGION_8092", "VARIABLE_CHANGE_8093" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 8055, 8056, 8067, 8068, 8069 },
		regions = { 8092 },
		triggers = { "GADGET_CREATE_8051", "GADGET_CREATE_8054", "GADGET_CREATE_8057", "CHALLENGE_SUCCESS_8058", "CHALLENGE_FAIL_8059", "GADGET_CREATE_8062", "ENTER_REGION_8092", "VARIABLE_CHANGE_8093" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 8055, 8056, 8067, 8068, 8069 },
		regions = { 8092 },
		triggers = { "GADGET_CREATE_8051", "GADGET_CREATE_8054", "GADGET_CREATE_8060", "CHALLENGE_SUCCESS_8061", "GADGET_CREATE_8062", "CHALLENGE_FAIL_8063", "ENTER_REGION_8092", "VARIABLE_CHANGE_8093" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 8055, 8056, 8070, 8071, 8072 },
		regions = { 8092 },
		triggers = { "CHALLENGE_SUCCESS_8073", "CHALLENGE_FAIL_8074", "GADGET_CREATE_8075", "GADGET_CREATE_8079", "ENTER_REGION_8092", "VARIABLE_CHANGE_8093", "GADGET_CREATE_8094", "GADGET_CREATE_8095" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 8046, 8047 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_8049", "TIMER_EVENT_8050" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 8052, 8053 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_8082", "TIMER_EVENT_8083" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 8077, 8078 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_8084", "TIMER_EVENT_8085" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 8080, 8081 },
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
function condition_EVENT_GADGET_CREATE_8048(context, evt)
	if 8055 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8048(context, evt)
	ScriptLib.CreateFatherChallenge(context, 411, 111111, 300, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 411, 401, 111112, {300,defs.group_1,15,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 411, 402, 111113, {30,defs.group_1,15,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 411, 403, 111114, {300,2,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 411)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, defs.group_1, {8001,8002,8003}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, defs.group_1, {8004,8005,8006,8007,8008,8009,8010,8011,8012,8013,8014,8015}, 99, 3, 3) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, defs.group_1, {8010,8011,8012,8013,8014,8015}, 99, 2, 2) then
		return -1
	end
	
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_8049(context, evt)
	if 8046 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_8049(context, evt)
	-- 延迟40秒后,向groupId为：133209008的对象,请求一次调用,并将string参数："R1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133209008, "R1", 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_8050(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209008, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_8051(context, evt)
	if 8067 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8051(context, evt)
	-- 将configid为 8067 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8067, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_8054(context, evt)
	if 8068 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8054(context, evt)
	-- 将configid为 8068 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8068, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_8057(context, evt)
	if 8055 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8057(context, evt)
	ScriptLib.CreateFatherChallenge(context, 422, 111111, 240, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 422, 401, 111112, {240,defs.group_1,20,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 422, 402, 111113, {30,defs.group_1,20,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 422, 403, 111114, {240,1,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 422)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, defs.group_1, {8001,8002,8003}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, defs.group_1, {8004,8005,8006,8007,8008,8009,8010,8011,8012,8013,8014,8015}, 99, 3, 3) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, defs.group_1, {8010,8011,8012,8013,8014,8015}, 99, 2, 2) then
		return -1
	end
	
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_8058(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_8059(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_8060(context, evt)
	if 8055 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8060(context, evt)
	ScriptLib.CreateFatherChallenge(context, 433, 111111, 180, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 433, 401, 111112, {180,defs.group_1,25,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 433, 402, 111113, {30,defs.group_1,25,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 433, 403, 111165, {180,0,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 433)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, defs.group_1, {8031,8032,8033}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, defs.group_1, {8034,8035,8036,8037,8038,8039}, 99, 3, 3) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, defs.group_1, {8040,8041,8042,8043,8044,8045}, 99, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_8061(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_8062(context, evt)
	if 8069 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8062(context, evt)
	-- 将configid为 8069 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8069, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_8063(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_8064(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_8065(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_8073(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_8074(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209008, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_8075(context, evt)
	if 8055 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8075(context, evt)
	ScriptLib.CreateFatherChallenge(context, 444, 111111, 150, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 444, 401, 111112, {150,defs.group_1,30,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 444, 402, 111113, {25,defs.group_1,30,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 444, 403, 111165, {150,0,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 444)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, defs.group_1, {8016,8017,8018}, 99, 2, 2) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, defs.group_1, {8019,8020,8021,8022,8023,8024,8025,8026,8027,8028,8029,8030}, 99, 4, 4) then
		return -1
	end
	
	-- 添加suite2的新内容
	    --ScriptLib.AddExtraGroupSuite(context, defs.group_1, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_8079(context, evt)
	if 8070 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8079(context, evt)
	-- 将configid为 8070 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8070, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_8082(context, evt)
	if 8051 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_8082(context, evt)
	-- 延迟40秒后,向groupId为：133209008的对象,请求一次调用,并将string参数："R2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133209008, "R2", 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_8083(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209008, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_8084(context, evt)
	if 8054 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_8084(context, evt)
	-- 延迟40秒后,向groupId为：133209008的对象,请求一次调用,并将string参数："R3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133209008, "R3", 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_8085(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209008, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8086(context, evt)
	if 8016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8086(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8087(context, evt)
	if 8017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8087(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8088(context, evt)
	if 8018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8088(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8089(context, evt)
	if 8031 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8089(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8090(context, evt)
	if 8032 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8090(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_8091(context, evt)
	if 8033 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_8091(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_8094(context, evt)
	if 8071 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8094(context, evt)
	-- 将configid为 8071 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8071, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_8095(context, evt)
	if 8072 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8095(context, evt)
	-- 将configid为 8072 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 8072, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
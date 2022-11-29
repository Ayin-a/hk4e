-- 基础信息
local base_info = {
	group_id = 133209010
}

-- DEFS_MISCS
local defs = {
	RegionID =  10015,
	group_1 = 133209010
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[10001] = { config_id = 10001, monster_id = 21011001, pos = { x = -2181.528, y = 200.377, z = -3483.201 }, rot = { x = 0.000, y = 291.085, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 11 },
	[10002] = { config_id = 10002, monster_id = 21011001, pos = { x = -2182.167, y = 200.506, z = -3476.777 }, rot = { x = 0.000, y = 228.092, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 11 },
	[10017] = { config_id = 10017, monster_id = 21030601, pos = { x = -2190.317, y = 200.418, z = -3486.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[10018] = { config_id = 10018, monster_id = 21030601, pos = { x = -2193.092, y = 200.305, z = -3474.677 }, rot = { x = 0.000, y = 112.888, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[10019] = { config_id = 10019, monster_id = 21011001, pos = { x = -2196.242, y = 200.486, z = -3477.195 }, rot = { x = 0.000, y = 24.698, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 11 },
	[10020] = { config_id = 10020, monster_id = 21011001, pos = { x = -2189.724, y = 200.475, z = -3471.877 }, rot = { x = 0.000, y = 115.285, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 11 },
	[10021] = { config_id = 10021, monster_id = 20011201, pos = { x = -2185.384, y = 200.377, z = -3486.605 }, rot = { x = 0.000, y = 302.467, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[10022] = { config_id = 10022, monster_id = 20011401, pos = { x = -2181.757, y = 200.404, z = -3480.559 }, rot = { x = 0.000, y = 285.855, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[10023] = { config_id = 10023, monster_id = 20011201, pos = { x = -2184.123, y = 200.376, z = -3473.422 }, rot = { x = 0.000, y = 255.597, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[10024] = { config_id = 10024, monster_id = 20011401, pos = { x = -2188.689, y = 200.442, z = -3488.471 }, rot = { x = 0.000, y = 358.607, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[10025] = { config_id = 10025, monster_id = 20011201, pos = { x = -2197.202, y = 200.360, z = -3480.549 }, rot = { x = 0.000, y = 77.933, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[10026] = { config_id = 10026, monster_id = 20011401, pos = { x = -2192.455, y = 200.435, z = -3472.641 }, rot = { x = 0.000, y = 189.894, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[10027] = { config_id = 10027, monster_id = 21011601, pos = { x = -2183.479, y = 200.484, z = -3487.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[10028] = { config_id = 10028, monster_id = 21011601, pos = { x = -2186.954, y = 200.395, z = -3472.217 }, rot = { x = 0.000, y = 152.598, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[10029] = { config_id = 10029, monster_id = 21011601, pos = { x = -2196.028, y = 200.465, z = -3483.184 }, rot = { x = 0.000, y = 51.222, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[10030] = { config_id = 10030, monster_id = 21011601, pos = { x = -2194.504, y = 200.394, z = -3473.542 }, rot = { x = 0.000, y = 88.814, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[10031] = { config_id = 10031, monster_id = 21020701, pos = { x = -2185.174, y = 200.458, z = -3483.186 }, rot = { x = 0.000, y = 301.847, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[10032] = { config_id = 10032, monster_id = 21020701, pos = { x = -2185.024, y = 200.489, z = -3475.927 }, rot = { x = 0.000, y = 242.055, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	-- 难度3专用
	[10033] = { config_id = 10033, monster_id = 21011001, pos = { x = -2181.528, y = 200.377, z = -3483.201 }, rot = { x = 0.000, y = 291.085, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 32, area_id = 11 },
	-- 难度3专用
	[10034] = { config_id = 10034, monster_id = 21011001, pos = { x = -2182.167, y = 200.506, z = -3476.777 }, rot = { x = 0.000, y = 228.092, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 32, area_id = 11 },
	-- 难度3专用
	[10035] = { config_id = 10035, monster_id = 21030601, pos = { x = -2190.317, y = 200.418, z = -3486.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[10036] = { config_id = 10036, monster_id = 21030601, pos = { x = -2193.092, y = 200.305, z = -3474.677 }, rot = { x = 0.000, y = 112.888, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[10037] = { config_id = 10037, monster_id = 21011001, pos = { x = -2193.221, y = 200.417, z = -3487.016 }, rot = { x = 0.000, y = 24.698, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 32, area_id = 11 },
	-- 难度3专用
	[10038] = { config_id = 10038, monster_id = 21011001, pos = { x = -2194.710, y = 200.445, z = -3486.110 }, rot = { x = 0.000, y = 69.037, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 32, area_id = 11 },
	-- 难度3专用
	[10039] = { config_id = 10039, monster_id = 20011201, pos = { x = -2185.384, y = 200.377, z = -3486.605 }, rot = { x = 0.000, y = 302.467, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[10040] = { config_id = 10040, monster_id = 20011401, pos = { x = -2181.757, y = 200.404, z = -3480.559 }, rot = { x = 0.000, y = 285.855, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[10041] = { config_id = 10041, monster_id = 20011201, pos = { x = -2184.123, y = 200.376, z = -3473.422 }, rot = { x = 0.000, y = 255.597, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[10042] = { config_id = 10042, monster_id = 20011401, pos = { x = -2188.689, y = 200.442, z = -3488.471 }, rot = { x = 0.000, y = 358.607, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[10043] = { config_id = 10043, monster_id = 20011201, pos = { x = -2197.202, y = 200.360, z = -3480.549 }, rot = { x = 0.000, y = 77.933, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[10044] = { config_id = 10044, monster_id = 20011401, pos = { x = -2192.455, y = 200.435, z = -3472.641 }, rot = { x = 0.000, y = 189.894, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[10045] = { config_id = 10045, monster_id = 21011601, pos = { x = -2183.479, y = 200.484, z = -3487.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[10046] = { config_id = 10046, monster_id = 21011601, pos = { x = -2186.954, y = 200.395, z = -3472.217 }, rot = { x = 0.000, y = 152.598, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[10047] = { config_id = 10047, monster_id = 21011601, pos = { x = -2191.626, y = 200.353, z = -3488.305 }, rot = { x = 0.000, y = 8.178, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[10048] = { config_id = 10048, monster_id = 21011601, pos = { x = -2194.504, y = 200.394, z = -3473.542 }, rot = { x = 0.000, y = 88.814, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[10049] = { config_id = 10049, monster_id = 21020701, pos = { x = -2185.174, y = 200.458, z = -3483.186 }, rot = { x = 0.000, y = 301.847, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[10050] = { config_id = 10050, monster_id = 21020701, pos = { x = -2185.024, y = 200.489, z = -3475.927 }, rot = { x = 0.000, y = 242.055, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 挑战关专用
	[10056] = { config_id = 10056, monster_id = 21011002, pos = { x = -2194.689, y = 200.377, z = -3475.241 }, rot = { x = 0.000, y = 88.054, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, pose_id = 32, area_id = 11 },
	-- 挑战关专用
	[10057] = { config_id = 10057, monster_id = 21010502, pos = { x = -2182.167, y = 200.506, z = -3476.777 }, rot = { x = 0.000, y = 228.092, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, pose_id = 32, area_id = 11 },
	-- 挑战关专用
	[10058] = { config_id = 10058, monster_id = 21030601, pos = { x = -2190.317, y = 200.418, z = -3486.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[10059] = { config_id = 10059, monster_id = 21030601, pos = { x = -2193.092, y = 200.305, z = -3474.677 }, rot = { x = 0.000, y = 112.888, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[10060] = { config_id = 10060, monster_id = 21010603, pos = { x = -2194.983, y = 200.520, z = -3481.563 }, rot = { x = 0.000, y = 24.698, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, pose_id = 32, area_id = 11 },
	-- 挑战关专用
	[10061] = { config_id = 10061, monster_id = 21011601, pos = { x = -2182.907, y = 200.429, z = -3484.838 }, rot = { x = 0.000, y = 309.111, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[10062] = { config_id = 10062, monster_id = 20011101, pos = { x = -2185.384, y = 200.377, z = -3486.605 }, rot = { x = 0.000, y = 302.467, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[10063] = { config_id = 10063, monster_id = 20011301, pos = { x = -2181.757, y = 200.404, z = -3480.559 }, rot = { x = 0.000, y = 285.855, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[10064] = { config_id = 10064, monster_id = 20011101, pos = { x = -2184.123, y = 200.376, z = -3473.422 }, rot = { x = 0.000, y = 255.597, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[10065] = { config_id = 10065, monster_id = 20011101, pos = { x = -2188.689, y = 200.442, z = -3488.471 }, rot = { x = 0.000, y = 358.607, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[10066] = { config_id = 10066, monster_id = 20011301, pos = { x = -2197.202, y = 200.360, z = -3480.549 }, rot = { x = 0.000, y = 77.933, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[10067] = { config_id = 10067, monster_id = 20011101, pos = { x = -2192.455, y = 200.435, z = -3472.641 }, rot = { x = 0.000, y = 189.894, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[10068] = { config_id = 10068, monster_id = 21020201, pos = { x = -2195.724, y = 200.472, z = -3484.937 }, rot = { x = 0.000, y = 40.610, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[10069] = { config_id = 10069, monster_id = 21020201, pos = { x = -2193.362, y = 200.235, z = -3477.745 }, rot = { x = 0.000, y = 120.696, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[10070] = { config_id = 10070, monster_id = 21020501, pos = { x = -2195.850, y = 200.465, z = -3484.759 }, rot = { x = 0.000, y = 38.439, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[10071] = { config_id = 10071, monster_id = 21020501, pos = { x = -2189.586, y = 200.432, z = -3474.052 }, rot = { x = 0.000, y = 177.062, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[10072] = { config_id = 10072, monster_id = 21020201, pos = { x = -2184.759, y = 200.458, z = -3483.213 }, rot = { x = 0.000, y = 301.847, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[10073] = { config_id = 10073, monster_id = 21020201, pos = { x = -2185.024, y = 200.489, z = -3475.927 }, rot = { x = 0.000, y = 242.055, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[10003] = { config_id = 10003, gadget_id = 70950060, pos = { x = -2188.346, y = 196.425, z = -3480.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 11 },
	[10004] = { config_id = 10004, gadget_id = 70710001, pos = { x = -2188.445, y = 200.309, z = -3477.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	[10016] = { config_id = 10016, gadget_id = 70330066, pos = { x = -2188.671, y = 200.433, z = -3480.311 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	[10053] = { config_id = 10053, gadget_id = 70330064, pos = { x = -2187.426, y = 200.459, z = -3485.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 11 },
	[10055] = { config_id = 10055, gadget_id = 70330070, pos = { x = -2188.671, y = 200.433, z = -3480.311 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
	[10014] = { config_id = 10014, shape = RegionShape.SPHERE, radius = 21, pos = { x = -2188.061, y = 203.962, z = -3479.435 }, area_id = 11 },
	[10015] = { config_id = 10015, shape = RegionShape.SPHERE, radius = 27, pos = { x = -2187.972, y = 200.425, z = -3479.096 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1010005, name = "GADGET_CREATE_10005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_10005", action = "action_EVENT_GADGET_CREATE_10005", tlog_tag = "2" },
	{ config_id = 1010006, name = "GADGET_CREATE_10006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_10006", action = "action_EVENT_GADGET_CREATE_10006", tlog_tag = "1" },
	{ config_id = 1010007, name = "CHALLENGE_SUCCESS_10007", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "311", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_10007" },
	{ config_id = 1010008, name = "CHALLENGE_FAIL_10008", event = EventType.EVENT_CHALLENGE_FAIL, source = "311", condition = "", action = "action_EVENT_CHALLENGE_FAIL_10008" },
	{ config_id = 1010009, name = "CHALLENGE_SUCCESS_10009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "322", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_10009" },
	{ config_id = 1010010, name = "CHALLENGE_FAIL_10010", event = EventType.EVENT_CHALLENGE_FAIL, source = "322", condition = "", action = "action_EVENT_CHALLENGE_FAIL_10010" },
	{ config_id = 1010011, name = "GADGET_CREATE_10011", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_10011", action = "action_EVENT_GADGET_CREATE_10011", tlog_tag = "3" },
	{ config_id = 1010012, name = "CHALLENGE_SUCCESS_10012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "333", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_10012" },
	{ config_id = 1010013, name = "CHALLENGE_FAIL_10013", event = EventType.EVENT_CHALLENGE_FAIL, source = "333", condition = "", action = "action_EVENT_CHALLENGE_FAIL_10013" },
	{ config_id = 1010014, name = "LEAVE_REGION_10014", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "", tag = "579" },
	{ config_id = 1010051, name = "CHALLENGE_FAIL_10051", event = EventType.EVENT_CHALLENGE_FAIL, source = "344", condition = "", action = "action_EVENT_CHALLENGE_FAIL_10051" },
	{ config_id = 1010052, name = "CHALLENGE_SUCCESS_10052", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "344", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_10052" },
	{ config_id = 1010054, name = "GADGET_CREATE_10054", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_10054", action = "action_EVENT_GADGET_CREATE_10054", tlog_tag = "4" },
	{ config_id = 1010074, name = "ANY_MONSTER_DIE_10074", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10074", action = "action_EVENT_ANY_MONSTER_DIE_10074" },
	{ config_id = 1010075, name = "ANY_MONSTER_DIE_10075", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10075", action = "action_EVENT_ANY_MONSTER_DIE_10075" },
	{ config_id = 1010076, name = "ANY_MONSTER_DIE_10076", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10076", action = "action_EVENT_ANY_MONSTER_DIE_10076" },
	{ config_id = 1010077, name = "ANY_MONSTER_DIE_10077", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10077", action = "action_EVENT_ANY_MONSTER_DIE_10077" },
	{ config_id = 1010078, name = "ANY_MONSTER_DIE_10078", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10078", action = "action_EVENT_ANY_MONSTER_DIE_10078" },
	{ config_id = 1010079, name = "ANY_MONSTER_DIE_10079", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_10079", action = "action_EVENT_ANY_MONSTER_DIE_10079" },
	{ config_id = 1010080, name = "VARIABLE_CHANGE_10080", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "", trigger_count = 0, tag = "582" }
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
		gadgets = { 10053 },
		regions = { 10015 },
		triggers = { "ANY_MONSTER_DIE_10074", "ANY_MONSTER_DIE_10075", "ANY_MONSTER_DIE_10076", "ANY_MONSTER_DIE_10077", "ANY_MONSTER_DIE_10078", "ANY_MONSTER_DIE_10079" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 10003, 10004, 10016 },
		regions = { 10014 },
		triggers = { "GADGET_CREATE_10006", "CHALLENGE_SUCCESS_10007", "CHALLENGE_FAIL_10008", "LEAVE_REGION_10014", "VARIABLE_CHANGE_10080" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 10003, 10004, 10016 },
		regions = { 10014 },
		triggers = { "GADGET_CREATE_10005", "CHALLENGE_SUCCESS_10009", "CHALLENGE_FAIL_10010", "LEAVE_REGION_10014", "VARIABLE_CHANGE_10080" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 10003, 10004, 10016 },
		regions = { 10014 },
		triggers = { "GADGET_CREATE_10011", "CHALLENGE_SUCCESS_10012", "CHALLENGE_FAIL_10013", "LEAVE_REGION_10014", "VARIABLE_CHANGE_10080" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 10003, 10004, 10055 },
		regions = { 10014 },
		triggers = { "LEAVE_REGION_10014", "CHALLENGE_FAIL_10051", "CHALLENGE_SUCCESS_10052", "GADGET_CREATE_10054", "VARIABLE_CHANGE_10080" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_10005(context, evt)
	if 10016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_10005(context, evt)
	ScriptLib.CreateFatherChallenge(context, 322, 111131, 240, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 322, 301, 111132, {240,defs.group_1,20,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 322, 302, 111133, {240,3,582,1},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 322, 303, 111134, {240,1,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 322)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, defs.group_1, {10001,10002,10017,10018,10019,10020}, 99, 2, 2) then
		return -1
	end
	
	
	
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, defs.group_1, {10027,10028,10029,10030}, 99, 2, 2) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, defs.group_1, {10031,10032}, 99, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_10006(context, evt)
	if 10016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_10006(context, evt)
	ScriptLib.CreateFatherChallenge(context, 311, 111131, 300, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 311, 301, 111132, {300,defs.group_1,15,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 311, 302, 111133, {300,3,582,1},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 311, 303, 111134, {300,2,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 311)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, defs.group_1, {10001,10002,10017,10018,10019,10020}, 99, 2, 2) then
		return -1
	end
	
	
	
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, defs.group_1, {10027,10028,10029,10030}, 99, 2, 2) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, defs.group_1, {10031,10032}, 99, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_10007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209010, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_10008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209010, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_10009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209010, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_10010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209010, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_10011(context, evt)
	if 10016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_10011(context, evt)
	ScriptLib.CreateFatherChallenge(context, 333, 111131, 180, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 333, 301, 111132, {180,defs.group_1,25,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 333, 302, 111133, {180,3,582,2},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 333, 303, 111165, {180,0,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 333)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, defs.group_1, {10033,10034,10035,10036,10037,10038}, 99, 2, 2) then
		return -1
	end
	
	
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, defs.group_1, {10045,10046,10047,10048}, 99, 2, 2) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, defs.group_1, {10049,10050}, 99, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_10012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209010, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_10013(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209010, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_10051(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209010, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_10052(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209010, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_10054(context, evt)
	if 10055 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_10054(context, evt)
	ScriptLib.CreateFatherChallenge(context, 344, 111131, 130, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 344, 301, 111132, {130,defs.group_1,20,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 344, 302, 111135, {130,3,582,2},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 344, 303, 111165, {130,0,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 344)
	
	
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, defs.group_1, {10056,10057,10058,10060,10061}, 99, 3, 3) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, defs.group_1, {10072,10073,10068,10069}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, defs.group_1, {10070,10071}, 99, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10074(context, evt)
	if 10031 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10074(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10075(context, evt)
	if 10032 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10075(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10076(context, evt)
	if 10049 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10076(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10077(context, evt)
	if 10050 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10077(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10078(context, evt)
	if 10070 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10078(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_10079(context, evt)
	if 10071 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_10079(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end
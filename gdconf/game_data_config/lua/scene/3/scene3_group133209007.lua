-- 基础信息
local base_info = {
	group_id = 133209007
}

-- DEFS_MISCS
local defs = {
	RegionID =  7054,
	group_1 = 133209007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 20010601, pos = { x = -2197.483, y = 200.318, z = -3477.888 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 7002, monster_id = 21011601, pos = { x = -2194.696, y = 200.318, z = -3472.143 }, rot = { x = 0.000, y = 140.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 7003, monster_id = 21011601, pos = { x = -2197.532, y = 200.318, z = -3481.029 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 7004, monster_id = 21030601, pos = { x = -2198.783, y = 200.332, z = -3482.981 }, rot = { x = 0.000, y = 76.256, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 7005, monster_id = 20010601, pos = { x = -2194.741, y = 200.318, z = -3485.989 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 7006, monster_id = 21011601, pos = { x = -2192.735, y = 200.318, z = -3487.952 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	-- 难度3专用
	{ config_id = 7007, monster_id = 20010601, pos = { x = -2197.483, y = 200.318, z = -3477.888 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	{ config_id = 7008, monster_id = 21010501, pos = { x = -2193.992, y = 200.289, z = -3487.130 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 11 },
	{ config_id = 7009, monster_id = 21011001, pos = { x = -2195.695, y = 200.289, z = -3484.718 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 11 },
	-- 难度3专用
	{ config_id = 7010, monster_id = 21011601, pos = { x = -2194.696, y = 200.318, z = -3472.143 }, rot = { x = 0.000, y = 140.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	{ config_id = 7011, monster_id = 21020701, pos = { x = -2187.197, y = 200.318, z = -3487.763 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 7012, monster_id = 21020701, pos = { x = -2183.565, y = 200.318, z = -3486.418 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 7013, monster_id = 21020701, pos = { x = -2188.422, y = 200.290, z = -3468.725 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 7014, monster_id = 21020701, pos = { x = -2191.157, y = 200.290, z = -3469.435 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 7015, monster_id = 21010901, pos = { x = -2186.115, y = 200.289, z = -3488.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 11 },
	{ config_id = 7016, monster_id = 21011001, pos = { x = -2197.698, y = 200.289, z = -3479.470 }, rot = { x = 0.000, y = 85.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 11 },
	-- 难度3专用
	{ config_id = 7017, monster_id = 21011601, pos = { x = -2197.532, y = 200.318, z = -3481.029 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	{ config_id = 7018, monster_id = 21011001, pos = { x = -2183.729, y = 200.289, z = -3487.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 11 },
	{ config_id = 7019, monster_id = 21010901, pos = { x = -2179.475, y = 200.289, z = -3474.000 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 11 },
	{ config_id = 7020, monster_id = 21010501, pos = { x = -2178.257, y = 200.289, z = -3476.251 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 11 },
	-- 难度3专用
	{ config_id = 7021, monster_id = 21030601, pos = { x = -2196.362, y = 200.318, z = -3483.726 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	{ config_id = 7022, monster_id = 21010901, pos = { x = -2197.634, y = 200.289, z = -3477.387 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 11 },
	{ config_id = 7023, monster_id = 21011601, pos = { x = -2181.456, y = 200.475, z = -3481.553 }, rot = { x = 0.000, y = 279.552, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 7024, monster_id = 21030601, pos = { x = -2190.950, y = 200.485, z = -3489.881 }, rot = { x = 0.000, y = 357.853, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 7025, monster_id = 20010601, pos = { x = -2180.885, y = 200.412, z = -3478.463 }, rot = { x = 0.000, y = 269.552, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 7026, monster_id = 21011601, pos = { x = -2181.592, y = 200.373, z = -3475.609 }, rot = { x = 0.000, y = 249.552, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 7027, monster_id = 21011601, pos = { x = -2182.814, y = 200.374, z = -3473.108 }, rot = { x = 0.000, y = 234.552, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	{ config_id = 7028, monster_id = 21030601, pos = { x = -2184.468, y = 200.397, z = -3470.839 }, rot = { x = 0.000, y = 219.552, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	-- 难度3专用
	{ config_id = 7029, monster_id = 21020701, pos = { x = -2187.263, y = 200.323, z = -3487.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	{ config_id = 7030, monster_id = 21020701, pos = { x = -2183.631, y = 200.323, z = -3486.304 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	{ config_id = 7031, monster_id = 21020701, pos = { x = -2188.487, y = 200.294, z = -3468.611 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	{ config_id = 7032, monster_id = 21020701, pos = { x = -2191.223, y = 200.294, z = -3469.321 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	{ config_id = 7062, monster_id = 20010601, pos = { x = -2194.741, y = 200.318, z = -3485.989 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	{ config_id = 7068, monster_id = 21011601, pos = { x = -2192.735, y = 200.318, z = -3487.952 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	{ config_id = 7069, monster_id = 21011601, pos = { x = -2181.456, y = 200.475, z = -3481.553 }, rot = { x = 0.000, y = 279.552, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	{ config_id = 7070, monster_id = 21030601, pos = { x = -2190.950, y = 200.485, z = -3489.881 }, rot = { x = 0.000, y = 357.853, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	{ config_id = 7073, monster_id = 25020201, pos = { x = -2199.064, y = 200.289, z = -3488.087 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1007 }, area_id = 11 },
	{ config_id = 7074, monster_id = 25020201, pos = { x = -2197.361, y = 200.289, z = -3490.499 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1007 }, area_id = 11 },
	-- 难度3专用
	{ config_id = 7075, monster_id = 20010601, pos = { x = -2180.885, y = 200.412, z = -3478.463 }, rot = { x = 0.000, y = 269.552, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	{ config_id = 7076, monster_id = 25020201, pos = { x = -2182.022, y = 200.289, z = -3491.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1007 }, area_id = 11 },
	{ config_id = 7077, monster_id = 25020201, pos = { x = -2177.364, y = 200.288, z = -3488.946 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1007 }, area_id = 11 },
	-- 难度3专用
	{ config_id = 7078, monster_id = 21011601, pos = { x = -2181.592, y = 200.373, z = -3475.609 }, rot = { x = 0.000, y = 249.552, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	{ config_id = 7081, monster_id = 25020201, pos = { x = -2178.599, y = 200.411, z = -3472.207 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1007 }, area_id = 11 },
	{ config_id = 7082, monster_id = 25020201, pos = { x = -2177.381, y = 200.451, z = -3474.458 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1007 }, area_id = 11 },
	-- 难度3专用
	{ config_id = 7083, monster_id = 21011601, pos = { x = -2182.814, y = 200.374, z = -3473.108 }, rot = { x = 0.000, y = 234.552, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	{ config_id = 7086, monster_id = 25020201, pos = { x = -2195.639, y = 200.385, z = -3473.558 }, rot = { x = 0.000, y = 107.865, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1007 }, area_id = 11 },
	{ config_id = 7087, monster_id = 25020201, pos = { x = -2196.110, y = 200.468, z = -3470.568 }, rot = { x = 0.000, y = 127.865, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1007 }, area_id = 11 },
	-- 难度3专用
	{ config_id = 7088, monster_id = 21030601, pos = { x = -2184.468, y = 200.397, z = -3470.839 }, rot = { x = 0.000, y = 219.552, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	{ config_id = 7089, monster_id = 23050101, pos = { x = -2195.212, y = 200.383, z = -3482.041 }, rot = { x = 0.000, y = 0.000, z = 58.611 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1007 }, area_id = 11 },
	{ config_id = 7090, monster_id = 23050101, pos = { x = -2183.631, y = 200.323, z = -3486.304 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1007 }, area_id = 11 },
	{ config_id = 7091, monster_id = 25010201, pos = { x = -2182.080, y = 200.436, z = -3478.478 }, rot = { x = 0.000, y = 267.078, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1007 }, area_id = 11 },
	{ config_id = 7092, monster_id = 25010701, pos = { x = -2194.696, y = 200.318, z = -3472.143 }, rot = { x = 0.000, y = 140.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1007 }, area_id = 11 },
	{ config_id = 7093, monster_id = 25010201, pos = { x = -2197.532, y = 200.318, z = -3481.029 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1007 }, area_id = 11 },
	{ config_id = 7094, monster_id = 25010201, pos = { x = -2196.362, y = 200.318, z = -3483.726 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1007 }, area_id = 11 },
	{ config_id = 7095, monster_id = 25010201, pos = { x = -2185.028, y = 200.448, z = -3473.471 }, rot = { x = 0.000, y = 210.126, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1007 }, area_id = 11 },
	{ config_id = 7096, monster_id = 25010701, pos = { x = -2192.735, y = 200.318, z = -3487.952 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009, 1007 }, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7034, gadget_id = 70950060, pos = { x = -2187.858, y = 200.425, z = -3481.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 11 },
	{ config_id = 7035, gadget_id = 70710001, pos = { x = -2188.291, y = 200.309, z = -3477.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 7057, gadget_id = 70290154, pos = { x = -2189.353, y = 204.541, z = -3479.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 7058, gadget_id = 70290154, pos = { x = -2191.056, y = 212.912, z = -3477.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 7059, gadget_id = 70330064, pos = { x = -2187.426, y = 200.459, z = -3485.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 11 },
	{ config_id = 7097, gadget_id = 70290154, pos = { x = -2188.545, y = 221.184, z = -3480.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
}

-- 区域
regions = {
	-- 工具人
	{ config_id = 7033, shape = RegionShape.SPHERE, radius = 8, pos = { x = -2189.353, y = 204.541, z = -3479.131 }, area_id = 11 },
	{ config_id = 7054, shape = RegionShape.SPHERE, radius = 27, pos = { x = -2187.972, y = 200.425, z = -3479.096 }, area_id = 11 },
	-- 工具人2
	{ config_id = 7060, shape = RegionShape.SPHERE, radius = 8, pos = { x = -2191.056, y = 212.912, z = -3477.595 }, area_id = 11 },
	-- 工具人3
	{ config_id = 7061, shape = RegionShape.SPHERE, radius = 8, pos = { x = -2188.545, y = 221.184, z = -3480.289 }, area_id = 11 },
	{ config_id = 7101, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2189.960, y = 200.356, z = -3478.295 }, area_id = 11 },
	{ config_id = 7102, shape = RegionShape.SPHERE, radius = 5, pos = { x = -2190.070, y = 200.373, z = -3477.521 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1007036, name = "ANY_MONSTER_DIE_7036", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7036", action = "action_EVENT_ANY_MONSTER_DIE_7036", trigger_count = 0 },
	{ config_id = 1007037, name = "ANY_MONSTER_DIE_7037", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7037", action = "action_EVENT_ANY_MONSTER_DIE_7037", trigger_count = 0 },
	{ config_id = 1007038, name = "VARIABLE_CHANGE_7038", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "", trigger_count = 0, tag = "582" },
	{ config_id = 1007039, name = "GADGET_CREATE_7039", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_7039", action = "action_EVENT_GADGET_CREATE_7039", tlog_tag = "2" },
	{ config_id = 1007040, name = "CHALLENGE_SUCCESS_7040", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "222", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_7040" },
	{ config_id = 1007041, name = "CHALLENGE_FAIL_7041", event = EventType.EVENT_CHALLENGE_FAIL, source = "222", condition = "", action = "action_EVENT_CHALLENGE_FAIL_7041" },
	{ config_id = 1007042, name = "GADGET_CREATE_7042", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_7042", action = "action_EVENT_GADGET_CREATE_7042", tlog_tag = "3" },
	{ config_id = 1007043, name = "CHALLENGE_SUCCESS_7043", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "233", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_7043" },
	{ config_id = 1007044, name = "GADGET_CREATE_7044", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_7044", action = "action_EVENT_GADGET_CREATE_7044", tlog_tag = "1" },
	{ config_id = 1007045, name = "CHALLENGE_FAIL_7045", event = EventType.EVENT_CHALLENGE_FAIL, source = "233", condition = "", action = "action_EVENT_CHALLENGE_FAIL_7045" },
	{ config_id = 1007046, name = "CHALLENGE_SUCCESS_7046", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "211", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_7046" },
	{ config_id = 1007047, name = "CHALLENGE_FAIL_7047", event = EventType.EVENT_CHALLENGE_FAIL, source = "211", condition = "", action = "action_EVENT_CHALLENGE_FAIL_7047" },
	{ config_id = 1007048, name = "TIMER_EVENT_7048", event = EventType.EVENT_TIMER_EVENT, source = "first", condition = "", action = "action_EVENT_TIMER_EVENT_7048" },
	{ config_id = 1007049, name = "TIMER_EVENT_7049", event = EventType.EVENT_TIMER_EVENT, source = "second", condition = "", action = "action_EVENT_TIMER_EVENT_7049" },
	{ config_id = 1007050, name = "TIMER_EVENT_7050", event = EventType.EVENT_TIMER_EVENT, source = "third", condition = "", action = "action_EVENT_TIMER_EVENT_7050" },
	{ config_id = 1007051, name = "ANY_MONSTER_LIVE_7051", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_7051", action = "action_EVENT_ANY_MONSTER_LIVE_7051" },
	{ config_id = 1007052, name = "ANY_MONSTER_LIVE_7052", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_7052", action = "action_EVENT_ANY_MONSTER_LIVE_7052" },
	{ config_id = 1007053, name = "ANY_MONSTER_LIVE_7053", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_7053", action = "action_EVENT_ANY_MONSTER_LIVE_7053" },
	{ config_id = 1007055, name = "ANY_MONSTER_DIE_7055", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7055", action = "action_EVENT_ANY_MONSTER_DIE_7055", trigger_count = 0 },
	{ config_id = 1007056, name = "ANY_MONSTER_DIE_7056", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7056", action = "action_EVENT_ANY_MONSTER_DIE_7056", trigger_count = 0 },
	{ config_id = 1007063, name = "CHALLENGE_FAIL_7063", event = EventType.EVENT_CHALLENGE_FAIL, source = "244", condition = "", action = "action_EVENT_CHALLENGE_FAIL_7063" },
	{ config_id = 1007064, name = "CHALLENGE_SUCCESS_7064", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "244", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_7064" },
	{ config_id = 1007065, name = "GADGET_CREATE_7065", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_7065", action = "action_EVENT_GADGET_CREATE_7065", tlog_tag = "4" },
	{ config_id = 1007071, name = "ANY_MONSTER_LIVE_7071", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_7071", action = "action_EVENT_ANY_MONSTER_LIVE_7071" },
	{ config_id = 1007072, name = "TIMER_EVENT_7072", event = EventType.EVENT_TIMER_EVENT, source = "Cfirst", condition = "", action = "action_EVENT_TIMER_EVENT_7072" },
	{ config_id = 1007079, name = "TIMER_EVENT_7079", event = EventType.EVENT_TIMER_EVENT, source = "Csecond", condition = "", action = "action_EVENT_TIMER_EVENT_7079" },
	{ config_id = 1007080, name = "ANY_MONSTER_LIVE_7080", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_7080", action = "action_EVENT_ANY_MONSTER_LIVE_7080" },
	{ config_id = 1007084, name = "TIMER_EVENT_7084", event = EventType.EVENT_TIMER_EVENT, source = "Cthird", condition = "", action = "action_EVENT_TIMER_EVENT_7084" },
	{ config_id = 1007085, name = "ANY_MONSTER_LIVE_7085", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_7085", action = "action_EVENT_ANY_MONSTER_LIVE_7085" },
	{ config_id = 1007098, name = "ANY_MONSTER_DIE_7098", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7098", action = "action_EVENT_ANY_MONSTER_DIE_7098", trigger_count = 0 },
	{ config_id = 1007099, name = "ANY_MONSTER_DIE_7099", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7099", action = "action_EVENT_ANY_MONSTER_DIE_7099", trigger_count = 0 },
	{ config_id = 1007101, name = "ENTER_REGION_7101", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	{ config_id = 1007102, name = "ENTER_REGION_7102", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_7102" },
	{ config_id = 1007103, name = "ANY_MONSTER_DIE_7103", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7103", action = "action_EVENT_ANY_MONSTER_DIE_7103", trigger_count = 0 },
	{ config_id = 1007104, name = "ANY_MONSTER_DIE_7104", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7104", action = "action_EVENT_ANY_MONSTER_DIE_7104", trigger_count = 0 },
	{ config_id = 1007105, name = "ANY_MONSTER_DIE_7105", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7105", action = "action_EVENT_ANY_MONSTER_DIE_7105", trigger_count = 0 },
	{ config_id = 1007106, name = "ANY_MONSTER_DIE_7106", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7106", action = "action_EVENT_ANY_MONSTER_DIE_7106", trigger_count = 0 },
	{ config_id = 1007107, name = "GADGET_STATE_CHANGE_7107", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7107", action = "action_EVENT_GADGET_STATE_CHANGE_7107", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "tool_trigger", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 7066, gadget_id = 70290154, pos = { x = -2223.347, y = 193.362, z = -3457.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 7067, gadget_id = 70290154, pos = { x = -2216.924, y = 201.733, z = -3455.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
		{ config_id = 7100, gadget_id = 70290154, pos = { x = -2219.105, y = 206.535, z = -3460.971 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 }
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
		gadgets = { 7035, 7059 },
		regions = { 7033, 7054, 7060, 7061 },
		triggers = { "ANY_MONSTER_DIE_7036", "ANY_MONSTER_DIE_7037", "ANY_MONSTER_DIE_7055", "ANY_MONSTER_DIE_7056", "ANY_MONSTER_DIE_7098", "ANY_MONSTER_DIE_7099", "ANY_MONSTER_DIE_7103", "ANY_MONSTER_DIE_7104", "ANY_MONSTER_DIE_7105", "ANY_MONSTER_DIE_7106" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 7034, 7035, 7057, 7058, 7097 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_7038", "GADGET_CREATE_7044", "CHALLENGE_SUCCESS_7046", "CHALLENGE_FAIL_7047", "GADGET_STATE_CHANGE_7107" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 7034, 7035, 7057, 7058, 7097 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_7038", "GADGET_CREATE_7039", "CHALLENGE_SUCCESS_7040", "CHALLENGE_FAIL_7041", "GADGET_STATE_CHANGE_7107" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 7034, 7035, 7057, 7058, 7097 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_7038", "GADGET_CREATE_7042", "CHALLENGE_SUCCESS_7043", "CHALLENGE_FAIL_7045", "GADGET_STATE_CHANGE_7107" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 7008, 7009 },
		gadgets = { 7035 },
		regions = { },
		triggers = { "TIMER_EVENT_7048", "ANY_MONSTER_LIVE_7051" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 7015, 7018 },
		gadgets = { 7035 },
		regions = { },
		triggers = { "TIMER_EVENT_7049", "ANY_MONSTER_LIVE_7052" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 7019, 7020 },
		gadgets = { 7035 },
		regions = { },
		triggers = { "TIMER_EVENT_7050", "ANY_MONSTER_LIVE_7053" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 7016, 7022 },
		gadgets = { 7035 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 7034, 7035, 7057, 7058, 7097 },
		regions = { 7102 },
		triggers = { "VARIABLE_CHANGE_7038", "CHALLENGE_FAIL_7063", "CHALLENGE_SUCCESS_7064", "GADGET_CREATE_7065", "ENTER_REGION_7102", "GADGET_STATE_CHANGE_7107" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 挑战关 主怪物潮,
		monsters = { 7089, 7090, 7091, 7092, 7093, 7094, 7095, 7096 },
		gadgets = { 7035 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = 挑战关刷新远程怪1,
		monsters = { 7073, 7074 },
		gadgets = { 7035 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_7071", "TIMER_EVENT_7072" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = 挑战关刷新远程怪2,
		monsters = { 7076, 7077 },
		gadgets = { 7035 },
		regions = { },
		triggers = { "TIMER_EVENT_7079", "ANY_MONSTER_LIVE_7080" },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = 挑战关刷新远程怪3,
		monsters = { 7081, 7082 },
		gadgets = { 7035 },
		regions = { },
		triggers = { "TIMER_EVENT_7084", "ANY_MONSTER_LIVE_7085" },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = 挑战关刷新远程怪4,
		monsters = { 7086, 7087 },
		gadgets = { 7035 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = 挑战关飞雷核刷新专用,
		monsters = { },
		gadgets = { },
		regions = { 7101 },
		triggers = { "ENTER_REGION_7101" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7036(context, evt)
	--判断死亡怪物的configid是否为 7011
	if evt.param1 ~= 7011 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7036(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7037(context, evt)
	--判断死亡怪物的configid是否为 7012
	if evt.param1 ~= 7012 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7037(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_7039(context, evt)
	if 7034 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_7039(context, evt)
	ScriptLib.CreateFatherChallenge(context, 222, 111101, 240, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 222, 201, 111102, {240,defs.group_1,20,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 222, 202, 111103, {240,3,582,3},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 222, 203, 111104, {240,1,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 222)
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 504, defs.group_1, {7011,7012}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 508, defs.group_1, {7001,7002,7003,7004,7005,7006}, 99, 2, 2) then
		return -1
	end
	
	-- 添加suite2的新内容
	    --ScriptLib.AddExtraGroupSuite(context, 133001583, 2)
	
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_7040(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "tool_trigger" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tool_trigger", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_7041(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "tool_trigger" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tool_trigger", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_7042(context, evt)
	if 7034 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_7042(context, evt)
	ScriptLib.CreateFatherChallenge(context, 233, 111101, 180, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 233, 201, 111102, {180,defs.group_1,25,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 233, 202, 111103, {180,3,582,3},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 233, 203, 111165, {180,0,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 233)
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 506, defs.group_1, {7029,7030,7031,7032}, 99, 2, 2) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 509, defs.group_1, {7007,7010,7017,7021,7062,7068,7069,7070,7075,7078,7083,7088}, 99, 3, 3) then
	 ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    --ScriptLib.AddExtraGroupSuite(context, 133001583, 2)
	
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_7043(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "tool_trigger" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tool_trigger", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_7044(context, evt)
	if 7034 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_7044(context, evt)
	ScriptLib.CreateFatherChallenge(context, 211, 111101, 300, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 211, 201, 111102, {300,defs.group_1,15,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 211, 202, 111103, {300,3,582,2},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 211, 203, 111104, {300,2,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 211)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 502, defs.group_1, {7011,7012,7013,7014}, 99, 2, 2) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 507, defs.group_1, {7001,7002,7003,7004,7005,7006,7023,7024,7025,7026,7027,7028}, 99, 4, 4) then
		return -1
	end
	
	-- 添加suite2的新内容
	    --ScriptLib.AddExtraGroupSuite(context, 133001583, 2)
	
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_7045(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "tool_trigger" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tool_trigger", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_7046(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "tool_trigger" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tool_trigger", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_7047(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "tool_trigger" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tool_trigger", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_7048(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209007, 6)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_7049(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209007, 7)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_7050(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209007, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_7051(context, evt)
	if 7007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_7051(context, evt)
	-- 延迟60秒后,向groupId为：133209007的对象,请求一次调用,并将string参数："first" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133209007, "first", 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_7052(context, evt)
	if 7018 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_7052(context, evt)
	-- 延迟60秒后,向groupId为：133209007的对象,请求一次调用,并将string参数："second" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133209007, "second", 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_7053(context, evt)
	if 7019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_7053(context, evt)
	-- 延迟60秒后,向groupId为：133209007的对象,请求一次调用,并将string参数："third" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133209007, "third", 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7055(context, evt)
	--判断死亡怪物的configid是否为 7029
	if evt.param1 ~= 7029 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7055(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7056(context, evt)
	--判断死亡怪物的configid是否为 7030
	if evt.param1 ~= 7030 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7056(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_7063(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "tool_trigger" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tool_trigger", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_7064(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将本组内变量名为 "tool_trigger" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "tool_trigger", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_7065(context, evt)
	if 7034 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_7065(context, evt)
	ScriptLib.CreateFatherChallenge(context, 244, 111101, 180, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 244, 201, 111102, {180,defs.group_1,20,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 244, 202, 111105, {180,3,582,2},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 244, 203, 111165, {180,0,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 244)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 506, defs.group_1, {7089,7090}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 509, defs.group_1, {7091,7094,7092,7095,7093,7096}, 99, 2, 2) then
	 ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    --ScriptLib.AddExtraGroupSuite(context, 133001583, 2)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209007, 11)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_7071(context, evt)
	if 7073 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_7071(context, evt)
	-- 延迟60秒后,向groupId为：133209007的对象,请求一次调用,并将string参数："Cfirst" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133209007, "Cfirst", 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_7072(context, evt)
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209007, 12)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_7079(context, evt)
	-- 添加suite13的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209007, 13)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_7080(context, evt)
	if 7076 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_7080(context, evt)
	-- 延迟60秒后,向groupId为：133209007的对象,请求一次调用,并将string参数："Csecond" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133209007, "Csecond", 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_7084(context, evt)
	-- 添加suite14的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209007, 14)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_7085(context, evt)
	if 7081 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_7085(context, evt)
	-- 延迟60秒后,向groupId为：133209007的对象,请求一次调用,并将string参数："Cthird" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133209007, "Cthird", 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7098(context, evt)
	--判断死亡怪物的configid是否为 7013
	if evt.param1 ~= 7013 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7098(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7099(context, evt)
	--判断死亡怪物的configid是否为 7014
	if evt.param1 ~= 7014 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7099(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_7102(context, evt)
	-- 创建标识为""，时间节点为{0}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "", {0}, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7103(context, evt)
	--判断死亡怪物的configid是否为 7031
	if evt.param1 ~= 7031 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7103(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7104(context, evt)
	--判断死亡怪物的configid是否为 7032
	if evt.param1 ~= 7032 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7104(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7105(context, evt)
	--判断死亡怪物的configid是否为 7089
	if evt.param1 ~= 7089 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7105(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7106(context, evt)
	--判断死亡怪物的configid是否为 7090
	if evt.param1 ~= 7090 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7106(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7107(context, evt)
	if 7057 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7107(context, evt)
	-- 调用提示id为 600044 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 600044) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V2_0/ElectricCore02"
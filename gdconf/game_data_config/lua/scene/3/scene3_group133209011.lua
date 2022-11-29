-- 基础信息
local base_info = {
	group_id = 133209011
}

-- DEFS_MISCS
local defs = {
	RegionID =  11022,
	group_1 = 133209011
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[11001] = { config_id = 11001, monster_id = 25010201, pos = { x = -2184.540, y = 200.514, z = -3488.409 }, rot = { x = 0.000, y = 318.870, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[11002] = { config_id = 11002, monster_id = 25020201, pos = { x = -2182.017, y = 200.378, z = -3486.872 }, rot = { x = 0.000, y = 303.870, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[11003] = { config_id = 11003, monster_id = 25010201, pos = { x = -2180.425, y = 200.413, z = -3484.481 }, rot = { x = 0.000, y = 273.870, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[11004] = { config_id = 11004, monster_id = 25080101, pos = { x = -2180.020, y = 200.439, z = -3480.627 }, rot = { x = 0.000, y = 295.323, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009 }, pose_id = 1, area_id = 11 },
	[11005] = { config_id = 11005, monster_id = 25080201, pos = { x = -2197.564, y = 200.513, z = -3487.303 }, rot = { x = 0.000, y = 38.586, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009 }, pose_id = 1, area_id = 11 },
	[11006] = { config_id = 11006, monster_id = 25080301, pos = { x = -2200.356, y = 200.450, z = -3475.891 }, rot = { x = 0.000, y = 111.312, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009 }, pose_id = 1, area_id = 11 },
	[11007] = { config_id = 11007, monster_id = 25030201, pos = { x = -2197.888, y = 200.332, z = -3481.927 }, rot = { x = 0.000, y = 59.007, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[11008] = { config_id = 11008, monster_id = 25030201, pos = { x = -2193.227, y = 200.383, z = -3471.249 }, rot = { x = 0.000, y = 157.510, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[11009] = { config_id = 11009, monster_id = 25030201, pos = { x = -2194.047, y = 200.547, z = -3487.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[11010] = { config_id = 11010, monster_id = 25030201, pos = { x = -2190.162, y = 200.394, z = -3472.293 }, rot = { x = 0.000, y = 180.766, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[11024] = { config_id = 11024, monster_id = 25030301, pos = { x = -2189.963, y = 200.421, z = -3487.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[11025] = { config_id = 11025, monster_id = 25030301, pos = { x = -2198.205, y = 200.398, z = -3476.040 }, rot = { x = 0.000, y = 74.635, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[11026] = { config_id = 11026, monster_id = 25030301, pos = { x = -2197.816, y = 200.427, z = -3474.099 }, rot = { x = 0.000, y = 95.057, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[11027] = { config_id = 11027, monster_id = 25030301, pos = { x = -2198.139, y = 200.378, z = -3484.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	-- 挑战关专用-2
	[11028] = { config_id = 11028, monster_id = 25100201, pos = { x = -2196.633, y = 200.367, z = -3483.370 }, rot = { x = 0.000, y = 54.979, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009 }, pose_id = 1, area_id = 11 },
	-- 挑战关专用-2
	[11029] = { config_id = 11029, monster_id = 25100101, pos = { x = -2196.349, y = 200.430, z = -3472.108 }, rot = { x = 0.000, y = 100.997, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009 }, pose_id = 1, area_id = 11 },
	-- 挑战关专用-1
	[11030] = { config_id = 11030, monster_id = 25030301, pos = { x = -2187.197, y = 200.398, z = -3487.763 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009 }, area_id = 11 },
	-- 挑战关专用-1
	[11031] = { config_id = 11031, monster_id = 25020201, pos = { x = -2183.565, y = 200.468, z = -3486.418 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009 }, area_id = 11 },
	-- 挑战关专用-1
	[11032] = { config_id = 11032, monster_id = 25020201, pos = { x = -2192.338, y = 200.536, z = -3489.817 }, rot = { x = 0.000, y = 197.340, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009 }, area_id = 11 },
	-- 挑战关专用-1
	[11033] = { config_id = 11033, monster_id = 25030301, pos = { x = -2190.401, y = 200.417, z = -3475.375 }, rot = { x = 0.000, y = 172.637, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009 }, area_id = 11 },
	[11034] = { config_id = 11034, monster_id = 25010401, pos = { x = -2183.156, y = 200.289, z = -3472.442 }, rot = { x = 0.000, y = 200.092, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[11035] = { config_id = 11035, monster_id = 25010401, pos = { x = -2181.305, y = 200.289, z = -3474.638 }, rot = { x = 0.000, y = 230.092, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[11036] = { config_id = 11036, monster_id = 25010601, pos = { x = -2180.425, y = 200.289, z = -3484.481 }, rot = { x = 0.000, y = 273.870, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[11037] = { config_id = 11037, monster_id = 25010401, pos = { x = -2184.540, y = 200.289, z = -3488.409 }, rot = { x = 0.000, y = 318.870, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	-- 挑战关专用-1
	[11038] = { config_id = 11038, monster_id = 25020201, pos = { x = -2191.951, y = 200.356, z = -3473.356 }, rot = { x = 0.000, y = 162.759, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009 }, area_id = 11 },
	-- 挑战关专用-1
	[11039] = { config_id = 11039, monster_id = 25020201, pos = { x = -2188.830, y = 200.447, z = -3473.009 }, rot = { x = 0.000, y = 172.759, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009 }, area_id = 11 },
	[11040] = { config_id = 11040, monster_id = 25010701, pos = { x = -2192.508, y = 200.498, z = -3486.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[11041] = { config_id = 11041, monster_id = 25070101, pos = { x = -2183.631, y = 200.472, z = -3486.304 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[11042] = { config_id = 11042, monster_id = 25010701, pos = { x = -2186.196, y = 200.430, z = -3471.650 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[11043] = { config_id = 11043, monster_id = 25070101, pos = { x = -2194.445, y = 200.349, z = -3474.091 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[11044] = { config_id = 11044, monster_id = 25020201, pos = { x = -2183.156, y = 200.380, z = -3472.442 }, rot = { x = 0.000, y = 200.092, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[11045] = { config_id = 11045, monster_id = 25010201, pos = { x = -2181.305, y = 200.349, z = -3474.638 }, rot = { x = 0.000, y = 230.092, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[11046] = { config_id = 11046, monster_id = 25020201, pos = { x = -2180.534, y = 200.387, z = -3477.489 }, rot = { x = 0.000, y = 245.092, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	-- 挑战关专用-2
	[11050] = { config_id = 11050, monster_id = 25100201, pos = { x = -2189.269, y = 200.393, z = -3488.932 }, rot = { x = 0.000, y = 20.660, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009 }, pose_id = 1, area_id = 11 },
	-- 挑战关专用-2
	[11051] = { config_id = 11051, monster_id = 25100101, pos = { x = -2181.053, y = 200.382, z = -3485.441 }, rot = { x = 0.000, y = 294.680, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009 }, pose_id = 1, area_id = 11 },
	-- 挑战关专用-2
	[11052] = { config_id = 11052, monster_id = 25100201, pos = { x = -2181.352, y = 200.336, z = -3471.878 }, rot = { x = 0.000, y = 236.480, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009 }, pose_id = 1, area_id = 11 },
	-- 挑战关专用-2
	[11053] = { config_id = 11053, monster_id = 25100101, pos = { x = -2187.502, y = 200.415, z = -3469.537 }, rot = { x = 0.000, y = 192.791, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1008, 1009 }, pose_id = 1, area_id = 11 },
	-- 难度3专用
	[11069] = { config_id = 11069, monster_id = 25030201, pos = { x = -2197.888, y = 200.332, z = -3481.927 }, rot = { x = 0.000, y = 59.007, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[11070] = { config_id = 11070, monster_id = 25030201, pos = { x = -2193.227, y = 200.383, z = -3471.249 }, rot = { x = 0.000, y = 157.510, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[11071] = { config_id = 11071, monster_id = 25030201, pos = { x = -2194.047, y = 200.547, z = -3487.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[11072] = { config_id = 11072, monster_id = 25030201, pos = { x = -2190.162, y = 200.394, z = -3472.293 }, rot = { x = 0.000, y = 180.766, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[11073] = { config_id = 11073, monster_id = 25030301, pos = { x = -2189.963, y = 200.421, z = -3487.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[11074] = { config_id = 11074, monster_id = 25030301, pos = { x = -2198.205, y = 200.398, z = -3476.040 }, rot = { x = 0.000, y = 74.635, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[11075] = { config_id = 11075, monster_id = 25030301, pos = { x = -2198.139, y = 200.378, z = -3484.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[11076] = { config_id = 11076, monster_id = 25030301, pos = { x = -2197.816, y = 200.427, z = -3474.099 }, rot = { x = 0.000, y = 95.057, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[11077] = { config_id = 11077, monster_id = 25010201, pos = { x = -2180.425, y = 200.413, z = -3484.481 }, rot = { x = 0.000, y = 273.870, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[11078] = { config_id = 11078, monster_id = 25020201, pos = { x = -2182.017, y = 200.378, z = -3486.872 }, rot = { x = 0.000, y = 303.870, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[11079] = { config_id = 11079, monster_id = 25010201, pos = { x = -2184.540, y = 200.514, z = -3488.409 }, rot = { x = 0.000, y = 318.870, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[11080] = { config_id = 11080, monster_id = 25010401, pos = { x = -2183.156, y = 200.289, z = -3472.442 }, rot = { x = 0.000, y = 200.092, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[11081] = { config_id = 11081, monster_id = 25010401, pos = { x = -2181.305, y = 200.289, z = -3474.638 }, rot = { x = 0.000, y = 230.092, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[11082] = { config_id = 11082, monster_id = 25010601, pos = { x = -2180.425, y = 200.289, z = -3484.481 }, rot = { x = 0.000, y = 273.870, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[11083] = { config_id = 11083, monster_id = 25010401, pos = { x = -2184.540, y = 200.289, z = -3488.409 }, rot = { x = 0.000, y = 318.870, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[11084] = { config_id = 11084, monster_id = 25010701, pos = { x = -2192.508, y = 200.498, z = -3486.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[11085] = { config_id = 11085, monster_id = 25070101, pos = { x = -2183.631, y = 200.472, z = -3486.304 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[11086] = { config_id = 11086, monster_id = 25010701, pos = { x = -2186.196, y = 200.430, z = -3471.650 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[11087] = { config_id = 11087, monster_id = 25070101, pos = { x = -2194.445, y = 200.349, z = -3474.091 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[11088] = { config_id = 11088, monster_id = 25020201, pos = { x = -2183.156, y = 200.380, z = -3472.442 }, rot = { x = 0.000, y = 200.092, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[11089] = { config_id = 11089, monster_id = 25010201, pos = { x = -2181.305, y = 200.349, z = -3474.638 }, rot = { x = 0.000, y = 230.092, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[11090] = { config_id = 11090, monster_id = 25020201, pos = { x = -2180.534, y = 200.387, z = -3477.489 }, rot = { x = 0.000, y = 245.092, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[11011] = { config_id = 11011, gadget_id = 70950060, pos = { x = -2188.346, y = 196.425, z = -3480.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 11 },
	[11012] = { config_id = 11012, gadget_id = 70710001, pos = { x = -2188.100, y = 200.308, z = -3477.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	[11056] = { config_id = 11056, gadget_id = 70330064, pos = { x = -2187.426, y = 200.459, z = -3485.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 11 }
}

-- 区域
regions = {
	[11022] = { config_id = 11022, shape = RegionShape.SPHERE, radius = 27, pos = { x = -2187.972, y = 200.425, z = -3479.096 }, area_id = 11 },
	[11023] = { config_id = 11023, shape = RegionShape.SPHERE, radius = 21, pos = { x = -2188.061, y = 203.962, z = -3479.435 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1011013, name = "GADGET_CREATE_11013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_11013", action = "action_EVENT_GADGET_CREATE_11013", tlog_tag = "2" },
	{ config_id = 1011014, name = "CHALLENGE_SUCCESS_11014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "122", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_11014" },
	{ config_id = 1011015, name = "GADGET_CREATE_11015", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_11015", action = "action_EVENT_GADGET_CREATE_11015", tlog_tag = "1" },
	{ config_id = 1011016, name = "CHALLENGE_FAIL_11016", event = EventType.EVENT_CHALLENGE_FAIL, source = "122", condition = "", action = "action_EVENT_CHALLENGE_FAIL_11016" },
	{ config_id = 1011017, name = "CHALLENGE_SUCCESS_11017", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "111", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_11017" },
	{ config_id = 1011018, name = "CHALLENGE_FAIL_11018", event = EventType.EVENT_CHALLENGE_FAIL, source = "111", condition = "", action = "action_EVENT_CHALLENGE_FAIL_11018" },
	{ config_id = 1011019, name = "GADGET_CREATE_11019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_11019", action = "action_EVENT_GADGET_CREATE_11019", tlog_tag = "3" },
	{ config_id = 1011020, name = "CHALLENGE_SUCCESS_11020", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "133", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_11020" },
	{ config_id = 1011021, name = "CHALLENGE_FAIL_11021", event = EventType.EVENT_CHALLENGE_FAIL, source = "133", condition = "", action = "action_EVENT_CHALLENGE_FAIL_11021" },
	{ config_id = 1011023, name = "LEAVE_REGION_11023", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "", tag = "578" },
	{ config_id = 1011047, name = "GADGET_CREATE_11047", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_11047", action = "action_EVENT_GADGET_CREATE_11047", tlog_tag = "4" },
	{ config_id = 1011048, name = "CHALLENGE_SUCCESS_11048", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "144", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_11048" },
	{ config_id = 1011049, name = "CHALLENGE_FAIL_11049", event = EventType.EVENT_CHALLENGE_FAIL, source = "144", condition = "", action = "action_EVENT_CHALLENGE_FAIL_11049" },
	{ config_id = 1011054, name = "ANY_MONSTER_DIE_11054", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11054", action = "action_EVENT_ANY_MONSTER_DIE_11054", trigger_count = 0 },
	{ config_id = 1011055, name = "ANY_MONSTER_DIE_11055", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11055", action = "action_EVENT_ANY_MONSTER_DIE_11055", trigger_count = 0 },
	{ config_id = 1011060, name = "VARIABLE_CHANGE_11060", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "", trigger_count = 0, tag = "582" },
	{ config_id = 1011061, name = "TIMER_EVENT_11061", event = EventType.EVENT_TIMER_EVENT, source = "first", condition = "", action = "action_EVENT_TIMER_EVENT_11061" },
	{ config_id = 1011062, name = "ANY_MONSTER_LIVE_11062", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_11062", action = "action_EVENT_ANY_MONSTER_LIVE_11062" },
	{ config_id = 1011063, name = "TIMER_EVENT_11063", event = EventType.EVENT_TIMER_EVENT, source = "second", condition = "", action = "action_EVENT_TIMER_EVENT_11063" },
	{ config_id = 1011064, name = "ANY_MONSTER_DIE_11064", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11064", action = "action_EVENT_ANY_MONSTER_DIE_11064", trigger_count = 0 },
	{ config_id = 1011065, name = "ANY_MONSTER_DIE_11065", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11065", action = "action_EVENT_ANY_MONSTER_DIE_11065", trigger_count = 0 },
	{ config_id = 1011066, name = "ANY_MONSTER_DIE_11066", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11066", action = "action_EVENT_ANY_MONSTER_DIE_11066", trigger_count = 0 },
	{ config_id = 1011067, name = "ANY_MONSTER_DIE_11067", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_11067", action = "action_EVENT_ANY_MONSTER_DIE_11067", trigger_count = 0 },
	{ config_id = 1011068, name = "ANY_MONSTER_LIVE_11068", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_11068", action = "action_EVENT_ANY_MONSTER_LIVE_11068" }
}

-- 变量
variables = {
	{ config_id = 1, name = "keymonster", value = 0, no_refresh = false }
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
		gadgets = { 11056 },
		regions = { 11022 },
		triggers = { "ANY_MONSTER_DIE_11054", "ANY_MONSTER_DIE_11055", "ANY_MONSTER_DIE_11064", "ANY_MONSTER_DIE_11065", "ANY_MONSTER_DIE_11066", "ANY_MONSTER_DIE_11067" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 11011, 11012 },
		regions = { 11023 },
		triggers = { "GADGET_CREATE_11015", "CHALLENGE_SUCCESS_11017", "CHALLENGE_FAIL_11018", "LEAVE_REGION_11023", "VARIABLE_CHANGE_11060" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 11011, 11012 },
		regions = { 11023 },
		triggers = { "GADGET_CREATE_11013", "CHALLENGE_SUCCESS_11014", "CHALLENGE_FAIL_11016", "LEAVE_REGION_11023", "VARIABLE_CHANGE_11060" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 11011, 11012 },
		regions = { 11023 },
		triggers = { "GADGET_CREATE_11019", "CHALLENGE_SUCCESS_11020", "CHALLENGE_FAIL_11021", "LEAVE_REGION_11023", "VARIABLE_CHANGE_11060" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 11011, 11012 },
		regions = { 11023 },
		triggers = { "LEAVE_REGION_11023", "GADGET_CREATE_11047", "CHALLENGE_SUCCESS_11048", "CHALLENGE_FAIL_11049", "VARIABLE_CHANGE_11060" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 挑战关专用,
		monsters = { 11004 },
		gadgets = { },
		regions = { },
		triggers = { "TIMER_EVENT_11061", "ANY_MONSTER_LIVE_11062" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 挑战关专用,
		monsters = { 11005 },
		gadgets = { },
		regions = { },
		triggers = { "TIMER_EVENT_11063", "ANY_MONSTER_LIVE_11068" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 挑战关专用,
		monsters = { 11006 },
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
function condition_EVENT_GADGET_CREATE_11013(context, evt)
	if 11011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_11013(context, evt)
	ScriptLib.CreateFatherChallenge(context, 122, 111141, 240, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 122, 101, 111142, {240,defs.group_1,20,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 122, 102, 111143, {25,defs.group_1,20,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 122, 103, 111144, {240,1,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 122)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, defs.group_1, {11007,11008,11024,11025,11009,11010,11026,11027}, 99, 2, 2) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, defs.group_1, {11040,11041,11042,11043}, 99, 2, 2) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, defs.group_1, {11001,11002,11003,11044,11045,11046}, 99, 2, 2) then
		return -1
	end
	
	
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_11014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_11015(context, evt)
	if 11011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_11015(context, evt)
	ScriptLib.CreateFatherChallenge(context, 111, 111141, 300, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 111, 101, 111142, {300,defs.group_1,15,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 111, 102, 111143, {25,defs.group_1,15,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 111, 103, 111144, {300,2,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 111)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, defs.group_1, {11007,11008,11024,11025,11009,11010,11026,11027}, 99, 2, 2) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, defs.group_1, {11040,11041,11042,11043}, 99, 2, 2) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, defs.group_1, {11001,11002,11003,11044,11045,11046}, 99, 2, 2) then
		return -1
	end
	
	
	
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_11016(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_11017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_11018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_11019(context, evt)
	if 11011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_11019(context, evt)
	ScriptLib.CreateFatherChallenge(context, 133, 111141, 180, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 133, 101, 111142, {180,defs.group_1,25,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 133, 102, 111143, {25,defs.group_1,25,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 133, 103, 111165, {180,0,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 133)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, defs.group_1, {11069,11070,11073,11074,11071,11072,11075,11076}, 99, 2, 2) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, defs.group_1, {11084,11085,11086,11087}, 99, 2, 2) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, defs.group_1, {11077,11078,11079,11088,11089,11090}, 99, 2, 2) then
		return -1
	end
	
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_11020(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_11021(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_11047(context, evt)
	if 11011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_11047(context, evt)
	ScriptLib.CreateFatherChallenge(context, 144, 111141, 180, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 144, 101, 111142, {180,defs.group_1,20,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 144, 102, 111145, {180,3,582,4},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 144, 103, 111165, {180,0,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 144)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, defs.group_1, {11030,11031,11032,11033,11038,11039}, 99, 3, 3) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, defs.group_1, {11028,11029,11050,11051,11052,11053}, 99, 2, 2) then
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, defs.group_1, 6)
	
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_11048(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_11049(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209011, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11054(context, evt)
	if 11028 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11054(context, evt)
	-- 针对当前group内变量名为 "keymonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "keymonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11055(context, evt)
	if 11029 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11055(context, evt)
	-- 针对当前group内变量名为 "keymonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "keymonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_11061(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209011, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_11062(context, evt)
	if 11004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_11062(context, evt)
	-- 延迟60秒后,向groupId为：133209011的对象,请求一次调用,并将string参数："first" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133209011, "first", 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_11063(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209011, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11064(context, evt)
	if 11050 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11064(context, evt)
	-- 针对当前group内变量名为 "keymonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "keymonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11065(context, evt)
	if 11051 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11065(context, evt)
	-- 针对当前group内变量名为 "keymonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "keymonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11066(context, evt)
	if 11052 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11066(context, evt)
	-- 针对当前group内变量名为 "keymonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "keymonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_11067(context, evt)
	if 11053 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_11067(context, evt)
	-- 针对当前group内变量名为 "keymonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "keymonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_11068(context, evt)
	if 11005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_11068(context, evt)
	-- 延迟60秒后,向groupId为：133209011的对象,请求一次调用,并将string参数："second" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133209011, "second", 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end
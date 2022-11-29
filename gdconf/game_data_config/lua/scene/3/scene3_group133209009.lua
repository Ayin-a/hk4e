-- 基础信息
local base_info = {
	group_id = 133209009
}

-- DEFS_MISCS
local defs = {
	RegionID =  9023,
	group_1 = 133209009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[9001] = { config_id = 9001, monster_id = 21020401, pos = { x = -2191.033, y = 200.421, z = -3470.839 }, rot = { x = 0.000, y = 171.598, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[9002] = { config_id = 9002, monster_id = 21020401, pos = { x = -2194.316, y = 200.503, z = -3485.004 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[9005] = { config_id = 9005, monster_id = 21020401, pos = { x = -2181.240, y = 200.480, z = -3480.628 }, rot = { x = 0.000, y = 285.688, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[9010] = { config_id = 9010, monster_id = 21011601, pos = { x = -2189.260, y = 200.389, z = -3488.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[9011] = { config_id = 9011, monster_id = 21011601, pos = { x = -2199.197, y = 200.351, z = -3483.626 }, rot = { x = 0.000, y = 60.742, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[9024] = { config_id = 9024, monster_id = 21011601, pos = { x = -2199.217, y = 200.409, z = -3476.903 }, rot = { x = 0.000, y = 114.816, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[9025] = { config_id = 9025, monster_id = 21011601, pos = { x = -2185.333, y = 200.406, z = -3470.878 }, rot = { x = 0.000, y = 183.842, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[9026] = { config_id = 9026, monster_id = 21011601, pos = { x = -2180.720, y = 200.357, z = -3475.707 }, rot = { x = 0.000, y = 237.942, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[9027] = { config_id = 9027, monster_id = 21011601, pos = { x = -2182.996, y = 200.469, z = -3489.491 }, rot = { x = 0.000, y = 322.335, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[9028] = { config_id = 9028, monster_id = 21010201, pos = { x = -2186.036, y = 200.409, z = -3482.458 }, rot = { x = 0.000, y = 321.479, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[9029] = { config_id = 9029, monster_id = 21010201, pos = { x = -2193.394, y = 200.412, z = -3480.707 }, rot = { x = 0.000, y = 37.908, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[9031] = { config_id = 9031, monster_id = 21010201, pos = { x = -2185.909, y = 200.481, z = -3475.031 }, rot = { x = 335.923, y = 223.461, z = 358.039 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[9032] = { config_id = 9032, monster_id = 21010201, pos = { x = -2195.808, y = 200.289, z = -3472.878 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[9033] = { config_id = 9033, monster_id = 21010201, pos = { x = -2181.239, y = 200.336, z = -3471.837 }, rot = { x = 0.000, y = 231.995, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[9034] = { config_id = 9034, monster_id = 21010201, pos = { x = -2192.155, y = 200.271, z = -3476.391 }, rot = { x = 0.000, y = 270.000, z = 127.157 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 11 },
	[9038] = { config_id = 9038, monster_id = 21011001, pos = { x = -2193.992, y = 200.289, z = -3487.130 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 11 },
	[9039] = { config_id = 9039, monster_id = 21011001, pos = { x = -2195.695, y = 200.289, z = -3484.718 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 11 },
	[9041] = { config_id = 9041, monster_id = 21011001, pos = { x = -2181.457, y = 200.288, z = -3485.794 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 11 },
	[9042] = { config_id = 9042, monster_id = 21011001, pos = { x = -2183.729, y = 200.289, z = -3487.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 11 },
	[9044] = { config_id = 9044, monster_id = 21011001, pos = { x = -2178.257, y = 200.289, z = -3476.251 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 11 },
	[9045] = { config_id = 9045, monster_id = 21011001, pos = { x = -2178.217, y = 200.289, z = -3478.803 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 11 },
	[9047] = { config_id = 9047, monster_id = 21011001, pos = { x = -2197.698, y = 200.289, z = -3479.470 }, rot = { x = 0.000, y = 85.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 11 },
	[9048] = { config_id = 9048, monster_id = 21011001, pos = { x = -2197.634, y = 200.289, z = -3477.387 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 11 },
	[9055] = { config_id = 9055, monster_id = 21011001, pos = { x = -2193.992, y = 200.289, z = -3487.130 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 32, area_id = 11 },
	[9056] = { config_id = 9056, monster_id = 21011001, pos = { x = -2195.695, y = 200.289, z = -3484.718 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 32, area_id = 11 },
	[9060] = { config_id = 9060, monster_id = 21011001, pos = { x = -2181.457, y = 200.288, z = -3485.794 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 32, area_id = 11 },
	[9061] = { config_id = 9061, monster_id = 21011001, pos = { x = -2183.729, y = 200.289, z = -3487.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 32, area_id = 11 },
	[9065] = { config_id = 9065, monster_id = 21011001, pos = { x = -2178.257, y = 200.289, z = -3476.251 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 32, area_id = 11 },
	[9066] = { config_id = 9066, monster_id = 21011001, pos = { x = -2178.217, y = 200.289, z = -3478.803 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 32, area_id = 11 },
	[9070] = { config_id = 9070, monster_id = 21011001, pos = { x = -2197.698, y = 200.289, z = -3479.470 }, rot = { x = 0.000, y = 85.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 32, area_id = 11 },
	[9071] = { config_id = 9071, monster_id = 21011001, pos = { x = -2197.634, y = 200.289, z = -3477.387 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 32, area_id = 11 },
	[9072] = { config_id = 9072, monster_id = 21030601, pos = { x = -2191.499, y = 200.289, z = -3488.557 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	[9073] = { config_id = 9073, monster_id = 21010901, pos = { x = -2193.992, y = 200.289, z = -3487.130 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, pose_id = 32, area_id = 11 },
	[9077] = { config_id = 9077, monster_id = 21030601, pos = { x = -2186.115, y = 200.289, z = -3488.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	[9078] = { config_id = 9078, monster_id = 21010901, pos = { x = -2181.457, y = 200.288, z = -3485.794 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, pose_id = 32, area_id = 11 },
	[9082] = { config_id = 9082, monster_id = 21030601, pos = { x = -2179.475, y = 200.289, z = -3474.000 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	[9083] = { config_id = 9083, monster_id = 21010901, pos = { x = -2178.257, y = 200.289, z = -3476.251 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, pose_id = 32, area_id = 11 },
	[9087] = { config_id = 9087, monster_id = 21030601, pos = { x = -2197.227, y = 200.289, z = -3482.460 }, rot = { x = 0.000, y = 65.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	[9088] = { config_id = 9088, monster_id = 21010901, pos = { x = -2197.698, y = 200.289, z = -3479.470 }, rot = { x = 0.000, y = 85.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, pose_id = 32, area_id = 11 },
	-- 挑战关专用
	[9090] = { config_id = 9090, monster_id = 21020801, pos = { x = -2191.033, y = 200.421, z = -3470.839 }, rot = { x = 0.000, y = 171.598, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[9091] = { config_id = 9091, monster_id = 21020801, pos = { x = -2194.316, y = 200.503, z = -3485.004 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[9092] = { config_id = 9092, monster_id = 21020801, pos = { x = -2181.240, y = 200.480, z = -3480.628 }, rot = { x = 0.000, y = 285.688, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[9093] = { config_id = 9093, monster_id = 21011401, pos = { x = -2189.260, y = 200.389, z = -3488.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[9094] = { config_id = 9094, monster_id = 21011401, pos = { x = -2199.197, y = 200.351, z = -3483.626 }, rot = { x = 0.000, y = 60.742, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[9095] = { config_id = 9095, monster_id = 21011401, pos = { x = -2199.217, y = 200.409, z = -3476.903 }, rot = { x = 0.000, y = 114.816, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[9096] = { config_id = 9096, monster_id = 21011401, pos = { x = -2185.333, y = 200.406, z = -3470.878 }, rot = { x = 0.000, y = 183.842, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[9097] = { config_id = 9097, monster_id = 21011401, pos = { x = -2180.720, y = 200.357, z = -3475.707 }, rot = { x = 0.000, y = 237.942, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[9098] = { config_id = 9098, monster_id = 21011401, pos = { x = -2182.996, y = 200.469, z = -3489.491 }, rot = { x = 0.000, y = 322.335, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[9099] = { config_id = 9099, monster_id = 21010701, pos = { x = -2186.036, y = 200.409, z = -3482.458 }, rot = { x = 0.000, y = 321.479, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[9100] = { config_id = 9100, monster_id = 21010701, pos = { x = -2193.394, y = 200.412, z = -3480.707 }, rot = { x = 0.000, y = 37.908, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[9101] = { config_id = 9101, monster_id = 21010701, pos = { x = -2185.909, y = 200.481, z = -3475.031 }, rot = { x = 335.923, y = 223.461, z = 358.039 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[9102] = { config_id = 9102, monster_id = 21010701, pos = { x = -2195.808, y = 200.289, z = -3472.878 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[9103] = { config_id = 9103, monster_id = 21010701, pos = { x = -2181.239, y = 200.336, z = -3471.837 }, rot = { x = 0.000, y = 231.995, z = 0.000 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 挑战关专用
	[9104] = { config_id = 9104, monster_id = 21010701, pos = { x = -2192.155, y = 200.271, z = -3476.391 }, rot = { x = 0.000, y = 270.000, z = 127.157 }, level = 94, drop_id = 1000100, disableWander = true, affix = { 1033, 1009 }, area_id = 11 },
	-- 难度3专用
	[9105] = { config_id = 9105, monster_id = 21020401, pos = { x = -2191.033, y = 200.421, z = -3470.839 }, rot = { x = 0.000, y = 171.598, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[9106] = { config_id = 9106, monster_id = 21020401, pos = { x = -2194.316, y = 200.503, z = -3485.004 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[9107] = { config_id = 9107, monster_id = 21020401, pos = { x = -2181.240, y = 200.480, z = -3480.628 }, rot = { x = 0.000, y = 285.688, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[9108] = { config_id = 9108, monster_id = 21011601, pos = { x = -2189.260, y = 200.389, z = -3488.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[9109] = { config_id = 9109, monster_id = 21011601, pos = { x = -2199.197, y = 200.351, z = -3483.626 }, rot = { x = 0.000, y = 60.742, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[9110] = { config_id = 9110, monster_id = 21011601, pos = { x = -2199.217, y = 200.409, z = -3476.903 }, rot = { x = 0.000, y = 114.816, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[9111] = { config_id = 9111, monster_id = 21011601, pos = { x = -2185.333, y = 200.406, z = -3470.878 }, rot = { x = 0.000, y = 183.842, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[9112] = { config_id = 9112, monster_id = 21011601, pos = { x = -2180.720, y = 200.357, z = -3475.707 }, rot = { x = 0.000, y = 237.942, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[9113] = { config_id = 9113, monster_id = 21011601, pos = { x = -2182.996, y = 200.469, z = -3489.491 }, rot = { x = 0.000, y = 322.335, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[9114] = { config_id = 9114, monster_id = 21010201, pos = { x = -2186.036, y = 200.409, z = -3482.458 }, rot = { x = 0.000, y = 321.479, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[9115] = { config_id = 9115, monster_id = 21010201, pos = { x = -2193.394, y = 200.412, z = -3480.707 }, rot = { x = 0.000, y = 37.908, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[9116] = { config_id = 9116, monster_id = 21010201, pos = { x = -2185.909, y = 200.481, z = -3475.031 }, rot = { x = 335.923, y = 223.461, z = 358.039 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[9117] = { config_id = 9117, monster_id = 21010201, pos = { x = -2195.808, y = 200.289, z = -3472.878 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[9118] = { config_id = 9118, monster_id = 21010201, pos = { x = -2181.239, y = 200.336, z = -3471.837 }, rot = { x = 0.000, y = 231.995, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 },
	-- 难度3专用
	[9119] = { config_id = 9119, monster_id = 21010201, pos = { x = -2192.155, y = 200.271, z = -3476.391 }, rot = { x = 0.000, y = 270.000, z = 127.157 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[9003] = { config_id = 9003, gadget_id = 70950060, pos = { x = -2188.346, y = 196.419, z = -3480.211 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 11 },
	[9004] = { config_id = 9004, gadget_id = 70330065, pos = { x = -2194.462, y = 200.277, z = -3476.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	[9006] = { config_id = 9006, gadget_id = 70330067, pos = { x = -2194.462, y = 200.277, z = -3476.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	[9012] = { config_id = 9012, gadget_id = 70710001, pos = { x = -2187.806, y = 200.309, z = -3477.632 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	[9035] = { config_id = 9035, gadget_id = 70330064, pos = { x = -2187.426, y = 200.459, z = -3485.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 11 }
}

-- 区域
regions = {
	[9022] = { config_id = 9022, shape = RegionShape.SPHERE, radius = 21, pos = { x = -2188.061, y = 203.962, z = -3479.435 }, area_id = 11 },
	[9023] = { config_id = 9023, shape = RegionShape.SPHERE, radius = 27, pos = { x = -2187.972, y = 200.425, z = -3479.096 }, area_id = 11 }
}

-- 触发器
triggers = {
	{ config_id = 1009007, name = "GADGET_CREATE_9007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9007", action = "action_EVENT_GADGET_CREATE_9007", tlog_tag = "4" },
	{ config_id = 1009008, name = "CHALLENGE_SUCCESS_9008", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "644", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_9008" },
	{ config_id = 1009009, name = "CHALLENGE_FAIL_9009", event = EventType.EVENT_CHALLENGE_FAIL, source = "644", condition = "", action = "action_EVENT_CHALLENGE_FAIL_9009" },
	{ config_id = 1009013, name = "GADGET_CREATE_9013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9013", action = "action_EVENT_GADGET_CREATE_9013", tlog_tag = "2" },
	{ config_id = 1009014, name = "GADGET_CREATE_9014", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9014", action = "action_EVENT_GADGET_CREATE_9014", tlog_tag = "1" },
	{ config_id = 1009015, name = "CHALLENGE_SUCCESS_9015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "611", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_9015" },
	{ config_id = 1009016, name = "CHALLENGE_FAIL_9016", event = EventType.EVENT_CHALLENGE_FAIL, source = "611", condition = "", action = "action_EVENT_CHALLENGE_FAIL_9016" },
	{ config_id = 1009017, name = "GADGET_CREATE_9017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9017", action = "action_EVENT_GADGET_CREATE_9017", tlog_tag = "3" },
	{ config_id = 1009018, name = "CHALLENGE_SUCCESS_9018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "622", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_9018" },
	{ config_id = 1009019, name = "CHALLENGE_SUCCESS_9019", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "633", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_9019" },
	{ config_id = 1009020, name = "CHALLENGE_FAIL_9020", event = EventType.EVENT_CHALLENGE_FAIL, source = "622", condition = "", action = "action_EVENT_CHALLENGE_FAIL_9020" },
	{ config_id = 1009021, name = "CHALLENGE_FAIL_9021", event = EventType.EVENT_CHALLENGE_FAIL, source = "633", condition = "", action = "action_EVENT_CHALLENGE_FAIL_9021" },
	{ config_id = 1009022, name = "LEAVE_REGION_9022", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "", tag = "580" },
	{ config_id = 1009030, name = "GADGET_STATE_CHANGE_9030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_9030", action = "action_EVENT_GADGET_STATE_CHANGE_9030" },
	{ config_id = 1009036, name = "ANY_MONSTER_LIVE_9036", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_9036", action = "action_EVENT_ANY_MONSTER_LIVE_9036" },
	{ config_id = 1009049, name = "TIMER_EVENT_9049", event = EventType.EVENT_TIMER_EVENT, source = "R1", condition = "", action = "action_EVENT_TIMER_EVENT_9049" },
	{ config_id = 1009050, name = "ANY_MONSTER_LIVE_9050", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_9050", action = "action_EVENT_ANY_MONSTER_LIVE_9050" },
	{ config_id = 1009051, name = "TIMER_EVENT_9051", event = EventType.EVENT_TIMER_EVENT, source = "R2", condition = "", action = "action_EVENT_TIMER_EVENT_9051" },
	{ config_id = 1009052, name = "ANY_MONSTER_LIVE_9052", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_9052", action = "action_EVENT_ANY_MONSTER_LIVE_9052" },
	{ config_id = 1009053, name = "TIMER_EVENT_9053", event = EventType.EVENT_TIMER_EVENT, source = "R3", condition = "", action = "action_EVENT_TIMER_EVENT_9053" },
	{ config_id = 1009057, name = "ANY_MONSTER_LIVE_9057", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_9057", action = "action_EVENT_ANY_MONSTER_LIVE_9057" },
	{ config_id = 1009058, name = "TIMER_EVENT_9058", event = EventType.EVENT_TIMER_EVENT, source = "R1", condition = "", action = "action_EVENT_TIMER_EVENT_9058" },
	{ config_id = 1009062, name = "ANY_MONSTER_LIVE_9062", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_9062", action = "action_EVENT_ANY_MONSTER_LIVE_9062" },
	{ config_id = 1009063, name = "TIMER_EVENT_9063", event = EventType.EVENT_TIMER_EVENT, source = "R2", condition = "", action = "action_EVENT_TIMER_EVENT_9063" },
	{ config_id = 1009067, name = "ANY_MONSTER_LIVE_9067", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_9067", action = "action_EVENT_ANY_MONSTER_LIVE_9067" },
	{ config_id = 1009068, name = "TIMER_EVENT_9068", event = EventType.EVENT_TIMER_EVENT, source = "R3", condition = "", action = "action_EVENT_TIMER_EVENT_9068" },
	{ config_id = 1009075, name = "ANY_MONSTER_LIVE_9075", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_9075", action = "action_EVENT_ANY_MONSTER_LIVE_9075" },
	{ config_id = 1009076, name = "TIMER_EVENT_9076", event = EventType.EVENT_TIMER_EVENT, source = "R1", condition = "", action = "action_EVENT_TIMER_EVENT_9076" },
	{ config_id = 1009080, name = "ANY_MONSTER_LIVE_9080", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_9080", action = "action_EVENT_ANY_MONSTER_LIVE_9080" },
	{ config_id = 1009081, name = "TIMER_EVENT_9081", event = EventType.EVENT_TIMER_EVENT, source = "R2", condition = "", action = "action_EVENT_TIMER_EVENT_9081" },
	{ config_id = 1009085, name = "ANY_MONSTER_LIVE_9085", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_9085", action = "action_EVENT_ANY_MONSTER_LIVE_9085" },
	{ config_id = 1009086, name = "TIMER_EVENT_9086", event = EventType.EVENT_TIMER_EVENT, source = "R3", condition = "", action = "action_EVENT_TIMER_EVENT_9086" },
	{ config_id = 1009120, name = "ANY_MONSTER_DIE_9120", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9120", action = "action_EVENT_ANY_MONSTER_DIE_9120" },
	{ config_id = 1009121, name = "ANY_MONSTER_DIE_9121", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9121", action = "action_EVENT_ANY_MONSTER_DIE_9121" },
	{ config_id = 1009122, name = "ANY_MONSTER_DIE_9122", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9122", action = "action_EVENT_ANY_MONSTER_DIE_9122" },
	{ config_id = 1009123, name = "ANY_MONSTER_DIE_9123", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9123", action = "action_EVENT_ANY_MONSTER_DIE_9123" },
	{ config_id = 1009124, name = "ANY_MONSTER_DIE_9124", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9124", action = "action_EVENT_ANY_MONSTER_DIE_9124" },
	{ config_id = 1009125, name = "ANY_MONSTER_DIE_9125", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9125", action = "action_EVENT_ANY_MONSTER_DIE_9125" },
	{ config_id = 1009126, name = "ANY_MONSTER_DIE_9126", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9126", action = "action_EVENT_ANY_MONSTER_DIE_9126" },
	{ config_id = 1009127, name = "ANY_MONSTER_DIE_9127", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9127", action = "action_EVENT_ANY_MONSTER_DIE_9127" },
	{ config_id = 1009128, name = "ANY_MONSTER_DIE_9128", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9128", action = "action_EVENT_ANY_MONSTER_DIE_9128" },
	{ config_id = 1009129, name = "VARIABLE_CHANGE_9129", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "", trigger_count = 0, tag = "582" },
	{ config_id = 1009130, name = "VARIABLE_CHANGE_9130", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "", trigger_count = 0, tag = "582" }
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
		gadgets = { 9035 },
		regions = { 9023 },
		triggers = { "ANY_MONSTER_DIE_9120", "ANY_MONSTER_DIE_9121", "ANY_MONSTER_DIE_9122", "ANY_MONSTER_DIE_9123", "ANY_MONSTER_DIE_9124", "ANY_MONSTER_DIE_9125", "ANY_MONSTER_DIE_9126", "ANY_MONSTER_DIE_9127", "ANY_MONSTER_DIE_9128" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 9003, 9004, 9012 },
		regions = { 9022 },
		triggers = { "GADGET_CREATE_9014", "CHALLENGE_SUCCESS_9015", "CHALLENGE_FAIL_9016", "LEAVE_REGION_9022", "GADGET_STATE_CHANGE_9030", "VARIABLE_CHANGE_9129", "VARIABLE_CHANGE_9130" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 9003, 9004, 9012 },
		regions = { 9022 },
		triggers = { "GADGET_CREATE_9013", "CHALLENGE_SUCCESS_9018", "CHALLENGE_FAIL_9020", "LEAVE_REGION_9022", "GADGET_STATE_CHANGE_9030", "VARIABLE_CHANGE_9130" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 9003, 9004, 9012 },
		regions = { 9022 },
		triggers = { "GADGET_CREATE_9017", "CHALLENGE_SUCCESS_9019", "CHALLENGE_FAIL_9021", "LEAVE_REGION_9022", "GADGET_STATE_CHANGE_9030", "VARIABLE_CHANGE_9130" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 9003, 9006, 9012 },
		regions = { 9022 },
		triggers = { "GADGET_CREATE_9007", "CHALLENGE_SUCCESS_9008", "CHALLENGE_FAIL_9009", "LEAVE_REGION_9022", "VARIABLE_CHANGE_9130" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 9038, 9039 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_9036", "TIMER_EVENT_9049" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 9041, 9042 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_9050", "TIMER_EVENT_9051" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 9044, 9045 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_9052", "TIMER_EVENT_9053" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 9047, 9048 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 难度3专用,
		monsters = { 9055, 9056 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_9057", "TIMER_EVENT_9058" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = 难度3专用,
		monsters = { 9060, 9061 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_9062", "TIMER_EVENT_9063" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = 难度3专用,
		monsters = { 9065, 9066 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_9067", "TIMER_EVENT_9068" },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = 难度3专用,
		monsters = { 9070, 9071 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = 挑战关专用,
		monsters = { 9072, 9073 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_9075", "TIMER_EVENT_9076" },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = 挑战关专用,
		monsters = { 9077, 9078 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_9080", "TIMER_EVENT_9081" },
		rand_weight = 100
	},
	{
		-- suite_id = 16,
		-- description = 挑战关专用,
		monsters = { 9082, 9083 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_9085", "TIMER_EVENT_9086" },
		rand_weight = 100
	},
	{
		-- suite_id = 17,
		-- description = 挑战关专用,
		monsters = { 9087, 9088 },
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
function condition_EVENT_GADGET_CREATE_9007(context, evt)
	if 9006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_9007(context, evt)
	ScriptLib.CreateFatherChallenge(context, 644, 111121, 100, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 644, 601, 111122, {100,defs.group_1,20,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 644, 602, 111125, {100,3,582,2},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 644, 603, 111165, {100,0,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 644)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, defs.group_1, {9090,9091,9092}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, defs.group_1, {9093,9094,9095,9096,9097,9098}, 99, 2, 2) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, defs.group_1, {9099,9100,9101,9102,9103,9104}, 99, 1, 1) then
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, defs.group_1, 14)
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_9008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_9009(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_9013(context, evt)
	if 9004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_9013(context, evt)
	ScriptLib.CreateFatherChallenge(context, 622, 111121, 240, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 622, 601, 111122, {240,defs.group_1,20,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 622, 602, 111123, {240,3,582,1},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 622, 603, 111124, {240,1,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 622)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, defs.group_1, {9001,9002,9005}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, defs.group_1, {9010,9011,9024,9025,9026,9027}, 99, 2, 2) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, defs.group_1, {9028,9029,9031,9032,9033,9034}, 99, 2, 2) then
		return -1
	end
	
	-- 添加suite2的新内容
	    --ScriptLib.AddExtraGroupSuite(context, defs.group_1, 6)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_9014(context, evt)
	if 9004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_9014(context, evt)
	ScriptLib.CreateFatherChallenge(context, 611, 111121, 300, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 611, 601, 111122, {300,defs.group_1,15,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 611, 602, 111123, {300,3,582,1},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 611, 603, 111124, {300,2,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 611)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, defs.group_1, {9001,9002,9005}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, defs.group_1, {9010,9011,9024,9025,9026,9027}, 99, 2, 2) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, defs.group_1, {9028,9029,9031,9032,9033,9034}, 99, 2, 2) then
		return -1
	end
	
	-- 添加suite2的新内容
	    --ScriptLib.AddExtraGroupSuite(context, defs.group_1, 6)
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_9015(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_9016(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_9017(context, evt)
	if 9004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_9017(context, evt)
	ScriptLib.CreateFatherChallenge(context, 633, 111121, 180, {success = 2, fail = 1, fail_on_wipe=true})
	
	ScriptLib.AttachChildChallenge(context, 633, 601, 111122, {180,defs.group_1,25,0},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 633, 602, 111123, {180,3,582,2},{},{success=1,fail=1})
	
	ScriptLib.AttachChildChallenge(context, 633, 603, 111165, {180,0,0,0},{},{success=0,fail=1})
	
	ScriptLib.StartFatherChallenge(context, 633)
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, defs.group_1, {9105,9106,9107}, 99, 1, 1) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, defs.group_1, {9108,9109,9110,9111,9112,9113}, 99, 2, 2) then
		return -1
	end
	
	-- 创建编号为502（该怪物潮的识别id)的怪物潮，创建怪物总数为99，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, defs.group_1, {9114,9115,9116,9117,9118,9119}, 99, 2, 2) then
		return -1
	end
	
	-- 添加suite2的新内容
	    --ScriptLib.AddExtraGroupSuite(context, defs.group_1, 10)
	
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_9018(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_9019(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_9020(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_9021(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133209009, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_9030(context, evt)
	if 9006 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_9030(context, evt)
	-- 调用提示id为 30010101 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 30010101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_9036(context, evt)
	if 9037 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_9036(context, evt)
	-- 延迟40秒后,向groupId为：133209009的对象,请求一次调用,并将string参数："R1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133209009, "R1", 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_9049(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209009, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_9050(context, evt)
	if 9040 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_9050(context, evt)
	-- 延迟40秒后,向groupId为：133209009的对象,请求一次调用,并将string参数："R2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133209009, "R2", 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_9051(context, evt)
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209009, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_9052(context, evt)
	if 9043 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_9052(context, evt)
	-- 延迟40秒后,向groupId为：133209009的对象,请求一次调用,并将string参数："R3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133209009, "R3", 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_9053(context, evt)
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209009, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_9057(context, evt)
	if 9054 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_9057(context, evt)
	-- 延迟40秒后,向groupId为：133209009的对象,请求一次调用,并将string参数："R1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133209009, "R1", 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_9058(context, evt)
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209009, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_9062(context, evt)
	if 9059 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_9062(context, evt)
	-- 延迟40秒后,向groupId为：133209009的对象,请求一次调用,并将string参数："R2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133209009, "R2", 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_9063(context, evt)
	-- 添加suite12的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209009, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_9067(context, evt)
	if 9064 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_9067(context, evt)
	-- 延迟40秒后,向groupId为：133209009的对象,请求一次调用,并将string参数："R3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133209009, "R3", 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_9068(context, evt)
	-- 添加suite13的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209009, 13)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_9075(context, evt)
	if 9072 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_9075(context, evt)
	-- 延迟40秒后,向groupId为：133209009的对象,请求一次调用,并将string参数："R1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133209009, "R1", 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_9076(context, evt)
	-- 添加suite15的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209009, 15)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_9080(context, evt)
	if 9077 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_9080(context, evt)
	-- 延迟40秒后,向groupId为：133209009的对象,请求一次调用,并将string参数："R2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133209009, "R2", 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_9081(context, evt)
	-- 添加suite16的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209009, 16)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_9085(context, evt)
	if 9082 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_9085(context, evt)
	-- 延迟40秒后,向groupId为：133209009的对象,请求一次调用,并将string参数："R3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 133209009, "R3", 40) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_9086(context, evt)
	-- 添加suite17的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133209009, 17)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9120(context, evt)
	if 9001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9120(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9121(context, evt)
	if 9002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9121(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9122(context, evt)
	if 9005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9122(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9123(context, evt)
	if 9105 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9123(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9124(context, evt)
	if 9106 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9124(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9125(context, evt)
	if 9107 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9125(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9126(context, evt)
	if 9090 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9126(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9127(context, evt)
	if 9091 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9127(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9128(context, evt)
	if 9092 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9128(context, evt)
	-- 针对当前group内变量名为 "tool_trigger" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "tool_trigger", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end
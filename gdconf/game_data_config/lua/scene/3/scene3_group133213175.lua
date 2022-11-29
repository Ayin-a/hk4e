-- 基础信息
local base_info = {
	group_id = 133213175
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 175002, monster_id = 21011001, pos = { x = -3532.948, y = 200.550, z = -3109.958 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, pose_id = 32, area_id = 12 },
	{ config_id = 175003, monster_id = 21011001, pos = { x = -3530.863, y = 200.171, z = -3104.680 }, rot = { x = 0.000, y = 194.321, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, pose_id = 32, area_id = 12 },
	{ config_id = 175004, monster_id = 21011001, pos = { x = -3533.935, y = 200.521, z = -3106.546 }, rot = { x = 0.000, y = 105.475, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, pose_id = 9013, area_id = 12 },
	{ config_id = 175005, monster_id = 21030601, pos = { x = -3529.976, y = 200.073, z = -3108.121 }, rot = { x = 0.000, y = 293.652, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 },
	{ config_id = 175006, monster_id = 21010401, pos = { x = -3522.021, y = 200.333, z = -3114.568 }, rot = { x = 0.000, y = 188.645, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 },
	{ config_id = 175007, monster_id = 21010401, pos = { x = -3518.919, y = 200.356, z = -3108.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 },
	{ config_id = 175008, monster_id = 21010401, pos = { x = -3522.221, y = 200.321, z = -3110.204 }, rot = { x = 0.000, y = 298.170, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 },
	{ config_id = 175009, monster_id = 21010401, pos = { x = -3517.999, y = 200.325, z = -3112.138 }, rot = { x = 0.000, y = 87.083, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 },
	{ config_id = 175011, monster_id = 21011002, pos = { x = -3528.348, y = 201.250, z = -3128.798 }, rot = { x = 0.000, y = 261.584, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 12 },
	{ config_id = 175012, monster_id = 21011002, pos = { x = -3528.198, y = 201.162, z = -3126.490 }, rot = { x = 0.000, y = 261.584, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 12 },
	{ config_id = 175013, monster_id = 21011002, pos = { x = -3502.712, y = 202.234, z = -3124.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 12 },
	{ config_id = 175014, monster_id = 21011002, pos = { x = -3503.105, y = 202.284, z = -3126.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 12 },
	{ config_id = 175015, monster_id = 21010701, pos = { x = -3531.788, y = 200.446, z = -3110.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 12 },
	{ config_id = 175016, monster_id = 21010701, pos = { x = -3530.077, y = 200.259, z = -3112.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 12 },
	{ config_id = 175018, monster_id = 25100201, pos = { x = -3526.353, y = 201.039, z = -3087.694 }, rot = { x = 0.000, y = 290.418, z = 0.000 }, level = 17, drop_id = 1000100, disableWander = true, pose_id = 1002, area_id = 12 },
	{ config_id = 175020, monster_id = 25080301, pos = { x = -3526.293, y = 200.212, z = -3113.531 }, rot = { x = 0.000, y = 51.300, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 12 },
	{ config_id = 175021, monster_id = 25020201, pos = { x = -3530.000, y = 201.284, z = -3088.323 }, rot = { x = 0.000, y = 51.053, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 12 },
	{ config_id = 175022, monster_id = 25020201, pos = { x = -3528.312, y = 201.502, z = -3083.771 }, rot = { x = 0.000, y = 133.355, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 12 },
	{ config_id = 175024, monster_id = 25020201, pos = { x = -3527.558, y = 200.095, z = -3108.003 }, rot = { x = 0.000, y = 18.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4131 }, area_id = 12 },
	{ config_id = 175025, monster_id = 25080201, pos = { x = -3522.954, y = 200.310, z = -3106.445 }, rot = { x = 0.000, y = 276.868, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4131 }, pose_id = 1, area_id = 12 },
	{ config_id = 175026, monster_id = 25080201, pos = { x = -3524.345, y = 200.309, z = -3102.583 }, rot = { x = 0.000, y = 216.367, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4131 }, pose_id = 1, area_id = 12 },
	{ config_id = 175027, monster_id = 25080301, pos = { x = -3527.979, y = 200.086, z = -3110.664 }, rot = { x = 0.000, y = 252.929, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, pose_id = 1, area_id = 12 },
	{ config_id = 175028, monster_id = 25020201, pos = { x = -3525.239, y = 200.250, z = -3113.560 }, rot = { x = 0.000, y = 180.085, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 },
	{ config_id = 175029, monster_id = 25020201, pos = { x = -3524.786, y = 200.244, z = -3108.563 }, rot = { x = 0.000, y = 3.341, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 },
	{ config_id = 175076, monster_id = 21030103, pos = { x = -3529.765, y = 200.072, z = -3107.365 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 12 },
	{ config_id = 175114, monster_id = 25080201, pos = { x = -3526.660, y = 200.239, z = -3103.081 }, rot = { x = 0.000, y = 245.014, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, pose_id = 1, area_id = 12 },
	{ config_id = 175115, monster_id = 25020201, pos = { x = -3523.007, y = 200.340, z = -3103.311 }, rot = { x = 0.000, y = 201.680, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 },
	{ config_id = 175116, monster_id = 25020201, pos = { x = -3523.154, y = 200.356, z = -3098.291 }, rot = { x = 0.000, y = 3.563, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 },
	{ config_id = 175119, monster_id = 21010401, pos = { x = -3529.082, y = 200.154, z = -3102.796 }, rot = { x = 0.000, y = 221.488, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 },
	{ config_id = 175120, monster_id = 21010401, pos = { x = -3526.997, y = 200.340, z = -3097.518 }, rot = { x = 0.000, y = 36.676, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 },
	{ config_id = 175121, monster_id = 21010401, pos = { x = -3530.069, y = 200.264, z = -3099.384 }, rot = { x = 0.000, y = 259.874, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 },
	{ config_id = 175122, monster_id = 21010401, pos = { x = -3526.110, y = 200.288, z = -3100.959 }, rot = { x = 0.000, y = 100.345, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 175001, gadget_id = 70900380, pos = { x = -3524.556, y = 208.291, z = -3111.982 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 175010, gadget_id = 70900380, pos = { x = -3531.421, y = 208.222, z = -3101.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 175017, gadget_id = 70330064, pos = { x = -3538.594, y = 203.116, z = -3117.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 12 },
	{ config_id = 175023, gadget_id = 70220005, pos = { x = -3520.265, y = 200.537, z = -3088.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 175030, gadget_id = 70220005, pos = { x = -3513.318, y = 200.268, z = -3110.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 175039, gadget_id = 70220005, pos = { x = -3532.793, y = 200.365, z = -3102.609 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 175044, gadget_id = 70330064, pos = { x = -3537.247, y = 201.763, z = -3112.439 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 12 },
	{ config_id = 175045, gadget_id = 70900380, pos = { x = -3527.072, y = 208.408, z = -3095.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 175046, gadget_id = 70900380, pos = { x = -3520.822, y = 208.387, z = -3108.501 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 175047, gadget_id = 70900380, pos = { x = -3532.520, y = 208.408, z = -3107.127 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 175055, gadget_id = 70300107, pos = { x = -3528.546, y = 200.231, z = -3100.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 175056, gadget_id = 70220066, pos = { x = -3523.784, y = 200.449, z = -3093.135 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 175057, gadget_id = 70220066, pos = { x = -3525.262, y = 200.498, z = -3093.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 175058, gadget_id = 70220065, pos = { x = -3524.380, y = 200.408, z = -3094.543 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 175059, gadget_id = 70300101, pos = { x = -3510.822, y = 199.807, z = -3114.778 }, rot = { x = 0.000, y = 330.097, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 175060, gadget_id = 70300101, pos = { x = -3521.549, y = 200.342, z = -3121.077 }, rot = { x = 0.000, y = 330.291, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 175063, gadget_id = 70300083, pos = { x = -3516.377, y = 200.113, z = -3118.233 }, rot = { x = 0.000, y = 327.922, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 175064, gadget_id = 70300106, pos = { x = -3535.863, y = 200.923, z = -3094.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 175065, gadget_id = 70300106, pos = { x = -3535.863, y = 200.818, z = -3097.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 175066, gadget_id = 70300090, pos = { x = -3515.004, y = 200.566, z = -3099.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 175068, gadget_id = 70950092, pos = { x = -3502.380, y = 198.479, z = -3126.151 }, rot = { x = 0.000, y = 276.725, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 175069, gadget_id = 70290060, pos = { x = -3509.495, y = 200.000, z = -3126.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 175070, gadget_id = 70300101, pos = { x = -3528.716, y = 200.248, z = -3095.422 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 175071, gadget_id = 70300106, pos = { x = -3532.157, y = 202.011, z = -3126.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 175072, gadget_id = 70300106, pos = { x = -3532.157, y = 202.168, z = -3129.201 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 175073, gadget_id = 70300083, pos = { x = -3523.001, y = 201.452, z = -3147.830 }, rot = { x = 0.000, y = 290.913, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 175074, gadget_id = 70300083, pos = { x = -3526.623, y = 202.148, z = -3148.637 }, rot = { x = 0.000, y = 58.715, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 175075, gadget_id = 70300083, pos = { x = -3525.211, y = 201.327, z = -3143.915 }, rot = { x = 0.000, y = 351.116, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 175106, gadget_id = 70310009, pos = { x = -3524.600, y = 200.235, z = -3111.938 }, rot = { x = 0.000, y = 0.000, z = 1.653 }, level = 27, area_id = 12 },
	{ config_id = 175107, gadget_id = 70300104, pos = { x = -3524.793, y = 200.306, z = -3116.873 }, rot = { x = 0.000, y = 183.398, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 175108, gadget_id = 70300105, pos = { x = -3532.122, y = 201.689, z = -3085.043 }, rot = { x = 358.198, y = 25.648, z = 352.810 }, level = 27, area_id = 12 },
	{ config_id = 175109, gadget_id = 70220065, pos = { x = -3529.485, y = 201.612, z = -3080.252 }, rot = { x = 0.000, y = 23.297, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 175110, gadget_id = 70220065, pos = { x = -3521.682, y = 200.345, z = -3118.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 175111, gadget_id = 70310006, pos = { x = -3528.552, y = 201.271, z = -3087.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 175034, shape = RegionShape.SPHERE, radius = 50, pos = { x = -3527.652, y = 201.503, z = -3104.509 }, area_id = 12 },
	{ config_id = 175036, shape = RegionShape.SPHERE, radius = 50, pos = { x = -3527.507, y = 200.583, z = -3108.891 }, area_id = 12 },
	{ config_id = 175040, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3527.652, y = 201.503, z = -3104.509 }, area_id = 12 },
	{ config_id = 175042, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3527.652, y = 201.503, z = -3104.509 }, area_id = 12 },
	{ config_id = 175048, shape = RegionShape.SPHERE, radius = 50, pos = { x = -3527.414, y = 200.144, z = -3112.428 }, area_id = 12 },
	{ config_id = 175117, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3527.652, y = 201.503, z = -3104.509 }, area_id = 12 },
	{ config_id = 175123, shape = RegionShape.SPHERE, radius = 50, pos = { x = -3527.652, y = 201.503, z = -3104.509 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1175034, name = "ENTER_REGION_175034", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_175034" },
	{ config_id = 1175035, name = "TIME_AXIS_PASS_175035", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "condition_EVENT_TIME_AXIS_PASS_175035", action = "action_EVENT_TIME_AXIS_PASS_175035" },
	{ config_id = 1175036, name = "ENTER_REGION_175036", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_175036" },
	{ config_id = 1175037, name = "TIME_AXIS_PASS_175037", event = EventType.EVENT_TIME_AXIS_PASS, source = "T2", condition = "condition_EVENT_TIME_AXIS_PASS_175037", action = "action_EVENT_TIME_AXIS_PASS_175037" },
	{ config_id = 1175038, name = "GROUP_LOAD_175038", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_175038", trigger_count = 0 },
	{ config_id = 1175040, name = "ENTER_REGION_175040", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_175040" },
	{ config_id = 1175041, name = "TIME_AXIS_PASS_175041", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "condition_EVENT_TIME_AXIS_PASS_175041", action = "action_EVENT_TIME_AXIS_PASS_175041" },
	{ config_id = 1175042, name = "ENTER_REGION_175042", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_175042" },
	{ config_id = 1175043, name = "TIME_AXIS_PASS_175043", event = EventType.EVENT_TIME_AXIS_PASS, source = "T2", condition = "condition_EVENT_TIME_AXIS_PASS_175043", action = "action_EVENT_TIME_AXIS_PASS_175043" },
	{ config_id = 1175048, name = "ENTER_REGION_175048", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_175048", action = "action_EVENT_ENTER_REGION_175048", forbid_guest = false },
	{ config_id = 1175049, name = "HUNTING_FINISH_FINAL_175049", event = EventType.EVENT_HUNTING_FINISH_FINAL, source = "", condition = "", action = "action_EVENT_HUNTING_FINISH_FINAL_175049" },
	{ config_id = 1175050, name = "VARIABLE_CHANGE_175050", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_175050", action = "action_EVENT_VARIABLE_CHANGE_175050", trigger_count = 0 },
	{ config_id = 1175051, name = "VARIABLE_CHANGE_175051", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_175051", action = "action_EVENT_VARIABLE_CHANGE_175051", trigger_count = 0 },
	{ config_id = 1175052, name = "VARIABLE_CHANGE_175052", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_175052", action = "action_EVENT_VARIABLE_CHANGE_175052", trigger_count = 0 },
	{ config_id = 1175053, name = "VARIABLE_CHANGE_175053", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_175053", action = "action_EVENT_VARIABLE_CHANGE_175053", trigger_count = 0 },
	{ config_id = 1175054, name = "VARIABLE_CHANGE_175054", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_175054", action = "action_EVENT_VARIABLE_CHANGE_175054", trigger_count = 0 },
	{ config_id = 1175061, name = "VARIABLE_CHANGE_175061", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_175061", action = "action_EVENT_VARIABLE_CHANGE_175061", trigger_count = 0 },
	{ config_id = 1175062, name = "VARIABLE_CHANGE_175062", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_175062", action = "action_EVENT_VARIABLE_CHANGE_175062", trigger_count = 0 },
	{ config_id = 1175067, name = "VARIABLE_CHANGE_175067", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_175067", action = "action_EVENT_VARIABLE_CHANGE_175067", trigger_count = 0 },
	{ config_id = 1175113, name = "VARIABLE_CHANGE_175113", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_175113", action = "action_EVENT_VARIABLE_CHANGE_175113", trigger_count = 0 },
	{ config_id = 1175117, name = "ENTER_REGION_175117", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_175117" },
	{ config_id = 1175118, name = "TIME_AXIS_PASS_175118", event = EventType.EVENT_TIME_AXIS_PASS, source = "T3", condition = "condition_EVENT_TIME_AXIS_PASS_175118", action = "action_EVENT_TIME_AXIS_PASS_175118" },
	{ config_id = 1175123, name = "ENTER_REGION_175123", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_175123" },
	{ config_id = 1175124, name = "TIME_AXIS_PASS_175124", event = EventType.EVENT_TIME_AXIS_PASS, source = "T3", condition = "condition_EVENT_TIME_AXIS_PASS_175124", action = "action_EVENT_TIME_AXIS_PASS_175124" }
}

-- 点位
points = {
	-- 首领出生点
	{ config_id = 175112, pos = { x = -3514.032, y = 200.192, z = -3112.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 12 }
}

-- 变量
variables = {
	{ config_id = 1, name = "IS_BOSS_DEAD", value = 0, no_refresh = true }
}

-- 视野组
sight_groups = {
	{ 175002, 175003, 175004, 175005 },
	{ 175006, 175007, 175008, 175009 },
	{ 175119, 175120, 175121, 175122 },
	{ 175024, 175025, 175026 },
	{ 175027, 175028, 175029 },
	{ 175114, 175115, 175116 }
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
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_175038", "HUNTING_FINISH_FINAL_175049" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 雷暴王【链接】【营地摆设】/四星雷斧暴徒,
		monsters = { },
		gadgets = { 175055, 175056, 175057, 175058, 175059, 175060, 175063, 175064, 175065, 175066 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 雷暴王【链接】【小怪组1】,
		monsters = { 175002, 175003, 175004, 175005 },
		gadgets = { },
		regions = { 175034 },
		triggers = { "ENTER_REGION_175034", "TIME_AXIS_PASS_175035", "VARIABLE_CHANGE_175050" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 雷暴王【链接】【小怪组2】,
		monsters = { 175006, 175007, 175008, 175009 },
		gadgets = { },
		regions = { 175036 },
		triggers = { "ENTER_REGION_175036", "TIME_AXIS_PASS_175037", "VARIABLE_CHANGE_175051" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 雷暴王【链接】【小怪组3】,
		monsters = { 175119, 175120, 175121, 175122 },
		gadgets = { },
		regions = { 175123 },
		triggers = { "VARIABLE_CHANGE_175052", "ENTER_REGION_175123", "TIME_AXIS_PASS_175124" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 雷暴王【机关】【小怪组】/四星火斧暴徒,
		monsters = { 175011, 175012, 175013, 175014, 175015, 175016, 175076 },
		gadgets = { 175068, 175069, 175070, 175071, 175072, 175073, 175074, 175075 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_175053" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 雷暴王【机关】【机关组】,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 海乱鬼雷【双子】【双子怪】,
		monsters = { 175018 },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_175054" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 海乱鬼雷【双子】/【脉冲】【营地+小怪组】,
		monsters = { 175020, 175021, 175022 },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_175061" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = 海乱鬼雷【链接】/【双子】/【脉冲】【营地摆设】,
		monsters = { },
		gadgets = { 175106, 175107, 175108, 175109, 175110, 175111 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = 海乱鬼雷【链接】【链接小怪组1】,
		monsters = { 175024, 175025, 175026 },
		gadgets = { },
		regions = { 175040 },
		triggers = { "ENTER_REGION_175040", "TIME_AXIS_PASS_175041", "VARIABLE_CHANGE_175062" },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = 海乱鬼雷【链接】【链接小怪组2】,
		monsters = { 175027, 175028, 175029 },
		gadgets = { },
		regions = { 175042 },
		triggers = { "ENTER_REGION_175042", "TIME_AXIS_PASS_175043", "VARIABLE_CHANGE_175067" },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = 海乱鬼雷【链接】【链接小怪组3】,
		monsters = { 175114, 175115, 175116 },
		gadgets = { },
		regions = { 175117 },
		triggers = { "VARIABLE_CHANGE_175113", "ENTER_REGION_175117", "TIME_AXIS_PASS_175118" },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = 雷暴王【链接】【飞雷核】,
		monsters = { },
		gadgets = { 175001, 175010, 175017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 16,
		-- description = 海乱鬼雷【链接】【高伤炸药桶】,
		monsters = { },
		gadgets = { 175023, 175030, 175039 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 17,
		-- description = 海乱鬼雷【脉冲】【飞雷核】,
		monsters = { },
		gadgets = { 175044, 175045, 175046, 175047 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 18,
		-- description = 链接刷怪提示,
		monsters = { },
		gadgets = { },
		regions = { 175048 },
		triggers = { "ENTER_REGION_175048" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_175034(context, evt)
	-- 创建标识为"T1"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_175035(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_175035(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213175, 4)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213175, 3)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213175, 3)
	
	-- 添加suite18的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213175, 18)
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_175036(context, evt)
	-- 创建标识为"T2"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T2", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_175037(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_175037(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213175, 5)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213175, 4)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213175, 4)
	
	-- 添加suite18的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213175, 18)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_175038(context, evt)
	-- 初始化table
	    local suite_table = {}
	
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	        ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	        return -1
	    end
	
	-- 根据HuntingData表的配置来激活对应的suite
	    if 0~= ScriptLib.GetHuntingMonsterExtraSuiteIndexVec(context) then
	        suite_table = ScriptLib.GetHuntingMonsterExtraSuiteIndexVec(context)
	        for i,suite_id in ipairs (suite_table) do
	            ScriptLib.AddExtraGroupSuite(context, 133213175, suite_id)
	        end
	    end
	
	return 0
	
end

-- 触发操作
function action_EVENT_ENTER_REGION_175040(context, evt)
	-- 创建标识为"T1"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_175041(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_175041(context, evt)
	-- 添加suite13的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213175, 13)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213175, 12)
	
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213175, 12)
	
	-- 添加suite18的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213175, 18)
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_175042(context, evt)
	-- 创建标识为"T2"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T2", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_175043(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_175043(context, evt)
	-- 添加suite14的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213175, 14)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213175, 13)
	
	-- 删除suite13的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213175, 13)
	
	-- 添加suite18的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213175, 18)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_175048(context, evt)
	if evt.param1 ~= 175048 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_175048(context, evt)
	-- 调用提示id为 500070 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 500070) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 删除suite18的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213175, 18)
	
	return 0
end

-- 触发操作
function action_EVENT_HUNTING_FINISH_FINAL_175049(context, evt)
	-- 将本组内变量名为 "IS_BOSS_DEAD" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "IS_BOSS_DEAD", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_175050(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133213175) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_175050(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213175, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_175051(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133213175) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_175051(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213175, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_175052(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133213175) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_175052(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213175, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_175053(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133213175) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_175053(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213175, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_175054(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133213175) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_175054(context, evt)
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213175, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_175061(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133213175) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_175061(context, evt)
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213175, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_175062(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133213175) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_175062(context, evt)
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213175, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_175067(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133213175) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_175067(context, evt)
	-- 删除suite13的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213175, 13)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_175113(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133213175) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_175113(context, evt)
	-- 删除suite14的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213175, 14)
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_175117(context, evt)
	-- 创建标识为"T3"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T3", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_175118(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_175118(context, evt)
	-- 添加suite13的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213175, 13)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213175, 14)
	
	-- 删除suite14的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213175, 14)
	
	-- 添加suite18的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213175, 18)
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_175123(context, evt)
	-- 创建标识为"T3"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T3", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_175124(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_175124(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213175, 4)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213175, 5)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213175, 5)
	
	-- 添加suite18的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213175, 18)
	
	return 0
end

require "V2_0/ElectricCore"
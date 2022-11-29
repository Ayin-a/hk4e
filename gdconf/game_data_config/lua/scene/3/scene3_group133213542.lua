-- 基础信息
local base_info = {
	group_id = 133213542
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 542001, monster_id = 21011001, pos = { x = -3532.989, y = 200.549, z = -3110.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, pose_id = 32, area_id = 12 },
	{ config_id = 542002, monster_id = 21011001, pos = { x = -3530.904, y = 200.169, z = -3104.781 }, rot = { x = 0.000, y = 194.321, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, pose_id = 32, area_id = 12 },
	{ config_id = 542003, monster_id = 21011001, pos = { x = -3533.976, y = 200.520, z = -3106.646 }, rot = { x = 0.000, y = 105.475, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, pose_id = 9013, area_id = 12 },
	{ config_id = 542004, monster_id = 21030601, pos = { x = -3530.017, y = 200.071, z = -3108.222 }, rot = { x = 0.000, y = 293.652, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 },
	{ config_id = 542005, monster_id = 21010401, pos = { x = -3522.062, y = 200.332, z = -3114.669 }, rot = { x = 0.000, y = 188.645, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 },
	{ config_id = 542006, monster_id = 21010401, pos = { x = -3518.960, y = 200.355, z = -3108.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 },
	{ config_id = 542007, monster_id = 21010401, pos = { x = -3522.262, y = 200.320, z = -3110.305 }, rot = { x = 0.000, y = 298.170, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 },
	{ config_id = 542008, monster_id = 21010401, pos = { x = -3518.040, y = 200.323, z = -3112.239 }, rot = { x = 0.000, y = 87.083, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 },
	{ config_id = 542009, monster_id = 21011002, pos = { x = -3528.389, y = 201.249, z = -3128.899 }, rot = { x = 0.000, y = 261.584, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 12 },
	{ config_id = 542010, monster_id = 21011002, pos = { x = -3528.239, y = 201.160, z = -3126.591 }, rot = { x = 0.000, y = 261.584, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 12 },
	{ config_id = 542011, monster_id = 21011002, pos = { x = -3502.753, y = 202.232, z = -3124.553 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 12 },
	{ config_id = 542012, monster_id = 21011002, pos = { x = -3503.146, y = 202.282, z = -3126.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 12 },
	{ config_id = 542013, monster_id = 21010701, pos = { x = -3531.829, y = 200.445, z = -3110.347 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 12 },
	{ config_id = 542014, monster_id = 21010701, pos = { x = -3530.118, y = 200.257, z = -3112.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 12 },
	{ config_id = 542015, monster_id = 25100201, pos = { x = -3526.394, y = 201.037, z = -3087.795 }, rot = { x = 0.000, y = 290.418, z = 0.000 }, level = 17, drop_id = 1000100, disableWander = true, pose_id = 1002, area_id = 12 },
	{ config_id = 542016, monster_id = 25080301, pos = { x = -3526.334, y = 200.210, z = -3113.632 }, rot = { x = 0.000, y = 51.300, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 1, area_id = 12 },
	{ config_id = 542017, monster_id = 25020201, pos = { x = -3530.041, y = 201.283, z = -3088.424 }, rot = { x = 0.000, y = 51.053, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 12 },
	{ config_id = 542018, monster_id = 25020201, pos = { x = -3528.353, y = 201.501, z = -3083.872 }, rot = { x = 0.000, y = 133.355, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 12 },
	{ config_id = 542019, monster_id = 25020201, pos = { x = -3527.599, y = 200.094, z = -3108.104 }, rot = { x = 0.000, y = 18.028, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4131 }, area_id = 12 },
	{ config_id = 542020, monster_id = 25080201, pos = { x = -3522.995, y = 200.308, z = -3106.546 }, rot = { x = 0.000, y = 276.868, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4131 }, pose_id = 1, area_id = 12 },
	{ config_id = 542021, monster_id = 25080201, pos = { x = -3524.386, y = 200.307, z = -3102.684 }, rot = { x = 0.000, y = 216.367, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4131 }, pose_id = 1, area_id = 12 },
	{ config_id = 542022, monster_id = 25080301, pos = { x = -3528.020, y = 200.085, z = -3110.765 }, rot = { x = 0.000, y = 252.929, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, pose_id = 1, area_id = 12 },
	{ config_id = 542023, monster_id = 25020201, pos = { x = -3525.280, y = 200.248, z = -3113.661 }, rot = { x = 0.000, y = 180.085, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 },
	{ config_id = 542024, monster_id = 25020201, pos = { x = -3524.827, y = 200.243, z = -3108.664 }, rot = { x = 0.000, y = 3.341, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 },
	{ config_id = 542025, monster_id = 21030103, pos = { x = -3529.806, y = 200.071, z = -3107.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 12 },
	{ config_id = 542026, monster_id = 25080201, pos = { x = -3526.701, y = 200.238, z = -3103.182 }, rot = { x = 0.000, y = 245.014, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, pose_id = 1, area_id = 12 },
	{ config_id = 542027, monster_id = 25020201, pos = { x = -3523.048, y = 200.339, z = -3103.412 }, rot = { x = 0.000, y = 201.680, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 },
	{ config_id = 542028, monster_id = 25020201, pos = { x = -3523.195, y = 200.355, z = -3098.392 }, rot = { x = 0.000, y = 3.563, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 },
	{ config_id = 542029, monster_id = 21010401, pos = { x = -3529.123, y = 200.152, z = -3102.896 }, rot = { x = 0.000, y = 221.488, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 },
	{ config_id = 542030, monster_id = 21010401, pos = { x = -3527.038, y = 200.338, z = -3097.619 }, rot = { x = 0.000, y = 36.676, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 },
	{ config_id = 542031, monster_id = 21010401, pos = { x = -3530.110, y = 200.263, z = -3099.485 }, rot = { x = 0.000, y = 259.874, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 },
	{ config_id = 542032, monster_id = 21010401, pos = { x = -3526.151, y = 200.287, z = -3101.060 }, rot = { x = 0.000, y = 100.345, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4131 }, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 542033, gadget_id = 70900380, pos = { x = -3524.597, y = 208.289, z = -3112.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 542034, gadget_id = 70900380, pos = { x = -3531.462, y = 208.221, z = -3101.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 542035, gadget_id = 70330064, pos = { x = -3538.635, y = 203.115, z = -3117.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 12 },
	{ config_id = 542036, gadget_id = 70220005, pos = { x = -3520.306, y = 200.535, z = -3088.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 542037, gadget_id = 70220005, pos = { x = -3513.359, y = 200.266, z = -3110.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 542038, gadget_id = 70220005, pos = { x = -3532.834, y = 200.363, z = -3102.709 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 542039, gadget_id = 70330064, pos = { x = -3537.288, y = 201.761, z = -3112.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35, area_id = 12 },
	{ config_id = 542040, gadget_id = 70900380, pos = { x = -3527.113, y = 208.407, z = -3095.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 542041, gadget_id = 70900380, pos = { x = -3520.863, y = 208.385, z = -3108.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 542042, gadget_id = 70900380, pos = { x = -3532.561, y = 208.407, z = -3107.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 12 },
	{ config_id = 542043, gadget_id = 70300107, pos = { x = -3528.587, y = 200.230, z = -3100.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 542044, gadget_id = 70220066, pos = { x = -3523.825, y = 200.447, z = -3093.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 542045, gadget_id = 70220066, pos = { x = -3525.303, y = 200.497, z = -3093.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 542046, gadget_id = 70220065, pos = { x = -3524.421, y = 200.406, z = -3094.644 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 542047, gadget_id = 70300101, pos = { x = -3510.890, y = 199.775, z = -3114.895 }, rot = { x = 0.000, y = 330.097, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 542048, gadget_id = 70300101, pos = { x = -3521.590, y = 200.340, z = -3121.177 }, rot = { x = 0.000, y = 330.291, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 542049, gadget_id = 70300083, pos = { x = -3516.343, y = 200.109, z = -3118.286 }, rot = { x = 0.000, y = 327.922, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 542050, gadget_id = 70300106, pos = { x = -3535.904, y = 200.921, z = -3094.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 542051, gadget_id = 70300106, pos = { x = -3535.904, y = 200.816, z = -3097.716 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 542052, gadget_id = 70300090, pos = { x = -3515.045, y = 200.564, z = -3099.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 542053, gadget_id = 70950092, pos = { x = -3502.421, y = 198.477, z = -3126.251 }, rot = { x = 0.000, y = 276.725, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 542054, gadget_id = 70290060, pos = { x = -3509.536, y = 199.999, z = -3126.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 542055, gadget_id = 70300101, pos = { x = -3528.757, y = 200.246, z = -3095.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 542056, gadget_id = 70300106, pos = { x = -3532.198, y = 202.010, z = -3126.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 542057, gadget_id = 70300106, pos = { x = -3532.198, y = 202.166, z = -3129.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 542058, gadget_id = 70300083, pos = { x = -3523.042, y = 201.451, z = -3147.931 }, rot = { x = 0.000, y = 290.913, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 542059, gadget_id = 70300083, pos = { x = -3526.664, y = 202.146, z = -3148.738 }, rot = { x = 0.000, y = 58.715, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 542060, gadget_id = 70300083, pos = { x = -3525.252, y = 201.326, z = -3144.016 }, rot = { x = 0.000, y = 351.116, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 542061, gadget_id = 70310009, pos = { x = -3524.590, y = 200.218, z = -3111.945 }, rot = { x = 0.000, y = 0.000, z = 1.986 }, level = 27, area_id = 12 },
	{ config_id = 542062, gadget_id = 70300104, pos = { x = -3524.834, y = 200.304, z = -3116.974 }, rot = { x = 0.000, y = 183.398, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 542063, gadget_id = 70300105, pos = { x = -3532.112, y = 201.704, z = -3085.052 }, rot = { x = 358.082, y = 25.648, z = 352.931 }, level = 27, area_id = 12 },
	{ config_id = 542064, gadget_id = 70220065, pos = { x = -3529.526, y = 201.611, z = -3080.353 }, rot = { x = 0.000, y = 23.297, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 542065, gadget_id = 70220065, pos = { x = -3521.723, y = 200.344, z = -3118.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 542066, gadget_id = 70310006, pos = { x = -3528.593, y = 201.270, z = -3087.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
	{ config_id = 542067, shape = RegionShape.SPHERE, radius = 50, pos = { x = -3527.693, y = 201.502, z = -3104.610 }, area_id = 12 },
	{ config_id = 542069, shape = RegionShape.SPHERE, radius = 50, pos = { x = -3527.548, y = 200.581, z = -3108.992 }, area_id = 12 },
	{ config_id = 542072, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3527.693, y = 201.502, z = -3104.610 }, area_id = 12 },
	{ config_id = 542074, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3527.693, y = 201.502, z = -3104.610 }, area_id = 12 },
	{ config_id = 542076, shape = RegionShape.SPHERE, radius = 50, pos = { x = -3527.455, y = 200.143, z = -3112.529 }, area_id = 12 },
	{ config_id = 542087, shape = RegionShape.SPHERE, radius = 40, pos = { x = -3527.693, y = 201.502, z = -3104.610 }, area_id = 12 },
	{ config_id = 542089, shape = RegionShape.SPHERE, radius = 50, pos = { x = -3527.693, y = 201.502, z = -3104.610 }, area_id = 12 }
}

-- 触发器
triggers = {
	{ config_id = 1542067, name = "ENTER_REGION_542067", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_542067" },
	{ config_id = 1542068, name = "TIME_AXIS_PASS_542068", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "condition_EVENT_TIME_AXIS_PASS_542068", action = "action_EVENT_TIME_AXIS_PASS_542068" },
	{ config_id = 1542069, name = "ENTER_REGION_542069", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_542069" },
	{ config_id = 1542070, name = "TIME_AXIS_PASS_542070", event = EventType.EVENT_TIME_AXIS_PASS, source = "T2", condition = "condition_EVENT_TIME_AXIS_PASS_542070", action = "action_EVENT_TIME_AXIS_PASS_542070" },
	{ config_id = 1542071, name = "GROUP_LOAD_542071", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_542071", trigger_count = 0 },
	{ config_id = 1542072, name = "ENTER_REGION_542072", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_542072" },
	{ config_id = 1542073, name = "TIME_AXIS_PASS_542073", event = EventType.EVENT_TIME_AXIS_PASS, source = "T1", condition = "condition_EVENT_TIME_AXIS_PASS_542073", action = "action_EVENT_TIME_AXIS_PASS_542073" },
	{ config_id = 1542074, name = "ENTER_REGION_542074", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_542074" },
	{ config_id = 1542075, name = "TIME_AXIS_PASS_542075", event = EventType.EVENT_TIME_AXIS_PASS, source = "T2", condition = "condition_EVENT_TIME_AXIS_PASS_542075", action = "action_EVENT_TIME_AXIS_PASS_542075" },
	{ config_id = 1542076, name = "ENTER_REGION_542076", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_542076", action = "action_EVENT_ENTER_REGION_542076", forbid_guest = false },
	{ config_id = 1542077, name = "HUNTING_FINISH_FINAL_542077", event = EventType.EVENT_HUNTING_FINISH_FINAL, source = "", condition = "", action = "action_EVENT_HUNTING_FINISH_FINAL_542077" },
	{ config_id = 1542078, name = "VARIABLE_CHANGE_542078", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_542078", action = "action_EVENT_VARIABLE_CHANGE_542078", trigger_count = 0 },
	{ config_id = 1542079, name = "VARIABLE_CHANGE_542079", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_542079", action = "action_EVENT_VARIABLE_CHANGE_542079", trigger_count = 0 },
	{ config_id = 1542080, name = "VARIABLE_CHANGE_542080", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_542080", action = "action_EVENT_VARIABLE_CHANGE_542080", trigger_count = 0 },
	{ config_id = 1542081, name = "VARIABLE_CHANGE_542081", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_542081", action = "action_EVENT_VARIABLE_CHANGE_542081", trigger_count = 0 },
	{ config_id = 1542082, name = "VARIABLE_CHANGE_542082", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_542082", action = "action_EVENT_VARIABLE_CHANGE_542082", trigger_count = 0 },
	{ config_id = 1542083, name = "VARIABLE_CHANGE_542083", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_542083", action = "action_EVENT_VARIABLE_CHANGE_542083", trigger_count = 0 },
	{ config_id = 1542084, name = "VARIABLE_CHANGE_542084", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_542084", action = "action_EVENT_VARIABLE_CHANGE_542084", trigger_count = 0 },
	{ config_id = 1542085, name = "VARIABLE_CHANGE_542085", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_542085", action = "action_EVENT_VARIABLE_CHANGE_542085", trigger_count = 0 },
	{ config_id = 1542086, name = "VARIABLE_CHANGE_542086", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_542086", action = "action_EVENT_VARIABLE_CHANGE_542086", trigger_count = 0 },
	{ config_id = 1542087, name = "ENTER_REGION_542087", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_542087" },
	{ config_id = 1542088, name = "TIME_AXIS_PASS_542088", event = EventType.EVENT_TIME_AXIS_PASS, source = "T3", condition = "condition_EVENT_TIME_AXIS_PASS_542088", action = "action_EVENT_TIME_AXIS_PASS_542088" },
	{ config_id = 1542089, name = "ENTER_REGION_542089", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_542089" },
	{ config_id = 1542090, name = "TIME_AXIS_PASS_542090", event = EventType.EVENT_TIME_AXIS_PASS, source = "T3", condition = "condition_EVENT_TIME_AXIS_PASS_542090", action = "action_EVENT_TIME_AXIS_PASS_542090" }
}

-- 点位
points = {
	-- 首领出生点
	{ config_id = 542091, pos = { x = -3514.073, y = 200.191, z = -3112.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 12 }
}

-- 变量
variables = {
	{ config_id = 1, name = "IS_BOSS_DEAD", value = 0, no_refresh = true }
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
		triggers = { "GROUP_LOAD_542071", "HUNTING_FINISH_FINAL_542077" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 雷暴王【链接】【营地摆设】/四星雷斧暴徒,
		monsters = { },
		gadgets = { 542043, 542044, 542045, 542046, 542047, 542048, 542049, 542050, 542051, 542052 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 雷暴王【链接】【小怪组1】,
		monsters = { 542001, 542002, 542003, 542004 },
		gadgets = { },
		regions = { 542067 },
		triggers = { "ENTER_REGION_542067", "TIME_AXIS_PASS_542068", "VARIABLE_CHANGE_542078" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 雷暴王【链接】【小怪组2】,
		monsters = { 542005, 542006, 542007, 542008 },
		gadgets = { },
		regions = { 542069 },
		triggers = { "ENTER_REGION_542069", "TIME_AXIS_PASS_542070", "VARIABLE_CHANGE_542079" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 雷暴王【链接】【小怪组3】,
		monsters = { 542029, 542030, 542031, 542032 },
		gadgets = { },
		regions = { 542089 },
		triggers = { "VARIABLE_CHANGE_542080", "ENTER_REGION_542089", "TIME_AXIS_PASS_542090" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 雷暴王【机关】【小怪组】/四星火斧暴徒,
		monsters = { 542009, 542010, 542011, 542012, 542013, 542014, 542025 },
		gadgets = { 542053, 542054, 542055, 542056, 542057, 542058, 542059, 542060 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_542081" },
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
		monsters = { 542015 },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_542082" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 海乱鬼雷【双子】/【脉冲】【营地+小怪组】,
		monsters = { 542016, 542017, 542018 },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_542083" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = 海乱鬼雷【链接】/【双子】/【脉冲】【营地摆设】,
		monsters = { },
		gadgets = { 542061, 542062, 542063, 542064, 542065, 542066 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = 海乱鬼雷【链接】【链接小怪组1】,
		monsters = { 542019, 542020, 542021 },
		gadgets = { },
		regions = { 542072 },
		triggers = { "ENTER_REGION_542072", "TIME_AXIS_PASS_542073", "VARIABLE_CHANGE_542084" },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = 海乱鬼雷【链接】【链接小怪组2】,
		monsters = { 542022, 542023, 542024 },
		gadgets = { },
		regions = { 542074 },
		triggers = { "ENTER_REGION_542074", "TIME_AXIS_PASS_542075", "VARIABLE_CHANGE_542085" },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = 海乱鬼雷【链接】【链接小怪组3】,
		monsters = { 542026, 542027, 542028 },
		gadgets = { },
		regions = { 542087 },
		triggers = { "VARIABLE_CHANGE_542086", "ENTER_REGION_542087", "TIME_AXIS_PASS_542088" },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = 雷暴王【链接】【飞雷核】,
		monsters = { },
		gadgets = { 542033, 542034, 542035 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 16,
		-- description = 海乱鬼雷【链接】【高伤炸药桶】,
		monsters = { },
		gadgets = { 542036, 542037, 542038 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 17,
		-- description = 海乱鬼雷【脉冲】【飞雷核】,
		monsters = { },
		gadgets = { 542039, 542040, 542041, 542042 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 18,
		-- description = 链接刷怪提示,
		monsters = { },
		gadgets = { },
		regions = { 542076 },
		triggers = { "ENTER_REGION_542076" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_542067(context, evt)
	-- 创建标识为"T1"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_542068(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_542068(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213542, 4)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213542, 3)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213542, 3)
	
	-- 添加suite18的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213542, 18)
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_542069(context, evt)
	-- 创建标识为"T2"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T2", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_542070(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_542070(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213542, 5)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213542, 4)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213542, 4)
	
	-- 添加suite18的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213542, 18)
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_542071(context, evt)
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
	            ScriptLib.AddExtraGroupSuite(context, 133213542, suite_id)
	        end
	    end
	
	return 0
	
end

-- 触发操作
function action_EVENT_ENTER_REGION_542072(context, evt)
	-- 创建标识为"T1"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T1", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_542073(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_542073(context, evt)
	-- 添加suite13的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213542, 13)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213542, 12)
	
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213542, 12)
	
	-- 添加suite18的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213542, 18)
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_542074(context, evt)
	-- 创建标识为"T2"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T2", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_542075(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_542075(context, evt)
	-- 添加suite14的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213542, 14)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213542, 13)
	
	-- 删除suite13的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213542, 13)
	
	-- 添加suite18的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213542, 18)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_542076(context, evt)
	if evt.param1 ~= 542076 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_542076(context, evt)
	-- 调用提示id为 500070 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 500070) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 删除suite18的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213542, 18)
	
	return 0
end

-- 触发操作
function action_EVENT_HUNTING_FINISH_FINAL_542077(context, evt)
	-- 将本组内变量名为 "IS_BOSS_DEAD" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "IS_BOSS_DEAD", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_542078(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133213542) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_542078(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213542, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_542079(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133213542) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_542079(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213542, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_542080(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133213542) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_542080(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213542, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_542081(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133213542) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_542081(context, evt)
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213542, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_542082(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133213542) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_542082(context, evt)
	-- 删除suite9的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213542, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_542083(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133213542) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_542083(context, evt)
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213542, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_542084(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133213542) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_542084(context, evt)
	-- 删除suite12的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213542, 12)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_542085(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133213542) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_542085(context, evt)
	-- 删除suite13的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213542, 13)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_542086(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"IS_BOSS_DEAD"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "IS_BOSS_DEAD", 133213542) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_542086(context, evt)
	-- 删除suite14的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213542, 14)
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_542087(context, evt)
	-- 创建标识为"T3"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T3", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_542088(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_542088(context, evt)
	-- 添加suite13的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213542, 13)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213542, 14)
	
	-- 删除suite14的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213542, 14)
	
	-- 添加suite18的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213542, 18)
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_542089(context, evt)
	-- 创建标识为"T3"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "T3", {60}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_542090(context, evt)
	-- 判断变量"IS_BOSS_DEAD"为0
	if ScriptLib.GetGroupVariableValue(context, "IS_BOSS_DEAD") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_542090(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213542, 4)
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133213542, 5)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133213542, 5)
	
	-- 添加suite18的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133213542, 18)
	
	return 0
end

require "V2_0/ElectricCore"
-- 基础信息
local base_info = {
	group_id = 166001630
}

-- Trigger变量
local defs = {
	pursina = 630015,
	pursina_tip = 630087,
	fail_region = 630038,
	enemy_gadget = 630092
}

-- DEFS_MISCS
local mud_list = {
	[630009] = 630063,
	[630012] = 630062,
	[630023] = 630028,

}
local extra_infos = {
	start_operator = 630002,
	mud_cover = 630096,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 630022, monster_id = 20010601, pos = { x = 987.675, y = 737.592, z = 400.099 }, rot = { x = 0.000, y = 39.451, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630026, monster_id = 20011501, pos = { x = 988.690, y = 737.584, z = 404.143 }, rot = { x = 0.000, y = 36.480, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630027, monster_id = 20011401, pos = { x = 986.867, y = 737.708, z = 404.911 }, rot = { x = 0.000, y = 43.401, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630031, monster_id = 20011001, pos = { x = 988.310, y = 737.582, z = 403.299 }, rot = { x = 0.000, y = 28.493, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630039, monster_id = 20011201, pos = { x = 999.036, y = 737.404, z = 416.895 }, rot = { x = 0.000, y = 195.116, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630040, monster_id = 20011301, pos = { x = 996.261, y = 738.206, z = 401.056 }, rot = { x = 0.000, y = 342.070, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630041, monster_id = 20011401, pos = { x = 1000.133, y = 737.720, z = 402.696 }, rot = { x = 0.000, y = 344.600, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630042, monster_id = 20011001, pos = { x = 997.572, y = 738.374, z = 399.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630046, monster_id = 20011401, pos = { x = 997.697, y = 737.451, z = 416.192 }, rot = { x = 0.000, y = 191.372, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630049, monster_id = 21010701, pos = { x = 1001.261, y = 737.389, z = 417.732 }, rot = { x = 0.000, y = 226.795, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630050, monster_id = 21010701, pos = { x = 1002.735, y = 737.389, z = 416.165 }, rot = { x = 0.000, y = 244.785, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630051, monster_id = 21010301, pos = { x = 986.479, y = 737.710, z = 403.465 }, rot = { x = 0.000, y = 39.142, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630052, monster_id = 21011201, pos = { x = 987.902, y = 737.581, z = 401.904 }, rot = { x = 0.000, y = 50.298, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630053, monster_id = 20010901, pos = { x = 1000.643, y = 737.389, z = 415.663 }, rot = { x = 0.000, y = 222.196, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630054, monster_id = 20011401, pos = { x = 1001.094, y = 737.389, z = 414.518 }, rot = { x = 0.000, y = 221.277, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630055, monster_id = 21010401, pos = { x = 998.493, y = 738.345, z = 400.120 }, rot = { x = 0.000, y = 342.700, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630056, monster_id = 21010401, pos = { x = 999.998, y = 738.178, z = 401.422 }, rot = { x = 0.000, y = 342.700, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630057, monster_id = 21020201, pos = { x = 988.301, y = 737.567, z = 402.326 }, rot = { x = 0.000, y = 50.366, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630058, monster_id = 21020701, pos = { x = 999.591, y = 738.392, z = 400.012 }, rot = { x = 0.000, y = 340.773, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630059, monster_id = 21030101, pos = { x = 1000.849, y = 737.389, z = 417.258 }, rot = { x = 0.000, y = 224.918, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630070, monster_id = 21030301, pos = { x = 999.815, y = 737.392, z = 415.026 }, rot = { x = 0.000, y = 196.644, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630071, monster_id = 20010601, pos = { x = 997.942, y = 737.456, z = 417.962 }, rot = { x = 0.000, y = 190.595, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630072, monster_id = 20011001, pos = { x = 996.597, y = 737.586, z = 417.404 }, rot = { x = 0.000, y = 191.432, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630073, monster_id = 21030101, pos = { x = 988.600, y = 737.586, z = 404.106 }, rot = { x = 0.000, y = 35.930, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630074, monster_id = 21030501, pos = { x = 998.709, y = 738.021, z = 400.749 }, rot = { x = 0.000, y = 340.338, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630077, monster_id = 20011501, pos = { x = 1001.939, y = 737.389, z = 415.659 }, rot = { x = 0.000, y = 221.471, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630078, monster_id = 22070201, pos = { x = 1001.118, y = 737.389, z = 418.365 }, rot = { x = 0.000, y = 190.690, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 101, area_id = 300 },
	{ config_id = 630082, monster_id = 20011501, pos = { x = 999.123, y = 738.091, z = 401.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, affix = { 1007 }, area_id = 300 },
	{ config_id = 630097, monster_id = 22070101, pos = { x = 987.312, y = 737.609, z = 401.355 }, rot = { x = 0.000, y = 40.189, z = 0.000 }, level = 36, drop_id = 1000100, pose_id = 101, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 630002, gadget_id = 70360001, pos = { x = 994.250, y = 737.507, z = 407.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 630009, gadget_id = 70290204, pos = { x = 1000.843, y = 738.628, z = 398.216 }, rot = { x = 13.165, y = 0.578, z = 2.745 }, level = 1, area_id = 300 },
	-- 对应630009
	{ config_id = 630010, gadget_id = 70290266, pos = { x = 1000.957, y = 738.673, z = 398.045 }, rot = { x = 13.428, y = 345.940, z = 359.361 }, level = 1, area_id = 300 },
	-- 第二波左侧黑泥白盒
	{ config_id = 630011, gadget_id = 70290233, pos = { x = 1001.480, y = 738.324, z = 399.653 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 630012, gadget_id = 70290204, pos = { x = 980.989, y = 738.038, z = 398.224 }, rot = { x = 359.881, y = 0.081, z = 354.710 }, level = 1, area_id = 300 },
	{ config_id = 630015, gadget_id = 70800224, pos = { x = 994.300, y = 737.506, z = 407.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 300 },
	-- 第二波前方黑泥白盒
	{ config_id = 630021, gadget_id = 70290233, pos = { x = 986.234, y = 737.677, z = 405.778 }, rot = { x = 0.207, y = 271.373, z = 17.390 }, level = 1, area_id = 300 },
	{ config_id = 630023, gadget_id = 70290204, pos = { x = 1001.539, y = 737.476, z = 422.927 }, rot = { x = 1.380, y = 61.271, z = 357.059 }, level = 1, area_id = 300 },
	-- 对应630023
	{ config_id = 630028, gadget_id = 70290233, pos = { x = 999.416, y = 737.751, z = 422.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 左侧落石
	{ config_id = 630032, gadget_id = 70290276, pos = { x = 1001.048, y = 770.904, z = 398.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 前方落石
	{ config_id = 630033, gadget_id = 70290276, pos = { x = 981.144, y = 770.063, z = 398.298 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 630034, gadget_id = 70290353, pos = { x = 976.190, y = 742.959, z = 401.529 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 630035, gadget_id = 70290353, pos = { x = 986.763, y = 743.723, z = 416.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 左侧喷气岩
	{ config_id = 630036, gadget_id = 70290200, pos = { x = 1008.439, y = 738.671, z = 406.852 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 630037, gadget_id = 70290353, pos = { x = 999.323, y = 742.666, z = 388.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 第二波后方黑泥白盒
	{ config_id = 630043, gadget_id = 70290233, pos = { x = 1000.648, y = 737.411, z = 421.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 后方落石
	{ config_id = 630044, gadget_id = 70290276, pos = { x = 1001.642, y = 769.855, z = 423.113 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 630048, gadget_id = 70290353, pos = { x = 994.573, y = 740.647, z = 424.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 对应630012
	{ config_id = 630060, gadget_id = 70290266, pos = { x = 981.103, y = 738.019, z = 398.030 }, rot = { x = 358.221, y = 0.097, z = 353.758 }, level = 1, area_id = 300 },
	-- 对应630023
	{ config_id = 630061, gadget_id = 70290266, pos = { x = 1001.483, y = 737.466, z = 422.725 }, rot = { x = 356.430, y = 0.112, z = 356.424 }, level = 1, area_id = 300 },
	-- 对应630012
	{ config_id = 630062, gadget_id = 70290233, pos = { x = 981.217, y = 738.207, z = 400.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 对应630009
	{ config_id = 630063, gadget_id = 70290233, pos = { x = 1003.735, y = 738.400, z = 399.765 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 废弃
	{ config_id = 630064, gadget_id = 70290233, pos = { x = 999.416, y = 737.751, z = 422.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 前方喷气岩
	{ config_id = 630068, gadget_id = 70290200, pos = { x = 971.797, y = 740.260, z = 394.186 }, rot = { x = 0.000, y = 135.421, z = 0.000 }, level = 1, area_id = 300 },
	-- 后方喷气岩
	{ config_id = 630076, gadget_id = 70290200, pos = { x = 997.036, y = 740.353, z = 429.466 }, rot = { x = 357.477, y = 11.691, z = 1.315 }, level = 1, area_id = 300 },
	{ config_id = 630087, gadget_id = 70800222, pos = { x = 994.300, y = 737.506, z = 407.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	{ config_id = 630092, gadget_id = 70800227, pos = { x = 994.250, y = 737.507, z = 407.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 300 },
	-- 光钉黑泥包裹物
	{ config_id = 630096, gadget_id = 70360342, pos = { x = 994.313, y = 736.654, z = 407.820 }, rot = { x = 0.000, y = 349.652, z = 0.000 }, level = 1, area_id = 300 }
}

-- 区域
regions = {
	-- ShowTemplateReminder
	{ config_id = 630001, shape = RegionShape.SPHERE, radius = 10, pos = { x = 994.299, y = 737.623, z = 407.819 }, area_id = 300 },
	-- fail_region
	{ config_id = 630038, shape = RegionShape.CYLINDER, radius = 60, pos = { x = 994.300, y = 737.506, z = 407.819 }, height = 150.000, area_id = 300 }
}

-- 触发器
triggers = {
	-- ShowTemplateReminder
	{ config_id = 1630001, name = "ENTER_REGION_630001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_630001", action = "action_EVENT_ENTER_REGION_630001" },
	-- 怪死光，创生岩柱 
	{ config_id = 1630007, name = "ANY_MONSTER_DIE_630007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_630007", action = "action_EVENT_ANY_MONSTER_DIE_630007" },
	-- 怪死光 计时
	{ config_id = 1630008, name = "ANY_MONSTER_DIE_630008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_630008", action = "action_EVENT_ANY_MONSTER_DIE_630008" },
	-- 4s 岩柱落地，生成630009
	{ config_id = 1630013, name = "TIME_AXIS_PASS_630013", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave1Delay", condition = "condition_EVENT_TIME_AXIS_PASS_630013", action = "action_EVENT_TIME_AXIS_PASS_630013" },
	{ config_id = 1630016, name = "ANY_MONSTER_DIE_630016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_630016", action = "action_EVENT_ANY_MONSTER_DIE_630016" },
	{ config_id = 1630017, name = "ANY_MONSTER_DIE_630017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_630017", action = "action_EVENT_ANY_MONSTER_DIE_630017" },
	{ config_id = 1630018, name = "ANY_MONSTER_DIE_630018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_630018", action = "action_EVENT_ANY_MONSTER_DIE_630018" },
	-- 怪杀完 计时
	{ config_id = 1630019, name = "ANY_MONSTER_DIE_630019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_630019", action = "action_EVENT_ANY_MONSTER_DIE_630019" },
	{ config_id = 1630020, name = "ANY_MONSTER_DIE_630020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_630020", action = "action_EVENT_ANY_MONSTER_DIE_630020" },
	-- 3s 生成630009
	{ config_id = 1630029, name = "TIME_AXIS_PASS_630029", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave3Delay", condition = "condition_EVENT_TIME_AXIS_PASS_630029", action = "action_EVENT_TIME_AXIS_PASS_630029" },
	-- 16s 第二波怪延时入场
	{ config_id = 1630047, name = "TIME_AXIS_PASS_630047", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave1Delay", condition = "condition_EVENT_TIME_AXIS_PASS_630047", action = "action_EVENT_TIME_AXIS_PASS_630047" },
	-- 15s 延时加入第三波怪
	{ config_id = 1630067, name = "TIME_AXIS_PASS_630067", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave2Delay", condition = "condition_EVENT_TIME_AXIS_PASS_630067", action = "action_EVENT_TIME_AXIS_PASS_630067" },
	-- 3s 岩柱开始下落 
	{ config_id = 1630069, name = "TIME_AXIS_PASS_630069", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave1Delay", condition = "condition_EVENT_TIME_AXIS_PASS_630069", action = "action_EVENT_TIME_AXIS_PASS_630069" },
	-- 4s 岩柱落地，生成630012
	{ config_id = 1630075, name = "TIME_AXIS_PASS_630075", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave1Delay", condition = "condition_EVENT_TIME_AXIS_PASS_630075", action = "action_EVENT_TIME_AXIS_PASS_630075" },
	-- 4s 岩柱落地，生成630023
	{ config_id = 1630079, name = "TIME_AXIS_PASS_630079", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave1Delay", condition = "condition_EVENT_TIME_AXIS_PASS_630079", action = "action_EVENT_TIME_AXIS_PASS_630079" },
	-- 15s 加怪
	{ config_id = 1630081, name = "TIME_AXIS_PASS_630081", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave3Delay", condition = "condition_EVENT_TIME_AXIS_PASS_630081", action = "action_EVENT_TIME_AXIS_PASS_630081" },
	-- 3s 生成630009
	{ config_id = 1630084, name = "TIME_AXIS_PASS_630084", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave2Delay", condition = "condition_EVENT_TIME_AXIS_PASS_630084", action = "action_EVENT_TIME_AXIS_PASS_630084" },
	-- 3s 生成630012
	{ config_id = 1630085, name = "TIME_AXIS_PASS_630085", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave2Delay", condition = "condition_EVENT_TIME_AXIS_PASS_630085", action = "action_EVENT_TIME_AXIS_PASS_630085" },
	-- 3s 生成630023
	{ config_id = 1630086, name = "TIME_AXIS_PASS_630086", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave2Delay", condition = "condition_EVENT_TIME_AXIS_PASS_630086", action = "action_EVENT_TIME_AXIS_PASS_630086" },
	-- 3s 生成630012
	{ config_id = 1630088, name = "TIME_AXIS_PASS_630088", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave3Delay", condition = "condition_EVENT_TIME_AXIS_PASS_630088", action = "action_EVENT_TIME_AXIS_PASS_630088" },
	-- 3s 生成630023
	{ config_id = 1630089, name = "TIME_AXIS_PASS_630089", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave3Delay", condition = "condition_EVENT_TIME_AXIS_PASS_630089", action = "action_EVENT_TIME_AXIS_PASS_630089" }
}

-- 变量
variables = {
	{ config_id = 1, name = "reminded", value = 1, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1630003, name = "GADGET_CREATE_630003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_630003", action = "action_EVENT_GADGET_CREATE_630003" },
		{ config_id = 1630004, name = "SELECT_OPTION_630004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_630004", action = "action_EVENT_SELECT_OPTION_630004", trigger_count = 0 },
		{ config_id = 1630005, name = "CHALLENGE_SUCCESS_630005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_630005" },
		{ config_id = 1630006, name = "CHALLENGE_FAIL_630006", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_630006" },
		{ config_id = 1630014, name = "TIME_AXIS_PASS_630014", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave1Delay", condition = "", action = "" },
		{ config_id = 1630024, name = "ANY_GADGET_DIE_630024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_630024", action = "action_EVENT_ANY_GADGET_DIE_630024", trigger_count = 0 },
		{ config_id = 1630025, name = "ANY_GADGET_DIE_630025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_630025", action = "action_EVENT_ANY_GADGET_DIE_630025", trigger_count = 0 },
		{ config_id = 1630030, name = "TIME_AXIS_PASS_630030", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave3Delay", condition = "", action = "" },
		{ config_id = 1630045, name = "TIME_AXIS_PASS_630045", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave1Delay", condition = "", action = "" },
		{ config_id = 1630065, name = "TIME_AXIS_PASS_630065", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave2Delay", condition = "", action = "" },
		{ config_id = 1630066, name = "TIME_AXIS_PASS_630066", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave2Delay", condition = "", action = "" },
		{ config_id = 1630080, name = "TIME_AXIS_PASS_630080", event = EventType.EVENT_TIME_AXIS_PASS, source = "wave3Delay", condition = "", action = "" },
		{ config_id = 1630083, name = "ANY_GADGET_DIE_630083", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_630083", action = "action_EVENT_ANY_GADGET_DIE_630083", trigger_count = 0 },
		{ config_id = 1630090, name = "ANY_GADGET_DIE_630090", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_630090", action = "action_EVENT_ANY_GADGET_DIE_630090", trigger_count = 0 },
		{ config_id = 1630091, name = "TIME_AXIS_PASS_630091", event = EventType.EVENT_TIME_AXIS_PASS, source = "pursinaDelay", condition = "condition_EVENT_TIME_AXIS_PASS_630091", action = "action_EVENT_TIME_AXIS_PASS_630091", trigger_count = 0 },
		{ config_id = 1630094, name = "GADGET_CREATE_630094", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_630094", action = "action_EVENT_GADGET_CREATE_630094" },
		{ config_id = 1630095, name = "GADGET_CREATE_630095", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_630095", action = "action_EVENT_GADGET_CREATE_630095", trigger_count = 0 }
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
	end_suite = 10,
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
		-- description = start_suite,
		monsters = { },
		gadgets = { 630002, 630015, 630034, 630035, 630036, 630037, 630048, 630087 },
		regions = { 630001, 630038 },
		triggers = { "ENTER_REGION_630001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 第一波前半,
		monsters = { 630022, 630031, 630040, 630042, 630053 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_630016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波后半,
		monsters = { 630026, 630027, 630041, 630054, 630077, 630082 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_630007", "TIME_AXIS_PASS_630013", "TIME_AXIS_PASS_630047", "TIME_AXIS_PASS_630069", "TIME_AXIS_PASS_630075", "TIME_AXIS_PASS_630079" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 第二波前半,
		monsters = { 630049, 630050, 630051, 630052, 630055, 630056 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_630017" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二波后半,
		monsters = { 630057, 630058, 630059 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_630008", "TIME_AXIS_PASS_630067", "TIME_AXIS_PASS_630084", "TIME_AXIS_PASS_630085", "TIME_AXIS_PASS_630086" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波前半,
		monsters = { 630070, 630073, 630074 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_630018" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 第三波后半,
		monsters = { 630039, 630046, 630071, 630072 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_630019", "TIME_AXIS_PASS_630029", "TIME_AXIS_PASS_630081", "TIME_AXIS_PASS_630088", "TIME_AXIS_PASS_630089" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 第四波,
		monsters = { 630078, 630097 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_630020" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 630009, 630010, 630011, 630012, 630021, 630023, 630028, 630032, 630033, 630043, 630044, 630060, 630061, 630062, 630063, 630064, 630068, 630076, 630096 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = end_suite,
		monsters = { },
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
function condition_EVENT_ENTER_REGION_630001(context, evt)
	if evt.param1 ~= 630001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_630001(context, evt)
	-- 显示id为181的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,181,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_630007(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 166001630) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_630007(context, evt)
	-- 创建id为630032的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 630032 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为630033的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 630033 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为630044的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 630044 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建标识为"wave1Delay"，时间节点为{3,4,5,6,16}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wave1Delay", {3,4,5,6,16}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_630008(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 166001630) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_630008(context, evt)
	-- 创建标识为"wave2Delay"，时间节点为{3,7,11,15}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wave2Delay", {3,7,11,15}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_630013(context, evt)
	if "wave1Delay" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_630013(context, evt)
	-- 创建id为630010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 630010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为630009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 630009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为630063的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 630063 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_630016(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 166001630) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_630016(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001630, 3)
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001630, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_630017(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 166001630) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_630017(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001630, 5)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001630, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_630018(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 166001630) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_630018(context, evt)
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001630, 7)
	
	-- 删除suite6的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001630, 6)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_630019(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 166001630) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_630019(context, evt)
	-- 创建标识为"wave3Delay"，时间节点为{3,5,7,15}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "wave3Delay", {3,5,7,15}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_630020(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 166001630) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_630020(context, evt)
	-- 删除suite8的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001630, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_630029(context, evt)
	if "wave3Delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001630, 630009) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_630029(context, evt)
	-- 创建id为630009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 630009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为630063的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 630063 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_630047(context, evt)
	if "wave1Delay" ~= evt.source_name or 5 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_630047(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001630, 4)
	
	-- 调用提示id为 400013 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001630, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_630067(context, evt)
	if "wave2Delay" ~= evt.source_name or 4 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_630067(context, evt)
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001630, 6)
	
	-- 调用提示id为 400014 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400014) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001630, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_630069(context, evt)
	if "wave1Delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_630069(context, evt)
	-- 将configid为 630032 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 630032, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 630033 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 630033, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 630044 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 630044, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_630075(context, evt)
	if "wave1Delay" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_630075(context, evt)
	-- 创建id为630060的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 630060 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为630012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 630012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为630062的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 630062 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_630079(context, evt)
	if "wave1Delay" ~= evt.source_name or 2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_630079(context, evt)
	-- 创建id为630061的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 630061 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为630023的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 630023 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为630028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 630028 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_630081(context, evt)
	if "wave3Delay" ~= evt.source_name or 3 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_630081(context, evt)
	-- 调用提示id为 400015 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 400015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 166001630, 8)
	
	-- 删除suite7的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 166001630, 7)
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_630084(context, evt)
	if "wave2Delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001630, 630009) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_630084(context, evt)
	-- 创建id为630009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 630009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为630063的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 630063 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_630085(context, evt)
	if "wave2Delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001630, 630012) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_630085(context, evt)
	-- 创建id为630012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 630012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为630062的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 630062 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_630086(context, evt)
	if "wave2Delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001630, 630023) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_630086(context, evt)
	-- 创建id为630023的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 630023 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为630028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 630028 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_630088(context, evt)
	if "wave3Delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001630, 630012) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_630088(context, evt)
	-- 创建id为630012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 630012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为630062的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 630062 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_630089(context, evt)
	if "wave3Delay" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	if -1 ~= ScriptLib.GetGadgetStateByConfigId(context, 166001630, 630023) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_630089(context, evt)
	-- 创建id为630023的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 630023 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为630028的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 630028 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_6/DropRockAbyssBulletTrigger"
require "V2_7/Activity_LumenWipeout"
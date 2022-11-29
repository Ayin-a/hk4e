-- 基础信息
local base_info = {
	group_id = 144004091
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 触发靶标出现的开关
	{ config_id = 91001, gadget_id = 70360006, pos = { x = -496.220, y = 121.539, z = -738.706 }, rot = { x = 2.958, y = 3.020, z = 5.994 }, level = 1, area_id = 100 },
	{ config_id = 91002, gadget_id = 70211102, pos = { x = -450.654, y = 145.133, z = -754.939 }, rot = { x = 9.898, y = 296.778, z = 1.948 }, level = 26, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 100 },
	{ config_id = 91003, gadget_id = 70950077, pos = { x = -488.155, y = 127.992, z = -743.992 }, rot = { x = 0.000, y = 120.929, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 91004, gadget_id = 70350241, pos = { x = -488.155, y = 122.039, z = -743.992 }, rot = { x = 0.000, y = 67.079, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 91005, gadget_id = 70950076, pos = { x = -448.852, y = 143.584, z = -761.144 }, rot = { x = 0.000, y = 246.625, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 91006, gadget_id = 70350240, pos = { x = -448.877, y = 140.116, z = -761.256 }, rot = { x = 0.000, y = 284.893, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 91007, gadget_id = 70950079, pos = { x = -450.326, y = 144.516, z = -752.071 }, rot = { x = 0.000, y = 94.153, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 91008, gadget_id = 70350243, pos = { x = -450.253, y = 141.085, z = -751.983 }, rot = { x = 0.000, y = 132.420, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 91009, gadget_id = 70950079, pos = { x = -443.181, y = 145.678, z = -745.858 }, rot = { x = 0.000, y = 161.767, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 91010, gadget_id = 70350243, pos = { x = -443.072, y = 142.235, z = -745.893 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 100 },
	{ config_id = 91011, gadget_id = 70360001, pos = { x = -443.072, y = 142.224, z = -745.893 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 91012, gadget_id = 70950077, pos = { x = -432.167, y = 146.706, z = -748.151 }, rot = { x = 0.000, y = 46.640, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 91013, gadget_id = 70350241, pos = { x = -432.182, y = 142.623, z = -748.038 }, rot = { x = 0.000, y = 84.907, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 100 },
	{ config_id = 91014, gadget_id = 70360001, pos = { x = -432.182, y = 142.994, z = -748.038 }, rot = { x = 0.000, y = 84.907, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 91015, gadget_id = 70950078, pos = { x = -427.861, y = 144.994, z = -757.330 }, rot = { x = 0.000, y = 277.789, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 91016, gadget_id = 70350242, pos = { x = -427.940, y = 141.541, z = -757.413 }, rot = { x = 0.000, y = 316.056, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 100 },
	{ config_id = 91017, gadget_id = 70360001, pos = { x = -427.940, y = 141.541, z = -757.413 }, rot = { x = 0.000, y = 316.056, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 100 },
	{ config_id = 91018, gadget_id = 70350211, pos = { x = -429.524, y = 142.963, z = -766.561 }, rot = { x = 0.000, y = 121.442, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 91019, gadget_id = 70350270, pos = { x = -429.680, y = 141.569, z = -766.616 }, rot = { x = 0.000, y = 159.709, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 91020, gadget_id = 70350212, pos = { x = -428.510, y = 144.651, z = -764.927 }, rot = { x = 0.000, y = 121.442, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 91021, gadget_id = 70350212, pos = { x = -430.512, y = 144.600, z = -768.187 }, rot = { x = 0.000, y = 121.442, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 91022, gadget_id = 70350211, pos = { x = -438.083, y = 141.729, z = -773.690 }, rot = { x = 0.000, y = 182.248, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 91023, gadget_id = 70350270, pos = { x = -437.993, y = 140.335, z = -773.760 }, rot = { x = 0.000, y = 220.515, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 91024, gadget_id = 70350212, pos = { x = -436.162, y = 143.418, z = -773.777 }, rot = { x = 0.000, y = 182.248, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 91025, gadget_id = 70350212, pos = { x = -439.984, y = 143.367, z = -773.620 }, rot = { x = 0.000, y = 182.248, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 91027, gadget_id = 70950074, pos = { x = -458.170, y = 138.068, z = -752.590 }, rot = { x = 0.000, y = 106.600, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 91073, gadget_id = 70950079, pos = { x = -480.470, y = 127.850, z = -748.300 }, rot = { x = 0.000, y = 133.728, z = 342.837 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 91074, gadget_id = 70350243, pos = { x = -480.470, y = 124.189, z = -748.300 }, rot = { x = 0.000, y = 67.550, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 91077, gadget_id = 70950079, pos = { x = -469.653, y = 132.943, z = -736.006 }, rot = { x = 0.000, y = 236.110, z = 345.490 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 91078, gadget_id = 70350243, pos = { x = -469.653, y = 126.783, z = -736.006 }, rot = { x = 0.000, y = 210.767, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 91081, gadget_id = 70350085, pos = { x = -458.170, y = 138.068, z = -752.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1091029, name = "SELECT_OPTION_91029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_91029", action = "action_EVENT_SELECT_OPTION_91029", trigger_count = 0 },
	{ config_id = 1091030, name = "GROUP_LOAD_91030", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_91030", trigger_count = 0 },
	{ config_id = 1091031, name = "GADGET_STATE_CHANGE_91031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91031", action = "action_EVENT_GADGET_STATE_CHANGE_91031", trigger_count = 0 },
	{ config_id = 1091032, name = "GADGET_STATE_CHANGE_91032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91032", action = "action_EVENT_GADGET_STATE_CHANGE_91032", trigger_count = 0 },
	{ config_id = 1091033, name = "GADGET_STATE_CHANGE_91033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91033", action = "action_EVENT_GADGET_STATE_CHANGE_91033", trigger_count = 0 },
	{ config_id = 1091034, name = "GADGET_STATE_CHANGE_91034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91034", action = "action_EVENT_GADGET_STATE_CHANGE_91034", trigger_count = 0 },
	{ config_id = 1091035, name = "GADGET_STATE_CHANGE_91035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91035", action = "action_EVENT_GADGET_STATE_CHANGE_91035", trigger_count = 0 },
	{ config_id = 1091036, name = "GADGET_STATE_CHANGE_91036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91036", action = "action_EVENT_GADGET_STATE_CHANGE_91036", trigger_count = 0 },
	{ config_id = 1091037, name = "GADGET_STATE_CHANGE_91037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91037", action = "action_EVENT_GADGET_STATE_CHANGE_91037", trigger_count = 0 },
	{ config_id = 1091038, name = "GADGET_STATE_CHANGE_91038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91038", action = "action_EVENT_GADGET_STATE_CHANGE_91038", trigger_count = 0 },
	{ config_id = 1091039, name = "GADGET_STATE_CHANGE_91039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91039", action = "action_EVENT_GADGET_STATE_CHANGE_91039", trigger_count = 0 },
	{ config_id = 1091040, name = "GADGET_STATE_CHANGE_91040", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91040", action = "action_EVENT_GADGET_STATE_CHANGE_91040", trigger_count = 0 },
	{ config_id = 1091041, name = "GADGET_CREATE_91041", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_91041", action = "action_EVENT_GADGET_CREATE_91041", trigger_count = 0 },
	{ config_id = 1091042, name = "GADGET_STATE_CHANGE_91042", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91042", action = "action_EVENT_GADGET_STATE_CHANGE_91042", trigger_count = 0 },
	{ config_id = 1091043, name = "GADGET_STATE_CHANGE_91043", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91043", action = "action_EVENT_GADGET_STATE_CHANGE_91043", trigger_count = 0 },
	{ config_id = 1091044, name = "GADGET_STATE_CHANGE_91044", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91044", action = "action_EVENT_GADGET_STATE_CHANGE_91044", trigger_count = 0 },
	{ config_id = 1091045, name = "GADGET_CREATE_91045", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_91045", action = "action_EVENT_GADGET_CREATE_91045", trigger_count = 0 },
	{ config_id = 1091046, name = "SELECT_OPTION_91046", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_91046", action = "action_EVENT_SELECT_OPTION_91046", trigger_count = 0 },
	{ config_id = 1091047, name = "SELECT_OPTION_91047", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_91047", action = "action_EVENT_SELECT_OPTION_91047", trigger_count = 0 },
	{ config_id = 1091048, name = "GADGET_STATE_CHANGE_91048", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91048", action = "action_EVENT_GADGET_STATE_CHANGE_91048", trigger_count = 0 },
	{ config_id = 1091049, name = "ANY_GADGET_DIE_91049", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_91049", action = "action_EVENT_ANY_GADGET_DIE_91049", trigger_count = 0 },
	{ config_id = 1091050, name = "VARIABLE_CHANGE_91050", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_91050", action = "action_EVENT_VARIABLE_CHANGE_91050", trigger_count = 0 },
	{ config_id = 1091051, name = "TIMER_EVENT_91051", event = EventType.EVENT_TIMER_EVENT, source = "waitForRecreateHoops", condition = "condition_EVENT_TIMER_EVENT_91051", action = "action_EVENT_TIMER_EVENT_91051", trigger_count = 0 },
	{ config_id = 1091052, name = "SELECT_OPTION_91052", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_91052", action = "action_EVENT_SELECT_OPTION_91052", trigger_count = 0 },
	{ config_id = 1091053, name = "GADGET_STATE_CHANGE_91053", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91053", action = "action_EVENT_GADGET_STATE_CHANGE_91053", trigger_count = 0 },
	{ config_id = 1091054, name = "GADGET_STATE_CHANGE_91054", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91054", action = "action_EVENT_GADGET_STATE_CHANGE_91054", trigger_count = 0 },
	{ config_id = 1091055, name = "GADGET_CREATE_91055", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_91055", action = "action_EVENT_GADGET_CREATE_91055", trigger_count = 0 },
	{ config_id = 1091056, name = "SELECT_OPTION_91056", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_91056", action = "action_EVENT_SELECT_OPTION_91056", trigger_count = 0 },
	{ config_id = 1091057, name = "SELECT_OPTION_91057", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_91057", action = "action_EVENT_SELECT_OPTION_91057", trigger_count = 0 },
	{ config_id = 1091058, name = "VARIABLE_CHANGE_91058", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_91058", action = "action_EVENT_VARIABLE_CHANGE_91058", trigger_count = 0 },
	{ config_id = 1091059, name = "GADGET_STATE_CHANGE_91059", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91059", action = "action_EVENT_GADGET_STATE_CHANGE_91059", trigger_count = 0 },
	{ config_id = 1091060, name = "GADGET_STATE_CHANGE_91060", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91060", action = "action_EVENT_GADGET_STATE_CHANGE_91060", trigger_count = 0 },
	{ config_id = 1091061, name = "GADGET_STATE_CHANGE_91061", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91061", action = "action_EVENT_GADGET_STATE_CHANGE_91061", trigger_count = 0 },
	{ config_id = 1091062, name = "GADGET_STATE_CHANGE_91062", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91062", action = "action_EVENT_GADGET_STATE_CHANGE_91062", trigger_count = 0 },
	{ config_id = 1091063, name = "GADGET_STATE_CHANGE_91063", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91063", action = "action_EVENT_GADGET_STATE_CHANGE_91063", trigger_count = 0 },
	{ config_id = 1091064, name = "GADGET_STATE_CHANGE_91064", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91064", action = "action_EVENT_GADGET_STATE_CHANGE_91064", trigger_count = 0 },
	{ config_id = 1091065, name = "GADGET_STATE_CHANGE_91065", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91065", action = "action_EVENT_GADGET_STATE_CHANGE_91065", trigger_count = 0 },
	{ config_id = 1091066, name = "GADGET_STATE_CHANGE_91066", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91066", action = "action_EVENT_GADGET_STATE_CHANGE_91066", trigger_count = 0 },
	{ config_id = 1091067, name = "PLATFORM_REACH_POINT_91067", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_91067", action = "action_EVENT_PLATFORM_REACH_POINT_91067", trigger_count = 0 },
	{ config_id = 1091068, name = "PLATFORM_REACH_POINT_91068", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_91068", action = "action_EVENT_PLATFORM_REACH_POINT_91068", trigger_count = 0 },
	-- 销毁靶标后创建宝箱
	{ config_id = 1091069, name = "ANY_GADGET_DIE_91069", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_91069", action = "action_EVENT_ANY_GADGET_DIE_91069" },
	-- 开启了宝箱后刷新Group进度
	{ config_id = 1091070, name = "GADGET_STATE_CHANGE_91070", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91070", action = "action_EVENT_GADGET_STATE_CHANGE_91070" },
	{ config_id = 1091071, name = "GADGET_STATE_CHANGE_91071", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91071", action = "action_EVENT_GADGET_STATE_CHANGE_91071", trigger_count = 0 },
	{ config_id = 1091072, name = "GADGET_STATE_CHANGE_91072", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91072", action = "action_EVENT_GADGET_STATE_CHANGE_91072", trigger_count = 0 },
	{ config_id = 1091075, name = "GADGET_STATE_CHANGE_91075", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91075", action = "action_EVENT_GADGET_STATE_CHANGE_91075", trigger_count = 0 },
	{ config_id = 1091076, name = "GADGET_STATE_CHANGE_91076", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91076", action = "action_EVENT_GADGET_STATE_CHANGE_91076", trigger_count = 0 },
	{ config_id = 1091079, name = "GADGET_STATE_CHANGE_91079", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91079", action = "action_EVENT_GADGET_STATE_CHANGE_91079", trigger_count = 0 },
	{ config_id = 1091080, name = "GADGET_STATE_CHANGE_91080", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_91080", action = "action_EVENT_GADGET_STATE_CHANGE_91080", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hoop1Pos", value = 0, no_refresh = false },
	{ config_id = 2, name = "hoop2Pos", value = 0, no_refresh = false },
	{ config_id = 3, name = "complete", value = 0, no_refresh = false },
	{ config_id = 4, name = "killedHoops", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 91026, gadget_id = 70950073, pos = { x = -445.064, y = 146.984, z = -769.898 }, rot = { x = 0.000, y = 33.749, z = 0.000 }, level = 1, area_id = 100 },
		{ config_id = 91028, gadget_id = 70950075, pos = { x = -425.196, y = 147.047, z = -757.531 }, rot = { x = 0.000, y = 274.731, z = 0.000 }, level = 1, area_id = 100 }
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
	end_suite = 13,
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
		-- description = [默认加载的Entities],
		monsters = { },
		gadgets = { 91001, 91002, 91027 },
		regions = { },
		triggers = { "GROUP_LOAD_91030", "GADGET_STATE_CHANGE_91070", "GADGET_STATE_CHANGE_91071", "GADGET_STATE_CHANGE_91072" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [羽球元素靶标指引ICON],
		monsters = { },
		gadgets = { 91081 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [需销毁1个靶标的判定方法],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_GADGET_DIE_91069" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [需销毁多个靶标的判定方法],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_GADGET_DIE_91049", "VARIABLE_CHANGE_91050", "TIMER_EVENT_91051", "VARIABLE_CHANGE_91058" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = [加载固定位置的元素台座],
		monsters = { },
		gadgets = { 91003, 91004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_91031", "GADGET_STATE_CHANGE_91032" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = [加载往复运动的元素台座],
		monsters = { },
		gadgets = { 91005, 91006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_91033", "GADGET_STATE_CHANGE_91034" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = [加载自转的元素台座（风）],
		monsters = { },
		gadgets = { 91007, 91008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_91036", "GADGET_STATE_CHANGE_91037" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = [加载可以调整其朝向的元素台座（风）],
		monsters = { },
		gadgets = { 91009, 91010, 91011 },
		regions = { },
		triggers = { "SELECT_OPTION_91029", "GADGET_STATE_CHANGE_91039", "GADGET_STATE_CHANGE_91040", "GADGET_CREATE_91041" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = [加载可以调整其左右位置的元素台座],
		monsters = { },
		gadgets = { 91012, 91013, 91014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_91043", "GADGET_STATE_CHANGE_91044", "GADGET_CREATE_91045", "SELECT_OPTION_91046", "SELECT_OPTION_91047", "SELECT_OPTION_91052" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = [加载可以调整其上下位置的元素台座],
		monsters = { },
		gadgets = { 91015, 91016, 91017 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_91053", "GADGET_STATE_CHANGE_91054", "GADGET_CREATE_91055", "SELECT_OPTION_91056", "SELECT_OPTION_91057" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = [加载固定位置的分裂台座],
		monsters = { },
		gadgets = { 91018, 91019, 91020, 91021 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_91035", "GADGET_STATE_CHANGE_91038", "GADGET_STATE_CHANGE_91042", "GADGET_STATE_CHANGE_91048", "GADGET_STATE_CHANGE_91059", "GADGET_STATE_CHANGE_91060", "GADGET_STATE_CHANGE_91063", "GADGET_STATE_CHANGE_91064" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = [加载往复运动的分裂台座],
		monsters = { },
		gadgets = { 91022, 91023, 91024, 91025 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_91061", "GADGET_STATE_CHANGE_91062", "GADGET_STATE_CHANGE_91065", "GADGET_STATE_CHANGE_91066", "PLATFORM_REACH_POINT_91067", "PLATFORM_REACH_POINT_91068" },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = [完成玩法后的空Suite],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = ,
		monsters = { },
		gadgets = { 91073, 91074 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_91075", "GADGET_STATE_CHANGE_91076" },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = ,
		monsters = { },
		gadgets = { 91077, 91078 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_91079", "GADGET_STATE_CHANGE_91080" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_91029(context, evt)
	-- 判断是gadgetid 91011 option_id 211
	if 91011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_91029(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 91009, 110100018, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_91030(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004091, 3)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004091, 5)
	
	-- 添加suite14的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004091, 14)
	
	-- 添加suite15的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004091, 15)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91031(context, evt)
	if 91001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91031(context, evt)
	-- 将configid为 91003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 91004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91032(context, evt)
	if 91001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91032(context, evt)
	-- 将configid为 91003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 91004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91033(context, evt)
	if 91001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91033(context, evt)
	-- 将configid为 91005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 1, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 91005, 110100016, {2,3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 91006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91034(context, evt)
	if 91001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91034(context, evt)
	-- 将configid为 91005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 91005, 110100016, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 91006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91035(context, evt)
	if 91018 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91035(context, evt)
	-- 将configid为 91020 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91020, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 91021 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91021, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91036(context, evt)
	if 91001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91036(context, evt)
	-- 将configid为 91007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 91008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91037(context, evt)
	if 91001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91037(context, evt)
	-- 将configid为 91007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 91008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91038(context, evt)
	if 91018 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91038(context, evt)
	-- 将configid为 91020 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91020, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 91021 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91021, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91039(context, evt)
	if 91001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91039(context, evt)
	-- 将configid为 91009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 144004091 ；指定config：91011；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144004091, 91011, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91040(context, evt)
	if 91001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91040(context, evt)
	-- 将configid为 91009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004091, 91011, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_91041(context, evt)
	if 91011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_91041(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004091, 91011, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91042(context, evt)
	if 91018 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91042(context, evt)
	-- 将configid为 91020 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91020, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 91021 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91021, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91043(context, evt)
	if 91001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91043(context, evt)
	-- 将configid为 91012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 144004091 ；指定config：91014；物件身上指定option：217；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144004091, 91014, 217) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 144004091 ；指定config：91014；物件身上指定option：218；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144004091, 91014, 218) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91044(context, evt)
	if 91001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91044(context, evt)
	-- 将configid为 91012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004091, 91014, {217,218,219}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_91045(context, evt)
	if 91014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_91045(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004091, 91014, {217,218,219}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_91046(context, evt)
	-- 判断是gadgetid 91014 option_id 217
	if 91014 ~= evt.param1 then
		return false	
	end
	
	if 217 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_91046(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 91012, 110100019, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_91047(context, evt)
	-- 判断是gadgetid 91014 option_id 218
	if 91014 ~= evt.param1 then
		return false	
	end
	
	if 218 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_91047(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 91012, 110100019, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91048(context, evt)
	if 91018 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91048(context, evt)
	-- 将configid为 91020 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91020, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 91021 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91021, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_91049(context, evt)
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_91049(context, evt)
	-- 针对当前group内变量名为 "killedHoops" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "killedHoops", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_91050(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"killedHoops"为1
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_91050(context, evt)
	-- 延迟3秒后,向groupId为：144004091的对象,请求一次调用,并将string参数："waitForRecreateHoops" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144004091, "waitForRecreateHoops", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_91051(context, evt)
	-- 判断变量"killedHoops"为1
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_91051(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004091, 2)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004091, 2)
	
	-- 将本组内变量名为 "killedHoops" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "killedHoops", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_91052(context, evt)
	-- 判断是gadgetid 91014 option_id 219
	if 91014 ~= evt.param1 then
		return false	
	end
	
	if 219 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_91052(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 91012, 110100019, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91053(context, evt)
	if 91001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91053(context, evt)
	-- 将configid为 91012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 144004091 ；指定config：91017；物件身上指定option：215；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144004091, 91017, 215) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 144004091 ；指定config：91017；物件身上指定option：216；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144004091, 91017, 216) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91054(context, evt)
	if 91001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91054(context, evt)
	-- 将configid为 91012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004091, 91017, {215,216}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_91055(context, evt)
	if 91017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_91055(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004091, 91017, {215,216}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_91056(context, evt)
	-- 判断是gadgetid 91017 option_id 215
	if 91017 ~= evt.param1 then
		return false	
	end
	
	if 215 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_91056(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 91015, 110100020, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_91057(context, evt)
	-- 判断是gadgetid 91017 option_id 216
	if 91017 ~= evt.param1 then
		return false	
	end
	
	if 216 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_91057(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 91015, 110100020, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_91058(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"killedHoops"为2
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_91058(context, evt)
	-- 将configid为 91002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "complete" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "complete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91059(context, evt)
	if 91001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91059(context, evt)
	-- 将configid为 91018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 91019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91060(context, evt)
	if 91001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91060(context, evt)
	-- 将configid为 91018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 91019 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91019, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91061(context, evt)
	if 91001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91061(context, evt)
	-- 将configid为 91022 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91022, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 91024 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91024, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 91025 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91025, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 91022, 110100022, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 91024, 110100022, {5}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 91025, 110100022, {6}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 91023 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91023, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91062(context, evt)
	if 91001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91062(context, evt)
	-- 将configid为 91022 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91022, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 91024 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91024, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 91025 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91025, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 91022, 110100022, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 91024, 110100022, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 91025, 110100022, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 91023 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91023, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91063(context, evt)
	if 91018 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91063(context, evt)
	-- 将configid为 91020 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91020, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 91021 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91021, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91064(context, evt)
	if 91020 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91064(context, evt)
	-- 将configid为 91018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91065(context, evt)
	if 91022 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91065(context, evt)
	-- 将configid为 91024 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91024, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 91025 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91025, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91066(context, evt)
	if 91024 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91066(context, evt)
	-- 将configid为 91025 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91025, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_91067(context, evt)
	-- 判断是gadgetid 为 91024的移动平台，是否到达了999800005 的路线中的 5 点
	
	if 91024 ~= evt.param1 then
	  return false
	end
	
	if 999800005 ~= evt.param2 then
	  return false
	end
	
	if 5 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_91067(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 1, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 91024, 110100022, {5,7}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_91068(context, evt)
	-- 判断是gadgetid 为 91025的移动平台，是否到达了999800005 的路线中的 6 点
	
	if 91025 ~= evt.param1 then
	  return false
	end
	
	if 999800005 ~= evt.param2 then
	  return false
	end
	
	if 6 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_91068(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 1, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 91025, 110100022, {6,8}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_91069(context, evt)
	if 91027 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_91069(context, evt)
	-- 将configid为 91002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004091, 2)
	
	-- 将本组内变量名为 "complete" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "complete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91070(context, evt)
	if 91002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91070(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004091, 13) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91071(context, evt)
	if 91001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91071(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004091, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91072(context, evt)
	if 91001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91072(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004091, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91075(context, evt)
	if 91001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91075(context, evt)
	-- 将configid为 91073 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91073, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 91074 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91074, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91076(context, evt)
	if 91001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91076(context, evt)
	-- 将configid为 91073 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91073, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 91074 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91074, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91079(context, evt)
	if 91001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91079(context, evt)
	-- 将configid为 91077 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91077, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 91078 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91078, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_91080(context, evt)
	if 91001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_91080(context, evt)
	-- 将configid为 91077 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91077, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 91078 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 91078, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
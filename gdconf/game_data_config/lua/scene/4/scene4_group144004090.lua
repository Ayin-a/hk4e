-- 基础信息
local base_info = {
	group_id = 144004090
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
	{ config_id = 90001, gadget_id = 70360006, pos = { x = -398.097, y = 124.504, z = -564.662 }, rot = { x = 0.550, y = 359.186, z = 1.834 }, level = 1, area_id = 100 },
	{ config_id = 90002, gadget_id = 70211102, pos = { x = -386.204, y = 119.847, z = -539.151 }, rot = { x = 355.700, y = 191.139, z = 359.154 }, level = 26, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 100 },
	{ config_id = 90003, gadget_id = 70950076, pos = { x = -392.820, y = 126.520, z = -555.680 }, rot = { x = 0.000, y = 31.793, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 90004, gadget_id = 70350240, pos = { x = -392.820, y = 121.528, z = -555.680 }, rot = { x = 0.000, y = 212.551, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 90005, gadget_id = 70950076, pos = { x = -381.858, y = 120.000, z = -532.784 }, rot = { x = 0.000, y = 246.625, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 90006, gadget_id = 70350240, pos = { x = -381.883, y = 120.000, z = -532.895 }, rot = { x = 0.000, y = 284.893, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 90007, gadget_id = 70950079, pos = { x = -383.332, y = 120.000, z = -523.711 }, rot = { x = 0.000, y = 94.153, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 90008, gadget_id = 70350243, pos = { x = -383.258, y = 120.000, z = -523.623 }, rot = { x = 0.000, y = 132.420, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 90009, gadget_id = 70950079, pos = { x = -376.188, y = 120.000, z = -517.498 }, rot = { x = 0.000, y = 161.767, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 90010, gadget_id = 70350243, pos = { x = -376.079, y = 121.419, z = -517.533 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 100 },
	{ config_id = 90011, gadget_id = 70360001, pos = { x = -376.079, y = 122.262, z = -517.533 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 90012, gadget_id = 70950077, pos = { x = -365.174, y = 122.259, z = -519.791 }, rot = { x = 0.000, y = 46.640, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 90013, gadget_id = 70350241, pos = { x = -365.189, y = 121.319, z = -519.678 }, rot = { x = 0.000, y = 84.907, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 100 },
	{ config_id = 90014, gadget_id = 70360001, pos = { x = -365.189, y = 122.234, z = -519.678 }, rot = { x = 0.000, y = 84.907, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 90015, gadget_id = 70950078, pos = { x = -360.868, y = 122.263, z = -528.970 }, rot = { x = 0.000, y = 277.789, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 90016, gadget_id = 70350242, pos = { x = -360.947, y = 120.000, z = -529.053 }, rot = { x = 0.000, y = 316.056, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 100 },
	{ config_id = 90017, gadget_id = 70360001, pos = { x = -360.946, y = 120.000, z = -529.052 }, rot = { x = 0.000, y = 316.056, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 100 },
	{ config_id = 90018, gadget_id = 70350211, pos = { x = -362.530, y = 122.305, z = -538.200 }, rot = { x = 0.000, y = 121.442, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 90019, gadget_id = 70350270, pos = { x = -362.686, y = 120.000, z = -538.255 }, rot = { x = 0.000, y = 159.709, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 90020, gadget_id = 70350212, pos = { x = -361.517, y = 120.000, z = -536.566 }, rot = { x = 0.000, y = 121.442, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 90021, gadget_id = 70350212, pos = { x = -363.519, y = 120.000, z = -539.826 }, rot = { x = 0.000, y = 121.442, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 90022, gadget_id = 70350211, pos = { x = -371.091, y = 120.072, z = -545.332 }, rot = { x = 0.000, y = 182.248, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 90023, gadget_id = 70350270, pos = { x = -371.001, y = 121.694, z = -545.402 }, rot = { x = 0.000, y = 220.515, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 90024, gadget_id = 70350212, pos = { x = -369.170, y = 120.794, z = -545.419 }, rot = { x = 0.000, y = 182.248, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 90025, gadget_id = 70350212, pos = { x = -372.991, y = 120.000, z = -545.260 }, rot = { x = 0.000, y = 182.248, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 90026, gadget_id = 70950073, pos = { x = -387.830, y = 123.251, z = -547.340 }, rot = { x = 0.000, y = 210.012, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 90073, gadget_id = 70350085, pos = { x = -387.830, y = 123.251, z = -547.340 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1090029, name = "SELECT_OPTION_90029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_90029", action = "action_EVENT_SELECT_OPTION_90029", trigger_count = 0 },
	{ config_id = 1090030, name = "GROUP_LOAD_90030", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_90030", trigger_count = 0 },
	{ config_id = 1090031, name = "GADGET_STATE_CHANGE_90031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90031", action = "action_EVENT_GADGET_STATE_CHANGE_90031", trigger_count = 0 },
	{ config_id = 1090032, name = "GADGET_STATE_CHANGE_90032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90032", action = "action_EVENT_GADGET_STATE_CHANGE_90032", trigger_count = 0 },
	{ config_id = 1090033, name = "GADGET_STATE_CHANGE_90033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90033", action = "action_EVENT_GADGET_STATE_CHANGE_90033", trigger_count = 0 },
	{ config_id = 1090034, name = "GADGET_STATE_CHANGE_90034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90034", action = "action_EVENT_GADGET_STATE_CHANGE_90034", trigger_count = 0 },
	{ config_id = 1090035, name = "GADGET_STATE_CHANGE_90035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90035", action = "action_EVENT_GADGET_STATE_CHANGE_90035", trigger_count = 0 },
	{ config_id = 1090036, name = "GADGET_STATE_CHANGE_90036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90036", action = "action_EVENT_GADGET_STATE_CHANGE_90036", trigger_count = 0 },
	{ config_id = 1090037, name = "GADGET_STATE_CHANGE_90037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90037", action = "action_EVENT_GADGET_STATE_CHANGE_90037", trigger_count = 0 },
	{ config_id = 1090038, name = "GADGET_STATE_CHANGE_90038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90038", action = "action_EVENT_GADGET_STATE_CHANGE_90038", trigger_count = 0 },
	{ config_id = 1090039, name = "GADGET_STATE_CHANGE_90039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90039", action = "action_EVENT_GADGET_STATE_CHANGE_90039", trigger_count = 0 },
	{ config_id = 1090040, name = "GADGET_STATE_CHANGE_90040", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90040", action = "action_EVENT_GADGET_STATE_CHANGE_90040", trigger_count = 0 },
	{ config_id = 1090041, name = "GADGET_CREATE_90041", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_90041", action = "action_EVENT_GADGET_CREATE_90041", trigger_count = 0 },
	{ config_id = 1090042, name = "GADGET_STATE_CHANGE_90042", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90042", action = "action_EVENT_GADGET_STATE_CHANGE_90042", trigger_count = 0 },
	{ config_id = 1090043, name = "GADGET_STATE_CHANGE_90043", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90043", action = "action_EVENT_GADGET_STATE_CHANGE_90043", trigger_count = 0 },
	{ config_id = 1090044, name = "GADGET_STATE_CHANGE_90044", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90044", action = "action_EVENT_GADGET_STATE_CHANGE_90044", trigger_count = 0 },
	{ config_id = 1090045, name = "GADGET_CREATE_90045", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_90045", action = "action_EVENT_GADGET_CREATE_90045", trigger_count = 0 },
	{ config_id = 1090046, name = "SELECT_OPTION_90046", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_90046", action = "action_EVENT_SELECT_OPTION_90046", trigger_count = 0 },
	{ config_id = 1090047, name = "SELECT_OPTION_90047", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_90047", action = "action_EVENT_SELECT_OPTION_90047", trigger_count = 0 },
	{ config_id = 1090048, name = "GADGET_STATE_CHANGE_90048", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90048", action = "action_EVENT_GADGET_STATE_CHANGE_90048", trigger_count = 0 },
	{ config_id = 1090049, name = "ANY_GADGET_DIE_90049", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_90049", action = "action_EVENT_ANY_GADGET_DIE_90049", trigger_count = 0 },
	{ config_id = 1090050, name = "VARIABLE_CHANGE_90050", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_90050", action = "action_EVENT_VARIABLE_CHANGE_90050", trigger_count = 0 },
	{ config_id = 1090051, name = "TIMER_EVENT_90051", event = EventType.EVENT_TIMER_EVENT, source = "waitForRecreateHoops", condition = "condition_EVENT_TIMER_EVENT_90051", action = "action_EVENT_TIMER_EVENT_90051", trigger_count = 0 },
	{ config_id = 1090052, name = "SELECT_OPTION_90052", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_90052", action = "action_EVENT_SELECT_OPTION_90052", trigger_count = 0 },
	{ config_id = 1090053, name = "GADGET_STATE_CHANGE_90053", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90053", action = "action_EVENT_GADGET_STATE_CHANGE_90053", trigger_count = 0 },
	{ config_id = 1090054, name = "GADGET_STATE_CHANGE_90054", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90054", action = "action_EVENT_GADGET_STATE_CHANGE_90054", trigger_count = 0 },
	{ config_id = 1090055, name = "GADGET_CREATE_90055", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_90055", action = "action_EVENT_GADGET_CREATE_90055", trigger_count = 0 },
	{ config_id = 1090056, name = "SELECT_OPTION_90056", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_90056", action = "action_EVENT_SELECT_OPTION_90056", trigger_count = 0 },
	{ config_id = 1090057, name = "SELECT_OPTION_90057", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_90057", action = "action_EVENT_SELECT_OPTION_90057", trigger_count = 0 },
	{ config_id = 1090058, name = "VARIABLE_CHANGE_90058", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_90058", action = "action_EVENT_VARIABLE_CHANGE_90058", trigger_count = 0 },
	{ config_id = 1090059, name = "GADGET_STATE_CHANGE_90059", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90059", action = "action_EVENT_GADGET_STATE_CHANGE_90059", trigger_count = 0 },
	{ config_id = 1090060, name = "GADGET_STATE_CHANGE_90060", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90060", action = "action_EVENT_GADGET_STATE_CHANGE_90060", trigger_count = 0 },
	{ config_id = 1090061, name = "GADGET_STATE_CHANGE_90061", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90061", action = "action_EVENT_GADGET_STATE_CHANGE_90061", trigger_count = 0 },
	{ config_id = 1090062, name = "GADGET_STATE_CHANGE_90062", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90062", action = "action_EVENT_GADGET_STATE_CHANGE_90062", trigger_count = 0 },
	{ config_id = 1090063, name = "GADGET_STATE_CHANGE_90063", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90063", action = "action_EVENT_GADGET_STATE_CHANGE_90063", trigger_count = 0 },
	{ config_id = 1090064, name = "GADGET_STATE_CHANGE_90064", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90064", action = "action_EVENT_GADGET_STATE_CHANGE_90064", trigger_count = 0 },
	{ config_id = 1090065, name = "GADGET_STATE_CHANGE_90065", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90065", action = "action_EVENT_GADGET_STATE_CHANGE_90065", trigger_count = 0 },
	{ config_id = 1090066, name = "GADGET_STATE_CHANGE_90066", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90066", action = "action_EVENT_GADGET_STATE_CHANGE_90066", trigger_count = 0 },
	{ config_id = 1090067, name = "PLATFORM_REACH_POINT_90067", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_90067", action = "action_EVENT_PLATFORM_REACH_POINT_90067", trigger_count = 0 },
	{ config_id = 1090068, name = "PLATFORM_REACH_POINT_90068", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_90068", action = "action_EVENT_PLATFORM_REACH_POINT_90068", trigger_count = 0 },
	-- 销毁靶标后解锁宝箱
	{ config_id = 1090069, name = "ANY_GADGET_DIE_90069", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_90069", action = "action_EVENT_ANY_GADGET_DIE_90069" },
	-- 开启了宝箱后刷新Group进度
	{ config_id = 1090070, name = "GADGET_STATE_CHANGE_90070", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90070", action = "action_EVENT_GADGET_STATE_CHANGE_90070" },
	{ config_id = 1090071, name = "GADGET_STATE_CHANGE_90071", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90071", action = "action_EVENT_GADGET_STATE_CHANGE_90071", trigger_count = 0 },
	{ config_id = 1090072, name = "GADGET_STATE_CHANGE_90072", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_90072", action = "action_EVENT_GADGET_STATE_CHANGE_90072", trigger_count = 0 }
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
		{ config_id = 90027, gadget_id = 70950074, pos = { x = -362.531, y = 120.000, z = -517.404 }, rot = { x = 0.000, y = 55.432, z = 0.000 }, level = 1, area_id = 100 },
		{ config_id = 90028, gadget_id = 70950075, pos = { x = -358.205, y = 120.000, z = -529.170 }, rot = { x = 0.000, y = 274.731, z = 0.000 }, level = 1, area_id = 100 }
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
		gadgets = { 90001, 90002, 90026 },
		regions = { },
		triggers = { "GROUP_LOAD_90030", "GADGET_STATE_CHANGE_90070", "GADGET_STATE_CHANGE_90071", "GADGET_STATE_CHANGE_90072" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [羽球元素靶标],
		monsters = { },
		gadgets = { 90073 },
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
		triggers = { "ANY_GADGET_DIE_90069" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [需销毁多个靶标的判定方法],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_GADGET_DIE_90049", "VARIABLE_CHANGE_90050", "TIMER_EVENT_90051", "VARIABLE_CHANGE_90058" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = [加载固定位置的元素台座],
		monsters = { },
		gadgets = { 90003, 90004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_90031", "GADGET_STATE_CHANGE_90032" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = [加载往复运动的元素台座],
		monsters = { },
		gadgets = { 90005, 90006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_90033", "GADGET_STATE_CHANGE_90034" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = [加载自转的元素台座（风）],
		monsters = { },
		gadgets = { 90007, 90008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_90036", "GADGET_STATE_CHANGE_90037" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = [加载可以调整其朝向的元素台座（风）],
		monsters = { },
		gadgets = { 90009, 90010, 90011 },
		regions = { },
		triggers = { "SELECT_OPTION_90029", "GADGET_STATE_CHANGE_90039", "GADGET_STATE_CHANGE_90040", "GADGET_CREATE_90041" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = [加载可以调整其左右位置的元素台座],
		monsters = { },
		gadgets = { 90012, 90013, 90014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_90043", "GADGET_STATE_CHANGE_90044", "GADGET_CREATE_90045", "SELECT_OPTION_90046", "SELECT_OPTION_90047", "SELECT_OPTION_90052" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = [加载可以调整其上下位置的元素台座],
		monsters = { },
		gadgets = { 90015, 90016, 90017 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_90053", "GADGET_STATE_CHANGE_90054", "GADGET_CREATE_90055", "SELECT_OPTION_90056", "SELECT_OPTION_90057" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = [加载固定位置的分裂台座],
		monsters = { },
		gadgets = { 90018, 90019, 90020, 90021 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_90035", "GADGET_STATE_CHANGE_90038", "GADGET_STATE_CHANGE_90042", "GADGET_STATE_CHANGE_90048", "GADGET_STATE_CHANGE_90059", "GADGET_STATE_CHANGE_90060", "GADGET_STATE_CHANGE_90063", "GADGET_STATE_CHANGE_90064" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = [加载往复运动的分裂台座],
		monsters = { },
		gadgets = { 90022, 90023, 90024, 90025 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_90061", "GADGET_STATE_CHANGE_90062", "GADGET_STATE_CHANGE_90065", "GADGET_STATE_CHANGE_90066", "PLATFORM_REACH_POINT_90067", "PLATFORM_REACH_POINT_90068" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_90029(context, evt)
	-- 判断是gadgetid 90011 option_id 211
	if 90011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_90029(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 90009, 110100018, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_90030(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004090, 3)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004090, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90031(context, evt)
	if 90001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90031(context, evt)
	-- 将configid为 90003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 90004 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90004, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90032(context, evt)
	if 90001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90032(context, evt)
	-- 将configid为 90003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 90004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90033(context, evt)
	if 90001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90033(context, evt)
	-- 将configid为 90005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 1, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 90005, 110100016, {2,3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 90006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90034(context, evt)
	if 90001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90034(context, evt)
	-- 将configid为 90005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 90005, 110100016, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 90006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90035(context, evt)
	if 90018 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90035(context, evt)
	-- 将configid为 90020 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90020, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 90021 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90021, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90036(context, evt)
	if 90001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90036(context, evt)
	-- 将configid为 90007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 90008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90037(context, evt)
	if 90001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90037(context, evt)
	-- 将configid为 90007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 90008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90038(context, evt)
	if 90018 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90038(context, evt)
	-- 将configid为 90020 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90020, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 90021 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90021, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90039(context, evt)
	if 90001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90039(context, evt)
	-- 将configid为 90009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 144004090 ；指定config：90011；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144004090, 90011, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90040(context, evt)
	if 90001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90040(context, evt)
	-- 将configid为 90009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004090, 90011, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_90041(context, evt)
	if 90011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_90041(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004090, 90011, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90042(context, evt)
	if 90018 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90042(context, evt)
	-- 将configid为 90020 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90020, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 90021 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90021, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90043(context, evt)
	if 90001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90043(context, evt)
	-- 将configid为 90012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 144004090 ；指定config：90014；物件身上指定option：217；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144004090, 90014, 217) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 144004090 ；指定config：90014；物件身上指定option：218；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144004090, 90014, 218) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90044(context, evt)
	if 90001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90044(context, evt)
	-- 将configid为 90012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004090, 90014, {217,218,219}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_90045(context, evt)
	if 90014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_90045(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004090, 90014, {217,218,219}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_90046(context, evt)
	-- 判断是gadgetid 90014 option_id 217
	if 90014 ~= evt.param1 then
		return false	
	end
	
	if 217 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_90046(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 90012, 110100019, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_90047(context, evt)
	-- 判断是gadgetid 90014 option_id 218
	if 90014 ~= evt.param1 then
		return false	
	end
	
	if 218 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_90047(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 90012, 110100019, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90048(context, evt)
	if 90018 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90048(context, evt)
	-- 将configid为 90020 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90020, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 90021 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90021, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_90049(context, evt)
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_90049(context, evt)
	-- 针对当前group内变量名为 "killedHoops" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "killedHoops", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_90050(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"killedHoops"为1
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_90050(context, evt)
	-- 延迟3秒后,向groupId为：144004090的对象,请求一次调用,并将string参数："waitForRecreateHoops" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144004090, "waitForRecreateHoops", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_90051(context, evt)
	-- 判断变量"killedHoops"为1
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_90051(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004090, 2)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004090, 2)
	
	-- 将本组内变量名为 "killedHoops" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "killedHoops", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_90052(context, evt)
	-- 判断是gadgetid 90014 option_id 219
	if 90014 ~= evt.param1 then
		return false	
	end
	
	if 219 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_90052(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 90012, 110100019, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90053(context, evt)
	if 90001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90053(context, evt)
	-- 将configid为 90012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 144004090 ；指定config：90017；物件身上指定option：215；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144004090, 90017, 215) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 144004090 ；指定config：90017；物件身上指定option：216；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144004090, 90017, 216) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90054(context, evt)
	if 90001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90054(context, evt)
	-- 将configid为 90012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004090, 90017, {215,216}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_90055(context, evt)
	if 90017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_90055(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004090, 90017, {215,216}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_90056(context, evt)
	-- 判断是gadgetid 90017 option_id 215
	if 90017 ~= evt.param1 then
		return false	
	end
	
	if 215 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_90056(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 90015, 110100020, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_90057(context, evt)
	-- 判断是gadgetid 90017 option_id 216
	if 90017 ~= evt.param1 then
		return false	
	end
	
	if 216 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_90057(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 90015, 110100020, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_90058(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"killedHoops"为2
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_90058(context, evt)
	-- 将configid为 90002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90002, GadgetState.Default) then
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
function condition_EVENT_GADGET_STATE_CHANGE_90059(context, evt)
	if 90001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90059(context, evt)
	-- 将configid为 90018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 90019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90060(context, evt)
	if 90001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90060(context, evt)
	-- 将configid为 90018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 90019 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90019, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90061(context, evt)
	if 90001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90061(context, evt)
	-- 将configid为 90022 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90022, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 90024 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90024, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 90025 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90025, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 90022, 110100022, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 90024, 110100022, {5}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 90025, 110100022, {6}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 90023 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90023, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90062(context, evt)
	if 90001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90062(context, evt)
	-- 将configid为 90022 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90022, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 90024 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90024, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 90025 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90025, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 90022, 110100022, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 90024, 110100022, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 90025, 110100022, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 90023 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90023, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90063(context, evt)
	if 90018 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90063(context, evt)
	-- 将configid为 90020 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90020, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 90021 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90021, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90064(context, evt)
	if 90020 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90064(context, evt)
	-- 将configid为 90018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90065(context, evt)
	if 90022 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90065(context, evt)
	-- 将configid为 90024 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90024, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 90025 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90025, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90066(context, evt)
	if 90024 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90066(context, evt)
	-- 将configid为 90025 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90025, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_90067(context, evt)
	-- 判断是gadgetid 为 90024的移动平台，是否到达了999800005 的路线中的 5 点
	
	if 90024 ~= evt.param1 then
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
function action_EVENT_PLATFORM_REACH_POINT_90067(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 1, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 90024, 110100022, {5,7}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_90068(context, evt)
	-- 判断是gadgetid 为 90025的移动平台，是否到达了999800005 的路线中的 6 点
	
	if 90025 ~= evt.param1 then
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
function action_EVENT_PLATFORM_REACH_POINT_90068(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 1, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 90025, 110100022, {6,8}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_90069(context, evt)
	if 90026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_90069(context, evt)
	-- 将configid为 90002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 90002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004090, 2)
	
	-- 将本组内变量名为 "complete" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "complete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90070(context, evt)
	if 90002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90070(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004090, 13) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90071(context, evt)
	if 90001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90071(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004090, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_90072(context, evt)
	if 90001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_90072(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004090, 2)
	
	return 0
end
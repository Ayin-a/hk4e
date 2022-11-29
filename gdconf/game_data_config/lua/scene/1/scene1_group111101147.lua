-- 基础信息
local base_info = {
	group_id = 111101147
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
	{ config_id = 147001, gadget_id = 70360006, pos = { x = 2760.122, y = 195.234, z = -1720.220 }, rot = { x = 356.487, y = 359.548, z = 8.018 }, level = 1 },
	{ config_id = 147002, gadget_id = 70211102, pos = { x = 2765.840, y = 195.466, z = -1729.095 }, rot = { x = 2.892, y = 327.402, z = 4.511 }, level = 1, chest_drop_id = 1000100, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 147003, gadget_id = 70950076, pos = { x = 2758.007, y = 197.538, z = -1735.450 }, rot = { x = 0.000, y = 29.283, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 147004, gadget_id = 70350240, pos = { x = 2757.959, y = 195.145, z = -1735.349 }, rot = { x = 0.000, y = 67.550, z = 0.000 }, level = 1 },
	{ config_id = 147005, gadget_id = 70950076, pos = { x = 2752.582, y = 197.296, z = -1729.668 }, rot = { x = 0.000, y = 246.625, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 147006, gadget_id = 70350240, pos = { x = 2752.556, y = 194.903, z = -1729.780 }, rot = { x = 0.000, y = 284.893, z = 0.000 }, level = 1 },
	{ config_id = 147007, gadget_id = 70950079, pos = { x = 2751.108, y = 194.821, z = -1720.594 }, rot = { x = 0.000, y = 94.153, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 147008, gadget_id = 70350243, pos = { x = 2751.181, y = 196.501, z = -1720.506 }, rot = { x = 0.000, y = 132.420, z = 0.000 }, level = 1 },
	{ config_id = 147009, gadget_id = 70950079, pos = { x = 2758.252, y = 195.380, z = -1714.383 }, rot = { x = 0.000, y = 161.767, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 147010, gadget_id = 70350243, pos = { x = 2758.362, y = 197.059, z = -1714.418 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 147011, gadget_id = 70360001, pos = { x = 2758.362, y = 199.455, z = -1714.418 }, rot = { x = 0.000, y = 200.035, z = 0.000 }, level = 1 },
	{ config_id = 147012, gadget_id = 70950077, pos = { x = 2769.267, y = 197.025, z = -1716.675 }, rot = { x = 0.000, y = 46.640, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 147013, gadget_id = 70350241, pos = { x = 2769.252, y = 198.844, z = -1716.563 }, rot = { x = 0.000, y = 84.907, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 147014, gadget_id = 70360001, pos = { x = 2769.252, y = 201.239, z = -1716.563 }, rot = { x = 0.000, y = 84.907, z = 0.000 }, level = 1 },
	{ config_id = 147015, gadget_id = 70950078, pos = { x = 2773.573, y = 200.284, z = -1725.855 }, rot = { x = 0.000, y = 277.789, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 147016, gadget_id = 70350242, pos = { x = 2773.493, y = 197.891, z = -1725.937 }, rot = { x = 0.000, y = 316.056, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 147017, gadget_id = 70360001, pos = { x = 2773.493, y = 202.095, z = -1725.937 }, rot = { x = 0.000, y = 316.056, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 147018, gadget_id = 70350211, pos = { x = 2766.298, y = 199.833, z = -1731.173 }, rot = { x = 0.000, y = 147.356, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 147019, gadget_id = 70350270, pos = { x = 2766.380, y = 195.558, z = -1731.120 }, rot = { x = 0.000, y = 159.709, z = 0.000 }, level = 1 },
	{ config_id = 147020, gadget_id = 70350212, pos = { x = 2769.902, y = 200.958, z = -1731.037 }, rot = { x = 0.000, y = 144.125, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 147021, gadget_id = 70350212, pos = { x = 2764.893, y = 200.855, z = -1734.818 }, rot = { x = 0.000, y = 152.338, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 147022, gadget_id = 70350211, pos = { x = 2763.351, y = 197.508, z = -1742.215 }, rot = { x = 0.000, y = 182.248, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 147023, gadget_id = 70350270, pos = { x = 2763.441, y = 195.115, z = -1742.285 }, rot = { x = 0.000, y = 220.515, z = 0.000 }, level = 1 },
	{ config_id = 147024, gadget_id = 70350212, pos = { x = 2765.274, y = 195.182, z = -1742.303 }, rot = { x = 0.000, y = 182.248, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 147025, gadget_id = 70350212, pos = { x = 2761.452, y = 195.072, z = -1742.146 }, rot = { x = 0.000, y = 182.248, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 147069, gadget_id = 70950073, pos = { x = 2774.744, y = 200.958, z = -1737.732 }, rot = { x = 0.000, y = 144.125, z = 0.000 }, level = 1 },
	{ config_id = 147072, gadget_id = 70950073, pos = { x = 2769.018, y = 200.855, z = -1740.669 }, rot = { x = 0.000, y = 319.491, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1147029, name = "SELECT_OPTION_147029", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_147029", action = "action_EVENT_SELECT_OPTION_147029", trigger_count = 0 },
	{ config_id = 1147030, name = "GROUP_LOAD_147030", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_147030", trigger_count = 0 },
	{ config_id = 1147031, name = "GADGET_STATE_CHANGE_147031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147031", action = "action_EVENT_GADGET_STATE_CHANGE_147031", trigger_count = 0 },
	{ config_id = 1147032, name = "GADGET_STATE_CHANGE_147032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147032", action = "action_EVENT_GADGET_STATE_CHANGE_147032", trigger_count = 0 },
	{ config_id = 1147033, name = "GADGET_STATE_CHANGE_147033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147033", action = "action_EVENT_GADGET_STATE_CHANGE_147033", trigger_count = 0 },
	{ config_id = 1147034, name = "GADGET_STATE_CHANGE_147034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147034", action = "action_EVENT_GADGET_STATE_CHANGE_147034", trigger_count = 0 },
	{ config_id = 1147035, name = "GADGET_STATE_CHANGE_147035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147035", action = "action_EVENT_GADGET_STATE_CHANGE_147035", trigger_count = 0 },
	{ config_id = 1147036, name = "GADGET_STATE_CHANGE_147036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147036", action = "action_EVENT_GADGET_STATE_CHANGE_147036", trigger_count = 0 },
	{ config_id = 1147037, name = "GADGET_STATE_CHANGE_147037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147037", action = "action_EVENT_GADGET_STATE_CHANGE_147037", trigger_count = 0 },
	{ config_id = 1147038, name = "GADGET_STATE_CHANGE_147038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147038", action = "action_EVENT_GADGET_STATE_CHANGE_147038", trigger_count = 0 },
	{ config_id = 1147039, name = "GADGET_STATE_CHANGE_147039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147039", action = "action_EVENT_GADGET_STATE_CHANGE_147039", trigger_count = 0 },
	{ config_id = 1147040, name = "GADGET_STATE_CHANGE_147040", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147040", action = "action_EVENT_GADGET_STATE_CHANGE_147040", trigger_count = 0 },
	{ config_id = 1147041, name = "GADGET_CREATE_147041", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_147041", action = "action_EVENT_GADGET_CREATE_147041", trigger_count = 0 },
	{ config_id = 1147042, name = "GADGET_STATE_CHANGE_147042", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147042", action = "action_EVENT_GADGET_STATE_CHANGE_147042", trigger_count = 0 },
	{ config_id = 1147043, name = "GADGET_STATE_CHANGE_147043", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147043", action = "action_EVENT_GADGET_STATE_CHANGE_147043", trigger_count = 0 },
	{ config_id = 1147044, name = "GADGET_STATE_CHANGE_147044", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147044", action = "action_EVENT_GADGET_STATE_CHANGE_147044", trigger_count = 0 },
	{ config_id = 1147045, name = "GADGET_CREATE_147045", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_147045", action = "action_EVENT_GADGET_CREATE_147045", trigger_count = 0 },
	{ config_id = 1147046, name = "SELECT_OPTION_147046", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_147046", action = "action_EVENT_SELECT_OPTION_147046", trigger_count = 0 },
	{ config_id = 1147047, name = "SELECT_OPTION_147047", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_147047", action = "action_EVENT_SELECT_OPTION_147047", trigger_count = 0 },
	{ config_id = 1147048, name = "GADGET_STATE_CHANGE_147048", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147048", action = "action_EVENT_GADGET_STATE_CHANGE_147048", trigger_count = 0 },
	{ config_id = 1147049, name = "SELECT_OPTION_147049", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_147049", action = "action_EVENT_SELECT_OPTION_147049", trigger_count = 0 },
	{ config_id = 1147050, name = "GADGET_STATE_CHANGE_147050", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147050", action = "action_EVENT_GADGET_STATE_CHANGE_147050", trigger_count = 0 },
	{ config_id = 1147051, name = "GADGET_STATE_CHANGE_147051", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147051", action = "action_EVENT_GADGET_STATE_CHANGE_147051", trigger_count = 0 },
	{ config_id = 1147052, name = "GADGET_CREATE_147052", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_147052", action = "action_EVENT_GADGET_CREATE_147052", trigger_count = 0 },
	{ config_id = 1147053, name = "SELECT_OPTION_147053", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_147053", action = "action_EVENT_SELECT_OPTION_147053", trigger_count = 0 },
	{ config_id = 1147054, name = "SELECT_OPTION_147054", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_147054", action = "action_EVENT_SELECT_OPTION_147054", trigger_count = 0 },
	{ config_id = 1147055, name = "GADGET_STATE_CHANGE_147055", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147055", action = "action_EVENT_GADGET_STATE_CHANGE_147055", trigger_count = 0 },
	{ config_id = 1147056, name = "GADGET_STATE_CHANGE_147056", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147056", action = "action_EVENT_GADGET_STATE_CHANGE_147056", trigger_count = 0 },
	{ config_id = 1147057, name = "GADGET_STATE_CHANGE_147057", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147057", action = "action_EVENT_GADGET_STATE_CHANGE_147057", trigger_count = 0 },
	{ config_id = 1147058, name = "GADGET_STATE_CHANGE_147058", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147058", action = "action_EVENT_GADGET_STATE_CHANGE_147058", trigger_count = 0 },
	{ config_id = 1147059, name = "GADGET_STATE_CHANGE_147059", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147059", action = "action_EVENT_GADGET_STATE_CHANGE_147059", trigger_count = 0 },
	{ config_id = 1147060, name = "GADGET_STATE_CHANGE_147060", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147060", action = "action_EVENT_GADGET_STATE_CHANGE_147060", trigger_count = 0 },
	{ config_id = 1147061, name = "GADGET_STATE_CHANGE_147061", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147061", action = "action_EVENT_GADGET_STATE_CHANGE_147061", trigger_count = 0 },
	{ config_id = 1147062, name = "GADGET_STATE_CHANGE_147062", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147062", action = "action_EVENT_GADGET_STATE_CHANGE_147062", trigger_count = 0 },
	{ config_id = 1147063, name = "PLATFORM_REACH_POINT_147063", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_147063", action = "action_EVENT_PLATFORM_REACH_POINT_147063", trigger_count = 0 },
	{ config_id = 1147064, name = "PLATFORM_REACH_POINT_147064", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_147064", action = "action_EVENT_PLATFORM_REACH_POINT_147064", trigger_count = 0 },
	-- 销毁靶标后创建宝箱
	{ config_id = 1147065, name = "ANY_GADGET_DIE_147065", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_147065", action = "action_EVENT_ANY_GADGET_DIE_147065" },
	-- 开启了宝箱后刷新Group进度
	{ config_id = 1147066, name = "ANY_GADGET_DIE_147066", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_147066", action = "action_EVENT_ANY_GADGET_DIE_147066" },
	{ config_id = 1147067, name = "GADGET_STATE_CHANGE_147067", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147067", action = "action_EVENT_GADGET_STATE_CHANGE_147067", trigger_count = 0 },
	{ config_id = 1147068, name = "GADGET_STATE_CHANGE_147068", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_147068", action = "action_EVENT_GADGET_STATE_CHANGE_147068", trigger_count = 0 },
	{ config_id = 1147070, name = "ANY_GADGET_DIE_147070", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_147070", action = "action_EVENT_ANY_GADGET_DIE_147070", trigger_count = 0 },
	{ config_id = 1147071, name = "VARIABLE_CHANGE_147071", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_147071", action = "action_EVENT_VARIABLE_CHANGE_147071", trigger_count = 0 },
	{ config_id = 1147073, name = "TIMER_EVENT_147073", event = EventType.EVENT_TIMER_EVENT, source = "waitForHoops", condition = "condition_EVENT_TIMER_EVENT_147073", action = "action_EVENT_TIMER_EVENT_147073", trigger_count = 0 },
	{ config_id = 1147074, name = "VARIABLE_CHANGE_147074", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_147074", action = "action_EVENT_VARIABLE_CHANGE_147074", trigger_count = 0 }
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
		{ config_id = 147026, gadget_id = 70950073, pos = { x = 2756.369, y = 194.997, z = -1738.421 }, rot = { x = 0.000, y = 33.749, z = 0.000 }, level = 1 },
		{ config_id = 147027, gadget_id = 70950074, pos = { x = 2771.908, y = 198.080, z = -1714.289 }, rot = { x = 0.000, y = 55.432, z = 0.000 }, level = 1 },
		{ config_id = 147028, gadget_id = 70950075, pos = { x = 2776.236, y = 198.560, z = -1726.059 }, rot = { x = 0.000, y = 274.731, z = 0.000 }, level = 1 }
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
	end_suite = 3,
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
		gadgets = { 147001, 147002 },
		regions = { },
		triggers = { "GROUP_LOAD_147030", "ANY_GADGET_DIE_147066", "GADGET_STATE_CHANGE_147067", "GADGET_STATE_CHANGE_147068" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [加载羽球元素靶标&判定玩法成功],
		monsters = { },
		gadgets = { 147069, 147072 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [加载羽球元素靶标&判定玩法成功的方法2],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_GADGET_DIE_147070", "VARIABLE_CHANGE_147071", "TIMER_EVENT_147073", "VARIABLE_CHANGE_147074" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [玩法完成后的空Suite],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = [加载固定位置的元素台座],
		monsters = { },
		gadgets = { 147003, 147004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_147031", "GADGET_STATE_CHANGE_147032" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = [加载往复运动的元素台座],
		monsters = { },
		gadgets = { 147005, 147006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_147033", "GADGET_STATE_CHANGE_147034" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = [加载自转的元素台座（风）],
		monsters = { },
		gadgets = { 147007, 147008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_147036", "GADGET_STATE_CHANGE_147037" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = [加载可以调整其朝向的元素台座（风）],
		monsters = { },
		gadgets = { 147009, 147010, 147011 },
		regions = { },
		triggers = { "SELECT_OPTION_147029", "GADGET_STATE_CHANGE_147039", "GADGET_STATE_CHANGE_147040", "GADGET_CREATE_147041" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = [加载可以调整其左右位置的元素台座],
		monsters = { },
		gadgets = { 147012, 147013, 147014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_147043", "GADGET_STATE_CHANGE_147044", "GADGET_CREATE_147045", "SELECT_OPTION_147046", "SELECT_OPTION_147047", "SELECT_OPTION_147049" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = [加载可以调整其上下位置的元素台座],
		monsters = { },
		gadgets = { 147015, 147016, 147017 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_147050", "GADGET_STATE_CHANGE_147051", "GADGET_CREATE_147052", "SELECT_OPTION_147053", "SELECT_OPTION_147054" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = [加载固定位置的分裂台座],
		monsters = { },
		gadgets = { 147018, 147019, 147020, 147021 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_147035", "GADGET_STATE_CHANGE_147038", "GADGET_STATE_CHANGE_147042", "GADGET_STATE_CHANGE_147048", "GADGET_STATE_CHANGE_147055", "GADGET_STATE_CHANGE_147056", "GADGET_STATE_CHANGE_147059", "GADGET_STATE_CHANGE_147060" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = [加载往复运动的分裂台座],
		monsters = { },
		gadgets = { 147022, 147023, 147024, 147025 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_147057", "GADGET_STATE_CHANGE_147058", "GADGET_STATE_CHANGE_147061", "GADGET_STATE_CHANGE_147062", "PLATFORM_REACH_POINT_147063", "PLATFORM_REACH_POINT_147064" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_147029(context, evt)
	-- 判断是gadgetid 147011 option_id 211
	if 147011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_147029(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 147009, 110100018, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_147030(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101147, 3)
	
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101147, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147031(context, evt)
	if 147001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147031(context, evt)
	-- 将configid为 147003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147032(context, evt)
	if 147001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147032(context, evt)
	-- 将configid为 147003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147033(context, evt)
	if 147001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147033(context, evt)
	-- 将configid为 147005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 1, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 147005, 110100016, {2,3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 147006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147034(context, evt)
	if 147001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147034(context, evt)
	-- 将configid为 147005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 147005, 110100016, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 147006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147035(context, evt)
	if 147018 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147035(context, evt)
	-- 将configid为 147020 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147020, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147021 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147021, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147036(context, evt)
	if 147001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147036(context, evt)
	-- 将configid为 147007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 2, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 147007, 110100017, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 147008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147037(context, evt)
	if 147001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147037(context, evt)
	-- 将configid为 147007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 147007, 110100017, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 147008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147038(context, evt)
	if 147018 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147038(context, evt)
	-- 将configid为 147020 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147020, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147021 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147021, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147039(context, evt)
	if 147001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147039(context, evt)
	-- 将configid为 147009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 111101147 ；指定config：147011；物件身上指定option：211；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101147, 147011, 211) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147040(context, evt)
	if 147001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147040(context, evt)
	-- 将configid为 147009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101147, 147011, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_147041(context, evt)
	if 147011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_147041(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101147, 147011, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147042(context, evt)
	if 147018 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147042(context, evt)
	-- 将configid为 147020 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147020, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147021 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147021, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147043(context, evt)
	if 147001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147043(context, evt)
	-- 将configid为 147012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 111101147 ；指定config：147014；物件身上指定option：217；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101147, 147014, 217) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 111101147 ；指定config：147014；物件身上指定option：218；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101147, 147014, 218) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147044(context, evt)
	if 147001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147044(context, evt)
	-- 将configid为 147012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101147, 147014, {217,218,219}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_147045(context, evt)
	if 147014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_147045(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101147, 147014, {217,218,219}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_147046(context, evt)
	-- 判断是gadgetid 147014 option_id 217
	if 147014 ~= evt.param1 then
		return false	
	end
	
	if 217 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_147046(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 147012, 110100019, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_147047(context, evt)
	-- 判断是gadgetid 147014 option_id 218
	if 147014 ~= evt.param1 then
		return false	
	end
	
	if 218 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_147047(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 147012, 110100019, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147048(context, evt)
	if 147018 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147048(context, evt)
	-- 将configid为 147020 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147020, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147021 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147021, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_147049(context, evt)
	-- 判断是gadgetid 147014 option_id 219
	if 147014 ~= evt.param1 then
		return false	
	end
	
	if 219 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_147049(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 147012, 110100019, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147050(context, evt)
	if 147001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147050(context, evt)
	-- 将configid为 147012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 111101147 ；指定config：147017；物件身上指定option：215；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101147, 147017, 215) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 111101147 ；指定config：147017；物件身上指定option：216；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101147, 147017, 216) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147051(context, evt)
	if 147001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147051(context, evt)
	-- 将configid为 147012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101147, 147017, {215,216}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_147052(context, evt)
	if 147017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_147052(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101147, 147017, {215,216}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_147053(context, evt)
	-- 判断是gadgetid 147017 option_id 215
	if 147017 ~= evt.param1 then
		return false	
	end
	
	if 215 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_147053(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 147015, 110100020, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_147054(context, evt)
	-- 判断是gadgetid 147017 option_id 216
	if 147017 ~= evt.param1 then
		return false	
	end
	
	if 216 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_147054(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 147015, 110100020, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147055(context, evt)
	if 147001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147055(context, evt)
	-- 将configid为 147018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147056(context, evt)
	if 147001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147056(context, evt)
	-- 将configid为 147018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147019 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147019, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147057(context, evt)
	if 147001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147057(context, evt)
	-- 将configid为 147022 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147022, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147024 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147024, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147025 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147025, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 147022, 110100022, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 147024, 110100022, {5}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 147025, 110100022, {6}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 147023 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147023, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147058(context, evt)
	if 147001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147058(context, evt)
	-- 将configid为 147022 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147022, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147024 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147024, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147025 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147025, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 147022, 110100022, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 147024, 110100022, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 147025, 110100022, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 147023 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147023, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147059(context, evt)
	if 147018 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147059(context, evt)
	-- 将configid为 147020 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147020, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147021 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147021, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147060(context, evt)
	-- 检测config_id为147020的gadget是否从GadgetState.GearStop变为GadgetState.Default
	if 147020 ~= evt.param2 or GadgetState.Default ~= evt.param1 or GadgetState.GearStop ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147060(context, evt)
	-- 将configid为 147018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147061(context, evt)
	if 147022 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147061(context, evt)
	-- 将configid为 147024 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147024, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 147025 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147025, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147062(context, evt)
	if 147024 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147062(context, evt)
	-- 将configid为 147025 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147025, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_147063(context, evt)
	-- 判断是gadgetid 为 147024的移动平台，是否到达了999800005 的路线中的 5 点
	
	if 147024 ~= evt.param1 then
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
function action_EVENT_PLATFORM_REACH_POINT_147063(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 1, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 147024, 110100022, {5,7}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_147064(context, evt)
	-- 判断是gadgetid 为 147025的移动平台，是否到达了999800005 的路线中的 6 点
	
	if 147025 ~= evt.param1 then
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
function action_EVENT_PLATFORM_REACH_POINT_147064(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 1, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 147025, 110100022, {6,8}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_147065(context, evt)
	if 147026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_147065(context, evt)
	-- 将configid为 147002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147002, GadgetState.Default) then
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
function condition_EVENT_ANY_GADGET_DIE_147066(context, evt)
	if 147002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_147066(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 111101147, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147067(context, evt)
	if 147001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147067(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101147, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_147068(context, evt)
	if 147001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_147068(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101147, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_147070(context, evt)
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_147070(context, evt)
	-- 针对当前group内变量名为 "killedHoops" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "killedHoops", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_147071(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"killedHoops"为1
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_147071(context, evt)
	-- 延迟3秒后,向groupId为：111101147的对象,请求一次调用,并将string参数："waitForHoops" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101147, "waitForHoops", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_147073(context, evt)
	-- 判断变量"killedHoops"为1
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_147073(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101147, 2)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101147, 2)
	
	-- 将本组内变量名为 "killedHoops" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "killedHoops", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_147074(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"killedHoops"为2
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_147074(context, evt)
	-- 将configid为 147002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147002, GadgetState.Default) then
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
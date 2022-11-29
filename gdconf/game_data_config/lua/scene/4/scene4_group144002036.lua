-- 基础信息
local base_info = {
	group_id = 144002036
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
	{ config_id = 36001, gadget_id = 70360006, pos = { x = 358.566, y = 120.039, z = -535.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 36002, gadget_id = 70211112, pos = { x = 365.039, y = 120.133, z = -535.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 36003, gadget_id = 70350085, pos = { x = 363.965, y = 124.000, z = -503.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 36005, gadget_id = 70350243, pos = { x = 367.509, y = 120.282, z = -518.289 }, rot = { x = 0.000, y = 46.640, z = 0.000 }, level = 1, state = GadgetState.GearStop, is_use_point_array = true, area_id = 101 },
	{ config_id = 36006, gadget_id = 70950079, pos = { x = 367.390, y = 124.283, z = -518.329 }, rot = { x = 0.000, y = 1.309, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 36007, gadget_id = 70360001, pos = { x = 367.509, y = 120.282, z = -518.289 }, rot = { x = 0.000, y = 84.907, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 36009, gadget_id = 70350243, pos = { x = 353.694, y = 119.574, z = -512.635 }, rot = { x = 0.000, y = 46.640, z = 0.000 }, level = 1, state = GadgetState.GearStop, is_use_point_array = true, area_id = 101 },
	{ config_id = 36010, gadget_id = 70950079, pos = { x = 353.761, y = 123.700, z = -512.656 }, rot = { x = 0.000, y = 88.580, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 36011, gadget_id = 70360001, pos = { x = 353.694, y = 119.574, z = -512.635 }, rot = { x = 0.000, y = 84.907, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 36012, gadget_id = 70950077, pos = { x = 363.349, y = 124.291, z = -523.700 }, rot = { x = 0.000, y = 313.777, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 36013, gadget_id = 70350241, pos = { x = 363.361, y = 120.269, z = -523.464 }, rot = { x = 0.000, y = 84.907, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 101 },
	{ config_id = 36014, gadget_id = 70360001, pos = { x = 363.361, y = 120.269, z = -523.464 }, rot = { x = 0.000, y = 84.907, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 36015, gadget_id = 70950078, pos = { x = 363.392, y = 124.487, z = -518.615 }, rot = { x = 0.000, y = 315.335, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 36016, gadget_id = 70350242, pos = { x = 363.392, y = 120.310, z = -518.615 }, rot = { x = 0.000, y = 316.056, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 101 },
	{ config_id = 36017, gadget_id = 70360001, pos = { x = 363.392, y = 120.310, z = -518.615 }, rot = { x = 0.000, y = 316.056, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 101 },
	{ config_id = 36018, gadget_id = 70350211, pos = { x = 362.912, y = 123.869, z = -530.188 }, rot = { x = 0.000, y = 180.624, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 36019, gadget_id = 70350270, pos = { x = 363.060, y = 119.967, z = -530.213 }, rot = { x = 0.000, y = 159.709, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 36020, gadget_id = 70350212, pos = { x = 362.995, y = 123.735, z = -527.002 }, rot = { x = 0.000, y = 2.814, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 36021, gadget_id = 70350212, pos = { x = 366.691, y = 123.922, z = -527.000 }, rot = { x = 0.000, y = 3.940, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 36026, gadget_id = 70950074, pos = { x = 356.609, y = 124.000, z = -503.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 36027, gadget_id = 70950075, pos = { x = 363.965, y = 124.000, z = -503.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 36029, gadget_id = 70350085, pos = { x = 356.609, y = 124.000, z = -503.457 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 36041, gadget_id = 70350243, pos = { x = 353.858, y = 119.590, z = -518.838 }, rot = { x = 0.000, y = 46.640, z = 0.000 }, level = 1, state = GadgetState.GearStop, is_use_point_array = true, area_id = 101 },
	{ config_id = 36042, gadget_id = 70950079, pos = { x = 353.761, y = 123.700, z = -518.838 }, rot = { x = 0.000, y = 88.580, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 101 },
	{ config_id = 36060, gadget_id = 70360001, pos = { x = 353.858, y = 119.590, z = -518.838 }, rot = { x = 0.000, y = 84.907, z = 0.000 }, level = 1, area_id = 101 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1036004, name = "ANY_GADGET_DIE_36004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_36004", action = "action_EVENT_ANY_GADGET_DIE_36004", trigger_count = 0 },
	-- 进入了场地边线后，1）激活台座2）升起台座3）移除按钮
	{ config_id = 1036008, name = "GADGET_STATE_CHANGE_36008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36008", action = "action_EVENT_GADGET_STATE_CHANGE_36008", trigger_count = 0 },
	{ config_id = 1036022, name = "GADGET_STATE_CHANGE_36022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36022", action = "action_EVENT_GADGET_STATE_CHANGE_36022", trigger_count = 0 },
	-- 隐形操作台创建时添加按钮
	{ config_id = 1036023, name = "GADGET_CREATE_36023", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_36023", action = "action_EVENT_GADGET_CREATE_36023", trigger_count = 0 },
	-- 调整台座至左侧按钮
	{ config_id = 1036024, name = "SELECT_OPTION_36024", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_36024", action = "action_EVENT_SELECT_OPTION_36024", trigger_count = 0 },
	-- 调整台座至中间按钮
	{ config_id = 1036025, name = "SELECT_OPTION_36025", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_36025", action = "action_EVENT_SELECT_OPTION_36025", trigger_count = 0 },
	-- 调整台座至右侧按钮
	{ config_id = 1036028, name = "SELECT_OPTION_36028", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_36028", action = "action_EVENT_SELECT_OPTION_36028", trigger_count = 0 },
	-- 进入了场地边线后，1）激活台座2）升起台座3）移除按钮
	{ config_id = 1036030, name = "GADGET_STATE_CHANGE_36030", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36030", action = "action_EVENT_GADGET_STATE_CHANGE_36030", trigger_count = 0 },
	-- 加载此玩法所需的Suites，必须要在Suite3/4中选一个
	{ config_id = 1036031, name = "GROUP_LOAD_36031", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_36031", trigger_count = 0 },
	{ config_id = 1036032, name = "ANY_GADGET_DIE_36032", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_36032", action = "action_EVENT_ANY_GADGET_DIE_36032", trigger_count = 0 },
	{ config_id = 1036033, name = "TIMER_EVENT_36033", event = EventType.EVENT_TIMER_EVENT, source = "splitcd", condition = "", action = "action_EVENT_TIMER_EVENT_36033", trigger_count = 0 },
	{ config_id = 1036034, name = "GADGET_STATE_CHANGE_36034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36034", action = "action_EVENT_GADGET_STATE_CHANGE_36034", trigger_count = 0 },
	-- 隐形操作台创建时添加按钮
	{ config_id = 1036035, name = "GADGET_CREATE_36035", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_36035", action = "action_EVENT_GADGET_CREATE_36035", trigger_count = 0 },
	{ config_id = 1036036, name = "GADGET_STATE_CHANGE_36036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36036", action = "action_EVENT_GADGET_STATE_CHANGE_36036", trigger_count = 0 },
	-- 位置一
	{ config_id = 1036037, name = "SELECT_OPTION_36037", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_36037", action = "action_EVENT_SELECT_OPTION_36037", trigger_count = 0 },
	-- 重置
	{ config_id = 1036038, name = "SELECT_OPTION_36038", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_36038", action = "action_EVENT_SELECT_OPTION_36038", trigger_count = 0 },
	{ config_id = 1036039, name = "GADGET_STATE_CHANGE_36039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36039", action = "action_EVENT_GADGET_STATE_CHANGE_36039", trigger_count = 0 },
	-- 加载此玩法所需的Suites，必须要在Suite3/4中选一个
	{ config_id = 1036040, name = "GROUP_LOAD_36040", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_36040", action = "action_EVENT_GROUP_LOAD_36040", trigger_count = 0 },
	{ config_id = 1036043, name = "GADGET_STATE_CHANGE_36043", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36043", action = "action_EVENT_GADGET_STATE_CHANGE_36043", trigger_count = 0 },
	{ config_id = 1036044, name = "GADGET_STATE_CHANGE_36044", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36044", action = "action_EVENT_GADGET_STATE_CHANGE_36044", trigger_count = 0 },
	{ config_id = 1036045, name = "GADGET_STATE_CHANGE_36045", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36045", action = "action_EVENT_GADGET_STATE_CHANGE_36045", trigger_count = 0 },
	{ config_id = 1036046, name = "GADGET_CREATE_36046", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_36046", action = "action_EVENT_GADGET_CREATE_36046", trigger_count = 0 },
	-- 调整台座至左侧按钮
	{ config_id = 1036047, name = "SELECT_OPTION_36047", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_36047", action = "action_EVENT_SELECT_OPTION_36047", trigger_count = 0 },
	-- 调整台座至中间按钮
	{ config_id = 1036048, name = "SELECT_OPTION_36048", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_36048", action = "action_EVENT_SELECT_OPTION_36048", trigger_count = 0 },
	{ config_id = 1036049, name = "GADGET_STATE_CHANGE_36049", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36049", action = "action_EVENT_GADGET_STATE_CHANGE_36049", trigger_count = 0 },
	{ config_id = 1036050, name = "ANY_GADGET_DIE_36050", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_36050", action = "action_EVENT_ANY_GADGET_DIE_36050", trigger_count = 0 },
	-- killedHoops变量一旦非0即计时
	{ config_id = 1036051, name = "VARIABLE_CHANGE_36051", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_36051", action = "action_EVENT_VARIABLE_CHANGE_36051", trigger_count = 0 },
	{ config_id = 1036052, name = "TIMER_EVENT_36052", event = EventType.EVENT_TIMER_EVENT, source = "waitForRecreateHoops", condition = "condition_EVENT_TIMER_EVENT_36052", action = "action_EVENT_TIMER_EVENT_36052", trigger_count = 0 },
	-- 调整台座至右侧按钮
	{ config_id = 1036053, name = "SELECT_OPTION_36053", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_36053", action = "action_EVENT_SELECT_OPTION_36053", trigger_count = 0 },
	{ config_id = 1036054, name = "GADGET_STATE_CHANGE_36054", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36054", action = "action_EVENT_GADGET_STATE_CHANGE_36054", trigger_count = 0 },
	{ config_id = 1036055, name = "GADGET_STATE_CHANGE_36055", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36055", action = "action_EVENT_GADGET_STATE_CHANGE_36055", trigger_count = 0 },
	-- 隐形操作台创建时添加按钮
	{ config_id = 1036056, name = "GADGET_CREATE_36056", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_36056", action = "action_EVENT_GADGET_CREATE_36056", trigger_count = 0 },
	-- 点击向上后1)向上移动台座2)移除向上按钮，增加向下按钮
	{ config_id = 1036057, name = "SELECT_OPTION_36057", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_36057", action = "action_EVENT_SELECT_OPTION_36057", trigger_count = 0 },
	-- 点击向下后1)向下移动台座2)移除向下按钮，增加向上按钮
	{ config_id = 1036058, name = "SELECT_OPTION_36058", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_36058", action = "action_EVENT_SELECT_OPTION_36058", trigger_count = 0 },
	{ config_id = 1036059, name = "VARIABLE_CHANGE_36059", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_36059", action = "action_EVENT_VARIABLE_CHANGE_36059", trigger_count = 0 },
	{ config_id = 1036061, name = "GADGET_STATE_CHANGE_36061", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36061", action = "action_EVENT_GADGET_STATE_CHANGE_36061", trigger_count = 0 },
	{ config_id = 1036062, name = "GADGET_STATE_CHANGE_36062", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36062", action = "action_EVENT_GADGET_STATE_CHANGE_36062", trigger_count = 0 },
	{ config_id = 1036063, name = "GADGET_STATE_CHANGE_36063", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36063", action = "action_EVENT_GADGET_STATE_CHANGE_36063", trigger_count = 0 },
	{ config_id = 1036064, name = "GADGET_STATE_CHANGE_36064", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36064", action = "action_EVENT_GADGET_STATE_CHANGE_36064", trigger_count = 0 },
	{ config_id = 1036065, name = "GADGET_STATE_CHANGE_36065", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36065", action = "action_EVENT_GADGET_STATE_CHANGE_36065", trigger_count = 0 },
	{ config_id = 1036066, name = "GADGET_STATE_CHANGE_36066", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36066", action = "action_EVENT_GADGET_STATE_CHANGE_36066", trigger_count = 0 },
	{ config_id = 1036067, name = "GADGET_CREATE_36067", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_36067", action = "action_EVENT_GADGET_CREATE_36067", trigger_count = 0 },
	-- 调整台座至左侧按钮
	{ config_id = 1036068, name = "SELECT_OPTION_36068", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_36068", action = "action_EVENT_SELECT_OPTION_36068", trigger_count = 0 },
	-- 加载此玩法所需的Suites，必须要在Suite3/4中选一个
	{ config_id = 1036069, name = "GROUP_LOAD_36069", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_36069", action = "action_EVENT_GROUP_LOAD_36069", trigger_count = 0 },
	-- 调整台座至右侧按钮
	{ config_id = 1036070, name = "SELECT_OPTION_36070", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_36070", action = "action_EVENT_SELECT_OPTION_36070", trigger_count = 0 },
	{ config_id = 1036071, name = "TIMER_EVENT_36071", event = EventType.EVENT_TIMER_EVENT, source = "waitForRecreateHoops", condition = "condition_EVENT_TIMER_EVENT_36071", action = "action_EVENT_TIMER_EVENT_36071", trigger_count = 0 },
	-- 开启了宝箱后刷新Group进度
	{ config_id = 1036072, name = "GADGET_STATE_CHANGE_36072", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36072", action = "action_EVENT_GADGET_STATE_CHANGE_36072" },
	-- 踩踏重力压板后加载靶标
	{ config_id = 1036073, name = "GADGET_STATE_CHANGE_36073", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36073", action = "action_EVENT_GADGET_STATE_CHANGE_36073", trigger_count = 0 },
	-- 离开重力压板后卸载靶标
	{ config_id = 1036074, name = "GADGET_STATE_CHANGE_36074", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_36074", action = "action_EVENT_GADGET_STATE_CHANGE_36074", trigger_count = 0 },
	-- 加载此玩法所需的Suites，必须要在Suite3/4中选一个
	{ config_id = 1036075, name = "GROUP_LOAD_36075", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_36075", action = "action_EVENT_GROUP_LOAD_36075", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hoop1Pos", value = 0, no_refresh = false },
	{ config_id = 2, name = "hoop2Pos", value = 0, no_refresh = false },
	{ config_id = 3, name = "complete", value = 0, no_refresh = false },
	{ config_id = 4, name = "killedHoops", value = 0, no_refresh = false },
	{ config_id = 5, name = "turncount", value = 0, no_refresh = false },
	{ config_id = 6, name = "done", value = 0, no_refresh = true },
	{ config_id = 7, name = "feng1", value = 2, no_refresh = false },
	{ config_id = 8, name = "feng2", value = 1, no_refresh = false },
	{ config_id = 9, name = "shui", value = 1, no_refresh = false },
	{ config_id = 10, name = "lei", value = 2, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 12,
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
		gadgets = { 36001, 36002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_36004", "GROUP_LOAD_36031", "ANY_GADGET_DIE_36032", "GROUP_LOAD_36069", "GADGET_STATE_CHANGE_36072", "GADGET_STATE_CHANGE_36073", "GADGET_STATE_CHANGE_36074" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [羽球镜头控制器和目标点],
		monsters = { },
		gadgets = { 36029 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [需销毁多个靶标的判定方法],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_GADGET_DIE_36050", "VARIABLE_CHANGE_36051", "TIMER_EVENT_36052", "VARIABLE_CHANGE_36059" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [加载可以调整其朝向的元素台座（风）],
		monsters = { },
		gadgets = { 36009, 36010, 36011 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_36030", "GADGET_STATE_CHANGE_36034", "GADGET_CREATE_36035", "SELECT_OPTION_36037", "SELECT_OPTION_36038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = [加载可以调整其左右位置的元素台座],
		monsters = { },
		gadgets = { 36012, 36013, 36014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_36044", "GADGET_STATE_CHANGE_36045", "GADGET_CREATE_36046", "SELECT_OPTION_36047", "SELECT_OPTION_36048", "SELECT_OPTION_36053" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = [加载可以调整其上下位置的元素台座],
		monsters = { },
		gadgets = { 36015, 36016, 36017 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_36054", "GADGET_STATE_CHANGE_36055", "GADGET_CREATE_36056", "SELECT_OPTION_36057", "SELECT_OPTION_36058" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = [加载固定位置的分裂台座],
		monsters = { },
		gadgets = { 36018, 36019, 36020, 36021 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_36036", "GADGET_STATE_CHANGE_36039", "GADGET_STATE_CHANGE_36043", "GADGET_STATE_CHANGE_36049", "GADGET_STATE_CHANGE_36061", "GADGET_STATE_CHANGE_36062", "GADGET_STATE_CHANGE_36065", "GADGET_STATE_CHANGE_36066" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 36005, 36006, 36007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_36008", "GADGET_STATE_CHANGE_36022", "GADGET_CREATE_36023", "SELECT_OPTION_36024", "SELECT_OPTION_36025", "SELECT_OPTION_36028" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 36041, 36042, 36060 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_36063", "GADGET_STATE_CHANGE_36064", "GADGET_CREATE_36067", "SELECT_OPTION_36068", "SELECT_OPTION_36070" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 36026, 36027 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 36003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_36040", "GROUP_LOAD_36075" },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
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
		gadgets = { },
		regions = { },
		triggers = { "TIMER_EVENT_36033", "TIMER_EVENT_36071" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_36004(context, evt)
	if 36027 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_36004(context, evt)
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002036, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36008(context, evt)
	if 36001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36008(context, evt)
	-- 将configid为 36006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36022(context, evt)
	if 36001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36022(context, evt)
	-- 将configid为 36006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_36023(context, evt)
	if 36007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_36023(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144002036, 36007, {217,218,219}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_36024(context, evt)
	-- 判断是gadgetid 36007 option_id 217
	if 36007 ~= evt.param1 then
		return false	
	end
	
	if 217 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_36024(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 36006, 400200021, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "feng1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "feng1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_36025(context, evt)
	-- 判断是gadgetid 36007 option_id 218
	if 36007 ~= evt.param1 then
		return false	
	end
	
	if 218 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_36025(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 36006, 400200021, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "feng1" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "feng1", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_36028(context, evt)
	-- 判断是gadgetid 36007 option_id 219
	if 36007 ~= evt.param1 then
		return false	
	end
	
	if 219 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"lei"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "lei", 144002036) == 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_36028(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 36006, 400200021, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "feng1" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "feng1", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36030(context, evt)
	if 36001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36030(context, evt)
	-- 将configid为 36010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_36031(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 6)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 7)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 8)
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 9)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_36032(context, evt)
	if 36026 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_36032(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002036, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_36033(context, evt)
		-- 设置指定gadget的globalvalue
	  local CurValue = ScriptLib.GetGadgetAbilityFloatValue(context, 144002036, 36018, "LudiSplitter_Active")
	
	  local DeltaValue = math.ceil(1 - CurValue) 
	
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {36018}, "LudiSplitter_Active", DeltaValue)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36034(context, evt)
	if 36001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36034(context, evt)
	-- 将configid为 36010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_36035(context, evt)
	if 36011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_36035(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144002036, 36011, {217,218}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36036(context, evt)
	if 36018 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36036(context, evt)
	-- 将configid为 36020 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36020, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 36021 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36021, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_36037(context, evt)
	-- 判断是gadgetid 36011 option_id 217
	if 36011 ~= evt.param1 then
		return false	
	end
	
	if 217 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_36037(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 36010, 400200024, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_36038(context, evt)
	-- 判断是gadgetid 36011 option_id 218
	if 36011 ~= evt.param1 then
		return false	
	end
	
	if 218 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_36038(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 36010, 400200024, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36039(context, evt)
	if 36018 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36039(context, evt)
	-- 将configid为 36020 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36020, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 36021 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36021, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_36040(context, evt)
	-- 判断变量"complete"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "complete", 144002081) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_36040(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144002036, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 6)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 7)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 8)
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 9)
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36043(context, evt)
	if 36018 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36043(context, evt)
	-- 将configid为 36020 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36020, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 36021 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36021, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36044(context, evt)
	if 36001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36044(context, evt)
	-- 将configid为 36012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36045(context, evt)
	if 36001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36045(context, evt)
	-- 将configid为 36012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_36046(context, evt)
	if 36014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_36046(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144002036, 36014, {217,218,219}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_36047(context, evt)
	-- 判断是gadgetid 36014 option_id 217
	if 36014 ~= evt.param1 then
		return false	
	end
	
	if 217 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"feng1"为3
	if ScriptLib.GetGroupVariableValueByGroup(context, "feng1", 144002036) == 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_36047(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 36012, 400200023, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "lei" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lei", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_36048(context, evt)
	-- 判断是gadgetid 36014 option_id 218
	if 36014 ~= evt.param1 then
		return false	
	end
	
	if 218 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_36048(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 36012, 400200023, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "lei" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lei", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36049(context, evt)
	if 36018 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36049(context, evt)
	-- 将configid为 36020 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36020, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 36021 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36021, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_36050(context, evt)
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_36050(context, evt)
	-- 针对当前group内变量名为 "killedHoops" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "killedHoops", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_36051(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"killedHoops"为1
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_36051(context, evt)
	-- 延迟2秒后,向groupId为：144002036的对象,请求一次调用,并将string参数："waitForRecreateHoops" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144002036, "waitForRecreateHoops", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_36052(context, evt)
	-- 判断变量"killedHoops"为1
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_36052(context, evt)
	-- 删除suite10的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002036, 10)
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 10)
	
	-- 将本组内变量名为 "killedHoops" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "killedHoops", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_36053(context, evt)
	-- 判断是gadgetid 36014 option_id 219
	if 36014 ~= evt.param1 then
		return false	
	end
	
	if 219 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_36053(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 36012, 400200023, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "lei" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "lei", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36054(context, evt)
	if 36001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36054(context, evt)
	-- 将configid为 36015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36055(context, evt)
	if 36001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36055(context, evt)
	-- 将configid为 36015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_36056(context, evt)
	if 36017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_36056(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144002036, 36017, {217,216}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_36057(context, evt)
	-- 判断是gadgetid 36017 option_id 217
	if 36017 ~= evt.param1 then
		return false	
	end
	
	if 217 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"feng2"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "feng2", 144002036) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_36057(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 36015, 400200022, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "shui" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "shui", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_36058(context, evt)
	-- 判断是gadgetid 36017 option_id 216
	if 36017 ~= evt.param1 then
		return false	
	end
	
	if 216 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_36058(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 36015, 400200022, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "shui" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "shui", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_36059(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"killedHoops"为2
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_36059(context, evt)
	-- 将configid为 36002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144002036, 2)
	
	-- 将本组内变量名为 "complete" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "complete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36061(context, evt)
	if 36001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36061(context, evt)
	-- 将configid为 36018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 设置指定gadget的globalvalue
	  local CurValue = ScriptLib.GetGadgetAbilityFloatValue(context, 144002036, 36018, "LudiSplitter_Active")
	
	  local DeltaValue = math.ceil(1 - CurValue) 
	
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {36018}, "LudiSplitter_Active", DeltaValue)
	
	-- 将configid为 36019 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36019, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36062(context, evt)
	if 36001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36062(context, evt)
	-- 将configid为 36018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 设置指定gadget的globalvalue
	  local CurValue = ScriptLib.GetGadgetAbilityFloatValue(context, 144002036, 36018, "LudiSplitter_Active")
	
	  local DeltaValue = math.ceil(0 - CurValue) 
	
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {36018}, "LudiSplitter_Active", DeltaValue)
	
	-- 将configid为 36019 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36019, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36063(context, evt)
	if 36001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36063(context, evt)
	-- 将configid为 36042 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36042, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36064(context, evt)
	if 36001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36064(context, evt)
	-- 将configid为 36042 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36042, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36065(context, evt)
	if 36018 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36065(context, evt)
	-- 将configid为 36020 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36020, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 36021 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36021, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36066(context, evt)
	if 36020 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36066(context, evt)
	-- 将configid为 36018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 36018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 设置指定gadget的globalvalue
	  local CurValue = ScriptLib.GetGadgetAbilityFloatValue(context, 144002036, 36018, "LudiSplitter_Active")
	
	  local DeltaValue = math.ceil(0 - CurValue) 
	
	  ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {36018}, "LudiSplitter_Active", DeltaValue)
	
	-- 延迟2秒后,向groupId为：144002036的对象,请求一次调用,并将string参数："splitcd" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144002036, "splitcd", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_36067(context, evt)
	if 36060 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_36067(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144002036, 36060, {217,218}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_36068(context, evt)
	-- 判断是gadgetid 36060 option_id 218
	if 36060 ~= evt.param1 then
		return false	
	end
	
	if 218 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_36068(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 36042, 400200020, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "feng2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "feng2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_36069(context, evt)
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_36069(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 10)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_36070(context, evt)
	-- 判断是gadgetid 36060 option_id 217
	if 36060 ~= evt.param1 then
		return false	
	end
	
	if 217 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"shui"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "shui", 144002036) ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_36070(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 36042, 400200020, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将本组内变量名为 "feng2" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "feng2", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_36071(context, evt)
	-- 判断变量"killedHoops"为1
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_36071(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002036, 2)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002036, 11)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 2)
	
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 11)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36072(context, evt)
	if 36002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36072(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144002036, 13) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 将本组内变量名为 "done" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "done", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36073(context, evt)
	if 36001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36073(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 2)
	
	-- 添加suite11的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 11)
	
	-- 添加suite14的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 14)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_36074(context, evt)
	if 36001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_36074(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002036, 2)
	
	-- 删除suite11的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002036, 11)
	
	-- 删除suite14的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144002036, 14)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_36075(context, evt)
	-- 判断变量"done"为1
	if ScriptLib.GetGroupVariableValue(context, "done") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_36075(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144002036, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 5)
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 6)
	
	-- 添加suite7的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 7)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 8)
	
	-- 添加suite9的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 9)
	
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002036, 10)
	
	return 0
end
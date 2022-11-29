-- 基础信息
local base_info = {
	group_id = 144004054
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
	{ config_id = 54001, gadget_id = 70360006, pos = { x = -65.266, y = 120.434, z = -812.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 54002, gadget_id = 70211102, pos = { x = -35.724, y = 119.633, z = -796.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 100 },
	{ config_id = 54003, gadget_id = 70950078, pos = { x = -56.006, y = 125.325, z = -816.142 }, rot = { x = 0.000, y = 115.085, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 54004, gadget_id = 70350242, pos = { x = -56.150, y = 120.470, z = -816.448 }, rot = { x = 0.000, y = 87.031, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 54005, gadget_id = 70950076, pos = { x = -81.115, y = 118.022, z = -810.967 }, rot = { x = 0.000, y = 246.625, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 54006, gadget_id = 70350240, pos = { x = -81.141, y = 114.554, z = -811.079 }, rot = { x = 0.000, y = 284.893, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 54007, gadget_id = 70950079, pos = { x = -82.590, y = 118.955, z = -801.894 }, rot = { x = 0.000, y = 94.153, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 54008, gadget_id = 70350243, pos = { x = -82.517, y = 115.523, z = -801.806 }, rot = { x = 0.000, y = 132.420, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 54009, gadget_id = 70950079, pos = { x = -43.379, y = 123.948, z = -821.380 }, rot = { x = 0.000, y = 287.235, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 54010, gadget_id = 70350243, pos = { x = -43.641, y = 120.755, z = -821.537 }, rot = { x = 0.000, y = 91.314, z = 0.000 }, level = 1, state = GadgetState.GearStop, area_id = 100 },
	{ config_id = 54011, gadget_id = 70360001, pos = { x = -43.641, y = 121.813, z = -821.537 }, rot = { x = 0.000, y = 32.904, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 54012, gadget_id = 70950077, pos = { x = -64.431, y = 121.145, z = -797.974 }, rot = { x = 0.000, y = 46.640, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 54013, gadget_id = 70350241, pos = { x = -64.446, y = 117.061, z = -797.861 }, rot = { x = 0.000, y = 84.907, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 100 },
	{ config_id = 54014, gadget_id = 70360001, pos = { x = -64.446, y = 117.432, z = -797.861 }, rot = { x = 0.000, y = 84.907, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 54015, gadget_id = 70950078, pos = { x = -60.125, y = 119.433, z = -807.153 }, rot = { x = 0.000, y = 277.789, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 54016, gadget_id = 70350242, pos = { x = -60.204, y = 115.979, z = -807.236 }, rot = { x = 0.000, y = 316.056, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 100 },
	{ config_id = 54017, gadget_id = 70360001, pos = { x = -60.204, y = 115.979, z = -807.236 }, rot = { x = 0.000, y = 316.056, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 100 },
	{ config_id = 54018, gadget_id = 70350211, pos = { x = -61.788, y = 117.401, z = -816.384 }, rot = { x = 0.000, y = 121.442, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 54019, gadget_id = 70350270, pos = { x = -61.944, y = 116.007, z = -816.439 }, rot = { x = 0.000, y = 159.709, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 54020, gadget_id = 70350212, pos = { x = -60.774, y = 119.090, z = -814.750 }, rot = { x = 0.000, y = 121.442, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 54021, gadget_id = 70350212, pos = { x = -62.776, y = 119.039, z = -818.010 }, rot = { x = 0.000, y = 121.442, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 54022, gadget_id = 70350211, pos = { x = -70.347, y = 116.167, z = -823.513 }, rot = { x = 0.000, y = 182.248, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 54023, gadget_id = 70350270, pos = { x = -70.257, y = 114.773, z = -823.583 }, rot = { x = 0.000, y = 220.515, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 54024, gadget_id = 70350212, pos = { x = -68.426, y = 117.856, z = -823.600 }, rot = { x = 0.000, y = 182.248, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 54025, gadget_id = 70350212, pos = { x = -72.248, y = 117.805, z = -823.443 }, rot = { x = 0.000, y = 182.248, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 100 },
	{ config_id = 54028, gadget_id = 70950075, pos = { x = -35.250, y = 123.948, z = -796.537 }, rot = { x = 0.000, y = 198.237, z = 0.000 }, level = 1, area_id = 100 },
	{ config_id = 54029, gadget_id = 70350085, pos = { x = -35.250, y = 123.948, z = -796.537 }, rot = { x = 0.000, y = 198.237, z = 0.000 }, level = 1, area_id = 100 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 按需加载台座相关的Suites
	{ config_id = 1054030, name = "SELECT_OPTION_54030", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_54030", action = "action_EVENT_SELECT_OPTION_54030", trigger_count = 0 },
	-- 进入了场地边线后，1）激活台座2）升起台座3）激活底座
	{ config_id = 1054031, name = "GROUP_LOAD_54031", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_54031", trigger_count = 0 },
	-- 离开了场地边线后，1）恢复台座2）降落台座3）恢复底座
	{ config_id = 1054032, name = "GADGET_STATE_CHANGE_54032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54032", action = "action_EVENT_GADGET_STATE_CHANGE_54032", trigger_count = 0 },
	-- 进入了场地边线后，1）激活台座2）升起台座3）激活底座
	{ config_id = 1054033, name = "GADGET_STATE_CHANGE_54033", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54033", action = "action_EVENT_GADGET_STATE_CHANGE_54033", trigger_count = 0 },
	-- 离开了场地边线后，1）恢复台座2）降落台座3）恢复底座
	{ config_id = 1054034, name = "GADGET_STATE_CHANGE_54034", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54034", action = "action_EVENT_GADGET_STATE_CHANGE_54034", trigger_count = 0 },
	-- 底座到达上升的终点后开始往复运动
	{ config_id = 1054035, name = "GADGET_STATE_CHANGE_54035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54035", action = "action_EVENT_GADGET_STATE_CHANGE_54035", trigger_count = 0 },
	-- 进入了场地边线后，1）激活台座2）升起台座3）激活底座
	{ config_id = 1054036, name = "GADGET_STATE_CHANGE_54036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54036", action = "action_EVENT_GADGET_STATE_CHANGE_54036", trigger_count = 0 },
	-- 离开了场地边线后，1）恢复台座2）降落台座3）恢复底座
	{ config_id = 1054037, name = "GADGET_STATE_CHANGE_54037", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54037", action = "action_EVENT_GADGET_STATE_CHANGE_54037", trigger_count = 0 },
	-- 底座到达上升的终点后开始自转
	{ config_id = 1054038, name = "GADGET_STATE_CHANGE_54038", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54038", action = "action_EVENT_GADGET_STATE_CHANGE_54038", trigger_count = 0 },
	-- 进入了场地边线后，1）激活台座2）升起台座3）移除按钮
	{ config_id = 1054039, name = "GADGET_STATE_CHANGE_54039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54039", action = "action_EVENT_GADGET_STATE_CHANGE_54039", trigger_count = 0 },
	-- 离开了场地边线后，1）恢复台座2）降落台座3）添加按钮
	{ config_id = 1054040, name = "GADGET_STATE_CHANGE_54040", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54040", action = "action_EVENT_GADGET_STATE_CHANGE_54040", trigger_count = 0 },
	-- 隐形操作台创建时添加按钮
	{ config_id = 1054041, name = "GADGET_STATE_CHANGE_54041", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54041", action = "action_EVENT_GADGET_STATE_CHANGE_54041", trigger_count = 0 },
	-- 跟按钮交互后顺时针旋转台座
	{ config_id = 1054042, name = "GADGET_CREATE_54042", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_54042", action = "action_EVENT_GADGET_CREATE_54042", trigger_count = 0 },
	-- 进入了场地边线后，1）激活台座2）升起台座3）移除按钮
	{ config_id = 1054043, name = "GADGET_STATE_CHANGE_54043", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54043", action = "action_EVENT_GADGET_STATE_CHANGE_54043", trigger_count = 0 },
	-- 离开了场地边线后，1）恢复台座2）降落台座3）添加按钮
	{ config_id = 1054044, name = "GADGET_STATE_CHANGE_54044", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54044", action = "action_EVENT_GADGET_STATE_CHANGE_54044", trigger_count = 0 },
	-- 隐形操作台创建时添加按钮
	{ config_id = 1054045, name = "GADGET_STATE_CHANGE_54045", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54045", action = "action_EVENT_GADGET_STATE_CHANGE_54045", trigger_count = 0 },
	-- 台座位于中间跟按钮交互后向左移动台座
	{ config_id = 1054046, name = "GADGET_CREATE_54046", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_54046", action = "action_EVENT_GADGET_CREATE_54046", trigger_count = 0 },
	-- 台座位于中间跟按钮交互后向右移动台座
	{ config_id = 1054047, name = "SELECT_OPTION_54047", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_54047", action = "action_EVENT_SELECT_OPTION_54047", trigger_count = 0 },
	-- 台座位处中间1)改变变量2)先删再加按钮
	{ config_id = 1054048, name = "SELECT_OPTION_54048", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_54048", action = "action_EVENT_SELECT_OPTION_54048", trigger_count = 0 },
	-- 台座位处最左侧1)改变变量2)先删再加按钮
	{ config_id = 1054049, name = "GADGET_STATE_CHANGE_54049", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54049", action = "action_EVENT_GADGET_STATE_CHANGE_54049", trigger_count = 0 },
	-- 台座位处最右侧1)改变变量2)删除按钮
	{ config_id = 1054050, name = "ANY_GADGET_DIE_54050", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_54050", action = "action_EVENT_ANY_GADGET_DIE_54050", trigger_count = 0 },
	-- 台座位于最左侧跟按钮交互后向右移动台座
	{ config_id = 1054051, name = "VARIABLE_CHANGE_54051", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_54051", action = "action_EVENT_VARIABLE_CHANGE_54051", trigger_count = 0 },
	-- 台座位于最右侧跟按钮交互后向右移动台座
	{ config_id = 1054052, name = "TIMER_EVENT_54052", event = EventType.EVENT_TIMER_EVENT, source = "waitForRecreateHoops", condition = "condition_EVENT_TIMER_EVENT_54052", action = "action_EVENT_TIMER_EVENT_54052", trigger_count = 0 },
	-- 进入了场地边线后，1）激活台座2）移除全部按钮
	{ config_id = 1054053, name = "SELECT_OPTION_54053", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_54053", action = "action_EVENT_SELECT_OPTION_54053", trigger_count = 0 },
	-- 离开了场地边线后，1）恢复台座2）添加按钮3)降落台座
	{ config_id = 1054054, name = "GADGET_STATE_CHANGE_54054", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54054", action = "action_EVENT_GADGET_STATE_CHANGE_54054", trigger_count = 0 },
	-- 隐形操作台创建时添加按钮
	{ config_id = 1054055, name = "GADGET_STATE_CHANGE_54055", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54055", action = "action_EVENT_GADGET_STATE_CHANGE_54055", trigger_count = 0 },
	-- 台座位于最下处跟按钮交互后1)向上移动台座2)移除向下按钮
	{ config_id = 1054056, name = "GADGET_CREATE_54056", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_54056", action = "action_EVENT_GADGET_CREATE_54056", trigger_count = 0 },
	-- 台座位于最上处跟按钮交互后1)向下移动台座2)移除向上按钮
	{ config_id = 1054057, name = "SELECT_OPTION_54057", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_54057", action = "action_EVENT_SELECT_OPTION_54057", trigger_count = 0 },
	-- 台座位处最下处1)移除向下按钮2)增加向上按钮
	{ config_id = 1054058, name = "SELECT_OPTION_54058", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_54058", action = "action_EVENT_SELECT_OPTION_54058", trigger_count = 0 },
	-- 台座位处最上处1)移除向上按钮2)增加向下按钮
	{ config_id = 1054059, name = "VARIABLE_CHANGE_54059", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_54059", action = "action_EVENT_VARIABLE_CHANGE_54059", trigger_count = 0 },
	-- 进入了场地边线后，1）激活台座2）升起台座3）激活底座
	{ config_id = 1054060, name = "SELECT_OPTION_54060", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_54060", action = "action_EVENT_SELECT_OPTION_54060", trigger_count = 0 },
	-- 离开了场地边线后，1）恢复台座2）降落台座3）恢复底座
	{ config_id = 1054061, name = "GADGET_STATE_CHANGE_54061", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54061", action = "action_EVENT_GADGET_STATE_CHANGE_54061", trigger_count = 0 },
	-- 进入了场地边线后，1）激活台座2）升起台座3）激活底座
	{ config_id = 1054062, name = "GADGET_STATE_CHANGE_54062", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54062", action = "action_EVENT_GADGET_STATE_CHANGE_54062", trigger_count = 0 },
	-- 离开了场地边线后，1）恢复台座2）降落台座3）恢复底座
	{ config_id = 1054063, name = "GADGET_STATE_CHANGE_54063", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54063", action = "action_EVENT_GADGET_STATE_CHANGE_54063", trigger_count = 0 },
	-- 羽球接收器受击后使发射器发球
	{ config_id = 1054064, name = "GADGET_STATE_CHANGE_54064", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54064", action = "action_EVENT_GADGET_STATE_CHANGE_54064", trigger_count = 0 },
	-- 羽球发射器发球后使接收器重置
	{ config_id = 1054065, name = "GADGET_STATE_CHANGE_54065", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54065", action = "action_EVENT_GADGET_STATE_CHANGE_54065", trigger_count = 0 },
	-- 羽球接收器受击后使发射器发球
	{ config_id = 1054066, name = "GADGET_STATE_CHANGE_54066", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54066", action = "action_EVENT_GADGET_STATE_CHANGE_54066", trigger_count = 0 },
	-- 羽球发射器发球后使接收器重置
	{ config_id = 1054067, name = "GADGET_STATE_CHANGE_54067", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54067", action = "action_EVENT_GADGET_STATE_CHANGE_54067", trigger_count = 0 },
	-- 发射器1到达上升的终点后开始往复运动
	{ config_id = 1054068, name = "GADGET_STATE_CHANGE_54068", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54068", action = "action_EVENT_GADGET_STATE_CHANGE_54068", trigger_count = 0 },
	-- 发射器2到达上升的终点后开始往复运动
	{ config_id = 1054069, name = "PLATFORM_REACH_POINT_54069", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_54069", action = "action_EVENT_PLATFORM_REACH_POINT_54069", trigger_count = 0 },
	-- 销毁靶标后改变宝箱状态
	{ config_id = 1054070, name = "PLATFORM_REACH_POINT_54070", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_54070", action = "action_EVENT_PLATFORM_REACH_POINT_54070", trigger_count = 0 },
	-- 开启了宝箱后刷新Group进度
	{ config_id = 1054071, name = "ANY_GADGET_DIE_54071", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_54071", action = "action_EVENT_ANY_GADGET_DIE_54071" },
	{ config_id = 1054072, name = "GADGET_STATE_CHANGE_54072", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54072", action = "action_EVENT_GADGET_STATE_CHANGE_54072" },
	{ config_id = 1054073, name = "GADGET_STATE_CHANGE_54073", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54073", action = "action_EVENT_GADGET_STATE_CHANGE_54073", trigger_count = 0 },
	{ config_id = 1054074, name = "GADGET_STATE_CHANGE_54074", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_54074", action = "action_EVENT_GADGET_STATE_CHANGE_54074", trigger_count = 0 },
	{ config_id = 1054075, name = "SELECT_OPTION_54075", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_54075", action = "action_EVENT_SELECT_OPTION_54075", trigger_count = 0 },
	{ config_id = 1054076, name = "SELECT_OPTION_54076", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_54076", action = "action_EVENT_SELECT_OPTION_54076", trigger_count = 0 },
	-- 变量到4后重置
	{ config_id = 1054077, name = "VARIABLE_CHANGE_54077", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_54077", action = "action_EVENT_VARIABLE_CHANGE_54077", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "hoop1Pos", value = 0, no_refresh = false },
	{ config_id = 2, name = "hoop2Pos", value = 0, no_refresh = false },
	{ config_id = 3, name = "complete", value = 0, no_refresh = true },
	{ config_id = 4, name = "killedHoops", value = 0, no_refresh = false },
	{ config_id = 5, name = "turncount", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 54026, gadget_id = 70950073, pos = { x = -77.328, y = 121.423, z = -819.721 }, rot = { x = 0.000, y = 33.749, z = 0.000 }, level = 1, area_id = 100 },
		{ config_id = 54027, gadget_id = 70950074, pos = { x = -61.788, y = 122.850, z = -795.587 }, rot = { x = 0.000, y = 55.432, z = 0.000 }, level = 1, area_id = 100 }
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
		gadgets = { 54001, 54002, 54028 },
		regions = { },
		triggers = { "GROUP_LOAD_54031", "GADGET_STATE_CHANGE_54072", "GADGET_STATE_CHANGE_54073", "GADGET_STATE_CHANGE_54074" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [羽球镜头控制器和目标点],
		monsters = { },
		gadgets = { 54029 },
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
		triggers = { "ANY_GADGET_DIE_54071" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [需销毁多个靶标的判定方法],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "ANY_GADGET_DIE_54050", "VARIABLE_CHANGE_54051", "TIMER_EVENT_54052", "VARIABLE_CHANGE_54059" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = [加载固定位置的元素台座],
		monsters = { },
		gadgets = { 54003, 54004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_54032", "GADGET_STATE_CHANGE_54033" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = [加载往复运动的元素台座],
		monsters = { },
		gadgets = { 54005, 54006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_54034", "GADGET_STATE_CHANGE_54035" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = [加载自转的元素台座（风）],
		monsters = { },
		gadgets = { 54007, 54008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_54037", "GADGET_STATE_CHANGE_54038" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = [加载可以调整其朝向的元素台座（风）],
		monsters = { },
		gadgets = { 54009, 54010, 54011 },
		regions = { },
		triggers = { "SELECT_OPTION_54030", "GADGET_STATE_CHANGE_54040", "GADGET_STATE_CHANGE_54041", "GADGET_CREATE_54042", "SELECT_OPTION_54060", "SELECT_OPTION_54075", "SELECT_OPTION_54076", "VARIABLE_CHANGE_54077" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = [加载可以调整其左右位置的元素台座],
		monsters = { },
		gadgets = { 54012, 54013, 54014 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_54044", "GADGET_STATE_CHANGE_54045", "GADGET_CREATE_54046", "SELECT_OPTION_54047", "SELECT_OPTION_54048", "SELECT_OPTION_54053" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = [加载可以调整其上下位置的元素台座],
		monsters = { },
		gadgets = { 54015, 54016, 54017 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_54054", "GADGET_STATE_CHANGE_54055", "GADGET_CREATE_54056", "SELECT_OPTION_54057", "SELECT_OPTION_54058" },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = [加载固定位置的分裂台座],
		monsters = { },
		gadgets = { 54018, 54019, 54020, 54021 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_54036", "GADGET_STATE_CHANGE_54039", "GADGET_STATE_CHANGE_54043", "GADGET_STATE_CHANGE_54049", "GADGET_STATE_CHANGE_54061", "GADGET_STATE_CHANGE_54062", "GADGET_STATE_CHANGE_54065", "GADGET_STATE_CHANGE_54066" },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = [加载往复运动的分裂台座],
		monsters = { },
		gadgets = { 54022, 54023, 54024, 54025 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_54063", "GADGET_STATE_CHANGE_54064", "GADGET_STATE_CHANGE_54067", "GADGET_STATE_CHANGE_54068", "PLATFORM_REACH_POINT_54069", "PLATFORM_REACH_POINT_54070" },
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
function condition_EVENT_SELECT_OPTION_54030(context, evt)
	-- 判断是gadgetid 54011 option_id 211
	if 54011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount"为0
	if ScriptLib.GetGroupVariableValue(context, "turncount") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_54030(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 54009, 400400002, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_54031(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004054, 3)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004054, 5)
	
	-- 添加suite8的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004054, 8)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54032(context, evt)
	if 54001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54032(context, evt)
	-- 将configid为 54003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 54004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54033(context, evt)
	if 54001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54033(context, evt)
	-- 将configid为 54003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 54004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54034(context, evt)
	if 54001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54034(context, evt)
	-- 将configid为 54005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 1, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 54005, 110100016, {2,3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 54006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54035(context, evt)
	if 54001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54035(context, evt)
	-- 将configid为 54005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 54005, 110100016, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 54006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54036(context, evt)
	if 54018 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54036(context, evt)
	-- 将configid为 54020 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54020, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 54021 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54021, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54037(context, evt)
	if 54001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54037(context, evt)
	-- 将configid为 54007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 54008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54038(context, evt)
	if 54001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54038(context, evt)
	-- 将configid为 54007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 54008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54039(context, evt)
	if 54018 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54039(context, evt)
	-- 将configid为 54020 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54020, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 54021 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54021, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54040(context, evt)
	if 54001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54040(context, evt)
	-- 将configid为 54009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54041(context, evt)
	if 54001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54041(context, evt)
	-- 将configid为 54009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_54042(context, evt)
	if 54011 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_54042(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004054, 54011, {211}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54043(context, evt)
	if 54018 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54043(context, evt)
	-- 将configid为 54020 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54020, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 54021 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54021, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54044(context, evt)
	if 54001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54044(context, evt)
	-- 将configid为 54012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 144004054 ；指定config：54014；物件身上指定option：218；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144004054, 54014, 218) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54045(context, evt)
	if 54001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54045(context, evt)
	-- 将configid为 54012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_54046(context, evt)
	if 54014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_54046(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004054, 54014, {217,218,219}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_54047(context, evt)
	-- 判断是gadgetid 54014 option_id 217
	if 54014 ~= evt.param1 then
		return false	
	end
	
	if 217 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_54047(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 54012, 110100019, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_54048(context, evt)
	-- 判断是gadgetid 54014 option_id 218
	if 54014 ~= evt.param1 then
		return false	
	end
	
	if 218 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_54048(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 54012, 110100019, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54049(context, evt)
	if 54018 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54049(context, evt)
	-- 将configid为 54020 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54020, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 54021 的物件更改为状态 GadgetState.Action02
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54021, GadgetState.Action02) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_54050(context, evt)
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_54050(context, evt)
	-- 针对当前group内变量名为 "killedHoops" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "killedHoops", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_54051(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"killedHoops"为1
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_54051(context, evt)
	-- 延迟3秒后,向groupId为：144004054的对象,请求一次调用,并将string参数："waitForRecreateHoops" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144004054, "waitForRecreateHoops", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_54052(context, evt)
	-- 判断变量"killedHoops"为1
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_54052(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004054, 2)
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004054, 2)
	
	-- 将本组内变量名为 "killedHoops" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "killedHoops", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_54053(context, evt)
	-- 判断是gadgetid 54014 option_id 219
	if 54014 ~= evt.param1 then
		return false	
	end
	
	if 219 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_54053(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 54012, 110100019, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54054(context, evt)
	if 54001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54054(context, evt)
	-- 将configid为 54012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除指定group： 144004054 ；指定config：54017；物件身上指定option：216；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 144004054, 54017, 216) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54055(context, evt)
	if 54001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54055(context, evt)
	-- 将configid为 54012 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54012, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_54056(context, evt)
	if 54017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_54056(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 144004054, 54017, {215,216}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_54057(context, evt)
	-- 判断是gadgetid 54017 option_id 215
	if 54017 ~= evt.param1 then
		return false	
	end
	
	if 215 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_54057(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 54015, 110100020, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_54058(context, evt)
	-- 判断是gadgetid 54017 option_id 216
	if 54017 ~= evt.param1 then
		return false	
	end
	
	if 216 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_54058(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 54015, 110100020, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_54059(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"killedHoops"为2
	if ScriptLib.GetGroupVariableValue(context, "killedHoops") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_54059(context, evt)
	-- 将configid为 54002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144004054, 2)
	
	-- 将本组内变量名为 "complete" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "complete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_54060(context, evt)
	-- 判断是gadgetid 54011 option_id 211
	if 54011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount"为1
	if ScriptLib.GetGroupVariableValue(context, "turncount") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_54060(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 54009, 400400002, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54061(context, evt)
	if 54001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54061(context, evt)
	-- 将configid为 54018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 54019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54062(context, evt)
	if 54001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54062(context, evt)
	-- 将configid为 54018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 54019 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54019, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54063(context, evt)
	if 54001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54063(context, evt)
	-- 将configid为 54022 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54022, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 54024 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54024, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 54025 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54025, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 54022, 110100022, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 54024, 110100022, {5}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 54025, 110100022, {6}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 54023 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54023, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54064(context, evt)
	if 54001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54064(context, evt)
	-- 将configid为 54022 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54022, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 54024 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54024, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 54025 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54025, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 54022, 110100022, {1}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 54024, 110100022, {2}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 54025, 110100022, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 将configid为 54023 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54023, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54065(context, evt)
	if 54018 ~= evt.param2 or GadgetState.GearAction2 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54065(context, evt)
	-- 将configid为 54020 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54020, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 54021 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54021, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54066(context, evt)
	if 54020 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54066(context, evt)
	-- 将configid为 54018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54067(context, evt)
	if 54022 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54067(context, evt)
	-- 将configid为 54024 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54024, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 54025 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54025, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54068(context, evt)
	if 54024 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54068(context, evt)
	-- 将configid为 54025 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54025, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_54069(context, evt)
	-- 判断是gadgetid 为 54024的移动平台，是否到达了999800005 的路线中的 5 点
	
	if 54024 ~= evt.param1 then
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
function action_EVENT_PLATFORM_REACH_POINT_54069(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 1, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 54024, 110100022, {5,7}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_54070(context, evt)
	-- 判断是gadgetid 为 54025的移动平台，是否到达了999800005 的路线中的 6 点
	
	if 54025 ~= evt.param1 then
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
function action_EVENT_PLATFORM_REACH_POINT_54070(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 1, turn_mode = false}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 54025, 110100022, {6,8}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_54071(context, evt)
	if 54028 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_54071(context, evt)
	-- 将configid为 54002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 54002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 144004054, 2)
	
	-- 将本组内变量名为 "complete" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "complete", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54072(context, evt)
	if 54002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54072(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 144004054, 13) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54073(context, evt)
	if 54001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"complete"为0
	if ScriptLib.GetGroupVariableValue(context, "complete") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54073(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144004054, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_54074(context, evt)
	if 54001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_54074(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 144004054, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_54075(context, evt)
	-- 判断是gadgetid 54011 option_id 211
	if 54011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount"为2
	if ScriptLib.GetGroupVariableValue(context, "turncount") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_54075(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 54009, 400400002, {3}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_54076(context, evt)
	-- 判断是gadgetid 54011 option_id 211
	if 54011 ~= evt.param1 then
		return false	
	end
	
	if 211 ~= evt.param2 then
		return false
	end
	
	
	-- 判断变量"turncount"为3
	if ScriptLib.GetGroupVariableValue(context, "turncount") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_54076(context, evt)
	-- 设置移动平台点阵,点阵id为point_array_id
	-- route_type = 0,1,2 [OneWay 单向/Reciprocate 往复/Loop 循环]
	-- turn_mode = true/false 开启/关闭
	local tempParam = {route_type = 0, turn_mode = true}
	if 0 ~= ScriptLib.SetPlatformPointArray(context, 54009, 400400002, {4}, tempParam) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_pointArray")
	  return -1
	end
	
	-- 针对当前group内变量名为 "turncount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "turncount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_54077(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"turncount"为4
	if ScriptLib.GetGroupVariableValue(context, "turncount") < 4 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_54077(context, evt)
	-- 将本组内变量名为 "turncount" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "turncount", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 111101164
}

-- DEFS_MISCS
local defs = {
    PotConfigIDA =164004,
    PotConfigIDB =164005,
    PotConfigIDC =164006,
    targetColdTime = 10,
    targetHeatTime = 10,
    BeHitByFireTemp = 10,
    BeHitByIceWaterTemp = -10
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
	-- 左按钮
	[164001] = { config_id = 164001, gadget_id = 70310079, pos = { x = 2705.205, y = 244.481, z = -1142.594 }, rot = { x = 4.910, y = 263.182, z = 1.056 }, level = 1 },
	-- 右按钮
	[164002] = { config_id = 164002, gadget_id = 70310079, pos = { x = 2705.229, y = 244.550, z = -1144.253 }, rot = { x = 347.682, y = 92.709, z = 357.163 }, level = 1 },
	-- 火炉
	[164003] = { config_id = 164003, gadget_id = 70310080, pos = { x = 2711.470, y = 246.026, z = -1142.948 }, rot = { x = 0.000, y = 248.630, z = 0.000 }, level = 1, route_id = 110100088 },
	-- 锅A左
	[164004] = { config_id = 164004, gadget_id = 70310078, pos = { x = 2709.671, y = 247.299, z = -1138.684 }, rot = { x = 0.000, y = 53.389, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Thermometer_Value"]= 50,["SGV_Thermometer_SafeFrom"]= 0.2,["SGV_Thermometer_SafeTo"]= 0.8,["SGV_Is_Taunting"] = 0} },
	-- 锅B中
	[164005] = { config_id = 164005, gadget_id = 70310078, pos = { x = 2711.547, y = 247.299, z = -1143.012 }, rot = { x = 0.000, y = 88.177, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Thermometer_Value"]= 50,["SGV_Thermometer_SafeFrom"]= 0.2,["SGV_Thermometer_SafeTo"]= 0.8,["SGV_Is_Taunting"] = 0} },
	-- 锅C右
	[164006] = { config_id = 164006, gadget_id = 70310078, pos = { x = 2709.766, y = 247.299, z = -1147.700 }, rot = { x = 0.000, y = 133.261, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Thermometer_Value"]= 50,["SGV_Thermometer_SafeFrom"]= 0.2,["SGV_Thermometer_SafeTo"]= 0.8,["SGV_Is_Taunting"] = 0} },
	[164007] = { config_id = 164007, gadget_id = 70360002, pos = { x = 2702.151, y = 244.135, z = -1144.846 }, rot = { x = 8.974, y = 239.912, z = 354.673 }, level = 1 },
	[164008] = { config_id = 164008, gadget_id = 70310084, pos = { x = 2709.673, y = 245.000, z = -1138.879 }, rot = { x = 356.166, y = 221.872, z = 354.679 }, level = 1 },
	[164009] = { config_id = 164009, gadget_id = 70310084, pos = { x = 2711.439, y = 245.151, z = -1142.943 }, rot = { x = 0.317, y = 267.791, z = 356.020 }, level = 1 },
	[164010] = { config_id = 164010, gadget_id = 70310084, pos = { x = 2709.673, y = 245.059, z = -1147.666 }, rot = { x = 4.853, y = 300.074, z = 0.613 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 火炉位于A，踩左按钮无反应
	{ config_id = 1164011, name = "GADGET_STATE_CHANGE_164011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164011", action = "action_EVENT_GADGET_STATE_CHANGE_164011", trigger_count = 0 },
	-- 火炉位于A，踩右按钮向右移动火炉
	{ config_id = 1164012, name = "GADGET_STATE_CHANGE_164012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164012", action = "action_EVENT_GADGET_STATE_CHANGE_164012", trigger_count = 0 },
	-- 离开左按钮后停止火炉
	{ config_id = 1164013, name = "GADGET_STATE_CHANGE_164013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164013", action = "action_EVENT_GADGET_STATE_CHANGE_164013", trigger_count = 0 },
	-- 离开右按钮后停止火炉
	{ config_id = 1164014, name = "GADGET_STATE_CHANGE_164014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164014", action = "action_EVENT_GADGET_STATE_CHANGE_164014", trigger_count = 0 },
	-- 开启挑战时开始时间轴
	{ config_id = 1164015, name = "SELECT_OPTION_164015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_164015", action = "action_EVENT_SELECT_OPTION_164015", trigger_count = 0 },
	-- 火炉在B时往C走
	{ config_id = 1164016, name = "PLATFORM_REACH_POINT_164016", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_164016", action = "action_EVENT_PLATFORM_REACH_POINT_164016", trigger_count = 0 },
	-- 当挑战开始20s时召唤第一波怪物
	{ config_id = 1164017, name = "TIME_AXIS_PASS_164017", event = EventType.EVENT_TIME_AXIS_PASS, source = "monstercreate1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_164017", trigger_count = 0 },
	{ config_id = 1164018, name = "PLATFORM_REACH_POINT_164018", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_164018", action = "action_EVENT_PLATFORM_REACH_POINT_164018", trigger_count = 0 },
	-- 火炉在A时更新curPos
	{ config_id = 1164019, name = "PLATFORM_REACH_POINT_164019", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_164019", action = "action_EVENT_PLATFORM_REACH_POINT_164019", trigger_count = 0 },
	-- 火炉从A到B时更新curPos
	{ config_id = 1164020, name = "PLATFORM_REACH_POINT_164020", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_164020", action = "action_EVENT_PLATFORM_REACH_POINT_164020", trigger_count = 0 },
	-- 火炉在C时更新curPos
	{ config_id = 1164021, name = "PLATFORM_REACH_POINT_164021", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_164021", action = "action_EVENT_PLATFORM_REACH_POINT_164021", trigger_count = 0 },
	-- 火炉位于B，踩左按钮向左移动火炉
	{ config_id = 1164022, name = "GADGET_STATE_CHANGE_164022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164022", action = "action_EVENT_GADGET_STATE_CHANGE_164022", trigger_count = 0 },
	-- 火炉位于B，踩右按钮向右移动火炉
	{ config_id = 1164023, name = "GADGET_STATE_CHANGE_164023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164023", action = "action_EVENT_GADGET_STATE_CHANGE_164023", trigger_count = 0 },
	-- 火炉位于C，踩左按钮向左移动火炉
	{ config_id = 1164024, name = "GADGET_STATE_CHANGE_164024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164024", action = "action_EVENT_GADGET_STATE_CHANGE_164024", trigger_count = 0 },
	-- 火炉位于C，踩右按钮无反应
	{ config_id = 1164025, name = "GADGET_STATE_CHANGE_164025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164025", action = "action_EVENT_GADGET_STATE_CHANGE_164025", trigger_count = 0 },
	-- 火炉到达锅A后改变各锅的升降温变量
	{ config_id = 1164026, name = "PLATFORM_REACH_POINT_164026", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_164026", action = "action_EVENT_PLATFORM_REACH_POINT_164026", trigger_count = 0 },
	-- 火炉从A到达锅B后改变各锅的升降温变量
	{ config_id = 1164027, name = "PLATFORM_REACH_POINT_164027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_164027", action = "action_EVENT_PLATFORM_REACH_POINT_164027", trigger_count = 0 },
	-- 火炉到达锅C后改变各锅的升降温变量
	{ config_id = 1164028, name = "PLATFORM_REACH_POINT_164028", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_164028", action = "action_EVENT_PLATFORM_REACH_POINT_164028", trigger_count = 0 },
	-- 锅A开始升温
	{ config_id = 1164029, name = "VARIABLE_CHANGE_164029", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_164029", action = "action_EVENT_VARIABLE_CHANGE_164029", trigger_count = 0 },
	-- 锅A升温后改变温度
	{ config_id = 1164030, name = "TIMER_EVENT_164030", event = EventType.EVENT_TIMER_EVENT, source = "ovenATempRise", condition = "condition_EVENT_TIMER_EVENT_164030", action = "action_EVENT_TIMER_EVENT_164030", trigger_count = 0 },
	-- 任意锅被销毁挑战即失败
	{ config_id = 1164031, name = "GADGET_STATE_CHANGE_164031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164031", action = "action_EVENT_GADGET_STATE_CHANGE_164031", trigger_count = 0 },
	-- 任意锅被销毁挑战即失败
	{ config_id = 1164032, name = "GADGET_STATE_CHANGE_164032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164032", action = "action_EVENT_GADGET_STATE_CHANGE_164032", trigger_count = 0 },
	-- 锅A开始降温
	{ config_id = 1164033, name = "VARIABLE_CHANGE_164033", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_164033", action = "action_EVENT_VARIABLE_CHANGE_164033", trigger_count = 0 },
	-- 锅A降温后改变温度
	{ config_id = 1164034, name = "TIMER_EVENT_164034", event = EventType.EVENT_TIMER_EVENT, source = "ovenATempFall", condition = "condition_EVENT_TIMER_EVENT_164034", action = "action_EVENT_TIMER_EVENT_164034", trigger_count = 0 },
	-- 任意锅被销毁挑战即失败
	{ config_id = 1164035, name = "GADGET_STATE_CHANGE_164035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164035", action = "action_EVENT_GADGET_STATE_CHANGE_164035", trigger_count = 0 },
	-- 任意锅被销毁挑战即失败
	{ config_id = 1164036, name = "GADGET_STATE_CHANGE_164036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164036", action = "action_EVENT_GADGET_STATE_CHANGE_164036", trigger_count = 0 },
	-- 锅B开始升温
	{ config_id = 1164037, name = "VARIABLE_CHANGE_164037", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_164037", action = "action_EVENT_VARIABLE_CHANGE_164037", trigger_count = 0 },
	-- 锅B升温后改变温度
	{ config_id = 1164038, name = "TIMER_EVENT_164038", event = EventType.EVENT_TIMER_EVENT, source = "ovenBTempRise", condition = "condition_EVENT_TIMER_EVENT_164038", action = "action_EVENT_TIMER_EVENT_164038", trigger_count = 0 },
	-- 任意锅被销毁挑战即失败
	{ config_id = 1164039, name = "GADGET_STATE_CHANGE_164039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164039", action = "action_EVENT_GADGET_STATE_CHANGE_164039", trigger_count = 0 },
	-- 锅B开始降温
	{ config_id = 1164040, name = "VARIABLE_CHANGE_164040", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_164040", action = "action_EVENT_VARIABLE_CHANGE_164040", trigger_count = 0 },
	-- 锅B降温后改变温度
	{ config_id = 1164041, name = "TIMER_EVENT_164041", event = EventType.EVENT_TIMER_EVENT, source = "ovenBTempFall", condition = "condition_EVENT_TIMER_EVENT_164041", action = "action_EVENT_TIMER_EVENT_164041", trigger_count = 0 },
	-- 锅C开始升温
	{ config_id = 1164042, name = "VARIABLE_CHANGE_164042", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_164042", action = "action_EVENT_VARIABLE_CHANGE_164042", trigger_count = 0 },
	-- 锅C升温后改变温度
	{ config_id = 1164043, name = "TIMER_EVENT_164043", event = EventType.EVENT_TIMER_EVENT, source = "ovenCTempRise", condition = "condition_EVENT_TIMER_EVENT_164043", action = "action_EVENT_TIMER_EVENT_164043", trigger_count = 0 },
	-- 锅C开始降温
	{ config_id = 1164044, name = "VARIABLE_CHANGE_164044", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_164044", action = "action_EVENT_VARIABLE_CHANGE_164044", trigger_count = 0 },
	-- 锅C降温后改变温度
	{ config_id = 1164045, name = "TIMER_EVENT_164045", event = EventType.EVENT_TIMER_EVENT, source = "ovenCTempFall", condition = "condition_EVENT_TIMER_EVENT_164045", action = "action_EVENT_TIMER_EVENT_164045", trigger_count = 0 },
	{ config_id = 1164046, name = "GADGET_CREATE_164046", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_164046", action = "action_EVENT_GADGET_CREATE_164046", trigger_count = 0 },
	-- 选择了选项后加载挑战
	{ config_id = 1164047, name = "SELECT_OPTION_164047", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_164047", action = "action_EVENT_SELECT_OPTION_164047", trigger_count = 0 },
	-- A锅降温时间轴
	{ config_id = 1164048, name = "TIME_AXIS_PASS_164048", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenADOWN", condition = "", action = "action_EVENT_TIME_AXIS_PASS_164048", trigger_count = 0 },
	-- challengeTimer到时后判定挑战成功
	{ config_id = 1164050, name = "TIMER_EVENT_164050", event = EventType.EVENT_TIMER_EVENT, source = "challengeTimer", condition = "", action = "", trigger_count = 0, tag = "666" },
	-- 任意锅被销毁挑战即失败
	{ config_id = 1164051, name = "GADGET_STATE_CHANGE_164051", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164051", action = "action_EVENT_GADGET_STATE_CHANGE_164051", trigger_count = 0 },
	-- 火炉从C到达锅B后改变各锅的升降温变量
	{ config_id = 1164052, name = "PLATFORM_REACH_POINT_164052", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_164052", action = "action_EVENT_PLATFORM_REACH_POINT_164052", trigger_count = 0 },
	-- 火炉从C到B时更新curPos
	{ config_id = 1164053, name = "PLATFORM_REACH_POINT_164053", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_164053", action = "action_EVENT_PLATFORM_REACH_POINT_164053", trigger_count = 0 },
	-- 监听挑战成功，1）刷新Group至Suite1；2）重置物件状态；3）移除全部的计时器；
	{ config_id = 1164054, name = "CHALLENGE_SUCCESS_164054", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_164054", trigger_count = 0 },
	-- B锅降温时间轴
	{ config_id = 1164055, name = "TIME_AXIS_PASS_164055", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenBDOWN", condition = "", action = "action_EVENT_TIME_AXIS_PASS_164055", trigger_count = 0 },
	-- C锅降温时间轴
	{ config_id = 1164056, name = "TIME_AXIS_PASS_164056", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenCDOWN", condition = "", action = "action_EVENT_TIME_AXIS_PASS_164056", trigger_count = 0 },
	-- A锅判定升温时创建时间轴
	{ config_id = 1164057, name = "VARIABLE_CHANGE_164057", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_164057", action = "action_EVENT_VARIABLE_CHANGE_164057", trigger_count = 0 },
	-- A锅升温时间轴
	{ config_id = 1164058, name = "TIME_AXIS_PASS_164058", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenAUP", condition = "", action = "action_EVENT_TIME_AXIS_PASS_164058", trigger_count = 0 },
	-- A锅判定降温时启用降温轴暂停升温轴
	{ config_id = 1164059, name = "VARIABLE_CHANGE_164059", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_164059", action = "action_EVENT_VARIABLE_CHANGE_164059", trigger_count = 0 },
	-- B锅判定升温时创建时间轴
	{ config_id = 1164060, name = "VARIABLE_CHANGE_164060", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_164060", action = "action_EVENT_VARIABLE_CHANGE_164060", trigger_count = 0 },
	-- B锅升温时间轴
	{ config_id = 1164061, name = "TIME_AXIS_PASS_164061", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenBUP", condition = "", action = "action_EVENT_TIME_AXIS_PASS_164061", trigger_count = 0 },
	-- B锅判定降温时启用降温轴暂停升温轴
	{ config_id = 1164062, name = "VARIABLE_CHANGE_164062", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_164062", action = "action_EVENT_VARIABLE_CHANGE_164062", trigger_count = 0 },
	-- C锅判定升温时创建时间轴
	{ config_id = 1164063, name = "VARIABLE_CHANGE_164063", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_164063", action = "action_EVENT_VARIABLE_CHANGE_164063", trigger_count = 0 },
	-- C锅升温时间轴
	{ config_id = 1164064, name = "TIME_AXIS_PASS_164064", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenAUP", condition = "", action = "action_EVENT_TIME_AXIS_PASS_164064", trigger_count = 0 },
	-- C锅判定降温时启用降温轴暂停升温轴
	{ config_id = 1164065, name = "VARIABLE_CHANGE_164065", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_164065", action = "action_EVENT_VARIABLE_CHANGE_164065", trigger_count = 0 },
	-- 当挑战开始40s时召唤第二波怪物
	{ config_id = 1164066, name = "TIME_AXIS_PASS_164066", event = EventType.EVENT_TIME_AXIS_PASS, source = "monstercreate2", condition = "", action = "action_EVENT_TIME_AXIS_PASS_164066", trigger_count = 0 },
	{ config_id = 1164067, name = "GROUP_LOAD_164067", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_164067" },
	-- 火炉离开锅A时开始降温
	{ config_id = 1164068, name = "GADGET_STATE_CHANGE_164068", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164068", action = "action_EVENT_GADGET_STATE_CHANGE_164068", trigger_count = 0 },
	-- 火炉离开锅B前往C时开始降温
	{ config_id = 1164069, name = "GADGET_STATE_CHANGE_164069", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164069", action = "action_EVENT_GADGET_STATE_CHANGE_164069", trigger_count = 0 },
	-- 火炉离开锅B前往A时开始降温
	{ config_id = 1164070, name = "GADGET_STATE_CHANGE_164070", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164070", action = "action_EVENT_GADGET_STATE_CHANGE_164070", trigger_count = 0 },
	-- 火炉离开锅C时开始降温
	{ config_id = 1164071, name = "GADGET_STATE_CHANGE_164071", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164071", action = "action_EVENT_GADGET_STATE_CHANGE_164071", trigger_count = 0 },
	-- 火炉从A到达锅B且踩踏着右踏板的话则取消B升温
	{ config_id = 1164072, name = "PLATFORM_REACH_POINT_164072", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_164072", action = "action_EVENT_PLATFORM_REACH_POINT_164072", trigger_count = 0 },
	-- 火炉从C到达锅B且踩踏着左踏板的话则取消B升温
	{ config_id = 1164073, name = "PLATFORM_REACH_POINT_164073", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_164073", action = "action_EVENT_PLATFORM_REACH_POINT_164073", trigger_count = 0 },
	-- 踩踏左按钮后改变变量
	{ config_id = 1164074, name = "GADGET_STATE_CHANGE_164074", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164074", action = "action_EVENT_GADGET_STATE_CHANGE_164074", trigger_count = 0 },
	-- 踩踏右按钮后改变变量
	{ config_id = 1164075, name = "GADGET_STATE_CHANGE_164075", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164075", action = "action_EVENT_GADGET_STATE_CHANGE_164075", trigger_count = 0 },
	-- 离开左按钮后改变变量
	{ config_id = 1164076, name = "GADGET_STATE_CHANGE_164076", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164076", action = "action_EVENT_GADGET_STATE_CHANGE_164076", trigger_count = 0 },
	-- 离开右按钮后改变变量
	{ config_id = 1164077, name = "GADGET_STATE_CHANGE_164077", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_164077", action = "action_EVENT_GADGET_STATE_CHANGE_164077", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "ovenATemp", value = 50, no_refresh = false },
	{ config_id = 2, name = "ovenBTemp", value = 50, no_refresh = false },
	{ config_id = 3, name = "ovenCTemp", value = 50, no_refresh = false },
	{ config_id = 4, name = "curPos", value = 2, no_refresh = false },
	{ config_id = 5, name = "fireDirection", value = 0, no_refresh = false },
	{ config_id = 6, name = "ovenATempDirection", value = 0, no_refresh = false },
	{ config_id = 7, name = "ovenBTempDirection", value = 0, no_refresh = false },
	{ config_id = 8, name = "ovenCTempDirection", value = 0, no_refresh = false },
	{ config_id = 9, name = "isRightBtnPressed", value = 0, no_refresh = false },
	{ config_id = 10, name = "isLeftBtnPressed", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1164049, name = "CHALLENGE_FAIL_164049", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_164049", trigger_count = 0 }
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
		-- description = [默认加载的entities],
		monsters = { },
		gadgets = { 164001, 164002, 164003, 164004, 164005, 164006, 164007, 164008, 164009, 164010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_164011", "GADGET_STATE_CHANGE_164012", "GADGET_STATE_CHANGE_164013", "GADGET_STATE_CHANGE_164014", "PLATFORM_REACH_POINT_164016", "PLATFORM_REACH_POINT_164018", "PLATFORM_REACH_POINT_164019", "PLATFORM_REACH_POINT_164020", "PLATFORM_REACH_POINT_164021", "GADGET_STATE_CHANGE_164022", "GADGET_STATE_CHANGE_164023", "GADGET_STATE_CHANGE_164024", "GADGET_STATE_CHANGE_164025", "PLATFORM_REACH_POINT_164026", "PLATFORM_REACH_POINT_164027", "PLATFORM_REACH_POINT_164028", "VARIABLE_CHANGE_164029", "TIMER_EVENT_164030", "GADGET_STATE_CHANGE_164031", "GADGET_STATE_CHANGE_164032", "VARIABLE_CHANGE_164033", "TIMER_EVENT_164034", "GADGET_STATE_CHANGE_164035", "GADGET_STATE_CHANGE_164036", "VARIABLE_CHANGE_164037", "TIMER_EVENT_164038", "GADGET_STATE_CHANGE_164039", "VARIABLE_CHANGE_164040", "TIMER_EVENT_164041", "VARIABLE_CHANGE_164042", "TIMER_EVENT_164043", "VARIABLE_CHANGE_164044", "TIMER_EVENT_164045", "GADGET_CREATE_164046", "SELECT_OPTION_164047", "TIMER_EVENT_164050", "GADGET_STATE_CHANGE_164051", "PLATFORM_REACH_POINT_164052", "PLATFORM_REACH_POINT_164053", "CHALLENGE_SUCCESS_164054", "GROUP_LOAD_164067", "GADGET_STATE_CHANGE_164068", "GADGET_STATE_CHANGE_164069", "GADGET_STATE_CHANGE_164070", "GADGET_STATE_CHANGE_164071", "PLATFORM_REACH_POINT_164072", "PLATFORM_REACH_POINT_164073", "GADGET_STATE_CHANGE_164074", "GADGET_STATE_CHANGE_164075", "GADGET_STATE_CHANGE_164076", "GADGET_STATE_CHANGE_164077" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [踩踏按钮后改变火炉的移动方向的变量],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_164011", "GADGET_STATE_CHANGE_164012", "GADGET_STATE_CHANGE_164013", "GADGET_STATE_CHANGE_164014", "GADGET_STATE_CHANGE_164022", "GADGET_STATE_CHANGE_164023", "GADGET_STATE_CHANGE_164024", "GADGET_STATE_CHANGE_164025", "GADGET_STATE_CHANGE_164074", "GADGET_STATE_CHANGE_164075", "GADGET_STATE_CHANGE_164076", "GADGET_STATE_CHANGE_164077" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [火炉每到达一个point时判明下一目的地],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_164016", "PLATFORM_REACH_POINT_164018", "PLATFORM_REACH_POINT_164019", "PLATFORM_REACH_POINT_164020", "PLATFORM_REACH_POINT_164021", "PLATFORM_REACH_POINT_164053" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [锅的升温和降温逻辑],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_164026", "PLATFORM_REACH_POINT_164027", "PLATFORM_REACH_POINT_164028", "PLATFORM_REACH_POINT_164052", "GADGET_STATE_CHANGE_164068", "GADGET_STATE_CHANGE_164069", "GADGET_STATE_CHANGE_164070", "GADGET_STATE_CHANGE_164071", "PLATFORM_REACH_POINT_164072", "PLATFORM_REACH_POINT_164073" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = [锅A的升降温逻辑],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_164029", "TIMER_EVENT_164030", "VARIABLE_CHANGE_164033", "TIMER_EVENT_164034" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = [锅B的升降温逻辑],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_164037", "TIMER_EVENT_164038", "VARIABLE_CHANGE_164040", "TIMER_EVENT_164041" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = [锅C的升降温逻辑],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_164042", "TIMER_EVENT_164043", "VARIABLE_CHANGE_164044", "TIMER_EVENT_164045" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = [根据锅的温度切换锅的物件状态],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "TIME_AXIS_PASS_164048", "TIME_AXIS_PASS_164055", "TIME_AXIS_PASS_164056", "VARIABLE_CHANGE_164057", "TIME_AXIS_PASS_164058", "VARIABLE_CHANGE_164059", "VARIABLE_CHANGE_164060", "TIME_AXIS_PASS_164061", "VARIABLE_CHANGE_164062", "VARIABLE_CHANGE_164063", "TIME_AXIS_PASS_164064", "VARIABLE_CHANGE_164065" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "SELECT_OPTION_164015", "TIME_AXIS_PASS_164017", "TIME_AXIS_PASS_164066" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164011(context, evt)
	if 164001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为1
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164011(context, evt)
	-- 将本组内变量名为 "fireDirection" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fireDirection", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164012(context, evt)
	if 164002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为1
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164012(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 164003, 110100089) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 164003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "fireDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fireDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164013(context, evt)
	if 164001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164013(context, evt)
	-- 将本组内变量名为 "fireDirection" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fireDirection", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164014(context, evt)
	if 164002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164014(context, evt)
	-- 将本组内变量名为 "fireDirection" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fireDirection", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_164015(context, evt)
	-- 判断是gadgetid 164007 option_id 175
	if 164007 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_164015(context, evt)
	-- 创建标识为"monstercreate1"，时间节点为{20}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "monstercreate1", {20}, false)
	
	
	-- 创建标识为"monstercreate2"，时间节点为{40}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "monstercreate2", {40}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_164016(context, evt)
	-- 判断是gadgetid 为 164003的移动平台，是否到达了110100089 的路线中的 1 点
	
	if 164003 ~= evt.param1 then
	  return false
	end
	
	if 110100089 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"fireDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "fireDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_164016(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 164003, 110100090) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 164003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_164017(context, evt)
		-- 重新生成指定group，排除之前选择的suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111101168, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randRest")
			return -1
		end
	
	-- 发起一个针对Td的LuaFunction "StartPotTaunt" 的请求
	local functionKey = "StartPotTaunt"
	local functionParam1 = "StartPotTaunt" .. "Param1"
	local functionParam2 = "StartPotTaunt" .. "Param2"
	local functionParam3 = "StartPotTaunt" .. "Param3"
	local functionParam4 = "StartPotTaunt" .. "Param4"
	
	ScriptLib.SetGroupTempValue(context, functionParam1, 148004, {})
	ScriptLib.SetGroupTempValue(context, functionParam2, 1, {})
	ScriptLib.SetGroupTempValue(context, functionParam3, 0, {})
	ScriptLib.SetGroupTempValue(context, functionParam4, 0, {})
	local currentValue = ScriptLib.GetGroupTempValue(context,functionKey,{})
	ScriptLib.SetGroupTempValue(context, functionKey, currentValue+1, {})
	
	-- 发起一个针对Td的LuaFunction "StartPotTaunt" 的请求
	local functionKey = "StartPotTaunt"
	local functionParam1 = "StartPotTaunt" .. "Param1"
	local functionParam2 = "StartPotTaunt" .. "Param2"
	local functionParam3 = "StartPotTaunt" .. "Param3"
	local functionParam4 = "StartPotTaunt" .. "Param4"
	
	ScriptLib.SetGroupTempValue(context, functionParam1, 148006, {})
	ScriptLib.SetGroupTempValue(context, functionParam2, 0, {})
	ScriptLib.SetGroupTempValue(context, functionParam3, 0, {})
	ScriptLib.SetGroupTempValue(context, functionParam4, 0, {})
	local currentValue = ScriptLib.GetGroupTempValue(context,functionKey,{})
	ScriptLib.SetGroupTempValue(context, functionKey, currentValue+1, {})
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_164018(context, evt)
	-- 判断是gadgetid 为 164003的移动平台，是否到达了110100091 的路线中的 1 点
	
	if 164003 ~= evt.param1 then
	  return false
	end
	
	if 110100091 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"fireDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "fireDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_164018(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 164003, 110100092) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 164003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_164019(context, evt)
	-- 判断是gadgetid 为 164003的移动平台，是否到达了110100092 的路线中的 1 点
	
	if 164003 ~= evt.param1 then
	  return false
	end
	
	if 110100092 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_164019(context, evt)
	-- 将本组内变量名为 "curPos" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "curPos", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_164020(context, evt)
	-- 判断是gadgetid 为 164003的移动平台，是否到达了110100089 的路线中的 1 点
	
	if 164003 ~= evt.param1 then
	  return false
	end
	
	if 110100089 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_164020(context, evt)
	-- 将本组内变量名为 "curPos" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "curPos", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_164021(context, evt)
	-- 判断是gadgetid 为 164003的移动平台，是否到达了110100090 的路线中的 1 点
	
	if 164003 ~= evt.param1 then
	  return false
	end
	
	if 110100090 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_164021(context, evt)
	-- 将本组内变量名为 "curPos" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "curPos", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164022(context, evt)
	if 164001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为2
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164022(context, evt)
	-- 将本组内变量名为 "fireDirection" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fireDirection", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 164003, 110100092) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 164003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164023(context, evt)
	if 164002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为2
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164023(context, evt)
	-- 将本组内变量名为 "fireDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fireDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 164003, 110100090) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 164003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164024(context, evt)
	if 164001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为3
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164024(context, evt)
	-- 将本组内变量名为 "fireDirection" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fireDirection", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 164003, 110100091) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 164003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164025(context, evt)
	if 164002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为3
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164025(context, evt)
	-- 将本组内变量名为 "fireDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fireDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_164026(context, evt)
	-- 判断是gadgetid 为 164003的移动平台，是否到达了110100092 的路线中的 1 点
	
	if 164003 ~= evt.param1 then
	  return false
	end
	
	if 110100092 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_164026(context, evt)
	-- 将本组内变量名为 "ovenATempDirection" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenATempDirection", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenBTempDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenBTempDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenCTempDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenCTempDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_164027(context, evt)
	-- 判断是gadgetid 为 164003的移动平台，是否到达了110100089 的路线中的 1 点
	
	if 164003 ~= evt.param1 then
	  return false
	end
	
	if 110100089 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_164027(context, evt)
	-- 将本组内变量名为 "ovenATempDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenATempDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenBTempDirection" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenBTempDirection", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenCTempDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenCTempDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_164028(context, evt)
	-- 判断是gadgetid 为 164003的移动平台，是否到达了110100090 的路线中的 1 点
	
	if 164003 ~= evt.param1 then
	  return false
	end
	
	if 110100090 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_164028(context, evt)
	-- 将本组内变量名为 "ovenATempDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenATempDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenBTempDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenBTempDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenCTempDirection" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenCTempDirection", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_164029(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenATempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenATempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_164029(context, evt)
	-- 延迟1秒后,向groupId为：111101164的对象,请求一次调用,并将string参数："ovenATempRise" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101164, "ovenATempRise", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101164, "ovenATempFall") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_164030(context, evt)
	-- 判断变量"ovenATempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenATempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_164030(context, evt)
	-- 针对当前group内变量名为 "ovenATemp" 的变量，进行修改，变化值为 7
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenATemp", 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：111101164的对象,请求一次调用,并将string参数："ovenATempRise" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101164, "ovenATempRise", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164031(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 111101164, 164004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164031(context, evt)
	-- 终止识别id为888的挑战，并判定失败
		ScriptLib.StopChallenge(context, 888, 0)
	
	-- 将configid为 164005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 164006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "ovenATempDirection" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenATempDirection", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenBTempDirection" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenBTempDirection", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenCTempDirection" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenCTempDirection", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164032(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 111101164, 164005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164032(context, evt)
	-- 终止识别id为888的挑战，并判定失败
		ScriptLib.StopChallenge(context, 888, 0)
	
	-- 将configid为 164004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 164006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "ovenATempDirection" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenATempDirection", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenBTempDirection" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenBTempDirection", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenCTempDirection" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenCTempDirection", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_164033(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenATempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenATempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_164033(context, evt)
	-- 延迟1秒后,向groupId为：111101164的对象,请求一次调用,并将string参数："ovenATempFall" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101164, "ovenATempFall", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101164, "ovenATempRise") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_164034(context, evt)
	-- 判断变量"ovenATempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenATempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_164034(context, evt)
	-- 针对当前group内变量名为 "ovenATemp" 的变量，进行修改，变化值为 -3
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenATemp", -3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：111101164的对象,请求一次调用,并将string参数："ovenATempFall" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101164, "ovenATempFall", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164035(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 111101164, 164005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164035(context, evt)
	-- 终止识别id为888的挑战，并判定失败
		ScriptLib.StopChallenge(context, 888, 0)
	
	-- 将configid为 164004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 164006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "ovenATempDirection" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenATempDirection", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenBTempDirection" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenBTempDirection", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenCTempDirection" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenCTempDirection", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164036(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 111101164, 164006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164036(context, evt)
	-- 终止识别id为888的挑战，并判定失败
		ScriptLib.StopChallenge(context, 888, 0)
	
	-- 将configid为 164004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 164005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "ovenATempDirection" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenATempDirection", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenBTempDirection" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenBTempDirection", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenCTempDirection" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenCTempDirection", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_164037(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenBTempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenBTempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_164037(context, evt)
	-- 延迟1秒后,向groupId为：111101164的对象,请求一次调用,并将string参数："ovenBTempRise" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101164, "ovenBTempRise", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101164, "ovenBTempFall") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_164038(context, evt)
	-- 判断变量"ovenBTempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenBTempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_164038(context, evt)
	-- 针对当前group内变量名为 "ovenBTemp" 的变量，进行修改，变化值为 7
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenBTemp", 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：111101164的对象,请求一次调用,并将string参数："ovenBTempRise" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101164, "ovenBTempRise", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164039(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 111101164, 164006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164039(context, evt)
	-- 终止识别id为888的挑战，并判定失败
		ScriptLib.StopChallenge(context, 888, 0)
	
	-- 将configid为 164004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 164005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "ovenATempDirection" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenATempDirection", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenBTempDirection" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenBTempDirection", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenCTempDirection" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenCTempDirection", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_164040(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenBTempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenBTempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_164040(context, evt)
	-- 延迟1秒后,向groupId为：111101164的对象,请求一次调用,并将string参数："ovenBTempFall" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101164, "ovenBTempFall", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101164, "ovenBTempRise") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_164041(context, evt)
	-- 判断变量"ovenBTempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenBTempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_164041(context, evt)
	-- 针对当前group内变量名为 "ovenBTemp" 的变量，进行修改，变化值为 -3
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenBTemp", -3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：111101164的对象,请求一次调用,并将string参数："ovenBTempFall" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101164, "ovenBTempFall", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 创建标识为""，时间节点为{}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "", {}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_164042(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenCTempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenCTempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_164042(context, evt)
	-- 延迟1秒后,向groupId为：111101164的对象,请求一次调用,并将string参数："ovenCTempRise" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101164, "ovenCTempRise", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101164, "ovenCTempFall") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_164043(context, evt)
	-- 判断变量"ovenCTempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenCTempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_164043(context, evt)
	-- 针对当前group内变量名为 "ovenCTemp" 的变量，进行修改，变化值为 7
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenCTemp", 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：111101164的对象,请求一次调用,并将string参数："ovenCTempRise" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101164, "ovenCTempRise", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_164044(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenCTempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenCTempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_164044(context, evt)
	-- 延迟1秒后,向groupId为：111101164的对象,请求一次调用,并将string参数："ovenCTempFall" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101164, "ovenCTempFall", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101164, "ovenCTempRise") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_164045(context, evt)
	-- 判断变量"ovenCTempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenCTempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_164045(context, evt)
	-- 针对当前group内变量名为 "ovenCTemp" 的变量，进行修改，变化值为 -3
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenCTemp", -3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：111101164的对象,请求一次调用,并将string参数："ovenCTempFall" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101164, "ovenCTempFall", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_164046(context, evt)
	if 164007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_164046(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101164, 164007, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_164047(context, evt)
	-- 判断是gadgetid 164007 option_id 175
	if 164007 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_164047(context, evt)
	-- 删除指定group： 111101164 ；指定config：164007；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101164, 164007, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 164007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建编号为888（该挑战的识别id),挑战内容为245的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 245, 150, 15, 666, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 延迟149秒后,向groupId为：111101164的对象,请求一次调用,并将string参数："challengeTimer" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101164, "challengeTimer", 149) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenATempDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenATempDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenBTempDirection" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenBTempDirection", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenCTempDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenCTempDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 164004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 164005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 164006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 164003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_164048(context, evt)
	-- 针对当前group内变量名为 "ovenATemp" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenATemp", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164051(context, evt)
	if GadgetState.GearAction1 ~= ScriptLib.GetGadgetStateByConfigId(context, 111101164, 164004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164051(context, evt)
	-- 终止识别id为888的挑战，并判定失败
		ScriptLib.StopChallenge(context, 888, 0)
	
	-- 将configid为 164005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 164006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "ovenATempDirection" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenATempDirection", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenBTempDirection" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenBTempDirection", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenCTempDirection" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenCTempDirection", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_164052(context, evt)
	-- 判断是gadgetid 为 164003的移动平台，是否到达了110100091 的路线中的 1 点
	
	if 164003 ~= evt.param1 then
	  return false
	end
	
	if 110100091 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_164052(context, evt)
	-- 将本组内变量名为 "ovenATempDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenATempDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenBTempDirection" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenBTempDirection", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenCTempDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenCTempDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_164053(context, evt)
	-- 判断是gadgetid 为 164003的移动平台，是否到达了110100091 的路线中的 1 点
	
	if 164003 ~= evt.param1 then
	  return false
	end
	
	if 110100091 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_164053(context, evt)
	-- 将本组内变量名为 "curPos" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "curPos", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_164054(context, evt)
	-- 将configid为 164007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 164004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111101164, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 164005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 164006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101164, "ovenATempRise") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101164, "ovenBTempRise") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101164, "ovenCTempRise") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101164, "ovenATempFall") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101164, "ovenBTempFall") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101164, "ovenCTempFall") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101164, "challengeTimer") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111101168, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 停止标识为"monstercreate1"的时间轴
	ScriptLib.EndTimeAxis(context, "monstercreate1")
	
	
	-- 停止标识为"monstercreate2"的时间轴
	ScriptLib.EndTimeAxis(context, "monstercreate2")
	
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111101169, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 164003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 164003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_164055(context, evt)
	-- 针对当前group内变量名为 "ovenBTemp" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenBTemp", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_164056(context, evt)
	-- 针对当前group内变量名为 "ovenCTemp" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenCTemp", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_164057(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenATempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenATempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_164057(context, evt)
	-- 创建标识为"ovenAUP"，时间节点为{1}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "ovenAUP", {1}, true)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_164058(context, evt)
	-- 针对当前group内变量名为 "ovenATemp" 的变量，进行修改，变化值为 3
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenATemp", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_164059(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenATempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenATempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_164059(context, evt)
	-- 重启标识为"ovenADOWN"的时间轴
	ScriptLib.ContinueTimeAxis(context, "ovenADOWN")
	
	
	-- 暂停标识为"ovenAUP"的时间轴
	ScriptLib.PauseTimeAxis(context, "ovenAUP")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_164060(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenBTempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenBTempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_164060(context, evt)
	-- 暂停标识为"ovenBDOWN"的时间轴
	ScriptLib.PauseTimeAxis(context, "ovenBDOWN")
	
	
	-- 创建标识为"ovenBUP"，时间节点为{1}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "ovenBUP", {1}, true)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_164061(context, evt)
	-- 针对当前group内变量名为 "ovenBTemp" 的变量，进行修改，变化值为 3
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenBTemp", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_164062(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenBTempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenBTempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_164062(context, evt)
	-- 重启标识为"ovenBDOWN"的时间轴
	ScriptLib.ContinueTimeAxis(context, "ovenBDOWN")
	
	
	-- 暂停标识为"ovenBUP"的时间轴
	ScriptLib.PauseTimeAxis(context, "ovenBUP")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_164063(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenCTempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenCTempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_164063(context, evt)
	-- 创建标识为"ovenCDOWN"，时间节点为{1}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "ovenCDOWN", {1}, true)
	
	
	-- 暂停标识为"ovenCTemp"的时间轴
	ScriptLib.PauseTimeAxis(context, "ovenCTemp")
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_164064(context, evt)
	-- 针对当前group内变量名为 "ovenCTemp" 的变量，进行修改，变化值为 3
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenCTemp", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_164065(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenCTempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenCTempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_164065(context, evt)
	-- 重启标识为"ovenCDOWN"的时间轴
	ScriptLib.ContinueTimeAxis(context, "ovenCDOWN")
	
	
	-- 暂停标识为"ovenCUP"的时间轴
	ScriptLib.PauseTimeAxis(context, "ovenCUP")
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_164066(context, evt)
		-- 重新生成指定group，排除之前选择的suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111101169, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randRest")
			return -1
		end
	
	-- 发起一个针对Td的LuaFunction "StartPotTaunt" 的请求
	local functionKey = "StartPotTaunt"
	local functionParam1 = "StartPotTaunt" .. "Param1"
	local functionParam2 = "StartPotTaunt" .. "Param2"
	local functionParam3 = "StartPotTaunt" .. "Param3"
	local functionParam4 = "StartPotTaunt" .. "Param4"
	
	ScriptLib.SetGroupTempValue(context, functionParam1, 148006, {})
	ScriptLib.SetGroupTempValue(context, functionParam2, 1, {})
	ScriptLib.SetGroupTempValue(context, functionParam3, 0, {})
	ScriptLib.SetGroupTempValue(context, functionParam4, 0, {})
	local currentValue = ScriptLib.GetGroupTempValue(context,functionKey,{})
	ScriptLib.SetGroupTempValue(context, functionKey, currentValue+1, {})
	
	-- 发起一个针对Td的LuaFunction "StartPotTaunt" 的请求
	local functionKey = "StartPotTaunt"
	local functionParam1 = "StartPotTaunt" .. "Param1"
	local functionParam2 = "StartPotTaunt" .. "Param2"
	local functionParam3 = "StartPotTaunt" .. "Param3"
	local functionParam4 = "StartPotTaunt" .. "Param4"
	
	ScriptLib.SetGroupTempValue(context, functionParam1, 148004, {})
	ScriptLib.SetGroupTempValue(context, functionParam2, 0, {})
	ScriptLib.SetGroupTempValue(context, functionParam3, 0, {})
	ScriptLib.SetGroupTempValue(context, functionParam4, 0, {})
	local currentValue = ScriptLib.GetGroupTempValue(context,functionKey,{})
	ScriptLib.SetGroupTempValue(context, functionKey, currentValue+1, {})
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_164067(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101164, 10)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111101168, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111101169, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164068(context, evt)
	if 164002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为1
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164068(context, evt)
	-- 将本组内变量名为 "ovenATempDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenATempDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164069(context, evt)
	if 164002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为2
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164069(context, evt)
	-- 将本组内变量名为 "ovenBTempDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenBTempDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164070(context, evt)
	if 164001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为2
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164070(context, evt)
	-- 将本组内变量名为 "ovenBTempDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenBTempDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164071(context, evt)
	if 164001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为3
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164071(context, evt)
	-- 将本组内变量名为 "ovenCTempDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenCTempDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_164072(context, evt)
	-- 判断是gadgetid 为 164003的移动平台，是否到达了110100089 的路线中的 1 点
	
	if 164003 ~= evt.param1 then
	  return false
	end
	
	if 110100089 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isRightBtnPressed"为1
	if ScriptLib.GetGroupVariableValue(context, "isRightBtnPressed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_164072(context, evt)
	-- 将本组内变量名为 "ovenBTempDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenBTempDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_164073(context, evt)
	-- 判断是gadgetid 为 164003的移动平台，是否到达了110100091 的路线中的 1 点
	
	if 164003 ~= evt.param1 then
	  return false
	end
	
	if 110100091 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	-- 判断变量"isLeftBtnPressed"为1
	if ScriptLib.GetGroupVariableValue(context, "isLeftBtnPressed") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_164073(context, evt)
	-- 将本组内变量名为 "ovenBTempDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenBTempDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164074(context, evt)
	if 164001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164074(context, evt)
	-- 将本组内变量名为 "isLeftBtnPressed" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isLeftBtnPressed", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164075(context, evt)
	if 164002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164075(context, evt)
	-- 将本组内变量名为 "isRightBtnPressed" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isRightBtnPressed", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164076(context, evt)
	if 164001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164076(context, evt)
	-- 将本组内变量名为 "isLeftBtnPressed" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isLeftBtnPressed", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_164077(context, evt)
	if 164002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_164077(context, evt)
	-- 将本组内变量名为 "isRightBtnPressed" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isRightBtnPressed", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

require "V2_1/ImmortalPot"
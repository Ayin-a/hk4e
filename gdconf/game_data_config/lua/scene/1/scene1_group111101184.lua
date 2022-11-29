-- 基础信息
local base_info = {
	group_id = 111101184
}

-- DEFS_MISCS
local defs = {
    PotConfigIDA =184004,
    PotConfigIDB =184005,
    PotConfigIDC =184006,
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
	[184001] = { config_id = 184001, gadget_id = 70310079, pos = { x = 2621.657, y = 231.279, z = -1152.467 }, rot = { x = 1.113, y = 180.273, z = 0.717 }, level = 1 },
	-- 右按钮
	[184002] = { config_id = 184002, gadget_id = 70310079, pos = { x = 2623.780, y = 231.262, z = -1152.490 }, rot = { x = 352.346, y = 359.697, z = 359.752 }, level = 1 },
	-- 火炉
	[184003] = { config_id = 184003, gadget_id = 70310080, pos = { x = 2622.906, y = 231.752, z = -1144.869 }, rot = { x = 0.000, y = 183.382, z = 0.000 }, level = 1, route_id = 110100083 },
	-- 锅A左
	[184004] = { config_id = 184004, gadget_id = 70310078, pos = { x = 2618.646, y = 232.823, z = -1144.718 }, rot = { x = 0.000, y = 0.000, z = 1.944 }, level = 1, server_global_value_config = { ["SGV_Thermometer_Value"]= 50,["SGV_Thermometer_SafeFrom"]= 0.2,["SGV_Thermometer_SafeTo"]= 0.8,["SGV_Is_Taunting"] = 0} },
	-- 锅B中
	[184005] = { config_id = 184005, gadget_id = 70310078, pos = { x = 2623.054, y = 233.118, z = -1144.718 }, rot = { x = 0.000, y = 0.000, z = 0.249 }, level = 1, server_global_value_config = { ["SGV_Thermometer_Value"]= 50,["SGV_Thermometer_SafeFrom"]= 0.2,["SGV_Thermometer_SafeTo"]= 0.8,["SGV_Is_Taunting"] = 0} },
	-- 锅C右
	[184006] = { config_id = 184006, gadget_id = 70310078, pos = { x = 2628.075, y = 232.644, z = -1144.718 }, rot = { x = 0.000, y = 0.000, z = 359.245 }, level = 1, server_global_value_config = { ["SGV_Thermometer_Value"]= 50,["SGV_Thermometer_SafeFrom"]= 0.2,["SGV_Thermometer_SafeTo"]= 0.8,["SGV_Is_Taunting"] = 0} },
	[184007] = { config_id = 184007, gadget_id = 70360002, pos = { x = 2622.615, y = 231.102, z = -1157.159 }, rot = { x = 350.334, y = 181.813, z = 357.049 }, level = 1 },
	[184008] = { config_id = 184008, gadget_id = 70310084, pos = { x = 2618.705, y = 230.398, z = -1144.828 }, rot = { x = 4.201, y = 175.184, z = 352.277 }, level = 1 },
	[184009] = { config_id = 184009, gadget_id = 70310084, pos = { x = 2622.977, y = 230.802, z = -1144.816 }, rot = { x = 4.430, y = 178.717, z = 359.900 }, level = 1 },
	[184010] = { config_id = 184010, gadget_id = 70310084, pos = { x = 2627.861, y = 230.470, z = -1144.951 }, rot = { x = 358.317, y = 191.258, z = 356.621 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 火炉位于A，踩左按钮无反应
	{ config_id = 1184011, name = "GADGET_STATE_CHANGE_184011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_184011", action = "action_EVENT_GADGET_STATE_CHANGE_184011", trigger_count = 0 },
	-- 火炉位于A，踩右按钮向右移动火炉
	{ config_id = 1184012, name = "GADGET_STATE_CHANGE_184012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_184012", action = "action_EVENT_GADGET_STATE_CHANGE_184012", trigger_count = 0 },
	-- 离开左按钮后停止火炉
	{ config_id = 1184013, name = "GADGET_STATE_CHANGE_184013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_184013", action = "action_EVENT_GADGET_STATE_CHANGE_184013", trigger_count = 0 },
	-- 离开右按钮后停止火炉
	{ config_id = 1184014, name = "GADGET_STATE_CHANGE_184014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_184014", action = "action_EVENT_GADGET_STATE_CHANGE_184014", trigger_count = 0 },
	-- 开启挑战时开始时间轴
	{ config_id = 1184015, name = "SELECT_OPTION_184015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_184015", action = "action_EVENT_SELECT_OPTION_184015", trigger_count = 0 },
	-- 火炉在B时往C走
	{ config_id = 1184016, name = "PLATFORM_REACH_POINT_184016", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_184016", action = "action_EVENT_PLATFORM_REACH_POINT_184016", trigger_count = 0 },
	-- 当挑战开始20s时召唤第一波怪物
	{ config_id = 1184017, name = "TIME_AXIS_PASS_184017", event = EventType.EVENT_TIME_AXIS_PASS, source = "monstercreate1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_184017", trigger_count = 0 },
	{ config_id = 1184018, name = "PLATFORM_REACH_POINT_184018", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_184018", action = "action_EVENT_PLATFORM_REACH_POINT_184018", trigger_count = 0 },
	-- 火炉在A时更新curPos
	{ config_id = 1184019, name = "PLATFORM_REACH_POINT_184019", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_184019", action = "action_EVENT_PLATFORM_REACH_POINT_184019", trigger_count = 0 },
	-- 火炉从A到B时更新curPos
	{ config_id = 1184020, name = "PLATFORM_REACH_POINT_184020", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_184020", action = "action_EVENT_PLATFORM_REACH_POINT_184020", trigger_count = 0 },
	-- 火炉在C时更新curPos
	{ config_id = 1184021, name = "PLATFORM_REACH_POINT_184021", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_184021", action = "action_EVENT_PLATFORM_REACH_POINT_184021", trigger_count = 0 },
	-- 火炉位于B，踩左按钮向左移动火炉
	{ config_id = 1184022, name = "GADGET_STATE_CHANGE_184022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_184022", action = "action_EVENT_GADGET_STATE_CHANGE_184022", trigger_count = 0 },
	-- 火炉位于B，踩右按钮向右移动火炉
	{ config_id = 1184023, name = "GADGET_STATE_CHANGE_184023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_184023", action = "action_EVENT_GADGET_STATE_CHANGE_184023", trigger_count = 0 },
	-- 火炉位于C，踩左按钮向左移动火炉
	{ config_id = 1184024, name = "GADGET_STATE_CHANGE_184024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_184024", action = "action_EVENT_GADGET_STATE_CHANGE_184024", trigger_count = 0 },
	-- 火炉位于C，踩右按钮无反应
	{ config_id = 1184025, name = "GADGET_STATE_CHANGE_184025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_184025", action = "action_EVENT_GADGET_STATE_CHANGE_184025", trigger_count = 0 },
	-- 火炉到达锅A后改变各锅的升降温变量
	{ config_id = 1184026, name = "PLATFORM_REACH_POINT_184026", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_184026", action = "action_EVENT_PLATFORM_REACH_POINT_184026", trigger_count = 0 },
	-- 火炉从A到达锅B后改变各锅的升降温变量
	{ config_id = 1184027, name = "PLATFORM_REACH_POINT_184027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_184027", action = "action_EVENT_PLATFORM_REACH_POINT_184027", trigger_count = 0 },
	-- 火炉到达锅C后改变各锅的升降温变量
	{ config_id = 1184028, name = "PLATFORM_REACH_POINT_184028", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_184028", action = "action_EVENT_PLATFORM_REACH_POINT_184028", trigger_count = 0 },
	-- 锅A开始升温
	{ config_id = 1184029, name = "VARIABLE_CHANGE_184029", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_184029", action = "action_EVENT_VARIABLE_CHANGE_184029", trigger_count = 0 },
	-- 锅A升温后改变温度
	{ config_id = 1184030, name = "TIMER_EVENT_184030", event = EventType.EVENT_TIMER_EVENT, source = "ovenATempRise", condition = "condition_EVENT_TIMER_EVENT_184030", action = "action_EVENT_TIMER_EVENT_184030", trigger_count = 0 },
	-- 当锅A温度高于标准值时开始计时
	{ config_id = 1184031, name = "VARIABLE_CHANGE_184031", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATemp", condition = "condition_EVENT_VARIABLE_CHANGE_184031", action = "action_EVENT_VARIABLE_CHANGE_184031", trigger_count = 0 },
	-- 锅A温度高于标准值5s后被销毁
	{ config_id = 1184032, name = "TIMER_EVENT_184032", event = EventType.EVENT_TIMER_EVENT, source = "ovenATempOverHeat", condition = "", action = "action_EVENT_TIMER_EVENT_184032", trigger_count = 0 },
	-- 锅A开始降温
	{ config_id = 1184033, name = "VARIABLE_CHANGE_184033", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_184033", action = "action_EVENT_VARIABLE_CHANGE_184033", trigger_count = 0 },
	-- 锅A降温后改变温度
	{ config_id = 1184034, name = "TIMER_EVENT_184034", event = EventType.EVENT_TIMER_EVENT, source = "ovenATempFall", condition = "condition_EVENT_TIMER_EVENT_184034", action = "action_EVENT_TIMER_EVENT_184034", trigger_count = 0 },
	-- 当锅A温度低于标准值时开始计时
	{ config_id = 1184035, name = "VARIABLE_CHANGE_184035", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATemp", condition = "condition_EVENT_VARIABLE_CHANGE_184035", action = "action_EVENT_VARIABLE_CHANGE_184035", trigger_count = 0 },
	-- 锅A温度低于标准值5s后被销毁
	{ config_id = 1184036, name = "TIMER_EVENT_184036", event = EventType.EVENT_TIMER_EVENT, source = "ovenATempOverCool", condition = "", action = "action_EVENT_TIMER_EVENT_184036", trigger_count = 0 },
	-- 锅B开始升温
	{ config_id = 1184037, name = "VARIABLE_CHANGE_184037", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_184037", action = "action_EVENT_VARIABLE_CHANGE_184037", trigger_count = 0 },
	-- 锅B升温后改变温度
	{ config_id = 1184038, name = "TIMER_EVENT_184038", event = EventType.EVENT_TIMER_EVENT, source = "ovenBTempRise", condition = "condition_EVENT_TIMER_EVENT_184038", action = "action_EVENT_TIMER_EVENT_184038", trigger_count = 0 },
	-- 当锅B温度高于标准值时开始计时
	{ config_id = 1184039, name = "VARIABLE_CHANGE_184039", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTemp", condition = "condition_EVENT_VARIABLE_CHANGE_184039", action = "action_EVENT_VARIABLE_CHANGE_184039", trigger_count = 0 },
	-- 锅B温度高于标准值5s后被销毁
	{ config_id = 1184040, name = "TIMER_EVENT_184040", event = EventType.EVENT_TIMER_EVENT, source = "ovenBTempOverHeat", condition = "", action = "action_EVENT_TIMER_EVENT_184040", trigger_count = 0 },
	-- 锅B开始降温
	{ config_id = 1184041, name = "VARIABLE_CHANGE_184041", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_184041", action = "action_EVENT_VARIABLE_CHANGE_184041", trigger_count = 0 },
	-- 锅B降温后改变温度
	{ config_id = 1184042, name = "TIMER_EVENT_184042", event = EventType.EVENT_TIMER_EVENT, source = "ovenBTempFall", condition = "condition_EVENT_TIMER_EVENT_184042", action = "action_EVENT_TIMER_EVENT_184042", trigger_count = 0 },
	-- 当锅B温度低于标准值时开始计时
	{ config_id = 1184043, name = "VARIABLE_CHANGE_184043", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTemp", condition = "condition_EVENT_VARIABLE_CHANGE_184043", action = "action_EVENT_VARIABLE_CHANGE_184043", trigger_count = 0 },
	-- 锅B温度低于标准值5s后被销毁
	{ config_id = 1184044, name = "TIMER_EVENT_184044", event = EventType.EVENT_TIMER_EVENT, source = "ovenBTempOverCool", condition = "", action = "action_EVENT_TIMER_EVENT_184044", trigger_count = 0 },
	-- 锅C开始升温
	{ config_id = 1184045, name = "VARIABLE_CHANGE_184045", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_184045", action = "action_EVENT_VARIABLE_CHANGE_184045", trigger_count = 0 },
	-- 锅C升温后改变温度
	{ config_id = 1184046, name = "TIMER_EVENT_184046", event = EventType.EVENT_TIMER_EVENT, source = "ovenCTempRise", condition = "condition_EVENT_TIMER_EVENT_184046", action = "action_EVENT_TIMER_EVENT_184046", trigger_count = 0 },
	-- 当锅C温度高于标准值时开始计时
	{ config_id = 1184047, name = "VARIABLE_CHANGE_184047", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTemp", condition = "condition_EVENT_VARIABLE_CHANGE_184047", action = "action_EVENT_VARIABLE_CHANGE_184047", trigger_count = 0 },
	-- 锅C温度高于标准值5s后被销毁
	{ config_id = 1184048, name = "TIMER_EVENT_184048", event = EventType.EVENT_TIMER_EVENT, source = "ovenCTempOverHeat", condition = "", action = "action_EVENT_TIMER_EVENT_184048", trigger_count = 0 },
	-- 锅C开始降温
	{ config_id = 1184049, name = "VARIABLE_CHANGE_184049", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_184049", action = "action_EVENT_VARIABLE_CHANGE_184049", trigger_count = 0 },
	-- 锅C降温后改变温度
	{ config_id = 1184050, name = "TIMER_EVENT_184050", event = EventType.EVENT_TIMER_EVENT, source = "ovenCTempFall", condition = "condition_EVENT_TIMER_EVENT_184050", action = "action_EVENT_TIMER_EVENT_184050", trigger_count = 0 },
	-- 当锅C温度低于标准值时开始计时
	{ config_id = 1184051, name = "VARIABLE_CHANGE_184051", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTemp", condition = "condition_EVENT_VARIABLE_CHANGE_184051", action = "action_EVENT_VARIABLE_CHANGE_184051", trigger_count = 0 },
	-- 锅C温度低于标准值5s后被销毁
	{ config_id = 1184052, name = "TIMER_EVENT_184052", event = EventType.EVENT_TIMER_EVENT, source = "ovenCTempOverCool", condition = "", action = "action_EVENT_TIMER_EVENT_184052", trigger_count = 0 },
	{ config_id = 1184053, name = "GADGET_CREATE_184053", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_184053", action = "action_EVENT_GADGET_CREATE_184053", trigger_count = 0 },
	-- 选择了选项后加载挑战
	{ config_id = 1184054, name = "SELECT_OPTION_184054", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_184054", action = "action_EVENT_SELECT_OPTION_184054", trigger_count = 0 },
	-- A锅降温时间轴
	{ config_id = 1184055, name = "TIME_AXIS_PASS_184055", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenADOWN", condition = "", action = "action_EVENT_TIME_AXIS_PASS_184055", trigger_count = 0 },
	-- 监听挑战失败，1）刷新Group至Suite1；2）重置物件状态；3）移除全部的计时器；
	{ config_id = 1184056, name = "CHALLENGE_FAIL_184056", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_184056", trigger_count = 0 },
	-- 锅A在标准温度区间内
	{ config_id = 1184057, name = "VARIABLE_CHANGE_184057", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATemp", condition = "condition_EVENT_VARIABLE_CHANGE_184057", action = "action_EVENT_VARIABLE_CHANGE_184057", trigger_count = 0 },
	-- 锅B在标准温度区间内
	{ config_id = 1184058, name = "VARIABLE_CHANGE_184058", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTemp", condition = "condition_EVENT_VARIABLE_CHANGE_184058", action = "action_EVENT_VARIABLE_CHANGE_184058", trigger_count = 0 },
	-- 锅C在标准温度区间内
	{ config_id = 1184059, name = "VARIABLE_CHANGE_184059", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTemp", condition = "condition_EVENT_VARIABLE_CHANGE_184059", action = "action_EVENT_VARIABLE_CHANGE_184059", trigger_count = 0 },
	-- 锅A在高温区间内
	{ config_id = 1184060, name = "VARIABLE_CHANGE_184060", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATemp", condition = "condition_EVENT_VARIABLE_CHANGE_184060", action = "action_EVENT_VARIABLE_CHANGE_184060", trigger_count = 0 },
	-- 锅B在高温区间内
	{ config_id = 1184061, name = "VARIABLE_CHANGE_184061", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTemp", condition = "condition_EVENT_VARIABLE_CHANGE_184061", action = "action_EVENT_VARIABLE_CHANGE_184061", trigger_count = 0 },
	-- 锅C在高温区间内
	{ config_id = 1184062, name = "VARIABLE_CHANGE_184062", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTemp", condition = "condition_EVENT_VARIABLE_CHANGE_184062", action = "action_EVENT_VARIABLE_CHANGE_184062", trigger_count = 0 },
	-- 锅A在低温区间内
	{ config_id = 1184063, name = "VARIABLE_CHANGE_184063", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATemp", condition = "condition_EVENT_VARIABLE_CHANGE_184063", action = "action_EVENT_VARIABLE_CHANGE_184063", trigger_count = 0 },
	-- 锅B在低温区间内
	{ config_id = 1184064, name = "VARIABLE_CHANGE_184064", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTemp", condition = "condition_EVENT_VARIABLE_CHANGE_184064", action = "action_EVENT_VARIABLE_CHANGE_184064", trigger_count = 0 },
	-- 锅C在高温区间内
	{ config_id = 1184065, name = "VARIABLE_CHANGE_184065", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTemp", condition = "condition_EVENT_VARIABLE_CHANGE_184065", action = "action_EVENT_VARIABLE_CHANGE_184065", trigger_count = 0 },
	-- challengeTimer到时后判定挑战成功
	{ config_id = 1184066, name = "TIMER_EVENT_184066", event = EventType.EVENT_TIMER_EVENT, source = "challengeTimer", condition = "", action = "", trigger_count = 0, tag = "666" },
	-- 任意锅被销毁挑战即失败
	{ config_id = 1184067, name = "ANY_GADGET_DIE_184067", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_184067", trigger_count = 0 },
	-- 火炉从C到达锅B后改变各锅的升降温变量
	{ config_id = 1184068, name = "PLATFORM_REACH_POINT_184068", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_184068", action = "action_EVENT_PLATFORM_REACH_POINT_184068", trigger_count = 0 },
	-- 火炉从C到B时更新curPos
	{ config_id = 1184069, name = "PLATFORM_REACH_POINT_184069", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_184069", action = "action_EVENT_PLATFORM_REACH_POINT_184069", trigger_count = 0 },
	-- 监听挑战成功，1）刷新Group至Suite1；2）重置物件状态；3）移除全部的计时器；
	{ config_id = 1184070, name = "CHALLENGE_SUCCESS_184070", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_184070", trigger_count = 0 },
	-- B锅降温时间轴
	{ config_id = 1184071, name = "TIME_AXIS_PASS_184071", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenBDOWN", condition = "", action = "action_EVENT_TIME_AXIS_PASS_184071", trigger_count = 0 },
	-- C锅降温时间轴
	{ config_id = 1184072, name = "TIME_AXIS_PASS_184072", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenCDOWN", condition = "", action = "action_EVENT_TIME_AXIS_PASS_184072", trigger_count = 0 },
	-- A锅判定升温时创建时间轴
	{ config_id = 1184073, name = "VARIABLE_CHANGE_184073", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_184073", action = "action_EVENT_VARIABLE_CHANGE_184073", trigger_count = 0 },
	-- A锅升温时间轴
	{ config_id = 1184074, name = "TIME_AXIS_PASS_184074", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenAUP", condition = "", action = "action_EVENT_TIME_AXIS_PASS_184074", trigger_count = 0 },
	-- A锅判定降温时启用降温轴暂停升温轴
	{ config_id = 1184075, name = "VARIABLE_CHANGE_184075", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_184075", action = "action_EVENT_VARIABLE_CHANGE_184075", trigger_count = 0 },
	-- B锅判定升温时创建时间轴
	{ config_id = 1184076, name = "VARIABLE_CHANGE_184076", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_184076", action = "action_EVENT_VARIABLE_CHANGE_184076", trigger_count = 0 },
	-- B锅升温时间轴
	{ config_id = 1184077, name = "TIME_AXIS_PASS_184077", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenBUP", condition = "", action = "action_EVENT_TIME_AXIS_PASS_184077", trigger_count = 0 },
	-- B锅判定降温时启用降温轴暂停升温轴
	{ config_id = 1184078, name = "VARIABLE_CHANGE_184078", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_184078", action = "action_EVENT_VARIABLE_CHANGE_184078", trigger_count = 0 },
	-- C锅判定升温时创建时间轴
	{ config_id = 1184079, name = "VARIABLE_CHANGE_184079", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_184079", action = "action_EVENT_VARIABLE_CHANGE_184079", trigger_count = 0 },
	-- C锅升温时间轴
	{ config_id = 1184080, name = "TIME_AXIS_PASS_184080", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenAUP", condition = "", action = "action_EVENT_TIME_AXIS_PASS_184080", trigger_count = 0 },
	-- C锅判定降温时启用降温轴暂停升温轴
	{ config_id = 1184081, name = "VARIABLE_CHANGE_184081", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_184081", action = "action_EVENT_VARIABLE_CHANGE_184081", trigger_count = 0 },
	-- 当挑战开始40s时召唤第二波怪物
	{ config_id = 1184082, name = "TIME_AXIS_PASS_184082", event = EventType.EVENT_TIME_AXIS_PASS, source = "monstercreate2", condition = "", action = "action_EVENT_TIME_AXIS_PASS_184082", trigger_count = 0 },
	{ config_id = 1184083, name = "GROUP_LOAD_184083", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_184083" }
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
	{ config_id = 8, name = "ovenCTempDirection", value = 0, no_refresh = false }
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
		gadgets = { 184001, 184002, 184003, 184004, 184005, 184006, 184007, 184008, 184009, 184010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_184011", "GADGET_STATE_CHANGE_184012", "GADGET_STATE_CHANGE_184013", "GADGET_STATE_CHANGE_184014", "PLATFORM_REACH_POINT_184016", "PLATFORM_REACH_POINT_184018", "PLATFORM_REACH_POINT_184019", "PLATFORM_REACH_POINT_184020", "PLATFORM_REACH_POINT_184021", "GADGET_STATE_CHANGE_184022", "GADGET_STATE_CHANGE_184023", "GADGET_STATE_CHANGE_184024", "GADGET_STATE_CHANGE_184025", "PLATFORM_REACH_POINT_184026", "PLATFORM_REACH_POINT_184027", "PLATFORM_REACH_POINT_184028", "VARIABLE_CHANGE_184029", "TIMER_EVENT_184030", "VARIABLE_CHANGE_184031", "TIMER_EVENT_184032", "VARIABLE_CHANGE_184033", "TIMER_EVENT_184034", "VARIABLE_CHANGE_184035", "TIMER_EVENT_184036", "VARIABLE_CHANGE_184037", "TIMER_EVENT_184038", "VARIABLE_CHANGE_184039", "TIMER_EVENT_184040", "VARIABLE_CHANGE_184041", "TIMER_EVENT_184042", "VARIABLE_CHANGE_184043", "TIMER_EVENT_184044", "VARIABLE_CHANGE_184045", "TIMER_EVENT_184046", "VARIABLE_CHANGE_184047", "TIMER_EVENT_184048", "VARIABLE_CHANGE_184049", "TIMER_EVENT_184050", "VARIABLE_CHANGE_184051", "TIMER_EVENT_184052", "GADGET_CREATE_184053", "SELECT_OPTION_184054", "CHALLENGE_FAIL_184056", "VARIABLE_CHANGE_184057", "VARIABLE_CHANGE_184058", "VARIABLE_CHANGE_184059", "VARIABLE_CHANGE_184060", "VARIABLE_CHANGE_184061", "VARIABLE_CHANGE_184062", "VARIABLE_CHANGE_184063", "VARIABLE_CHANGE_184064", "VARIABLE_CHANGE_184065", "TIMER_EVENT_184066", "ANY_GADGET_DIE_184067", "PLATFORM_REACH_POINT_184068", "PLATFORM_REACH_POINT_184069", "CHALLENGE_SUCCESS_184070", "GROUP_LOAD_184083" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [踩踏按钮后改变火炉的移动方向的变量],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_184011", "GADGET_STATE_CHANGE_184012", "GADGET_STATE_CHANGE_184013", "GADGET_STATE_CHANGE_184014", "GADGET_STATE_CHANGE_184022", "GADGET_STATE_CHANGE_184023", "GADGET_STATE_CHANGE_184024", "GADGET_STATE_CHANGE_184025" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [火炉每到达一个point时判明下一目的地],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_184016", "PLATFORM_REACH_POINT_184018", "PLATFORM_REACH_POINT_184019", "PLATFORM_REACH_POINT_184020", "PLATFORM_REACH_POINT_184021", "PLATFORM_REACH_POINT_184069" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [锅的升温和降温逻辑],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_184026", "PLATFORM_REACH_POINT_184027", "PLATFORM_REACH_POINT_184028", "PLATFORM_REACH_POINT_184068" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = [锅A的升降温逻辑],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_184029", "TIMER_EVENT_184030", "VARIABLE_CHANGE_184031", "TIMER_EVENT_184032", "VARIABLE_CHANGE_184033", "TIMER_EVENT_184034", "VARIABLE_CHANGE_184035", "TIMER_EVENT_184036" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = [锅B的升降温逻辑],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_184037", "TIMER_EVENT_184038", "VARIABLE_CHANGE_184039", "TIMER_EVENT_184040", "VARIABLE_CHANGE_184041", "TIMER_EVENT_184042", "VARIABLE_CHANGE_184043", "TIMER_EVENT_184044" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = [锅C的升降温逻辑],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_184045", "TIMER_EVENT_184046", "VARIABLE_CHANGE_184047", "TIMER_EVENT_184048", "VARIABLE_CHANGE_184049", "TIMER_EVENT_184050", "VARIABLE_CHANGE_184051", "TIMER_EVENT_184052" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = [根据锅的温度切换锅的物件状态],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_184057", "VARIABLE_CHANGE_184058", "VARIABLE_CHANGE_184059", "VARIABLE_CHANGE_184060", "VARIABLE_CHANGE_184061", "VARIABLE_CHANGE_184062", "VARIABLE_CHANGE_184063", "VARIABLE_CHANGE_184064", "VARIABLE_CHANGE_184065" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "TIME_AXIS_PASS_184055", "TIME_AXIS_PASS_184071", "TIME_AXIS_PASS_184072", "VARIABLE_CHANGE_184073", "TIME_AXIS_PASS_184074", "VARIABLE_CHANGE_184075", "VARIABLE_CHANGE_184076", "TIME_AXIS_PASS_184077", "VARIABLE_CHANGE_184078", "VARIABLE_CHANGE_184079", "TIME_AXIS_PASS_184080", "VARIABLE_CHANGE_184081" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "SELECT_OPTION_184015", "TIME_AXIS_PASS_184017", "TIME_AXIS_PASS_184082" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_184011(context, evt)
	if 184001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为1
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_184011(context, evt)
	-- 将本组内变量名为 "fireDirection" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fireDirection", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_184012(context, evt)
	if 184002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为1
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_184012(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 184003, 110100084) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 184003) then
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
function condition_EVENT_GADGET_STATE_CHANGE_184013(context, evt)
	if 184001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_184013(context, evt)
	-- 将本组内变量名为 "fireDirection" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fireDirection", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_184014(context, evt)
	if 184002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_184014(context, evt)
	-- 将本组内变量名为 "fireDirection" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fireDirection", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_184015(context, evt)
	-- 判断是gadgetid 184007 option_id 175
	if 184007 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_184015(context, evt)
	-- 创建标识为"monstercreate1"，时间节点为{20}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "monstercreate1", {20}, false)
	
	
	-- 创建标识为"monstercreate2"，时间节点为{40}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "monstercreate2", {40}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_184016(context, evt)
	-- 判断是gadgetid 为 184003的移动平台，是否到达了110100084 的路线中的 1 点
	
	if 184003 ~= evt.param1 then
	  return false
	end
	
	if 110100084 ~= evt.param2 then
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
function action_EVENT_PLATFORM_REACH_POINT_184016(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 184003, 110100085) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 184003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_184017(context, evt)
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
function condition_EVENT_PLATFORM_REACH_POINT_184018(context, evt)
	-- 判断是gadgetid 为 184003的移动平台，是否到达了110100086 的路线中的 1 点
	
	if 184003 ~= evt.param1 then
	  return false
	end
	
	if 110100086 ~= evt.param2 then
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
function action_EVENT_PLATFORM_REACH_POINT_184018(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 184003, 110100087) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 184003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_184019(context, evt)
	-- 判断是gadgetid 为 184003的移动平台，是否到达了110100087 的路线中的 1 点
	
	if 184003 ~= evt.param1 then
	  return false
	end
	
	if 110100087 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_184019(context, evt)
	-- 将本组内变量名为 "curPos" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "curPos", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_184020(context, evt)
	-- 判断是gadgetid 为 184003的移动平台，是否到达了110100084 的路线中的 1 点
	
	if 184003 ~= evt.param1 then
	  return false
	end
	
	if 110100084 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_184020(context, evt)
	-- 将本组内变量名为 "curPos" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "curPos", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_184021(context, evt)
	-- 判断是gadgetid 为 184003的移动平台，是否到达了110100085 的路线中的 1 点
	
	if 184003 ~= evt.param1 then
	  return false
	end
	
	if 110100085 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_184021(context, evt)
	-- 将本组内变量名为 "curPos" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "curPos", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_184022(context, evt)
	if 184001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为2
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_184022(context, evt)
	-- 将本组内变量名为 "fireDirection" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fireDirection", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 184003, 110100087) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 184003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_184023(context, evt)
	if 184002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为2
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_184023(context, evt)
	-- 将本组内变量名为 "fireDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fireDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 184003, 110100085) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 184003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_184024(context, evt)
	if 184001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为3
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_184024(context, evt)
	-- 将本组内变量名为 "fireDirection" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fireDirection", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 184003, 110100086) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 184003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_184025(context, evt)
	if 184002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为3
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_184025(context, evt)
	-- 将本组内变量名为 "fireDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fireDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_184026(context, evt)
	-- 判断是gadgetid 为 184003的移动平台，是否到达了110100087 的路线中的 1 点
	
	if 184003 ~= evt.param1 then
	  return false
	end
	
	if 110100087 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_184026(context, evt)
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
function condition_EVENT_PLATFORM_REACH_POINT_184027(context, evt)
	-- 判断是gadgetid 为 184003的移动平台，是否到达了110100084 的路线中的 1 点
	
	if 184003 ~= evt.param1 then
	  return false
	end
	
	if 110100084 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_184027(context, evt)
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
function condition_EVENT_PLATFORM_REACH_POINT_184028(context, evt)
	-- 判断是gadgetid 为 184003的移动平台，是否到达了110100085 的路线中的 1 点
	
	if 184003 ~= evt.param1 then
	  return false
	end
	
	if 110100085 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_184028(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_184029(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenATempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenATempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184029(context, evt)
	-- 延迟1秒后,向groupId为：111101184的对象,请求一次调用,并将string参数："ovenATempRise" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101184, "ovenATempRise", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_184030(context, evt)
	-- 判断变量"ovenATempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenATempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_184030(context, evt)
	-- 针对当前group内变量名为 "ovenATemp" 的变量，进行修改，变化值为 8
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenATemp", 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：111101184的对象,请求一次调用,并将string参数："ovenATempRise" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101184, "ovenATempRise", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184031(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 5 > evt.param1 or 10 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184031(context, evt)
	-- 延迟5秒后,向groupId为：111101184的对象,请求一次调用,并将string参数："ovenATempOverHeat" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101184, "ovenATempOverHeat", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_184032(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 184004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184033(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenATempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenATempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184033(context, evt)
	-- 延迟1秒后,向groupId为：111101184的对象,请求一次调用,并将string参数："ovenATempFall" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101184, "ovenATempFall", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_184034(context, evt)
	-- 判断变量"ovenATempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenATempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_184034(context, evt)
	-- 针对当前group内变量名为 "ovenATemp" 的变量，进行修改，变化值为 -5
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenATemp", -5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：111101184的对象,请求一次调用,并将string参数："ovenATempFall" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101184, "ovenATempFall", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184035(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if -10 > evt.param1 or -5 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184035(context, evt)
	-- 延迟5秒后,向groupId为：111101184的对象,请求一次调用,并将string参数："ovenATempOverCool" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101184, "ovenATempOverCool", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_184036(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 184004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184037(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenBTempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenBTempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184037(context, evt)
	-- 延迟1秒后,向groupId为：111101184的对象,请求一次调用,并将string参数："ovenBTempRise" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101184, "ovenBTempRise", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_184038(context, evt)
	-- 判断变量"ovenBTempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenBTempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_184038(context, evt)
	-- 针对当前group内变量名为 "ovenBTemp" 的变量，进行修改，变化值为 8
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenBTemp", 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：111101184的对象,请求一次调用,并将string参数："ovenBTempRise" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101184, "ovenBTempRise", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184039(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 5 > evt.param1 or 10 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184039(context, evt)
	-- 延迟5秒后,向groupId为：111101184的对象,请求一次调用,并将string参数："ovenBTempOverHeat" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101184, "ovenBTempOverHeat", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_184040(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 184005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184041(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenBTempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenBTempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184041(context, evt)
	-- 延迟1秒后,向groupId为：111101184的对象,请求一次调用,并将string参数："ovenBTempFall" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101184, "ovenBTempFall", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_184042(context, evt)
	-- 判断变量"ovenBTempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenBTempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_184042(context, evt)
	-- 针对当前group内变量名为 "ovenBTemp" 的变量，进行修改，变化值为 -5
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenBTemp", -5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：111101184的对象,请求一次调用,并将string参数："ovenBTempFall" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101184, "ovenBTempFall", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 创建标识为""，时间节点为{}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "", {}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184043(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if -10 > evt.param1 or -5 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184043(context, evt)
	-- 延迟5秒后,向groupId为：111101184的对象,请求一次调用,并将string参数："ovenBTempOverCool" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101184, "ovenBTempOverCool", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_184044(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 184005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184045(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenCTempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenCTempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184045(context, evt)
	-- 延迟1秒后,向groupId为：111101184的对象,请求一次调用,并将string参数："ovenCTempRise" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101184, "ovenCTempRise", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_184046(context, evt)
	-- 判断变量"ovenCTempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenCTempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_184046(context, evt)
	-- 针对当前group内变量名为 "ovenCTemp" 的变量，进行修改，变化值为 8
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenCTemp", 8) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：111101184的对象,请求一次调用,并将string参数："ovenCTempRise" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101184, "ovenCTempRise", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184047(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 5 > evt.param1 or 10 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184047(context, evt)
	-- 延迟5秒后,向groupId为：111101184的对象,请求一次调用,并将string参数："ovenCTempOverHeat" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101184, "ovenCTempOverHeat", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_184048(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 184006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184049(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenCTempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenCTempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184049(context, evt)
	-- 延迟1秒后,向groupId为：111101184的对象,请求一次调用,并将string参数："ovenCTempFall" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101184, "ovenCTempFall", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_184050(context, evt)
	-- 判断变量"ovenATempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenATempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_184050(context, evt)
	-- 针对当前group内变量名为 "ovenCTemp" 的变量，进行修改，变化值为 -5
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenCTemp", -5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：111101184的对象,请求一次调用,并将string参数："ovenCTempFall" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101184, "ovenCTempFall", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184051(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if -10 > evt.param1 or -5 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184051(context, evt)
	-- 延迟5秒后,向groupId为：111101184的对象,请求一次调用,并将string参数："ovenCTempOverCool" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101184, "ovenCTempOverCool", 5) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_184052(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 184006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_184053(context, evt)
	if 184007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_184053(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101184, 184007, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_184054(context, evt)
	-- 判断是gadgetid 184007 option_id 175
	if 184007 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_184054(context, evt)
	-- 删除指定group： 111101184 ；指定config：184007；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101184, 184007, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 184007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建编号为888（该挑战的识别id),挑战内容为245的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 245, 150, 15, 666, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 延迟149秒后,向groupId为：111101184的对象,请求一次调用,并将string参数："challengeTimer" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101184, "challengeTimer", 149) then
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
	
	-- 将本组内变量名为 "ovenATemp" 的变量设置为 50
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenATemp", 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenBTemp" 的变量设置为 50
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenBTemp", 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenCTemp" 的变量设置为 50
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenCTemp", 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 184004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 184005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 184006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 184003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_184055(context, evt)
	-- 针对当前group内变量名为 "ovenATemp" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenATemp", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_184056(context, evt)
	-- 将configid为 184007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 184004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 184005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 184006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 184003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "ovenATemp" 的变量设置为 50
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenATemp", 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenBTemp" 的变量设置为 50
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenBTemp", 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将本组内变量名为 "ovenCTemp" 的变量设置为 50
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenCTemp", 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenATempRise") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenBTempRise") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenCTempRise") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenATempOverHeat") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenBTempOverHeat") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenCTempOverHeat") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenATempFall") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenBTempFall") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenCTempFall") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenATempOverCool") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenBTempOverCool") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenCTempOverCool") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "challengeTimer") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111101184, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
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
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184057(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 20 > evt.param1 or 80 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184057(context, evt)
	-- 将configid为 184004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenATempOverHeat") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenATempOverCool") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184058(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 20 > evt.param1 or 80 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184058(context, evt)
	-- 将configid为 184005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenBTempOverCool") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenBTempOverHeat") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184059(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 20 > evt.param1 or 80 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184059(context, evt)
	-- 将configid为 184006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenCTempOverHeat") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenCTempOverCool") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184060(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 80 > evt.param1 or 100 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184060(context, evt)
	-- 将configid为 184004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184061(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 80 > evt.param1 or 100 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184061(context, evt)
	-- 将configid为 184005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184062(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 80 > evt.param1 or 100 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184062(context, evt)
	-- 将configid为 184006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184063(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 0 > evt.param1 or 20 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184063(context, evt)
	-- 将configid为 184004 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184004, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184064(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 0 > evt.param1 or 20 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184064(context, evt)
	-- 将configid为 184005 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184005, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184065(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 0 > evt.param1 or 20 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184065(context, evt)
	-- 将configid为 184006 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184006, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_184067(context, evt)
	-- 终止识别id为888的挑战，并判定失败
		ScriptLib.StopChallenge(context, 888, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_184068(context, evt)
	-- 判断是gadgetid 为 184003的移动平台，是否到达了110100086 的路线中的 1 点
	
	if 184003 ~= evt.param1 then
	  return false
	end
	
	if 110100086 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_184068(context, evt)
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
function condition_EVENT_PLATFORM_REACH_POINT_184069(context, evt)
	-- 判断是gadgetid 为 184003的移动平台，是否到达了110100086 的路线中的 1 点
	
	if 184003 ~= evt.param1 then
	  return false
	end
	
	if 110100086 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_184069(context, evt)
	-- 将本组内变量名为 "curPos" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "curPos", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_184070(context, evt)
	-- 将configid为 184007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 184004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111101184, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 将configid为 184005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 184006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenATempRise") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenBTempRise") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenCTempRise") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenATempOverHeat") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenBTempOverHeat") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenCTempOverHeat") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenATempFall") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenBTempFall") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenCTempFall") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenATempOverCool") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenBTempOverCool") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "ovenCTempOverCool") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101184, "challengeTimer") then
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
	
	-- 将configid为 184003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 184003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_184071(context, evt)
	-- 针对当前group内变量名为 "ovenBTemp" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenBTemp", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_184072(context, evt)
	-- 针对当前group内变量名为 "ovenCTemp" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenCTemp", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184073(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenATempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenATempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184073(context, evt)
	-- 创建标识为"ovenAUP"，时间节点为{1}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "ovenAUP", {1}, true)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_184074(context, evt)
	-- 针对当前group内变量名为 "ovenATemp" 的变量，进行修改，变化值为 3
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenATemp", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184075(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenATempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenATempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184075(context, evt)
	-- 重启标识为"ovenADOWN"的时间轴
	ScriptLib.ContinueTimeAxis(context, "ovenADOWN")
	
	
	-- 暂停标识为"ovenAUP"的时间轴
	ScriptLib.PauseTimeAxis(context, "ovenAUP")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184076(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenBTempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenBTempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184076(context, evt)
	-- 暂停标识为"ovenBDOWN"的时间轴
	ScriptLib.PauseTimeAxis(context, "ovenBDOWN")
	
	
	-- 创建标识为"ovenBUP"，时间节点为{1}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "ovenBUP", {1}, true)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_184077(context, evt)
	-- 针对当前group内变量名为 "ovenBTemp" 的变量，进行修改，变化值为 3
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenBTemp", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184078(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenBTempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenBTempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184078(context, evt)
	-- 重启标识为"ovenBDOWN"的时间轴
	ScriptLib.ContinueTimeAxis(context, "ovenBDOWN")
	
	
	-- 暂停标识为"ovenBUP"的时间轴
	ScriptLib.PauseTimeAxis(context, "ovenBUP")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184079(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenCTempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenCTempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184079(context, evt)
	-- 创建标识为"ovenCDOWN"，时间节点为{1}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "ovenCDOWN", {1}, true)
	
	
	-- 暂停标识为"ovenCTemp"的时间轴
	ScriptLib.PauseTimeAxis(context, "ovenCTemp")
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_184080(context, evt)
	-- 针对当前group内变量名为 "ovenCTemp" 的变量，进行修改，变化值为 3
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenCTemp", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_184081(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenCTempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenCTempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_184081(context, evt)
	-- 重启标识为"ovenCDOWN"的时间轴
	ScriptLib.ContinueTimeAxis(context, "ovenCDOWN")
	
	
	-- 暂停标识为"ovenCUP"的时间轴
	ScriptLib.PauseTimeAxis(context, "ovenCUP")
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_184082(context, evt)
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
function action_EVENT_GROUP_LOAD_184083(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101184, 10)
	
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

require "V2_1/ImmortalPot"
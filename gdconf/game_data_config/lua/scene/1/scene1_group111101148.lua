-- 基础信息
local base_info = {
	group_id = 111101148
}

-- DEFS_MISCS
local defs = {
    PotConfigIDA =148004,
    PotConfigIDB =148005,
    PotConfigIDC =148006,
    targetColdTime = 10,
    targetHeatTime = 10,
    BeHitByFireTemp = 10,
    BeHitByIceWaterTemp = -10,
    tempIncreaseSpeed = 5,
    tempDecreaseSpeed = -3,
    ovenToBeDestroyedTimer = 5
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
	[148001] = { config_id = 148001, gadget_id = 70360006, pos = { x = 2616.783, y = 227.215, z = -1123.549 }, rot = { x = 12.887, y = 1.021, z = 17.154 }, level = 1 },
	-- 右按钮
	[148002] = { config_id = 148002, gadget_id = 70360006, pos = { x = 2622.840, y = 227.437, z = -1123.612 }, rot = { x = 6.233, y = 359.876, z = 355.546 }, level = 1 },
	-- 火炉
	[148003] = { config_id = 148003, gadget_id = 70720214, pos = { x = 2619.916, y = 227.246, z = -1112.602 }, rot = { x = 0.000, y = 183.382, z = 0.000 }, level = 1, route_id = 110100081 },
	-- 锅A左
	[148004] = { config_id = 148004, gadget_id = 70310078, pos = { x = 2615.381, y = 229.408, z = -1112.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Thermometer_Value"]= 50,["SGV_Thermometer_SafeFrom"]= 0.2,["SGV_Thermometer_SafeTo"]= 0.8,["SGV_Is_Taunting"] = 0} },
	-- 锅B中
	[148005] = { config_id = 148005, gadget_id = 70310078, pos = { x = 2619.935, y = 229.408, z = -1112.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Thermometer_Value"]= 50,["SGV_Thermometer_SafeFrom"]= 0.2,["SGV_Thermometer_SafeTo"]= 0.8,["SGV_Is_Taunting"] = 0} },
	-- 锅C右
	[148006] = { config_id = 148006, gadget_id = 70310078, pos = { x = 2624.811, y = 229.408, z = -1112.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, server_global_value_config = { ["SGV_Thermometer_Value"]= 50,["SGV_Thermometer_SafeFrom"]= 0.2,["SGV_Thermometer_SafeTo"]= 0.8,["SGV_Is_Taunting"] = 0} },
	[148049] = { config_id = 148049, gadget_id = 70360002, pos = { x = 2619.625, y = 228.431, z = -1127.799 }, rot = { x = 350.334, y = 181.813, z = 357.049 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 火炉位于A，踩左按钮无反应
	{ config_id = 1148007, name = "GADGET_STATE_CHANGE_148007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_148007", action = "action_EVENT_GADGET_STATE_CHANGE_148007", trigger_count = 0 },
	-- 火炉位于A，踩右按钮向右移动火炉
	{ config_id = 1148008, name = "GADGET_STATE_CHANGE_148008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_148008", action = "action_EVENT_GADGET_STATE_CHANGE_148008", trigger_count = 0 },
	-- 离开左按钮后停止火炉
	{ config_id = 1148009, name = "GADGET_STATE_CHANGE_148009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_148009", action = "action_EVENT_GADGET_STATE_CHANGE_148009", trigger_count = 0 },
	-- 离开右按钮后停止火炉
	{ config_id = 1148010, name = "GADGET_STATE_CHANGE_148010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_148010", action = "action_EVENT_GADGET_STATE_CHANGE_148010", trigger_count = 0 },
	-- 开启挑战时开始时间轴
	{ config_id = 1148011, name = "SELECT_OPTION_148011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_148011", action = "action_EVENT_SELECT_OPTION_148011", trigger_count = 0 },
	-- 火炉在B时往C走
	{ config_id = 1148012, name = "PLATFORM_REACH_POINT_148012", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_148012", action = "action_EVENT_PLATFORM_REACH_POINT_148012", trigger_count = 0 },
	-- 当挑战开始20s时召唤第一波怪物
	{ config_id = 1148013, name = "TIME_AXIS_PASS_148013", event = EventType.EVENT_TIME_AXIS_PASS, source = "monstercreate1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_148013", trigger_count = 0 },
	{ config_id = 1148014, name = "PLATFORM_REACH_POINT_148014", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_148014", action = "action_EVENT_PLATFORM_REACH_POINT_148014", trigger_count = 0 },
	-- 火炉在A时更新curPos
	{ config_id = 1148015, name = "PLATFORM_REACH_POINT_148015", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_148015", action = "action_EVENT_PLATFORM_REACH_POINT_148015", trigger_count = 0 },
	-- 火炉从A到B时更新curPos
	{ config_id = 1148016, name = "PLATFORM_REACH_POINT_148016", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_148016", action = "action_EVENT_PLATFORM_REACH_POINT_148016", trigger_count = 0 },
	-- 火炉在C时更新curPos
	{ config_id = 1148017, name = "PLATFORM_REACH_POINT_148017", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_148017", action = "action_EVENT_PLATFORM_REACH_POINT_148017", trigger_count = 0 },
	-- 火炉位于B，踩左按钮向左移动火炉
	{ config_id = 1148018, name = "GADGET_STATE_CHANGE_148018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_148018", action = "action_EVENT_GADGET_STATE_CHANGE_148018", trigger_count = 0 },
	-- 火炉位于B，踩右按钮向右移动火炉
	{ config_id = 1148019, name = "GADGET_STATE_CHANGE_148019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_148019", action = "action_EVENT_GADGET_STATE_CHANGE_148019", trigger_count = 0 },
	-- 火炉位于C，踩左按钮向左移动火炉
	{ config_id = 1148020, name = "GADGET_STATE_CHANGE_148020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_148020", action = "action_EVENT_GADGET_STATE_CHANGE_148020", trigger_count = 0 },
	-- 火炉位于C，踩右按钮无反应
	{ config_id = 1148021, name = "GADGET_STATE_CHANGE_148021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_148021", action = "action_EVENT_GADGET_STATE_CHANGE_148021", trigger_count = 0 },
	-- 火炉到达锅A后改变各锅的升降温变量
	{ config_id = 1148022, name = "PLATFORM_REACH_POINT_148022", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_148022", action = "action_EVENT_PLATFORM_REACH_POINT_148022", trigger_count = 0 },
	-- 火炉从A到达锅B后改变各锅的升降温变量
	{ config_id = 1148023, name = "PLATFORM_REACH_POINT_148023", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_148023", action = "action_EVENT_PLATFORM_REACH_POINT_148023", trigger_count = 0 },
	-- 火炉到达锅C后改变各锅的升降温变量
	{ config_id = 1148024, name = "PLATFORM_REACH_POINT_148024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_148024", action = "action_EVENT_PLATFORM_REACH_POINT_148024", trigger_count = 0 },
	-- 锅A开始升温
	{ config_id = 1148025, name = "VARIABLE_CHANGE_148025", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_148025", action = "action_EVENT_VARIABLE_CHANGE_148025", trigger_count = 0 },
	-- 锅A升温后改变温度
	{ config_id = 1148026, name = "TIMER_EVENT_148026", event = EventType.EVENT_TIMER_EVENT, source = "ovenATempRise", condition = "condition_EVENT_TIMER_EVENT_148026", action = "action_EVENT_TIMER_EVENT_148026", trigger_count = 0 },
	-- 当锅A温度高于标准值时开始计时
	{ config_id = 1148027, name = "VARIABLE_CHANGE_148027", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATemp", condition = "condition_EVENT_VARIABLE_CHANGE_148027", action = "action_EVENT_VARIABLE_CHANGE_148027", trigger_count = 0 },
	-- 锅A温度高于标准值Ns后被销毁
	{ config_id = 1148028, name = "TIMER_EVENT_148028", event = EventType.EVENT_TIMER_EVENT, source = "ovenATempOverHeat", condition = "", action = "action_EVENT_TIMER_EVENT_148028", trigger_count = 0 },
	-- 锅A开始降温
	{ config_id = 1148029, name = "VARIABLE_CHANGE_148029", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_148029", action = "action_EVENT_VARIABLE_CHANGE_148029", trigger_count = 0 },
	-- 锅A降温后改变温度
	{ config_id = 1148030, name = "TIMER_EVENT_148030", event = EventType.EVENT_TIMER_EVENT, source = "ovenATempFall", condition = "condition_EVENT_TIMER_EVENT_148030", action = "action_EVENT_TIMER_EVENT_148030", trigger_count = 0 },
	-- 当锅A温度低于标准值时开始计时
	{ config_id = 1148031, name = "VARIABLE_CHANGE_148031", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATemp", condition = "condition_EVENT_VARIABLE_CHANGE_148031", action = "action_EVENT_VARIABLE_CHANGE_148031", trigger_count = 0 },
	-- 锅A温度低于标准值Ns后被销毁
	{ config_id = 1148032, name = "TIMER_EVENT_148032", event = EventType.EVENT_TIMER_EVENT, source = "ovenATempOverCool", condition = "", action = "action_EVENT_TIMER_EVENT_148032", trigger_count = 0 },
	-- 锅B开始升温
	{ config_id = 1148033, name = "VARIABLE_CHANGE_148033", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_148033", action = "action_EVENT_VARIABLE_CHANGE_148033", trigger_count = 0 },
	-- 锅B升温后改变温度
	{ config_id = 1148034, name = "TIMER_EVENT_148034", event = EventType.EVENT_TIMER_EVENT, source = "ovenBTempRise", condition = "condition_EVENT_TIMER_EVENT_148034", action = "action_EVENT_TIMER_EVENT_148034", trigger_count = 0 },
	-- 当锅B温度高于标准值时开始计时
	{ config_id = 1148035, name = "VARIABLE_CHANGE_148035", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTemp", condition = "condition_EVENT_VARIABLE_CHANGE_148035", action = "action_EVENT_VARIABLE_CHANGE_148035", trigger_count = 0 },
	-- 锅B温度高于标准值Ns后被销毁
	{ config_id = 1148036, name = "TIMER_EVENT_148036", event = EventType.EVENT_TIMER_EVENT, source = "ovenBTempOverHeat", condition = "", action = "action_EVENT_TIMER_EVENT_148036", trigger_count = 0 },
	-- 锅B开始降温
	{ config_id = 1148037, name = "VARIABLE_CHANGE_148037", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_148037", action = "action_EVENT_VARIABLE_CHANGE_148037", trigger_count = 0 },
	-- 锅B降温后改变温度
	{ config_id = 1148038, name = "TIMER_EVENT_148038", event = EventType.EVENT_TIMER_EVENT, source = "ovenBTempFall", condition = "condition_EVENT_TIMER_EVENT_148038", action = "action_EVENT_TIMER_EVENT_148038", trigger_count = 0 },
	-- 当锅B温度低于标准值时开始计时
	{ config_id = 1148039, name = "VARIABLE_CHANGE_148039", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTemp", condition = "condition_EVENT_VARIABLE_CHANGE_148039", action = "action_EVENT_VARIABLE_CHANGE_148039", trigger_count = 0 },
	-- 锅B温度低于标准值Ns后被销毁
	{ config_id = 1148040, name = "TIMER_EVENT_148040", event = EventType.EVENT_TIMER_EVENT, source = "ovenBTempOverCool", condition = "", action = "action_EVENT_TIMER_EVENT_148040", trigger_count = 0 },
	-- 锅C开始升温
	{ config_id = 1148041, name = "VARIABLE_CHANGE_148041", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_148041", action = "action_EVENT_VARIABLE_CHANGE_148041", trigger_count = 0 },
	-- 锅C升温后改变温度
	{ config_id = 1148042, name = "TIMER_EVENT_148042", event = EventType.EVENT_TIMER_EVENT, source = "ovenCTempRise", condition = "condition_EVENT_TIMER_EVENT_148042", action = "action_EVENT_TIMER_EVENT_148042", trigger_count = 0 },
	-- 当锅C温度高于标准值时开始计时
	{ config_id = 1148043, name = "VARIABLE_CHANGE_148043", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTemp", condition = "condition_EVENT_VARIABLE_CHANGE_148043", action = "action_EVENT_VARIABLE_CHANGE_148043", trigger_count = 0 },
	-- 锅C温度高于标准值Ns后被销毁
	{ config_id = 1148044, name = "TIMER_EVENT_148044", event = EventType.EVENT_TIMER_EVENT, source = "ovenCTempOverHeat", condition = "", action = "action_EVENT_TIMER_EVENT_148044", trigger_count = 0 },
	-- 锅C开始降温
	{ config_id = 1148045, name = "VARIABLE_CHANGE_148045", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_148045", action = "action_EVENT_VARIABLE_CHANGE_148045", trigger_count = 0 },
	-- 锅C降温后改变温度
	{ config_id = 1148046, name = "TIMER_EVENT_148046", event = EventType.EVENT_TIMER_EVENT, source = "ovenCTempFall", condition = "condition_EVENT_TIMER_EVENT_148046", action = "action_EVENT_TIMER_EVENT_148046", trigger_count = 0 },
	-- 当锅C温度低于标准值时开始计时
	{ config_id = 1148047, name = "VARIABLE_CHANGE_148047", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTemp", condition = "condition_EVENT_VARIABLE_CHANGE_148047", action = "action_EVENT_VARIABLE_CHANGE_148047", trigger_count = 0 },
	-- 锅C温度低于标准值Ns后被销毁
	{ config_id = 1148048, name = "TIMER_EVENT_148048", event = EventType.EVENT_TIMER_EVENT, source = "ovenCTempOverCool", condition = "", action = "action_EVENT_TIMER_EVENT_148048", trigger_count = 0 },
	{ config_id = 1148050, name = "GADGET_CREATE_148050", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_148050", action = "action_EVENT_GADGET_CREATE_148050", trigger_count = 0 },
	-- 选择了选项后加载挑战
	{ config_id = 1148051, name = "SELECT_OPTION_148051", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_148051", action = "action_EVENT_SELECT_OPTION_148051", trigger_count = 0 },
	-- A锅降温时间轴
	{ config_id = 1148052, name = "TIME_AXIS_PASS_148052", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenADOWN", condition = "", action = "action_EVENT_TIME_AXIS_PASS_148052", trigger_count = 0 },
	-- 监听挑战失败，1）刷新Group至Suite1；2）重置物件状态；3）移除全部的计时器；
	{ config_id = 1148053, name = "CHALLENGE_FAIL_148053", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_148053", trigger_count = 0 },
	-- 锅A在标准温度区间内
	{ config_id = 1148054, name = "VARIABLE_CHANGE_148054", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATemp", condition = "condition_EVENT_VARIABLE_CHANGE_148054", action = "action_EVENT_VARIABLE_CHANGE_148054", trigger_count = 0 },
	-- 锅B在标准温度区间内
	{ config_id = 1148055, name = "VARIABLE_CHANGE_148055", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTemp", condition = "condition_EVENT_VARIABLE_CHANGE_148055", action = "action_EVENT_VARIABLE_CHANGE_148055", trigger_count = 0 },
	-- 锅C在标准温度区间内
	{ config_id = 1148056, name = "VARIABLE_CHANGE_148056", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTemp", condition = "condition_EVENT_VARIABLE_CHANGE_148056", action = "action_EVENT_VARIABLE_CHANGE_148056", trigger_count = 0 },
	-- 锅A在高温区间内
	{ config_id = 1148057, name = "VARIABLE_CHANGE_148057", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATemp", condition = "condition_EVENT_VARIABLE_CHANGE_148057", action = "action_EVENT_VARIABLE_CHANGE_148057", trigger_count = 0 },
	-- 锅B在高温区间内
	{ config_id = 1148058, name = "VARIABLE_CHANGE_148058", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTemp", condition = "condition_EVENT_VARIABLE_CHANGE_148058", action = "action_EVENT_VARIABLE_CHANGE_148058", trigger_count = 0 },
	-- 锅C在高温区间内
	{ config_id = 1148059, name = "VARIABLE_CHANGE_148059", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTemp", condition = "condition_EVENT_VARIABLE_CHANGE_148059", action = "action_EVENT_VARIABLE_CHANGE_148059", trigger_count = 0 },
	-- 锅A在低温区间内
	{ config_id = 1148060, name = "VARIABLE_CHANGE_148060", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATemp", condition = "condition_EVENT_VARIABLE_CHANGE_148060", action = "action_EVENT_VARIABLE_CHANGE_148060", trigger_count = 0 },
	-- 锅B在低温区间内
	{ config_id = 1148061, name = "VARIABLE_CHANGE_148061", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTemp", condition = "condition_EVENT_VARIABLE_CHANGE_148061", action = "action_EVENT_VARIABLE_CHANGE_148061", trigger_count = 0 },
	-- 锅C在高温区间内
	{ config_id = 1148062, name = "VARIABLE_CHANGE_148062", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTemp", condition = "condition_EVENT_VARIABLE_CHANGE_148062", action = "action_EVENT_VARIABLE_CHANGE_148062", trigger_count = 0 },
	-- challengeTimer到时后判定挑战成功
	{ config_id = 1148063, name = "TIMER_EVENT_148063", event = EventType.EVENT_TIMER_EVENT, source = "challengeTimer", condition = "", action = "", trigger_count = 0, tag = "666" },
	-- 任意锅被销毁挑战即失败
	{ config_id = 1148064, name = "ANY_GADGET_DIE_148064", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_148064", trigger_count = 0 },
	-- 火炉从C到达锅B后改变各锅的升降温变量
	{ config_id = 1148065, name = "PLATFORM_REACH_POINT_148065", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_148065", action = "action_EVENT_PLATFORM_REACH_POINT_148065", trigger_count = 0 },
	-- 火炉从C到B时更新curPos
	{ config_id = 1148066, name = "PLATFORM_REACH_POINT_148066", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_148066", action = "action_EVENT_PLATFORM_REACH_POINT_148066", trigger_count = 0 },
	-- 监听挑战成功，1）刷新Group至Suite1；2）重置物件状态；3）移除全部的计时器；
	{ config_id = 1148067, name = "CHALLENGE_SUCCESS_148067", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_148067", trigger_count = 0 },
	-- B锅降温时间轴
	{ config_id = 1148068, name = "TIME_AXIS_PASS_148068", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenBDOWN", condition = "", action = "action_EVENT_TIME_AXIS_PASS_148068", trigger_count = 0 },
	-- C锅降温时间轴
	{ config_id = 1148069, name = "TIME_AXIS_PASS_148069", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenCDOWN", condition = "", action = "action_EVENT_TIME_AXIS_PASS_148069", trigger_count = 0 },
	-- A锅判定升温时创建时间轴
	{ config_id = 1148070, name = "VARIABLE_CHANGE_148070", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_148070", action = "action_EVENT_VARIABLE_CHANGE_148070", trigger_count = 0 },
	-- A锅升温时间轴
	{ config_id = 1148071, name = "TIME_AXIS_PASS_148071", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenAUP", condition = "", action = "action_EVENT_TIME_AXIS_PASS_148071", trigger_count = 0 },
	-- A锅判定降温时启用降温轴暂停升温轴
	{ config_id = 1148072, name = "VARIABLE_CHANGE_148072", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_148072", action = "action_EVENT_VARIABLE_CHANGE_148072", trigger_count = 0 },
	-- B锅判定升温时创建时间轴
	{ config_id = 1148073, name = "VARIABLE_CHANGE_148073", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_148073", action = "action_EVENT_VARIABLE_CHANGE_148073", trigger_count = 0 },
	-- B锅升温时间轴
	{ config_id = 1148074, name = "TIME_AXIS_PASS_148074", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenBUP", condition = "", action = "action_EVENT_TIME_AXIS_PASS_148074", trigger_count = 0 },
	-- B锅判定降温时启用降温轴暂停升温轴
	{ config_id = 1148075, name = "VARIABLE_CHANGE_148075", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_148075", action = "action_EVENT_VARIABLE_CHANGE_148075", trigger_count = 0 },
	-- C锅判定升温时创建时间轴
	{ config_id = 1148076, name = "VARIABLE_CHANGE_148076", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_148076", action = "action_EVENT_VARIABLE_CHANGE_148076", trigger_count = 0 },
	-- C锅升温时间轴
	{ config_id = 1148077, name = "TIME_AXIS_PASS_148077", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenAUP", condition = "", action = "action_EVENT_TIME_AXIS_PASS_148077", trigger_count = 0 },
	-- C锅判定降温时启用降温轴暂停升温轴
	{ config_id = 1148078, name = "VARIABLE_CHANGE_148078", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_148078", action = "action_EVENT_VARIABLE_CHANGE_148078", trigger_count = 0 },
	-- 当挑战开始40s时召唤第二波怪物
	{ config_id = 1148079, name = "TIME_AXIS_PASS_148079", event = EventType.EVENT_TIME_AXIS_PASS, source = "monstercreate2", condition = "", action = "action_EVENT_TIME_AXIS_PASS_148079", trigger_count = 0 },
	{ config_id = 1148080, name = "GROUP_LOAD_148080", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_148080" }
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
		gadgets = { 148001, 148002, 148003, 148004, 148005, 148006, 148049 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_148007", "GADGET_STATE_CHANGE_148008", "GADGET_STATE_CHANGE_148009", "GADGET_STATE_CHANGE_148010", "PLATFORM_REACH_POINT_148012", "PLATFORM_REACH_POINT_148014", "PLATFORM_REACH_POINT_148015", "PLATFORM_REACH_POINT_148016", "PLATFORM_REACH_POINT_148017", "GADGET_STATE_CHANGE_148018", "GADGET_STATE_CHANGE_148019", "GADGET_STATE_CHANGE_148020", "GADGET_STATE_CHANGE_148021", "PLATFORM_REACH_POINT_148022", "PLATFORM_REACH_POINT_148023", "PLATFORM_REACH_POINT_148024", "VARIABLE_CHANGE_148025", "TIMER_EVENT_148026", "VARIABLE_CHANGE_148027", "TIMER_EVENT_148028", "VARIABLE_CHANGE_148029", "TIMER_EVENT_148030", "VARIABLE_CHANGE_148031", "TIMER_EVENT_148032", "VARIABLE_CHANGE_148033", "TIMER_EVENT_148034", "VARIABLE_CHANGE_148035", "TIMER_EVENT_148036", "VARIABLE_CHANGE_148037", "TIMER_EVENT_148038", "VARIABLE_CHANGE_148039", "TIMER_EVENT_148040", "VARIABLE_CHANGE_148041", "TIMER_EVENT_148042", "VARIABLE_CHANGE_148043", "TIMER_EVENT_148044", "VARIABLE_CHANGE_148045", "TIMER_EVENT_148046", "VARIABLE_CHANGE_148047", "TIMER_EVENT_148048", "GADGET_CREATE_148050", "SELECT_OPTION_148051", "CHALLENGE_FAIL_148053", "VARIABLE_CHANGE_148054", "VARIABLE_CHANGE_148055", "VARIABLE_CHANGE_148056", "VARIABLE_CHANGE_148057", "VARIABLE_CHANGE_148058", "VARIABLE_CHANGE_148059", "VARIABLE_CHANGE_148060", "VARIABLE_CHANGE_148061", "VARIABLE_CHANGE_148062", "TIMER_EVENT_148063", "ANY_GADGET_DIE_148064", "PLATFORM_REACH_POINT_148065", "PLATFORM_REACH_POINT_148066", "CHALLENGE_SUCCESS_148067", "GROUP_LOAD_148080" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [踩踏按钮后改变火炉的移动方向的变量],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_148007", "GADGET_STATE_CHANGE_148008", "GADGET_STATE_CHANGE_148009", "GADGET_STATE_CHANGE_148010", "GADGET_STATE_CHANGE_148018", "GADGET_STATE_CHANGE_148019", "GADGET_STATE_CHANGE_148020", "GADGET_STATE_CHANGE_148021" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [火炉每到达一个point时判明下一目的地],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_148012", "PLATFORM_REACH_POINT_148014", "PLATFORM_REACH_POINT_148015", "PLATFORM_REACH_POINT_148016", "PLATFORM_REACH_POINT_148017", "PLATFORM_REACH_POINT_148066" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [锅的升温和降温逻辑],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_148022", "PLATFORM_REACH_POINT_148023", "PLATFORM_REACH_POINT_148024", "PLATFORM_REACH_POINT_148065" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = [锅A的升降温逻辑],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_148025", "TIMER_EVENT_148026", "VARIABLE_CHANGE_148027", "TIMER_EVENT_148028", "VARIABLE_CHANGE_148029", "TIMER_EVENT_148030", "VARIABLE_CHANGE_148031", "TIMER_EVENT_148032" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = [锅B的升降温逻辑],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_148033", "TIMER_EVENT_148034", "VARIABLE_CHANGE_148035", "TIMER_EVENT_148036", "VARIABLE_CHANGE_148037", "TIMER_EVENT_148038", "VARIABLE_CHANGE_148039", "TIMER_EVENT_148040" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = [锅C的升降温逻辑],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_148041", "TIMER_EVENT_148042", "VARIABLE_CHANGE_148043", "TIMER_EVENT_148044", "VARIABLE_CHANGE_148045", "TIMER_EVENT_148046", "VARIABLE_CHANGE_148047", "TIMER_EVENT_148048" },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = [根据锅的温度切换锅的物件状态],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_148054", "VARIABLE_CHANGE_148055", "VARIABLE_CHANGE_148056", "VARIABLE_CHANGE_148057", "VARIABLE_CHANGE_148058", "VARIABLE_CHANGE_148059", "VARIABLE_CHANGE_148060", "VARIABLE_CHANGE_148061", "VARIABLE_CHANGE_148062" },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "TIME_AXIS_PASS_148052", "TIME_AXIS_PASS_148068", "TIME_AXIS_PASS_148069", "VARIABLE_CHANGE_148070", "TIME_AXIS_PASS_148071", "VARIABLE_CHANGE_148072", "VARIABLE_CHANGE_148073", "TIME_AXIS_PASS_148074", "VARIABLE_CHANGE_148075", "VARIABLE_CHANGE_148076", "TIME_AXIS_PASS_148077", "VARIABLE_CHANGE_148078" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "SELECT_OPTION_148011", "TIME_AXIS_PASS_148013", "TIME_AXIS_PASS_148079" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_148007(context, evt)
	if 148001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为1
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_148007(context, evt)
	-- 将本组内变量名为 "fireDirection" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fireDirection", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_148008(context, evt)
	if 148002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为1
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_148008(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 148003, 110100078) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 148003) then
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
function condition_EVENT_GADGET_STATE_CHANGE_148009(context, evt)
	if 148001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_148009(context, evt)
	-- 将本组内变量名为 "fireDirection" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fireDirection", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_148010(context, evt)
	if 148002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_148010(context, evt)
	-- 将本组内变量名为 "fireDirection" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fireDirection", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_148011(context, evt)
	-- 判断是gadgetid 148049 option_id 175
	if 148049 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_148011(context, evt)
	-- 创建标识为"monstercreate1"，时间节点为{20}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "monstercreate1", {20}, false)
	
	
	-- 创建标识为"monstercreate2"，时间节点为{40}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "monstercreate2", {40}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_148012(context, evt)
	-- 判断是gadgetid 为 148003的移动平台，是否到达了110100078 的路线中的 1 点
	
	if 148003 ~= evt.param1 then
	  return false
	end
	
	if 110100078 ~= evt.param2 then
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
function action_EVENT_PLATFORM_REACH_POINT_148012(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 148003, 110100079) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 148003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_148013(context, evt)
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
function condition_EVENT_PLATFORM_REACH_POINT_148014(context, evt)
	-- 判断是gadgetid 为 148003的移动平台，是否到达了110100080 的路线中的 1 点
	
	if 148003 ~= evt.param1 then
	  return false
	end
	
	if 110100080 ~= evt.param2 then
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
function action_EVENT_PLATFORM_REACH_POINT_148014(context, evt)
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 148003, 110100077) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 148003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_148015(context, evt)
	-- 判断是gadgetid 为 148003的移动平台，是否到达了110100077 的路线中的 1 点
	
	if 148003 ~= evt.param1 then
	  return false
	end
	
	if 110100077 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_148015(context, evt)
	-- 将本组内变量名为 "curPos" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "curPos", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_148016(context, evt)
	-- 判断是gadgetid 为 148003的移动平台，是否到达了110100078 的路线中的 1 点
	
	if 148003 ~= evt.param1 then
	  return false
	end
	
	if 110100078 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_148016(context, evt)
	-- 将本组内变量名为 "curPos" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "curPos", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_148017(context, evt)
	-- 判断是gadgetid 为 148003的移动平台，是否到达了110100079 的路线中的 1 点
	
	if 148003 ~= evt.param1 then
	  return false
	end
	
	if 110100079 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_148017(context, evt)
	-- 将本组内变量名为 "curPos" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "curPos", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_148018(context, evt)
	if 148001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为2
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_148018(context, evt)
	-- 将本组内变量名为 "fireDirection" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fireDirection", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 148003, 110100077) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 148003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_148019(context, evt)
	if 148002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为2
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_148019(context, evt)
	-- 将本组内变量名为 "fireDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fireDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 148003, 110100079) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 148003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_148020(context, evt)
	if 148001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为3
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_148020(context, evt)
	-- 将本组内变量名为 "fireDirection" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fireDirection", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 设置移动平台路径
	if 0 ~= ScriptLib.SetPlatformRouteId(context, 148003, 110100080) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_platform_routeId")
	  return -1
	end
	
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 148003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_148021(context, evt)
	if 148002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为3
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_148021(context, evt)
	-- 将本组内变量名为 "fireDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "fireDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_148022(context, evt)
	-- 判断是gadgetid 为 148003的移动平台，是否到达了110100077 的路线中的 1 点
	
	if 148003 ~= evt.param1 then
	  return false
	end
	
	if 110100077 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_148022(context, evt)
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
function condition_EVENT_PLATFORM_REACH_POINT_148023(context, evt)
	-- 判断是gadgetid 为 148003的移动平台，是否到达了110100078 的路线中的 1 点
	
	if 148003 ~= evt.param1 then
	  return false
	end
	
	if 110100078 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_148023(context, evt)
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
function condition_EVENT_PLATFORM_REACH_POINT_148024(context, evt)
	-- 判断是gadgetid 为 148003的移动平台，是否到达了110100079 的路线中的 1 点
	
	if 148003 ~= evt.param1 then
	  return false
	end
	
	if 110100079 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_148024(context, evt)
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
function condition_EVENT_VARIABLE_CHANGE_148025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenATempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenATempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148025(context, evt)
	-- 延迟1秒后,向groupId为：111101148的对象,请求一次调用,并将string参数："ovenATempRise" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101148, "ovenATempRise", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_148026(context, evt)
	-- 判断变量"ovenATempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenATempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_148026(context, evt)
	-- 针对当前group内变量名为 "ovenATemp" 的变量，进行修改，变化值为 tempIncreaseSpeed
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenATemp", defs.tempIncreaseSpeed) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：111101148的对象,请求一次调用,并将string参数："ovenATempRise" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101148, "ovenATempRise", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148027(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 5 > evt.param1 or 10 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148027(context, evt)
	-- 延迟ovenToBeDestroyedTimer秒后,向groupId为：111101148的对象,请求一次调用,并将string参数："ovenATempOverHeat" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101148, "ovenATempOverHeat", defs.ovenToBeDestroyedTimer) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_148028(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 148004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148029(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenATempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenATempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148029(context, evt)
	-- 延迟1秒后,向groupId为：111101148的对象,请求一次调用,并将string参数："ovenATempFall" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101148, "ovenATempFall", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_148030(context, evt)
	-- 判断变量"ovenATempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenATempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_148030(context, evt)
	-- 针对当前group内变量名为 "ovenATemp" 的变量，进行修改，变化值为 tempDecreaseSpeed
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenATemp", defs.tempDecreaseSpeed) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：111101148的对象,请求一次调用,并将string参数："ovenATempFall" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101148, "ovenATempFall", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148031(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if -10 > evt.param1 or -5 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148031(context, evt)
	-- 延迟ovenToBeDestroyedTimer秒后,向groupId为：111101148的对象,请求一次调用,并将string参数："ovenATempOverCool" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101148, "ovenATempOverCool", defs.ovenToBeDestroyedTimer) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_148032(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 148004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148033(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenBTempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenBTempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148033(context, evt)
	-- 延迟1秒后,向groupId为：111101148的对象,请求一次调用,并将string参数："ovenBTempRise" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101148, "ovenBTempRise", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_148034(context, evt)
	-- 判断变量"ovenBTempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenBTempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_148034(context, evt)
	-- 针对当前group内变量名为 "ovenBTemp" 的变量，进行修改，变化值为 tempIncreaseSpeed
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenBTemp", defs.tempIncreaseSpeed) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：111101148的对象,请求一次调用,并将string参数："ovenBTempRise" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101148, "ovenBTempRise", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148035(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 5 > evt.param1 or 10 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148035(context, evt)
	-- 延迟ovenToBeDestroyedTimer秒后,向groupId为：111101148的对象,请求一次调用,并将string参数："ovenBTempOverHeat" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101148, "ovenBTempOverHeat", defs.ovenToBeDestroyedTimer) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_148036(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 148005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148037(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenBTempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenBTempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148037(context, evt)
	-- 延迟1秒后,向groupId为：111101148的对象,请求一次调用,并将string参数："ovenBTempFall" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101148, "ovenBTempFall", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_148038(context, evt)
	-- 判断变量"ovenBTempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenBTempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_148038(context, evt)
	-- 针对当前group内变量名为 "ovenBTemp" 的变量，进行修改，变化值为 tempDecreaseSpeed
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenBTemp", defs.tempDecreaseSpeed) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：111101148的对象,请求一次调用,并将string参数："ovenBTempFall" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101148, "ovenBTempFall", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148039(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if -10 > evt.param1 or -5 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148039(context, evt)
	-- 延迟ovenToBeDestroyedTimer秒后,向groupId为：111101148的对象,请求一次调用,并将string参数："ovenBTempOverCool" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101148, "ovenBTempOverCool", defs.ovenToBeDestroyedTimer) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_148040(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 148005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148041(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenCTempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenCTempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148041(context, evt)
	-- 延迟1秒后,向groupId为：111101148的对象,请求一次调用,并将string参数："ovenCTempRise" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101148, "ovenCTempRise", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_148042(context, evt)
	-- 判断变量"ovenCTempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenCTempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_148042(context, evt)
	-- 针对当前group内变量名为 "ovenCTemp" 的变量，进行修改，变化值为 tempIncreaseSpeed
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenCTemp", defs.tempIncreaseSpeed) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：111101148的对象,请求一次调用,并将string参数："ovenCTempRise" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101148, "ovenCTempRise", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148043(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 5 > evt.param1 or 10 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148043(context, evt)
	-- 延迟ovenToBeDestroyedTimer秒后,向groupId为：111101148的对象,请求一次调用,并将string参数："ovenCTempOverHeat" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101148, "ovenCTempOverHeat", defs.ovenToBeDestroyedTimer) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_148044(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 148006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148045(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenCTempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenCTempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148045(context, evt)
	-- 延迟1秒后,向groupId为：111101148的对象,请求一次调用,并将string参数："ovenCTempFall" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101148, "ovenCTempFall", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_148046(context, evt)
	-- 判断变量"ovenATempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenATempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_148046(context, evt)
	-- 针对当前group内变量名为 "ovenCTemp" 的变量，进行修改，变化值为 tempDecreaseSpeed
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenCTemp", defs.tempDecreaseSpeed) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 延迟1秒后,向groupId为：111101148的对象,请求一次调用,并将string参数："ovenCTempFall" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101148, "ovenCTempFall", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148047(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if -10 > evt.param1 or -5 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148047(context, evt)
	-- 延迟ovenToBeDestroyedTimer秒后,向groupId为：111101148的对象,请求一次调用,并将string参数："ovenCTempOverCool" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101148, "ovenCTempOverCool", defs.ovenToBeDestroyedTimer) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_148048(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 148006 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_148050(context, evt)
	if 148049 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_148050(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101148, 148049, {175}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_148051(context, evt)
	-- 判断是gadgetid 148049 option_id 175
	if 148049 ~= evt.param1 then
		return false	
	end
	
	if 175 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_148051(context, evt)
	-- 删除指定group： 111101148 ；指定config：148049；物件身上指定option：175；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101148, 148049, 175) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 148049 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148049, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建编号为888（该挑战的识别id),挑战内容为245的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 245, 150, 15, 666, 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 延迟149秒后,向groupId为：111101148的对象,请求一次调用,并将string参数："challengeTimer" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 111101148, "challengeTimer", 149) then
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
	
	-- 将configid为 148004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 148005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 148006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建标识为"ovenADOWN"，时间节点为{1}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "ovenADOWN", {1}, true)
	
	
	-- 创建标识为"ovenBDOWN"，时间节点为{1}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "ovenBDOWN", {1}, true)
	
	
	-- 创建标识为"ovenCDOWN"，时间节点为{1}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "ovenCDOWN", {1}, true)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_148052(context, evt)
	-- 针对当前group内变量名为 "ovenATemp" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenATemp", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_148053(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111101148, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
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
	
	-- 将configid为 148049 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148049, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 148004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 148005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 148006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "ovenATempRise") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "ovenBTempRise") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "ovenCTempRise") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "ovenATempOverHeat") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "ovenBTempOverHeat") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "ovenCTempOverHeat") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "ovenATempFall") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "ovenBTempFall") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "ovenCTempFall") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "ovenATempOverCool") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "ovenBTempOverCool") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "ovenCTempOverCool") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "challengeTimer") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 停止标识为"monstercreate1"的时间轴
	ScriptLib.EndTimeAxis(context, "monstercreate1")
	
	
	-- 停止标识为"monstercreate2"的时间轴
	ScriptLib.EndTimeAxis(context, "monstercreate2")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148054(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if -5 > evt.param1 or 5 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148054(context, evt)
	-- 将configid为 148004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148055(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if -5 > evt.param1 or 5 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148055(context, evt)
	-- 将configid为 148005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148056(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if -5 > evt.param1 or 5 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148056(context, evt)
	-- 将configid为 148006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148057(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 5 > evt.param1 or 10 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148057(context, evt)
	-- 将configid为 148004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148058(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 5 > evt.param1 or 10 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148058(context, evt)
	-- 将configid为 148005 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148005, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148059(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if 5 > evt.param1 or 10 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148059(context, evt)
	-- 将configid为 148006 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148006, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148060(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if -10 > evt.param1 or -5 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148060(context, evt)
	-- 将configid为 148004 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148004, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148061(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if -10 > evt.param1 or -5 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148061(context, evt)
	-- 将configid为 148005 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148005, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148062(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	--检测当前改变的variable是否在预设区间
	if -10 > evt.param1 or -5 < evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148062(context, evt)
	-- 将configid为 148006 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148006, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_148064(context, evt)
	-- 终止识别id为888的挑战，并判定失败
		ScriptLib.StopChallenge(context, 888, 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_148065(context, evt)
	-- 判断是gadgetid 为 148003的移动平台，是否到达了110100080 的路线中的 1 点
	
	if 148003 ~= evt.param1 then
	  return false
	end
	
	if 110100080 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_148065(context, evt)
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
function condition_EVENT_PLATFORM_REACH_POINT_148066(context, evt)
	-- 判断是gadgetid 为 148003的移动平台，是否到达了110100080 的路线中的 1 点
	
	if 148003 ~= evt.param1 then
	  return false
	end
	
	if 110100080 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_148066(context, evt)
	-- 将本组内变量名为 "curPos" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "curPos", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_148067(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111101148, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
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
	
	-- 将configid为 148049 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148049, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 148004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 148005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 148006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 148006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "ovenATempRise") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "ovenBTempRise") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "ovenCTempRise") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "ovenATempOverHeat") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "ovenBTempOverHeat") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "ovenCTempOverHeat") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "ovenATempFall") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "ovenBTempFall") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "ovenCTempFall") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "ovenATempOverCool") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "ovenBTempOverCool") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "ovenCTempOverCool") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 111101148, "challengeTimer") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 停止标识为"monstercreate1"的时间轴
	ScriptLib.EndTimeAxis(context, "monstercreate1")
	
	
	-- 停止标识为"monstercreate2"的时间轴
	ScriptLib.EndTimeAxis(context, "monstercreate2")
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_148068(context, evt)
	-- 针对当前group内变量名为 "ovenBTemp" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenBTemp", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_148069(context, evt)
	-- 针对当前group内变量名为 "ovenCTemp" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenCTemp", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148070(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenATempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenATempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148070(context, evt)
	-- 创建标识为"ovenAUP"，时间节点为{1}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "ovenAUP", {1}, true)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_148071(context, evt)
	-- 针对当前group内变量名为 "ovenATemp" 的变量，进行修改，变化值为 3
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenATemp", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148072(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenATempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenATempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148072(context, evt)
	-- 重启标识为"ovenADOWN"的时间轴
	ScriptLib.ContinueTimeAxis(context, "ovenADOWN")
	
	
	-- 暂停标识为"ovenAUP"的时间轴
	ScriptLib.PauseTimeAxis(context, "ovenAUP")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148073(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenBTempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenBTempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148073(context, evt)
	-- 暂停标识为"ovenBDOWN"的时间轴
	ScriptLib.PauseTimeAxis(context, "ovenBDOWN")
	
	
	-- 创建标识为"ovenBUP"，时间节点为{1}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "ovenBUP", {1}, true)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_148074(context, evt)
	-- 针对当前group内变量名为 "ovenBTemp" 的变量，进行修改，变化值为 3
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenBTemp", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148075(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenBTempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenBTempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148075(context, evt)
	-- 重启标识为"ovenBDOWN"的时间轴
	ScriptLib.ContinueTimeAxis(context, "ovenBDOWN")
	
	
	-- 暂停标识为"ovenBUP"的时间轴
	ScriptLib.PauseTimeAxis(context, "ovenBUP")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148076(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenCTempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenCTempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148076(context, evt)
	-- 创建标识为"ovenCDOWN"，时间节点为{1}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "ovenCDOWN", {1}, true)
	
	
	-- 暂停标识为"ovenCTemp"的时间轴
	ScriptLib.PauseTimeAxis(context, "ovenCTemp")
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_148077(context, evt)
	-- 针对当前group内变量名为 "ovenCTemp" 的变量，进行修改，变化值为 3
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenCTemp", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_148078(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenCTempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenCTempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_148078(context, evt)
	-- 重启标识为"ovenCDOWN"的时间轴
	ScriptLib.ContinueTimeAxis(context, "ovenCDOWN")
	
	
	-- 暂停标识为"ovenCUP"的时间轴
	ScriptLib.PauseTimeAxis(context, "ovenCUP")
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_148079(context, evt)
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
function action_EVENT_GROUP_LOAD_148080(context, evt)
	-- 添加suite10的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101148, 10)
	
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
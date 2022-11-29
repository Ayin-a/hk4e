-- 基础信息
local base_info = {
	group_id = 133105041
}

-- DEFS_MISCS
local defs = {
    ButtonLeftConfig = 41001,
    ButtonRightConfig = 41002,
    StoveConfig = 41003,
    PotConfigIDA =41004,
    PotConfigIDB =41005,
    PotConfigIDC =41006,
    targetColdTime = 14,
    targetHeatTime = 14,
    BeHitByFireTemp = 5,
    BeHitByIceWaterTemp = -5,
    SecondTempChange = { 7, -3}, -- 每秒对应上升或下降的温度变化
    StartTemp = {40,50,65},      -- ABC三壶的初始温度
    PlatFormRoute ={             -- 定义各个Route的功能，只需对应Log修改数据即可
        [310500138] = {curPos = 2,reachPos = 2,tempDirs = {2,1,2},log = "从中间移动到中间，在中间徘徊"},
        [310500139] = {curPos = 1,reachPos = 2,tempDirs = {2,1,2},log = "从左边移动到中间"},
        [310500140] = {curPos = 2,reachPos = 3,tempDirs = {2,2,1},log = "从中间移动到右边"},
        [310500141] = {curPos = 3,reachPos = 2,tempDirs = {2,1,2},log = "从右边移动到中间"},
        [310500142] = {curPos = 2,reachPos = 1,tempDirs = {1,2,2},log = "从中间移动到左边"}
    }
}

local challengeParam = {
    90, -- Time
    72, -- 72//EVENT_TIME_AXIS_PASS
    666,-- TAG
    1   -- 触发次数
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
	[41001] = { config_id = 41001, gadget_id = 70310079, pos = { x = 1098.377, y = 409.811, z = -704.127 }, rot = { x = 4.608, y = 359.094, z = 8.783 }, level = 30, area_id = 10 },
	-- 右按钮
	[41002] = { config_id = 41002, gadget_id = 70310079, pos = { x = 1095.938, y = 409.382, z = -704.266 }, rot = { x = 352.870, y = 177.885, z = 349.463 }, level = 30, area_id = 10 },
	-- 火炉
	[41003] = { config_id = 41003, gadget_id = 70310080, pos = { x = 1097.081, y = 411.084, z = -710.290 }, rot = { x = 0.273, y = 183.382, z = 0.016 }, level = 30, route_id = 310500138, area_id = 10 },
	-- 锅A左
	[41004] = { config_id = 41004, gadget_id = 70310078, pos = { x = 1100.605, y = 412.338, z = -709.466 }, rot = { x = 0.000, y = 338.226, z = 0.000 }, level = 30, server_global_value_config = { ["SGV_Thermometer_Value"]= 40,["SGV_Thermometer_SafeFrom"]= 0.1,["SGV_Thermometer_SafeTo"]= 0.7,["SGV_Is_Taunting"] = 0}, area_id = 10 },
	-- 锅B中
	[41005] = { config_id = 41005, gadget_id = 70310078, pos = { x = 1097.130, y = 412.397, z = -710.293 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, server_global_value_config = { ["SGV_Thermometer_Value"]= 50,["SGV_Thermometer_SafeFrom"]= 0.3,["SGV_Thermometer_SafeTo"]= 0.9,["SGV_Is_Taunting"] = 0}, area_id = 10 },
	-- 锅C右
	[41006] = { config_id = 41006, gadget_id = 70310078, pos = { x = 1093.612, y = 412.338, z = -709.466 }, rot = { x = 0.000, y = 29.000, z = 0.000 }, level = 30, server_global_value_config = { ["SGV_Thermometer_Value"]= 65,["SGV_Thermometer_SafeFrom"]= 0.2,["SGV_Thermometer_SafeTo"]= 0.8,["SGV_Is_Taunting"] = 0}, area_id = 10 },
	[41050] = { config_id = 41050, gadget_id = 70310084, pos = { x = 1093.599, y = 409.818, z = -709.478 }, rot = { x = 4.707, y = 26.909, z = 14.102 }, level = 1, area_id = 10 },
	[41081] = { config_id = 41081, gadget_id = 70310084, pos = { x = 1097.203, y = 410.376, z = -710.228 }, rot = { x = 6.206, y = 0.339, z = 6.242 }, level = 1, area_id = 10 },
	[41082] = { config_id = 41082, gadget_id = 70310084, pos = { x = 1100.617, y = 410.678, z = -709.466 }, rot = { x = 3.266, y = 340.593, z = 9.186 }, level = 1, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 当挑战开始60s时召唤第二波怪物
	{ config_id = 1041007, name = "TIME_AXIS_PASS_41007", event = EventType.EVENT_TIME_AXIS_PASS, source = "monstercreate3", condition = "", action = "action_EVENT_TIME_AXIS_PASS_41007", trigger_count = 0 },
	-- 开启挑战时开始时间轴
	{ config_id = 1041012, name = "QUEST_START_41012", event = EventType.EVENT_QUEST_START, source = "7050004", condition = "condition_EVENT_QUEST_START_41012", action = "action_EVENT_QUEST_START_41012", trigger_count = 0 },
	-- 当挑战开始20s时召唤第一波怪物
	{ config_id = 1041014, name = "TIME_AXIS_PASS_41014", event = EventType.EVENT_TIME_AXIS_PASS, source = "monstercreate1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_41014", trigger_count = 0 },
	-- 任务开始加载挑战
	{ config_id = 1041051, name = "QUEST_START_41051", event = EventType.EVENT_QUEST_START, source = "7050004", condition = "", action = "action_EVENT_QUEST_START_41051", trigger_count = 0 },
	-- A锅降温时间轴
	{ config_id = 1041052, name = "TIME_AXIS_PASS_41052", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenADOWN", condition = "", action = "action_EVENT_TIME_AXIS_PASS_41052", trigger_count = 0 },
	-- 监听挑战失败，1）刷新Group至Suite1；2）重置物件状态；3）移除全部的计时器；
	{ config_id = 1041053, name = "CHALLENGE_FAIL_41053", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_41053", trigger_count = 0 },
	-- 监听挑战成功，1）刷新Group至Suite1；2）重置物件状态；3）移除全部的计时器；
	{ config_id = 1041067, name = "CHALLENGE_SUCCESS_41067", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_41067", trigger_count = 0 },
	-- B锅降温时间轴
	{ config_id = 1041068, name = "TIME_AXIS_PASS_41068", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenBDOWN", condition = "", action = "action_EVENT_TIME_AXIS_PASS_41068", trigger_count = 0 },
	-- C锅降温时间轴
	{ config_id = 1041069, name = "TIME_AXIS_PASS_41069", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenCDOWN", condition = "", action = "action_EVENT_TIME_AXIS_PASS_41069", trigger_count = 0 },
	-- A锅判定升温时创建时间轴
	{ config_id = 1041070, name = "VARIABLE_CHANGE_41070", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_41070", action = "action_EVENT_VARIABLE_CHANGE_41070", trigger_count = 0 },
	-- A锅升温时间轴
	{ config_id = 1041071, name = "TIME_AXIS_PASS_41071", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenAUP", condition = "", action = "action_EVENT_TIME_AXIS_PASS_41071", trigger_count = 0 },
	-- A锅判定降温时启用降温轴暂停升温轴
	{ config_id = 1041072, name = "VARIABLE_CHANGE_41072", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_41072", action = "action_EVENT_VARIABLE_CHANGE_41072", trigger_count = 0 },
	-- B锅判定升温时创建时间轴
	{ config_id = 1041073, name = "VARIABLE_CHANGE_41073", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_41073", action = "action_EVENT_VARIABLE_CHANGE_41073", trigger_count = 0 },
	-- B锅升温时间轴
	{ config_id = 1041074, name = "TIME_AXIS_PASS_41074", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenBUP", condition = "", action = "action_EVENT_TIME_AXIS_PASS_41074", trigger_count = 0 },
	-- B锅判定降温时启用降温轴暂停升温轴
	{ config_id = 1041075, name = "VARIABLE_CHANGE_41075", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_41075", action = "action_EVENT_VARIABLE_CHANGE_41075", trigger_count = 0 },
	-- C锅判定升温时创建时间轴
	{ config_id = 1041076, name = "VARIABLE_CHANGE_41076", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_41076", action = "action_EVENT_VARIABLE_CHANGE_41076", trigger_count = 0 },
	-- C锅升温时间轴
	{ config_id = 1041077, name = "TIME_AXIS_PASS_41077", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenAUP", condition = "", action = "action_EVENT_TIME_AXIS_PASS_41077", trigger_count = 0 },
	-- C锅判定降温时启用降温轴暂停升温轴
	{ config_id = 1041078, name = "VARIABLE_CHANGE_41078", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_41078", action = "action_EVENT_VARIABLE_CHANGE_41078", trigger_count = 0 },
	-- 当挑战开始40s时召唤第二波怪物
	{ config_id = 1041079, name = "TIME_AXIS_PASS_41079", event = EventType.EVENT_TIME_AXIS_PASS, source = "monstercreate2", condition = "", action = "action_EVENT_TIME_AXIS_PASS_41079", trigger_count = 0 },
	-- 确保加载怪物group为suite1
	{ config_id = 1041080, name = "GROUP_LOAD_41080", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_41080", trigger_count = 0 },
	-- 对话完成切901
	{ config_id = 1041094, name = "QUEST_START_41094", event = EventType.EVENT_QUEST_START, source = "7050002", condition = "", action = "action_EVENT_QUEST_START_41094", trigger_count = 0 },
	-- 对话结束切回来
	{ config_id = 1041095, name = "QUEST_FINISH_41095", event = EventType.EVENT_QUEST_FINISH, source = "7050002", condition = "", action = "action_EVENT_QUEST_FINISH_41095", trigger_count = 0 },
	-- 任务重置group
	{ config_id = 1041096, name = "QUEST_FINISH_41096", event = EventType.EVENT_QUEST_FINISH, source = "7050006", condition = "", action = "action_EVENT_QUEST_FINISH_41096", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "ovenATemp", value = 40, no_refresh = false },
	{ config_id = 2, name = "ovenBTemp", value = 50, no_refresh = false },
	{ config_id = 3, name = "ovenCTemp", value = 65, no_refresh = false },
	{ config_id = 4, name = "curPos", value = 2, no_refresh = false },
	{ config_id = 5, name = "fireDirection", value = 0, no_refresh = false },
	{ config_id = 6, name = "ovenATempDirection", value = 0, no_refresh = false },
	{ config_id = 7, name = "ovenBTempDirection", value = 0, no_refresh = false },
	{ config_id = 8, name = "ovenCTempDirection", value = 0, no_refresh = false },
	{ config_id = 9, name = "start", value = 0, no_refresh = false },
	{ config_id = 10, name = "fail", value = 0, no_refresh = true },
	{ config_id = 11, name = "isRightBtnPressed", value = 0, no_refresh = false },
	{ config_id = 12, name = "isLeftBtnPressed", value = 0, no_refresh = false },
	{ config_id = 13, name = "startOrNot", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1041008, name = "GADGET_STATE_CHANGE_41008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41008", action = "action_EVENT_GADGET_STATE_CHANGE_41008", trigger_count = 0 },
		{ config_id = 1041009, name = "GADGET_STATE_CHANGE_41009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41009", action = "action_EVENT_GADGET_STATE_CHANGE_41009", trigger_count = 0 },
		{ config_id = 1041010, name = "GADGET_STATE_CHANGE_41010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41010", action = "action_EVENT_GADGET_STATE_CHANGE_41010", trigger_count = 0 },
		{ config_id = 1041011, name = "GADGET_STATE_CHANGE_41011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41011", action = "action_EVENT_GADGET_STATE_CHANGE_41011", trigger_count = 0 },
		{ config_id = 1041013, name = "PLATFORM_REACH_POINT_41013", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_41013", action = "action_EVENT_PLATFORM_REACH_POINT_41013", trigger_count = 0 },
		{ config_id = 1041015, name = "PLATFORM_REACH_POINT_41015", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_41015", action = "action_EVENT_PLATFORM_REACH_POINT_41015", trigger_count = 0 },
		{ config_id = 1041016, name = "PLATFORM_REACH_POINT_41016", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_41016", action = "action_EVENT_PLATFORM_REACH_POINT_41016", trigger_count = 0 },
		{ config_id = 1041017, name = "PLATFORM_REACH_POINT_41017", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_41017", action = "action_EVENT_PLATFORM_REACH_POINT_41017", trigger_count = 0 },
		{ config_id = 1041018, name = "PLATFORM_REACH_POINT_41018", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_41018", action = "action_EVENT_PLATFORM_REACH_POINT_41018", trigger_count = 0 },
		{ config_id = 1041019, name = "GADGET_STATE_CHANGE_41019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41019", action = "action_EVENT_GADGET_STATE_CHANGE_41019", trigger_count = 0 },
		{ config_id = 1041020, name = "GADGET_STATE_CHANGE_41020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41020", action = "action_EVENT_GADGET_STATE_CHANGE_41020", trigger_count = 0 },
		{ config_id = 1041021, name = "GADGET_STATE_CHANGE_41021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41021", action = "action_EVENT_GADGET_STATE_CHANGE_41021", trigger_count = 0 },
		{ config_id = 1041022, name = "GADGET_STATE_CHANGE_41022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41022", action = "action_EVENT_GADGET_STATE_CHANGE_41022", trigger_count = 0 },
		{ config_id = 1041023, name = "PLATFORM_REACH_POINT_41023", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_41023", action = "action_EVENT_PLATFORM_REACH_POINT_41023", trigger_count = 0 },
		{ config_id = 1041024, name = "PLATFORM_REACH_POINT_41024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_41024", action = "action_EVENT_PLATFORM_REACH_POINT_41024", trigger_count = 0 },
		{ config_id = 1041025, name = "PLATFORM_REACH_POINT_41025", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_41025", action = "action_EVENT_PLATFORM_REACH_POINT_41025", trigger_count = 0 },
		{ config_id = 1041026, name = "VARIABLE_CHANGE_41026", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATempDirection", condition = "condition_EVENT_VARIABLE_CHANGE_41026", action = "action_EVENT_VARIABLE_CHANGE_41026", trigger_count = 0 },
		{ config_id = 1041027, name = "TIMER_EVENT_41027", event = EventType.EVENT_TIMER_EVENT, source = "ovenATempRise", condition = "condition_EVENT_TIMER_EVENT_41027", action = "action_EVENT_TIMER_EVENT_41027", trigger_count = 0 },
		{ config_id = 1041028, name = "VARIABLE_CHANGE_41028", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATemp", condition = "condition_EVENT_VARIABLE_CHANGE_41028", action = "action_EVENT_VARIABLE_CHANGE_41028", trigger_count = 0 },
		{ config_id = 1041029, name = "TIMER_EVENT_41029", event = EventType.EVENT_TIMER_EVENT, source = "ovenATempOverHeat", condition = "", action = "action_EVENT_TIMER_EVENT_41029", trigger_count = 0 },
		{ config_id = 1041030, name = "VARIABLE_CHANGE_41030", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATempDirection", condition = "condition_EVENT_VARIABLE_CHANGE_41030", action = "action_EVENT_VARIABLE_CHANGE_41030", trigger_count = 0 },
		{ config_id = 1041031, name = "TIMER_EVENT_41031", event = EventType.EVENT_TIMER_EVENT, source = "ovenATempFall", condition = "condition_EVENT_TIMER_EVENT_41031", action = "action_EVENT_TIMER_EVENT_41031", trigger_count = 0 },
		{ config_id = 1041032, name = "VARIABLE_CHANGE_41032", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATemp", condition = "condition_EVENT_VARIABLE_CHANGE_41032", action = "action_EVENT_VARIABLE_CHANGE_41032", trigger_count = 0 },
		{ config_id = 1041033, name = "TIMER_EVENT_41033", event = EventType.EVENT_TIMER_EVENT, source = "ovenATempOverCool", condition = "", action = "action_EVENT_TIMER_EVENT_41033", trigger_count = 0 },
		{ config_id = 1041034, name = "VARIABLE_CHANGE_41034", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTempDirection", condition = "condition_EVENT_VARIABLE_CHANGE_41034", action = "action_EVENT_VARIABLE_CHANGE_41034", trigger_count = 0 },
		{ config_id = 1041035, name = "TIMER_EVENT_41035", event = EventType.EVENT_TIMER_EVENT, source = "ovenBTempRise", condition = "condition_EVENT_TIMER_EVENT_41035", action = "action_EVENT_TIMER_EVENT_41035", trigger_count = 0 },
		{ config_id = 1041036, name = "VARIABLE_CHANGE_41036", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTemp", condition = "condition_EVENT_VARIABLE_CHANGE_41036", action = "action_EVENT_VARIABLE_CHANGE_41036", trigger_count = 0 },
		{ config_id = 1041037, name = "TIMER_EVENT_41037", event = EventType.EVENT_TIMER_EVENT, source = "ovenBTempOverHeat", condition = "", action = "action_EVENT_TIMER_EVENT_41037", trigger_count = 0 },
		{ config_id = 1041038, name = "VARIABLE_CHANGE_41038", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTempDirection", condition = "condition_EVENT_VARIABLE_CHANGE_41038", action = "action_EVENT_VARIABLE_CHANGE_41038", trigger_count = 0 },
		{ config_id = 1041039, name = "TIMER_EVENT_41039", event = EventType.EVENT_TIMER_EVENT, source = "ovenBTempFall", condition = "condition_EVENT_TIMER_EVENT_41039", action = "action_EVENT_TIMER_EVENT_41039", trigger_count = 0 },
		{ config_id = 1041040, name = "VARIABLE_CHANGE_41040", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTemp", condition = "condition_EVENT_VARIABLE_CHANGE_41040", action = "action_EVENT_VARIABLE_CHANGE_41040", trigger_count = 0 },
		{ config_id = 1041041, name = "TIMER_EVENT_41041", event = EventType.EVENT_TIMER_EVENT, source = "ovenBTempOverCool", condition = "", action = "action_EVENT_TIMER_EVENT_41041", trigger_count = 0 },
		{ config_id = 1041042, name = "VARIABLE_CHANGE_41042", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTempDirection", condition = "condition_EVENT_VARIABLE_CHANGE_41042", action = "action_EVENT_VARIABLE_CHANGE_41042", trigger_count = 0 },
		{ config_id = 1041043, name = "TIMER_EVENT_41043", event = EventType.EVENT_TIMER_EVENT, source = "ovenCTempRise", condition = "condition_EVENT_TIMER_EVENT_41043", action = "action_EVENT_TIMER_EVENT_41043", trigger_count = 0 },
		{ config_id = 1041044, name = "VARIABLE_CHANGE_41044", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTemp", condition = "condition_EVENT_VARIABLE_CHANGE_41044", action = "action_EVENT_VARIABLE_CHANGE_41044", trigger_count = 0 },
		{ config_id = 1041045, name = "TIMER_EVENT_41045", event = EventType.EVENT_TIMER_EVENT, source = "ovenCTempOverHeat", condition = "", action = "action_EVENT_TIMER_EVENT_41045", trigger_count = 0 },
		{ config_id = 1041046, name = "VARIABLE_CHANGE_41046", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTempDirection", condition = "condition_EVENT_VARIABLE_CHANGE_41046", action = "action_EVENT_VARIABLE_CHANGE_41046", trigger_count = 0 },
		{ config_id = 1041047, name = "TIMER_EVENT_41047", event = EventType.EVENT_TIMER_EVENT, source = "ovenCTempFall", condition = "condition_EVENT_TIMER_EVENT_41047", action = "action_EVENT_TIMER_EVENT_41047", trigger_count = 0 },
		{ config_id = 1041048, name = "VARIABLE_CHANGE_41048", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTemp", condition = "condition_EVENT_VARIABLE_CHANGE_41048", action = "action_EVENT_VARIABLE_CHANGE_41048", trigger_count = 0 },
		{ config_id = 1041049, name = "TIMER_EVENT_41049", event = EventType.EVENT_TIMER_EVENT, source = "ovenCTempOverCool", condition = "", action = "action_EVENT_TIMER_EVENT_41049", trigger_count = 0 },
		{ config_id = 1041054, name = "VARIABLE_CHANGE_41054", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATemp", condition = "condition_EVENT_VARIABLE_CHANGE_41054", action = "action_EVENT_VARIABLE_CHANGE_41054", trigger_count = 0 },
		{ config_id = 1041055, name = "VARIABLE_CHANGE_41055", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTemp", condition = "condition_EVENT_VARIABLE_CHANGE_41055", action = "action_EVENT_VARIABLE_CHANGE_41055", trigger_count = 0 },
		{ config_id = 1041056, name = "VARIABLE_CHANGE_41056", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTemp", condition = "condition_EVENT_VARIABLE_CHANGE_41056", action = "action_EVENT_VARIABLE_CHANGE_41056", trigger_count = 0 },
		{ config_id = 1041057, name = "VARIABLE_CHANGE_41057", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATemp", condition = "condition_EVENT_VARIABLE_CHANGE_41057", action = "action_EVENT_VARIABLE_CHANGE_41057", trigger_count = 0 },
		{ config_id = 1041058, name = "VARIABLE_CHANGE_41058", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTemp", condition = "condition_EVENT_VARIABLE_CHANGE_41058", action = "action_EVENT_VARIABLE_CHANGE_41058", trigger_count = 0 },
		{ config_id = 1041059, name = "VARIABLE_CHANGE_41059", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTemp", condition = "condition_EVENT_VARIABLE_CHANGE_41059", action = "action_EVENT_VARIABLE_CHANGE_41059", trigger_count = 0 },
		{ config_id = 1041060, name = "VARIABLE_CHANGE_41060", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATemp", condition = "condition_EVENT_VARIABLE_CHANGE_41060", action = "action_EVENT_VARIABLE_CHANGE_41060", trigger_count = 0 },
		{ config_id = 1041061, name = "VARIABLE_CHANGE_41061", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTemp", condition = "condition_EVENT_VARIABLE_CHANGE_41061", action = "action_EVENT_VARIABLE_CHANGE_41061", trigger_count = 0 },
		{ config_id = 1041062, name = "VARIABLE_CHANGE_41062", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTemp", condition = "condition_EVENT_VARIABLE_CHANGE_41062", action = "action_EVENT_VARIABLE_CHANGE_41062", trigger_count = 0 },
		{ config_id = 1041063, name = "TIMER_EVENT_41063", event = EventType.EVENT_TIMER_EVENT, source = "challengeTimer", condition = "", action = "", trigger_count = 0, tag = "666" },
		{ config_id = 1041064, name = "GADGET_STATE_CHANGE_41064", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41064", action = "action_EVENT_GADGET_STATE_CHANGE_41064", trigger_count = 0 },
		{ config_id = 1041065, name = "PLATFORM_REACH_POINT_41065", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_41065", action = "action_EVENT_PLATFORM_REACH_POINT_41065", trigger_count = 0 },
		{ config_id = 1041066, name = "PLATFORM_REACH_POINT_41066", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_41066", action = "action_EVENT_PLATFORM_REACH_POINT_41066", trigger_count = 0 },
		{ config_id = 1041083, name = "GADGET_STATE_CHANGE_41083", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41083", action = "action_EVENT_GADGET_STATE_CHANGE_41083", trigger_count = 0 },
		{ config_id = 1041084, name = "GADGET_STATE_CHANGE_41084", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41084", action = "action_EVENT_GADGET_STATE_CHANGE_41084", trigger_count = 0 },
		{ config_id = 1041085, name = "GADGET_STATE_CHANGE_41085", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41085", action = "action_EVENT_GADGET_STATE_CHANGE_41085", trigger_count = 0 },
		{ config_id = 1041086, name = "GADGET_STATE_CHANGE_41086", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41086", action = "action_EVENT_GADGET_STATE_CHANGE_41086", trigger_count = 0 },
		{ config_id = 1041087, name = "GADGET_STATE_CHANGE_41087", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41087", action = "action_EVENT_GADGET_STATE_CHANGE_41087", trigger_count = 0 },
		{ config_id = 1041088, name = "VARIABLE_CHANGE_41088", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATemp", condition = "condition_EVENT_VARIABLE_CHANGE_41088", action = "action_EVENT_VARIABLE_CHANGE_41088", trigger_count = 0 },
		{ config_id = 1041089, name = "VARIABLE_CHANGE_41089", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATemp", condition = "condition_EVENT_VARIABLE_CHANGE_41089", action = "action_EVENT_VARIABLE_CHANGE_41089", trigger_count = 0 },
		{ config_id = 1041090, name = "VARIABLE_CHANGE_41090", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTemp", condition = "condition_EVENT_VARIABLE_CHANGE_41090", action = "action_EVENT_VARIABLE_CHANGE_41090", trigger_count = 0 },
		{ config_id = 1041091, name = "VARIABLE_CHANGE_41091", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTemp", condition = "condition_EVENT_VARIABLE_CHANGE_41091", action = "action_EVENT_VARIABLE_CHANGE_41091", trigger_count = 0 },
		{ config_id = 1041092, name = "VARIABLE_CHANGE_41092", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTemp", condition = "condition_EVENT_VARIABLE_CHANGE_41092", action = "action_EVENT_VARIABLE_CHANGE_41092", trigger_count = 0 },
		{ config_id = 1041093, name = "VARIABLE_CHANGE_41093", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTemp", condition = "condition_EVENT_VARIABLE_CHANGE_41093", action = "action_EVENT_VARIABLE_CHANGE_41093", trigger_count = 0 },
		{ config_id = 1041097, name = "GADGET_STATE_CHANGE_41097", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41097", action = "action_EVENT_GADGET_STATE_CHANGE_41097", trigger_count = 0 },
		{ config_id = 1041098, name = "GADGET_STATE_CHANGE_41098", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41098", action = "action_EVENT_GADGET_STATE_CHANGE_41098", trigger_count = 0 },
		{ config_id = 1041099, name = "GADGET_STATE_CHANGE_41099", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41099", action = "action_EVENT_GADGET_STATE_CHANGE_41099", trigger_count = 0 },
		{ config_id = 1041100, name = "GADGET_STATE_CHANGE_41100", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41100", action = "action_EVENT_GADGET_STATE_CHANGE_41100", trigger_count = 0 },
		{ config_id = 1041101, name = "PLATFORM_REACH_POINT_41101", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_41101", action = "action_EVENT_PLATFORM_REACH_POINT_41101", trigger_count = 0 },
		{ config_id = 1041102, name = "PLATFORM_REACH_POINT_41102", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_41102", action = "action_EVENT_PLATFORM_REACH_POINT_41102", trigger_count = 0 },
		{ config_id = 1041103, name = "TIME_AXIS_PASS_41103", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenATempRise", condition = "", action = "action_EVENT_TIME_AXIS_PASS_41103", trigger_count = 0 },
		{ config_id = 1041104, name = "TIME_AXIS_PASS_41104", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenATempFall", condition = "", action = "action_EVENT_TIME_AXIS_PASS_41104", trigger_count = 0 },
		{ config_id = 1041105, name = "TIME_AXIS_PASS_41105", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenBTempRise", condition = "", action = "action_EVENT_TIME_AXIS_PASS_41105", trigger_count = 0 },
		{ config_id = 1041106, name = "TIME_AXIS_PASS_41106", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenBTempFall", condition = "", action = "action_EVENT_TIME_AXIS_PASS_41106", trigger_count = 0 },
		{ config_id = 1041107, name = "TIME_AXIS_PASS_41107", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenCTempRise", condition = "", action = "action_EVENT_TIME_AXIS_PASS_41107", trigger_count = 0 },
		{ config_id = 1041108, name = "TIME_AXIS_PASS_41108", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenCTempFall", condition = "", action = "action_EVENT_TIME_AXIS_PASS_41108", trigger_count = 0 },
		{ config_id = 1041109, name = "GADGET_STATE_CHANGE_41109", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41109", action = "action_EVENT_GADGET_STATE_CHANGE_41109", trigger_count = 0 },
		{ config_id = 1041110, name = "GADGET_STATE_CHANGE_41110", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41110", action = "action_EVENT_GADGET_STATE_CHANGE_41110", trigger_count = 0 },
		{ config_id = 1041111, name = "GADGET_STATE_CHANGE_41111", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41111", action = "action_EVENT_GADGET_STATE_CHANGE_41111", trigger_count = 0 },
		{ config_id = 1041112, name = "GADGET_STATE_CHANGE_41112", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_41112", action = "action_EVENT_GADGET_STATE_CHANGE_41112", trigger_count = 0 }
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
		gadgets = { 41001, 41002, 41003, 41004, 41005, 41006, 41050, 41081, 41082 },
		regions = { },
		triggers = { "TIME_AXIS_PASS_41007", "QUEST_START_41012", "TIME_AXIS_PASS_41014", "QUEST_START_41051", "CHALLENGE_FAIL_41053", "CHALLENGE_SUCCESS_41067", "TIME_AXIS_PASS_41079", "GROUP_LOAD_41080", "QUEST_START_41094", "QUEST_FINISH_41095", "QUEST_FINISH_41096" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [踩踏按钮后改变火炉的移动方向的变量],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [火炉每到达一个point时判明下一目的地],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [锅的升温和降温逻辑],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = [锅A的升降温逻辑],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = [锅B的升降温逻辑],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = [锅C的升降温逻辑],
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
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
		triggers = { "TIME_AXIS_PASS_41052", "TIME_AXIS_PASS_41068", "TIME_AXIS_PASS_41069", "VARIABLE_CHANGE_41070", "TIME_AXIS_PASS_41071", "VARIABLE_CHANGE_41072", "VARIABLE_CHANGE_41073", "TIME_AXIS_PASS_41074", "VARIABLE_CHANGE_41075", "VARIABLE_CHANGE_41076", "TIME_AXIS_PASS_41077", "VARIABLE_CHANGE_41078" },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "QUEST_START_41012", "TIME_AXIS_PASS_41014", "TIME_AXIS_PASS_41079" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_41007(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105043, suite = 6 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 发起一个针对Td的LuaFunction "StartPotTaunt" 的请求
	local functionKey = "StartPotTaunt"
	local functionParam1 = "StartPotTaunt" .. "Param1"
	local functionParam2 = "StartPotTaunt" .. "Param2"
	local functionParam3 = "StartPotTaunt" .. "Param3"
	local functionParam4 = "StartPotTaunt" .. "Param4"
	
	ScriptLib.SetGroupTempValue(context, functionParam1, 41006, {})
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
	
	ScriptLib.SetGroupTempValue(context, functionParam1, 41004, {})
	ScriptLib.SetGroupTempValue(context, functionParam2, 0, {})
	ScriptLib.SetGroupTempValue(context, functionParam3, 0, {})
	ScriptLib.SetGroupTempValue(context, functionParam4, 0, {})
	local currentValue = ScriptLib.GetGroupTempValue(context,functionKey,{})
	ScriptLib.SetGroupTempValue(context, functionKey, currentValue+1, {})
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_START_41012(context, evt)
	-- 判断变量"fail"为5
	if ScriptLib.GetGroupVariableValue(context, "fail") >= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_41012(context, evt)
	-- 创建标识为"monstercreate1"，时间节点为{40}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "monstercreate1", {40}, false)
	
	
	-- 创建标识为"monstercreate2"，时间节点为{20,60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "monstercreate2", {20,60}, false)
	
	
	-- 创建标识为"monstercreate3"，时间节点为{75}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "monstercreate3", {75}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_41014(context, evt)
		-- 重新生成指定group，排除之前选择的suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105043, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randRest")
			return -1
		end
	
	-- 发起一个针对Td的LuaFunction "StartPotTaunt" 的请求
	local functionKey = "StartPotTaunt"
	local functionParam1 = "StartPotTaunt" .. "Param1"
	local functionParam2 = "StartPotTaunt" .. "Param2"
	local functionParam3 = "StartPotTaunt" .. "Param3"
	local functionParam4 = "StartPotTaunt" .. "Param4"
	
	ScriptLib.SetGroupTempValue(context, functionParam1, 41004, {})
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
	
	ScriptLib.SetGroupTempValue(context, functionParam1, 41006, {})
	ScriptLib.SetGroupTempValue(context, functionParam2, 0, {})
	ScriptLib.SetGroupTempValue(context, functionParam3, 0, {})
	ScriptLib.SetGroupTempValue(context, functionParam4, 0, {})
	local currentValue = ScriptLib.GetGroupTempValue(context,functionKey,{})
	ScriptLib.SetGroupTempValue(context, functionKey, currentValue+1, {})
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_41051(context, evt)
	-- 将本组内变量名为 "startOrNot" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "startOrNot", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_41052(context, evt)
	-- 针对当前group内变量名为 "ovenATemp" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenATemp", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_41053(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7050004fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 70500051 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 70500051) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 停止标识为"monstercreate1"的时间轴
	ScriptLib.EndTimeAxis(context, "monstercreate1")
	
	
	-- 停止标识为"monstercreate2"的时间轴
	ScriptLib.EndTimeAxis(context, "monstercreate2")
	
	
	-- 停止标识为"monstercreate3"的时间轴
	ScriptLib.EndTimeAxis(context, "monstercreate3")
	
	
	-- 针对当前group内变量名为 "fail" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "fail", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105043, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_41067(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7050004finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 70500041 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 70500041) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105043, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 停止标识为"monstercreate1"的时间轴
	ScriptLib.EndTimeAxis(context, "monstercreate1")
	
	
	-- 停止标识为"monstercreate2"的时间轴
	ScriptLib.EndTimeAxis(context, "monstercreate2")
	
	
	-- 停止标识为"monstercreate3"的时间轴
	ScriptLib.EndTimeAxis(context, "monstercreate3")
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_41068(context, evt)
	-- 针对当前group内变量名为 "ovenBTemp" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenBTemp", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_41069(context, evt)
	-- 针对当前group内变量名为 "ovenCTemp" 的变量，进行修改，变化值为 -1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenCTemp", -1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_41070(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenATempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenATempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_41070(context, evt)
	-- 创建标识为"ovenAUP"，时间节点为{1}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "ovenAUP", {1}, true)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_41071(context, evt)
	-- 针对当前group内变量名为 "ovenATemp" 的变量，进行修改，变化值为 3
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenATemp", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_41072(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenATempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenATempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_41072(context, evt)
	-- 重启标识为"ovenADOWN"的时间轴
	ScriptLib.ContinueTimeAxis(context, "ovenADOWN")
	
	
	-- 暂停标识为"ovenAUP"的时间轴
	ScriptLib.PauseTimeAxis(context, "ovenAUP")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_41073(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenBTempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenBTempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_41073(context, evt)
	-- 暂停标识为"ovenBDOWN"的时间轴
	ScriptLib.PauseTimeAxis(context, "ovenBDOWN")
	
	
	-- 创建标识为"ovenBUP"，时间节点为{1}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "ovenBUP", {1}, true)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_41074(context, evt)
	-- 针对当前group内变量名为 "ovenBTemp" 的变量，进行修改，变化值为 3
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenBTemp", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_41075(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenBTempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenBTempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_41075(context, evt)
	-- 重启标识为"ovenBDOWN"的时间轴
	ScriptLib.ContinueTimeAxis(context, "ovenBDOWN")
	
	
	-- 暂停标识为"ovenBUP"的时间轴
	ScriptLib.PauseTimeAxis(context, "ovenBUP")
	
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_41076(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenCTempDirection"为1
	if ScriptLib.GetGroupVariableValue(context, "ovenCTempDirection") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_41076(context, evt)
	-- 创建标识为"ovenCDOWN"，时间节点为{1}的时间轴，true用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "ovenCDOWN", {1}, true)
	
	
	-- 暂停标识为"ovenCTemp"的时间轴
	ScriptLib.PauseTimeAxis(context, "ovenCTemp")
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_41077(context, evt)
	-- 针对当前group内变量名为 "ovenCTemp" 的变量，进行修改，变化值为 3
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "ovenCTemp", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_41078(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ovenCTempDirection"为2
	if ScriptLib.GetGroupVariableValue(context, "ovenCTempDirection") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_41078(context, evt)
	-- 重启标识为"ovenCDOWN"的时间轴
	ScriptLib.ContinueTimeAxis(context, "ovenCDOWN")
	
	
	-- 暂停标识为"ovenCUP"的时间轴
	ScriptLib.PauseTimeAxis(context, "ovenCUP")
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_41079(context, evt)
		-- 重新生成指定group，排除之前选择的suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105043, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_randRest")
			return -1
		end
	
	-- 发起一个针对Td的LuaFunction "StartPotTaunt" 的请求
	local functionKey = "StartPotTaunt"
	local functionParam1 = "StartPotTaunt" .. "Param1"
	local functionParam2 = "StartPotTaunt" .. "Param2"
	local functionParam3 = "StartPotTaunt" .. "Param3"
	local functionParam4 = "StartPotTaunt" .. "Param4"
	
	ScriptLib.SetGroupTempValue(context, functionParam1, 41006, {})
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
	
	ScriptLib.SetGroupTempValue(context, functionParam1, 41004, {})
	ScriptLib.SetGroupTempValue(context, functionParam2, 0, {})
	ScriptLib.SetGroupTempValue(context, functionParam3, 0, {})
	ScriptLib.SetGroupTempValue(context, functionParam4, 0, {})
	local currentValue = ScriptLib.GetGroupTempValue(context,functionKey,{})
	ScriptLib.SetGroupTempValue(context, functionKey, currentValue+1, {})
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_41080(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105043, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_41094(context, evt)
	-- 将configid为 41005 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 41005, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_41095(context, evt)
	-- 将configid为 41005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 41005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_41096(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133105041, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V2_1/ImmortalPotEx"
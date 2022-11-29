-- 基础信息
local base_info = {
	group_id = 133103095
}

-- DEFS_MISCS
local defs = {
    ButtonLeftConfig = 95001,
    ButtonRightConfig = 95002,
    StoveConfig = 95003,
    PotConfigIDA =95004,
    PotConfigIDB =95005,
    PotConfigIDC =95006,
    targetColdTime = 14,
    targetHeatTime = 14,
    BeHitByFireTemp = 5,
    BeHitByIceWaterTemp = -5,
    SecondTempChange = { 7, -2}, -- 每秒对应上升或下降的温度变化
    StartTemp = {50,50,50},      -- ABC三壶的初始温度
    PlatFormRoute ={             -- 定义各个Route的功能，只需对应Log修改数据即可
        [310300237] = {curPos = 2,reachPos = 2,tempDirs = {2,1,2},log = "从中间移动到中间，在中间徘徊"},
        [310300238] = {curPos = 1,reachPos = 2,tempDirs = {2,1,2},log = "从左边移动到中间"},
        [310300239] = {curPos = 2,reachPos = 3,tempDirs = {2,2,1},log = "从中间移动到右边"},
        [310300240] = {curPos = 3,reachPos = 2,tempDirs = {2,1,2},log = "从右边移动到中间"},
        [310300241] = {curPos = 2,reachPos = 1,tempDirs = {1,2,2},log = "从中间移动到左边"}
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
	[95001] = { config_id = 95001, gadget_id = 70310079, pos = { x = 940.316, y = 376.310, z = 1574.675 }, rot = { x = 352.242, y = 78.765, z = 3.340 }, level = 30, area_id = 6 },
	-- 右按钮
	[95002] = { config_id = 95002, gadget_id = 70310079, pos = { x = 939.771, y = 376.001, z = 1577.196 }, rot = { x = 8.037, y = 268.133, z = 356.390 }, level = 30, area_id = 6 },
	-- 火炉
	[95003] = { config_id = 95003, gadget_id = 70310080, pos = { x = 928.805, y = 376.066, z = 1575.645 }, rot = { x = 357.594, y = 88.579, z = 0.201 }, level = 30, route_id = 310300237, area_id = 6 },
	-- 锅A左
	[95004] = { config_id = 95004, gadget_id = 70310078, pos = { x = 931.073, y = 377.785, z = 1570.127 }, rot = { x = 1.873, y = 234.219, z = 358.476 }, level = 30, server_global_value_config = { ["SGV_Thermometer_Value"]= 50,["SGV_Thermometer_SafeFrom"]= 0.2,["SGV_Thermometer_SafeTo"]= 0.8,["SGV_Is_Taunting"] = 0}, area_id = 6 },
	-- 锅B中
	[95005] = { config_id = 95005, gadget_id = 70310078, pos = { x = 928.626, y = 377.758, z = 1575.631 }, rot = { x = 2.390, y = 265.194, z = 359.657 }, level = 30, server_global_value_config = { ["SGV_Thermometer_Value"]= 50,["SGV_Thermometer_SafeFrom"]= 0.2,["SGV_Thermometer_SafeTo"]= 0.8,["SGV_Is_Taunting"] = 0}, area_id = 6 },
	-- 锅C右
	[95006] = { config_id = 95006, gadget_id = 70310078, pos = { x = 929.978, y = 377.690, z = 1581.517 }, rot = { x = 2.339, y = 287.726, z = 0.599 }, level = 30, server_global_value_config = { ["SGV_Thermometer_Value"]= 50,["SGV_Thermometer_SafeFrom"]= 0.2,["SGV_Thermometer_SafeTo"]= 0.8,["SGV_Is_Taunting"] = 0}, area_id = 6 },
	[95007] = { config_id = 95007, gadget_id = 70360046, pos = { x = 931.168, y = 374.621, z = 1569.911 }, rot = { x = 0.465, y = 352.268, z = 2.369 }, level = 1, area_id = 6 },
	[95008] = { config_id = 95008, gadget_id = 70310084, pos = { x = 931.173, y = 375.207, z = 1570.243 }, rot = { x = 352.291, y = 59.321, z = 0.073 }, level = 30, area_id = 6 },
	[95009] = { config_id = 95009, gadget_id = 70310084, pos = { x = 928.738, y = 375.158, z = 1575.625 }, rot = { x = 0.000, y = 87.024, z = 0.000 }, level = 30, area_id = 6 },
	[95010] = { config_id = 95010, gadget_id = 70310084, pos = { x = 930.083, y = 375.095, z = 1581.510 }, rot = { x = 0.000, y = 117.217, z = 0.000 }, level = 30, area_id = 6 },
	[95046] = { config_id = 95046, gadget_id = 70690011, pos = { x = 954.299, y = 346.467, z = 1577.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	[95068] = { config_id = 95068, gadget_id = 70360046, pos = { x = 928.525, y = 374.456, z = 1575.449 }, rot = { x = 355.734, y = 28.484, z = 2.606 }, level = 1, area_id = 6 },
	[95069] = { config_id = 95069, gadget_id = 70360046, pos = { x = 930.726, y = 374.495, z = 1581.040 }, rot = { x = 6.159, y = 264.538, z = 3.334 }, level = 1, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 任务开始时开启挑战
	{ config_id = 1095047, name = "QUEST_START_95047", event = EventType.EVENT_QUEST_START, source = "7150006", condition = "", action = "action_EVENT_QUEST_START_95047", trigger_count = 0 },
	-- 监听挑战失败，1）刷新Group至Suite1；2）重置物件状态；3）移除全部的计时器；
	{ config_id = 1095049, name = "CHALLENGE_FAIL_95049", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_95049", trigger_count = 0 },
	-- 监听挑战成功，1）刷新Group至Suite1；2）重置物件状态；3）移除全部的计时器；
	{ config_id = 1095054, name = "CHALLENGE_SUCCESS_95054", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_95054", trigger_count = 0 },
	-- 第一环任务结束打开锅盖
	{ config_id = 1095067, name = "QUEST_FINISH_95067", event = EventType.EVENT_QUEST_FINISH, source = "7150001", condition = "", action = "action_EVENT_QUEST_FINISH_95067", trigger_count = 0 },
	-- 取得食材后关闭锅盖
	{ config_id = 1095070, name = "QUEST_START_95070", event = EventType.EVENT_QUEST_START, source = "7150004", condition = "", action = "action_EVENT_QUEST_START_95070", trigger_count = 0 },
	-- 踩踏左按钮改变变量
	{ config_id = 1095084, name = "GADGET_STATE_CHANGE_95084", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95084", action = "action_EVENT_GADGET_STATE_CHANGE_95084", trigger_count = 0 },
	-- 踩踏右按钮改变变量
	{ config_id = 1095085, name = "GADGET_STATE_CHANGE_95085", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95085", action = "action_EVENT_GADGET_STATE_CHANGE_95085", trigger_count = 0 },
	-- 离开左按钮改变变量
	{ config_id = 1095086, name = "GADGET_STATE_CHANGE_95086", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95086", action = "action_EVENT_GADGET_STATE_CHANGE_95086", trigger_count = 0 },
	-- 离开右按钮改变变量
	{ config_id = 1095087, name = "GADGET_STATE_CHANGE_95087", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95087", action = "action_EVENT_GADGET_STATE_CHANGE_95087", trigger_count = 0 },
	-- 炉子从A到B且同时踩着右踏板强制B炉降温
	{ config_id = 1095088, name = "PLATFORM_REACH_POINT_95088", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_95088", action = "action_EVENT_PLATFORM_REACH_POINT_95088", trigger_count = 0 },
	-- 火炉离开A开始降温
	{ config_id = 1095089, name = "GADGET_STATE_CHANGE_95089", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95089", action = "action_EVENT_GADGET_STATE_CHANGE_95089", trigger_count = 0 },
	-- 炉子从C到B且同时踩着右踏板强制B炉降温
	{ config_id = 1095090, name = "PLATFORM_REACH_POINT_95090", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_95090", action = "action_EVENT_PLATFORM_REACH_POINT_95090", trigger_count = 0 },
	-- 火炉离开B(前往C)开始降温
	{ config_id = 1095091, name = "GADGET_STATE_CHANGE_95091", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95091", action = "action_EVENT_GADGET_STATE_CHANGE_95091", trigger_count = 0 },
	-- 火炉离开B(前往A)开始降温
	{ config_id = 1095092, name = "GADGET_STATE_CHANGE_95092", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95092", action = "action_EVENT_GADGET_STATE_CHANGE_95092", trigger_count = 0 },
	-- 火炉离开C开始降温
	{ config_id = 1095093, name = "GADGET_STATE_CHANGE_95093", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95093", action = "action_EVENT_GADGET_STATE_CHANGE_95093", trigger_count = 0 },
	-- 准备环开始时强制设锅子默认状态
	{ config_id = 1095094, name = "QUEST_START_95094", event = EventType.EVENT_QUEST_START, source = "7150009", condition = "", action = "action_EVENT_QUEST_START_95094", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "ovenATemp", value = 50, no_refresh = false },
	{ config_id = 2, name = "ovenBTemp", value = 50, no_refresh = false },
	{ config_id = 3, name = "ovenCTemp", value = 50, no_refresh = false },
	{ config_id = 4, name = "curPos", value = 2, no_refresh = false },
	{ config_id = 5, name = "fireDirection", value = 0, no_refresh = false },
	{ config_id = 6, name = "ovenATempDirection", value = 2, no_refresh = false },
	{ config_id = 7, name = "ovenBTempDirection", value = 1, no_refresh = false },
	{ config_id = 8, name = "ovenCTempDirection", value = 2, no_refresh = false },
	{ config_id = 9, name = "startOrNot", value = 0, no_refresh = false },
	{ config_id = 10, name = "isRightBtnPressed", value = 0, no_refresh = false },
	{ config_id = 11, name = "isLeftBtnPressed", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1095011, name = "GADGET_STATE_CHANGE_95011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95011", action = "action_EVENT_GADGET_STATE_CHANGE_95011", trigger_count = 0 },
		{ config_id = 1095012, name = "GADGET_STATE_CHANGE_95012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95012", action = "action_EVENT_GADGET_STATE_CHANGE_95012", trigger_count = 0 },
		{ config_id = 1095013, name = "GADGET_STATE_CHANGE_95013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95013", action = "action_EVENT_GADGET_STATE_CHANGE_95013", trigger_count = 0 },
		{ config_id = 1095014, name = "GADGET_STATE_CHANGE_95014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95014", action = "action_EVENT_GADGET_STATE_CHANGE_95014", trigger_count = 0 },
		{ config_id = 1095015, name = "SELECT_OPTION_95015", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_95015", action = "action_EVENT_SELECT_OPTION_95015", trigger_count = 0 },
		{ config_id = 1095016, name = "PLATFORM_REACH_POINT_95016", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_95016", action = "action_EVENT_PLATFORM_REACH_POINT_95016", trigger_count = 0 },
		{ config_id = 1095017, name = "TIME_AXIS_PASS_95017", event = EventType.EVENT_TIME_AXIS_PASS, source = "monstercreate1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_95017", trigger_count = 0 },
		{ config_id = 1095018, name = "PLATFORM_REACH_POINT_95018", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_95018", action = "action_EVENT_PLATFORM_REACH_POINT_95018", trigger_count = 0 },
		{ config_id = 1095019, name = "PLATFORM_REACH_POINT_95019", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_95019", action = "action_EVENT_PLATFORM_REACH_POINT_95019", trigger_count = 0 },
		{ config_id = 1095020, name = "PLATFORM_REACH_POINT_95020", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_95020", action = "action_EVENT_PLATFORM_REACH_POINT_95020", trigger_count = 0 },
		{ config_id = 1095021, name = "PLATFORM_REACH_POINT_95021", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_95021", action = "action_EVENT_PLATFORM_REACH_POINT_95021", trigger_count = 0 },
		{ config_id = 1095022, name = "GADGET_STATE_CHANGE_95022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95022", action = "action_EVENT_GADGET_STATE_CHANGE_95022", trigger_count = 0 },
		{ config_id = 1095023, name = "GADGET_STATE_CHANGE_95023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95023", action = "action_EVENT_GADGET_STATE_CHANGE_95023", trigger_count = 0 },
		{ config_id = 1095024, name = "GADGET_STATE_CHANGE_95024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95024", action = "action_EVENT_GADGET_STATE_CHANGE_95024", trigger_count = 0 },
		{ config_id = 1095025, name = "GADGET_STATE_CHANGE_95025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95025", action = "action_EVENT_GADGET_STATE_CHANGE_95025", trigger_count = 0 },
		{ config_id = 1095026, name = "PLATFORM_REACH_POINT_95026", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_95026", action = "action_EVENT_PLATFORM_REACH_POINT_95026", trigger_count = 0 },
		{ config_id = 1095027, name = "PLATFORM_REACH_POINT_95027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_95027", action = "action_EVENT_PLATFORM_REACH_POINT_95027", trigger_count = 0 },
		{ config_id = 1095028, name = "PLATFORM_REACH_POINT_95028", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_95028", action = "action_EVENT_PLATFORM_REACH_POINT_95028", trigger_count = 0 },
		{ config_id = 1095029, name = "VARIABLE_CHANGE_95029", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATempDirection", condition = "condition_EVENT_VARIABLE_CHANGE_95029", action = "action_EVENT_VARIABLE_CHANGE_95029", trigger_count = 0 },
		{ config_id = 1095030, name = "TIMER_EVENT_95030", event = EventType.EVENT_TIMER_EVENT, source = "ovenATempRise", condition = "condition_EVENT_TIMER_EVENT_95030", action = "action_EVENT_TIMER_EVENT_95030", trigger_count = 0 },
		{ config_id = 1095031, name = "GADGET_STATE_CHANGE_95031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95031", action = "action_EVENT_GADGET_STATE_CHANGE_95031", trigger_count = 0 },
		{ config_id = 1095032, name = "GADGET_STATE_CHANGE_95032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95032", action = "action_EVENT_GADGET_STATE_CHANGE_95032", trigger_count = 0 },
		{ config_id = 1095033, name = "VARIABLE_CHANGE_95033", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATempDirection", condition = "condition_EVENT_VARIABLE_CHANGE_95033", action = "action_EVENT_VARIABLE_CHANGE_95033", trigger_count = 0 },
		{ config_id = 1095034, name = "TIMER_EVENT_95034", event = EventType.EVENT_TIMER_EVENT, source = "ovenATempFall", condition = "condition_EVENT_TIMER_EVENT_95034", action = "action_EVENT_TIMER_EVENT_95034", trigger_count = 0 },
		{ config_id = 1095035, name = "GADGET_STATE_CHANGE_95035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95035", action = "action_EVENT_GADGET_STATE_CHANGE_95035", trigger_count = 0 },
		{ config_id = 1095036, name = "GADGET_STATE_CHANGE_95036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95036", action = "action_EVENT_GADGET_STATE_CHANGE_95036", trigger_count = 0 },
		{ config_id = 1095037, name = "VARIABLE_CHANGE_95037", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTempDirection", condition = "condition_EVENT_VARIABLE_CHANGE_95037", action = "action_EVENT_VARIABLE_CHANGE_95037", trigger_count = 0 },
		{ config_id = 1095038, name = "TIMER_EVENT_95038", event = EventType.EVENT_TIMER_EVENT, source = "ovenBTempRise", condition = "condition_EVENT_TIMER_EVENT_95038", action = "action_EVENT_TIMER_EVENT_95038", trigger_count = 0 },
		{ config_id = 1095039, name = "GADGET_STATE_CHANGE_95039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95039", action = "action_EVENT_GADGET_STATE_CHANGE_95039", trigger_count = 0 },
		{ config_id = 1095040, name = "VARIABLE_CHANGE_95040", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTempDirection", condition = "condition_EVENT_VARIABLE_CHANGE_95040", action = "action_EVENT_VARIABLE_CHANGE_95040", trigger_count = 0 },
		{ config_id = 1095041, name = "TIMER_EVENT_95041", event = EventType.EVENT_TIMER_EVENT, source = "ovenBTempFall", condition = "condition_EVENT_TIMER_EVENT_95041", action = "action_EVENT_TIMER_EVENT_95041", trigger_count = 0 },
		{ config_id = 1095042, name = "VARIABLE_CHANGE_95042", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTempDirection", condition = "condition_EVENT_VARIABLE_CHANGE_95042", action = "action_EVENT_VARIABLE_CHANGE_95042", trigger_count = 0 },
		{ config_id = 1095043, name = "TIMER_EVENT_95043", event = EventType.EVENT_TIMER_EVENT, source = "ovenCTempRise", condition = "condition_EVENT_TIMER_EVENT_95043", action = "action_EVENT_TIMER_EVENT_95043", trigger_count = 0 },
		{ config_id = 1095044, name = "VARIABLE_CHANGE_95044", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTempDirection", condition = "condition_EVENT_VARIABLE_CHANGE_95044", action = "action_EVENT_VARIABLE_CHANGE_95044", trigger_count = 0 },
		{ config_id = 1095045, name = "TIMER_EVENT_95045", event = EventType.EVENT_TIMER_EVENT, source = "ovenCTempFall", condition = "condition_EVENT_TIMER_EVENT_95045", action = "action_EVENT_TIMER_EVENT_95045", trigger_count = 0 },
		{ config_id = 1095048, name = "TIME_AXIS_PASS_95048", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenADOWN", condition = "", action = "action_EVENT_TIME_AXIS_PASS_95048", trigger_count = 0 },
		{ config_id = 1095050, name = "TIMER_EVENT_95050", event = EventType.EVENT_TIMER_EVENT, source = "challengeTimer", condition = "", action = "", trigger_count = 0, tag = "666" },
		{ config_id = 1095051, name = "GADGET_STATE_CHANGE_95051", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_95051", action = "action_EVENT_GADGET_STATE_CHANGE_95051", trigger_count = 0 },
		{ config_id = 1095052, name = "PLATFORM_REACH_POINT_95052", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_95052", action = "action_EVENT_PLATFORM_REACH_POINT_95052", trigger_count = 0 },
		{ config_id = 1095053, name = "PLATFORM_REACH_POINT_95053", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_95053", action = "action_EVENT_PLATFORM_REACH_POINT_95053", trigger_count = 0 },
		{ config_id = 1095055, name = "TIME_AXIS_PASS_95055", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenBDOWN", condition = "", action = "action_EVENT_TIME_AXIS_PASS_95055", trigger_count = 0 },
		{ config_id = 1095056, name = "TIME_AXIS_PASS_95056", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenCDOWN", condition = "", action = "action_EVENT_TIME_AXIS_PASS_95056", trigger_count = 0 },
		{ config_id = 1095057, name = "VARIABLE_CHANGE_95057", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_95057", action = "action_EVENT_VARIABLE_CHANGE_95057", trigger_count = 0 },
		{ config_id = 1095058, name = "TIME_AXIS_PASS_95058", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenAUP", condition = "", action = "action_EVENT_TIME_AXIS_PASS_95058", trigger_count = 0 },
		{ config_id = 1095059, name = "VARIABLE_CHANGE_95059", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_95059", action = "action_EVENT_VARIABLE_CHANGE_95059", trigger_count = 0 },
		{ config_id = 1095060, name = "VARIABLE_CHANGE_95060", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_95060", action = "action_EVENT_VARIABLE_CHANGE_95060", trigger_count = 0 },
		{ config_id = 1095061, name = "TIME_AXIS_PASS_95061", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenBUP", condition = "", action = "action_EVENT_TIME_AXIS_PASS_95061", trigger_count = 0 },
		{ config_id = 1095062, name = "VARIABLE_CHANGE_95062", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_95062", action = "action_EVENT_VARIABLE_CHANGE_95062", trigger_count = 0 },
		{ config_id = 1095063, name = "VARIABLE_CHANGE_95063", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_95063", action = "action_EVENT_VARIABLE_CHANGE_95063", trigger_count = 0 },
		{ config_id = 1095064, name = "TIME_AXIS_PASS_95064", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenAUP", condition = "", action = "action_EVENT_TIME_AXIS_PASS_95064", trigger_count = 0 },
		{ config_id = 1095065, name = "VARIABLE_CHANGE_95065", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_95065", action = "action_EVENT_VARIABLE_CHANGE_95065", trigger_count = 0 },
		{ config_id = 1095066, name = "TIME_AXIS_PASS_95066", event = EventType.EVENT_TIME_AXIS_PASS, source = "monstercreate2", condition = "", action = "action_EVENT_TIME_AXIS_PASS_95066", trigger_count = 0 },
		{ config_id = 1095071, name = "TIME_AXIS_PASS_95071", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenATempRise", condition = "", action = "action_EVENT_TIME_AXIS_PASS_95071", trigger_count = 0 },
		{ config_id = 1095072, name = "TIME_AXIS_PASS_95072", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenATempFall", condition = "", action = "action_EVENT_TIME_AXIS_PASS_95072", trigger_count = 0 },
		{ config_id = 1095073, name = "QUEST_START_95073", event = EventType.EVENT_QUEST_START, source = "7150009", condition = "", action = "action_EVENT_QUEST_START_95073", trigger_count = 0 },
		{ config_id = 1095074, name = "TIME_AXIS_PASS_95074", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenBTempRise", condition = "", action = "action_EVENT_TIME_AXIS_PASS_95074", trigger_count = 0 },
		{ config_id = 1095075, name = "TIME_AXIS_PASS_95075", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenBTempFall", condition = "", action = "action_EVENT_TIME_AXIS_PASS_95075", trigger_count = 0 },
		{ config_id = 1095076, name = "TIME_AXIS_PASS_95076", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenCTempRise", condition = "", action = "action_EVENT_TIME_AXIS_PASS_95076", trigger_count = 0 },
		{ config_id = 1095077, name = "TIME_AXIS_PASS_95077", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenCTempFall", condition = "", action = "action_EVENT_TIME_AXIS_PASS_95077", trigger_count = 0 },
		{ config_id = 1095078, name = "VARIABLE_CHANGE_95078", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATemp", condition = "condition_EVENT_VARIABLE_CHANGE_95078", action = "action_EVENT_VARIABLE_CHANGE_95078", trigger_count = 0 },
		{ config_id = 1095079, name = "VARIABLE_CHANGE_95079", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATemp", condition = "condition_EVENT_VARIABLE_CHANGE_95079", action = "action_EVENT_VARIABLE_CHANGE_95079", trigger_count = 0 },
		{ config_id = 1095080, name = "VARIABLE_CHANGE_95080", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTemp", condition = "condition_EVENT_VARIABLE_CHANGE_95080", action = "action_EVENT_VARIABLE_CHANGE_95080", trigger_count = 0 },
		{ config_id = 1095081, name = "VARIABLE_CHANGE_95081", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTemp", condition = "condition_EVENT_VARIABLE_CHANGE_95081", action = "action_EVENT_VARIABLE_CHANGE_95081", trigger_count = 0 },
		{ config_id = 1095082, name = "VARIABLE_CHANGE_95082", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTemp", condition = "condition_EVENT_VARIABLE_CHANGE_95082", action = "action_EVENT_VARIABLE_CHANGE_95082", trigger_count = 0 },
		{ config_id = 1095083, name = "VARIABLE_CHANGE_95083", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTemp", condition = "condition_EVENT_VARIABLE_CHANGE_95083", action = "action_EVENT_VARIABLE_CHANGE_95083", trigger_count = 0 }
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
		gadgets = { 95001, 95002, 95003, 95004, 95005, 95006, 95007, 95008, 95009, 95010, 95046, 95068, 95069 },
		regions = { },
		triggers = { "QUEST_START_95047", "CHALLENGE_FAIL_95049", "CHALLENGE_SUCCESS_95054", "QUEST_FINISH_95067", "QUEST_START_95070", "GADGET_STATE_CHANGE_95084", "GADGET_STATE_CHANGE_95085", "GADGET_STATE_CHANGE_95086", "GADGET_STATE_CHANGE_95087", "PLATFORM_REACH_POINT_95088", "GADGET_STATE_CHANGE_95089", "PLATFORM_REACH_POINT_95090", "GADGET_STATE_CHANGE_95091", "GADGET_STATE_CHANGE_95092", "GADGET_STATE_CHANGE_95093", "QUEST_START_95094" },
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
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

-- 触发操作
function action_EVENT_QUEST_START_95047(context, evt)
	-- 将本组内变量名为 "startOrNot" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "startOrNot", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_95049(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "challengerestarforquest") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 1110380 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110380) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "startOrNot" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "startOrNot", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_95054(context, evt)
	-- 调用提示id为 1110379 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110379) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "startOrNot" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "startOrNot", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "challengefinishforquest") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_95067(context, evt)
	-- 将configid为 95005 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95005, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_95070(context, evt)
	-- 将configid为 95005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_95084(context, evt)
	if 95001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_95084(context, evt)
	-- 将本组内变量名为 "isLeftBtnPressed" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isLeftBtnPressed", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_95085(context, evt)
	if 95002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_95085(context, evt)
	-- 将本组内变量名为 "isRightBtnPressed" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isRightBtnPressed", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_95086(context, evt)
	if 95001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_95086(context, evt)
	-- 将本组内变量名为 "isLeftBtnPressed" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isLeftBtnPressed", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_95087(context, evt)
	if 95002 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_95087(context, evt)
	-- 将本组内变量名为 "isRightBtnPressed" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isRightBtnPressed", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_95088(context, evt)
	-- 判断是gadgetid 为 95003的移动平台，是否到达了310300238 的路线中的 1 点
	
	if 95003 ~= evt.param1 then
	  return false
	end
	
	if 310300238 ~= evt.param2 then
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
function action_EVENT_PLATFORM_REACH_POINT_95088(context, evt)
	-- 将本组内变量名为 "ovenBTempDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenBTempDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_95089(context, evt)
	if 95002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为1
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_95089(context, evt)
	-- 将本组内变量名为 "ovenATempDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenATempDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_95090(context, evt)
	-- 判断是gadgetid 为 95003的移动平台，是否到达了310300240 的路线中的 1 点
	
	if 95003 ~= evt.param1 then
	  return false
	end
	
	if 310300240 ~= evt.param2 then
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
function action_EVENT_PLATFORM_REACH_POINT_95090(context, evt)
	-- 将本组内变量名为 "ovenBTempDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenBTempDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_95091(context, evt)
	if 95002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为2
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_95091(context, evt)
	-- 将本组内变量名为 "ovenBTempDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenBTempDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_95092(context, evt)
	if 95001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为2
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_95092(context, evt)
	-- 将本组内变量名为 "ovenBTempDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenBTempDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_95093(context, evt)
	if 95001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"curPos"为3
	if ScriptLib.GetGroupVariableValue(context, "curPos") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_95093(context, evt)
	-- 将本组内变量名为 "ovenBTempDirection" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ovenBTempDirection", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_95094(context, evt)
	-- 将configid为 95004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 95005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 95006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 95006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V2_1/ImmortalPotEx"
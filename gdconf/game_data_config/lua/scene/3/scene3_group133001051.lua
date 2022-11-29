-- 基础信息
local base_info = {
	group_id = 133001051
}

-- DEFS_MISCS
local defs = {
    ButtonLeftConfig = 51001,
    ButtonRightConfig = 51002,
    StoveConfig = 51003,
    PotConfigIDA =51004,
    PotConfigIDB =51005,
    PotConfigIDC =51006,
    targetColdTime = 14,
    targetHeatTime = 14,
    BeHitByFireTemp = 5,
    BeHitByIceWaterTemp = -5,
    SecondTempChange = { 7, -2}, -- 每秒对应上升或下降的温度变化
    StartTemp = {46,35,56},      -- ABC三壶的初始温度
    PlatFormRoute ={             -- 定义各个Route的功能，只需对应Log修改数据即可
        [300100395] = {curPos = 2,reachPos = 2,tempDirs = {2,1,2},log = "从中间移动到中间，在中间徘徊"},
        [300100396] = {curPos = 1,reachPos = 2,tempDirs = {2,1,2},log = "从左边移动到中间"},
        [300100397] = {curPos = 2,reachPos = 3,tempDirs = {2,2,1},log = "从中间移动到右边"},
        [300100398] = {curPos = 3,reachPos = 2,tempDirs = {2,1,2},log = "从右边移动到中间"},
        [300100399] = {curPos = 2,reachPos = 1,tempDirs = {1,2,2},log = "从中间移动到左边"}
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
	[51001] = { config_id = 51001, gadget_id = 70310079, pos = { x = 1763.953, y = 195.361, z = -1509.166 }, rot = { x = 0.000, y = 340.328, z = 0.000 }, level = 30, area_id = 2 },
	-- 右按钮
	[51002] = { config_id = 51002, gadget_id = 70310079, pos = { x = 1760.760, y = 195.320, z = -1510.489 }, rot = { x = 0.000, y = 158.524, z = 0.000 }, level = 30, area_id = 2 },
	-- 火炉
	[51003] = { config_id = 51003, gadget_id = 70310080, pos = { x = 1764.993, y = 196.181, z = -1516.894 }, rot = { x = 4.340, y = 339.810, z = 0.898 }, level = 30, route_id = 300100395, area_id = 2 },
	-- 锅A左
	[51004] = { config_id = 51004, gadget_id = 70310078, pos = { x = 1768.199, y = 197.545, z = -1513.495 }, rot = { x = 4.593, y = 312.236, z = 358.807 }, level = 30, server_global_value_config = { ["SGV_Thermometer_Value"]= 50,["SGV_Thermometer_SafeFrom"]= 0.35,["SGV_Thermometer_SafeTo"]= 0.95,["SGV_Is_Taunting"] = 0}, area_id = 2 },
	-- 锅B中
	[51005] = { config_id = 51005, gadget_id = 70310078, pos = { x = 1764.937, y = 197.545, z = -1516.805 }, rot = { x = 4.340, y = 339.810, z = 0.898 }, level = 30, server_global_value_config = { ["SGV_Thermometer_Value"]= 50,["SGV_Thermometer_SafeFrom"]= 0.2,["SGV_Thermometer_SafeTo"]= 0.8,["SGV_Is_Taunting"] = 0}, area_id = 2 },
	-- 锅C右
	[51006] = { config_id = 51006, gadget_id = 70310078, pos = { x = 1760.475, y = 197.545, z = -1516.659 }, rot = { x = 7.453, y = 5.300, z = 359.188 }, level = 30, server_global_value_config = { ["SGV_Thermometer_Value"]= 50,["SGV_Thermometer_SafeFrom"]= 0.10,["SGV_Thermometer_SafeTo"]= 0.70,["SGV_Is_Taunting"] = 0}, area_id = 2 },
	[51008] = { config_id = 51008, gadget_id = 70310084, pos = { x = 1768.255, y = 195.420, z = -1513.580 }, rot = { x = 4.593, y = 312.236, z = 358.807 }, level = 30, area_id = 2 },
	[51009] = { config_id = 51009, gadget_id = 70310084, pos = { x = 1765.024, y = 195.378, z = -1516.942 }, rot = { x = 359.478, y = 339.734, z = 0.895 }, level = 30, area_id = 2 },
	[51010] = { config_id = 51010, gadget_id = 70310084, pos = { x = 1760.462, y = 195.429, z = -1516.755 }, rot = { x = 359.427, y = 5.413, z = 359.195 }, level = 30, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 开启挑战时开始时间轴
	{ config_id = 1051015, name = "QUEST_START_51015", event = EventType.EVENT_QUEST_START, source = "7050111", condition = "condition_EVENT_QUEST_START_51015", action = "action_EVENT_QUEST_START_51015", trigger_count = 0 },
	-- 当挑战开始20s时召唤第一波怪物
	{ config_id = 1051017, name = "TIME_AXIS_PASS_51017", event = EventType.EVENT_TIME_AXIS_PASS, source = "monstercreate1", condition = "", action = "action_EVENT_TIME_AXIS_PASS_51017", trigger_count = 0 },
	-- 设置参数开始游戏/设置怪物group到suit1
	{ config_id = 1051047, name = "QUEST_START_51047", event = EventType.EVENT_QUEST_START, source = "7050109", condition = "", action = "action_EVENT_QUEST_START_51047", trigger_count = 0 },
	-- 监听挑战成功，1）刷新Group至Suite1；2）重置物件状态；3）移除全部的计时器；
	{ config_id = 1051054, name = "CHALLENGE_SUCCESS_51054", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_51054", trigger_count = 0 },
	-- 当挑战开始40s时召唤第二波怪物
	{ config_id = 1051066, name = "TIME_AXIS_PASS_51066", event = EventType.EVENT_TIME_AXIS_PASS, source = "monstercreate2", condition = "", action = "action_EVENT_TIME_AXIS_PASS_51066", trigger_count = 0 },
	-- 锅子镜头表现
	{ config_id = 1051068, name = "QUEST_START_51068", event = EventType.EVENT_QUEST_START, source = "7050102", condition = "", action = "action_EVENT_QUEST_START_51068" },
	-- 锅子镜头表现关闭
	{ config_id = 1051069, name = "QUEST_START_51069", event = EventType.EVENT_QUEST_START, source = "7050104", condition = "", action = "action_EVENT_QUEST_START_51069" },
	-- 失败回滚时，刷新锅子
	{ config_id = 1051070, name = "QUEST_START_51070", event = EventType.EVENT_QUEST_START, source = "7050111", condition = "", action = "action_EVENT_QUEST_START_51070" },
	-- 监听挑战失败 将怪物Group刷到suit1/停止时间轴/参数增加
	{ config_id = 1051077, name = "CHALLENGE_FAIL_51077", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_51077", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "ovenATemp", value = 46, no_refresh = false },
	{ config_id = 2, name = "ovenBTemp", value = 35, no_refresh = false },
	{ config_id = 3, name = "ovenCTemp", value = 56, no_refresh = false },
	{ config_id = 4, name = "curPos", value = 2, no_refresh = false },
	{ config_id = 5, name = "fireDirection", value = 0, no_refresh = false },
	{ config_id = 6, name = "ovenATempDirection", value = 0, no_refresh = false },
	{ config_id = 7, name = "ovenBTempDirection", value = 0, no_refresh = false },
	{ config_id = 8, name = "ovenCTempDirection", value = 0, no_refresh = false },
	{ config_id = 9, name = "startOrNot", value = 0, no_refresh = false },
	{ config_id = 10, name = "failTimes", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 51007, gadget_id = 70360002, pos = { x = 1760.768, y = 195.669, z = -1505.482 }, rot = { x = 350.334, y = 332.372, z = 357.049 }, level = 30, area_id = 2 }
	},
	triggers = {
		{ config_id = 1051011, name = "GADGET_STATE_CHANGE_51011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51011", action = "action_EVENT_GADGET_STATE_CHANGE_51011", trigger_count = 0 },
		{ config_id = 1051012, name = "GADGET_STATE_CHANGE_51012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51012", action = "action_EVENT_GADGET_STATE_CHANGE_51012", trigger_count = 0 },
		{ config_id = 1051013, name = "GADGET_STATE_CHANGE_51013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51013", action = "action_EVENT_GADGET_STATE_CHANGE_51013", trigger_count = 0 },
		{ config_id = 1051014, name = "GADGET_STATE_CHANGE_51014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51014", action = "action_EVENT_GADGET_STATE_CHANGE_51014", trigger_count = 0 },
		{ config_id = 1051016, name = "PLATFORM_REACH_POINT_51016", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_51016", action = "action_EVENT_PLATFORM_REACH_POINT_51016", trigger_count = 0 },
		{ config_id = 1051018, name = "PLATFORM_REACH_POINT_51018", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_51018", action = "action_EVENT_PLATFORM_REACH_POINT_51018", trigger_count = 0 },
		{ config_id = 1051019, name = "PLATFORM_REACH_POINT_51019", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_51019", action = "action_EVENT_PLATFORM_REACH_POINT_51019", trigger_count = 0 },
		{ config_id = 1051020, name = "PLATFORM_REACH_POINT_51020", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_51020", action = "action_EVENT_PLATFORM_REACH_POINT_51020", trigger_count = 0 },
		{ config_id = 1051021, name = "PLATFORM_REACH_POINT_51021", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_51021", action = "action_EVENT_PLATFORM_REACH_POINT_51021", trigger_count = 0 },
		{ config_id = 1051022, name = "GADGET_STATE_CHANGE_51022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51022", action = "action_EVENT_GADGET_STATE_CHANGE_51022", trigger_count = 0 },
		{ config_id = 1051023, name = "GADGET_STATE_CHANGE_51023", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51023", action = "action_EVENT_GADGET_STATE_CHANGE_51023", trigger_count = 0 },
		{ config_id = 1051024, name = "GADGET_STATE_CHANGE_51024", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51024", action = "action_EVENT_GADGET_STATE_CHANGE_51024", trigger_count = 0 },
		{ config_id = 1051025, name = "GADGET_STATE_CHANGE_51025", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51025", action = "action_EVENT_GADGET_STATE_CHANGE_51025", trigger_count = 0 },
		{ config_id = 1051026, name = "PLATFORM_REACH_POINT_51026", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_51026", action = "action_EVENT_PLATFORM_REACH_POINT_51026", trigger_count = 0 },
		{ config_id = 1051027, name = "PLATFORM_REACH_POINT_51027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_51027", action = "action_EVENT_PLATFORM_REACH_POINT_51027", trigger_count = 0 },
		{ config_id = 1051028, name = "PLATFORM_REACH_POINT_51028", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_51028", action = "action_EVENT_PLATFORM_REACH_POINT_51028", trigger_count = 0 },
		{ config_id = 1051029, name = "VARIABLE_CHANGE_51029", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_51029", action = "action_EVENT_VARIABLE_CHANGE_51029", trigger_count = 0 },
		{ config_id = 1051030, name = "TIMER_EVENT_51030", event = EventType.EVENT_TIMER_EVENT, source = "ovenATempRise", condition = "condition_EVENT_TIMER_EVENT_51030", action = "action_EVENT_TIMER_EVENT_51030", trigger_count = 0 },
		{ config_id = 1051031, name = "GADGET_STATE_CHANGE_51031", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51031", action = "action_EVENT_GADGET_STATE_CHANGE_51031", trigger_count = 0 },
		{ config_id = 1051032, name = "GADGET_STATE_CHANGE_51032", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51032", action = "action_EVENT_GADGET_STATE_CHANGE_51032", trigger_count = 0 },
		{ config_id = 1051033, name = "VARIABLE_CHANGE_51033", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_51033", action = "action_EVENT_VARIABLE_CHANGE_51033", trigger_count = 0 },
		{ config_id = 1051034, name = "TIMER_EVENT_51034", event = EventType.EVENT_TIMER_EVENT, source = "ovenATempFall", condition = "condition_EVENT_TIMER_EVENT_51034", action = "action_EVENT_TIMER_EVENT_51034", trigger_count = 0 },
		{ config_id = 1051035, name = "GADGET_STATE_CHANGE_51035", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51035", action = "action_EVENT_GADGET_STATE_CHANGE_51035", trigger_count = 0 },
		{ config_id = 1051036, name = "GADGET_STATE_CHANGE_51036", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51036", action = "action_EVENT_GADGET_STATE_CHANGE_51036", trigger_count = 0 },
		{ config_id = 1051037, name = "VARIABLE_CHANGE_51037", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_51037", action = "action_EVENT_VARIABLE_CHANGE_51037", trigger_count = 0 },
		{ config_id = 1051038, name = "TIMER_EVENT_51038", event = EventType.EVENT_TIMER_EVENT, source = "ovenBTempRise", condition = "condition_EVENT_TIMER_EVENT_51038", action = "action_EVENT_TIMER_EVENT_51038", trigger_count = 0 },
		{ config_id = 1051039, name = "GADGET_STATE_CHANGE_51039", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51039", action = "action_EVENT_GADGET_STATE_CHANGE_51039", trigger_count = 0 },
		{ config_id = 1051040, name = "VARIABLE_CHANGE_51040", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_51040", action = "action_EVENT_VARIABLE_CHANGE_51040", trigger_count = 0 },
		{ config_id = 1051041, name = "TIMER_EVENT_51041", event = EventType.EVENT_TIMER_EVENT, source = "ovenBTempFall", condition = "condition_EVENT_TIMER_EVENT_51041", action = "action_EVENT_TIMER_EVENT_51041", trigger_count = 0 },
		{ config_id = 1051042, name = "VARIABLE_CHANGE_51042", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_51042", action = "action_EVENT_VARIABLE_CHANGE_51042", trigger_count = 0 },
		{ config_id = 1051043, name = "TIMER_EVENT_51043", event = EventType.EVENT_TIMER_EVENT, source = "ovenCTempRise", condition = "condition_EVENT_TIMER_EVENT_51043", action = "action_EVENT_TIMER_EVENT_51043", trigger_count = 0 },
		{ config_id = 1051044, name = "VARIABLE_CHANGE_51044", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_51044", action = "action_EVENT_VARIABLE_CHANGE_51044", trigger_count = 0 },
		{ config_id = 1051045, name = "TIMER_EVENT_51045", event = EventType.EVENT_TIMER_EVENT, source = "ovenCTempFall", condition = "condition_EVENT_TIMER_EVENT_51045", action = "action_EVENT_TIMER_EVENT_51045", trigger_count = 0 },
		{ config_id = 1051046, name = "GADGET_CREATE_51046", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_51046", action = "action_EVENT_GADGET_CREATE_51046", trigger_count = 0 },
		{ config_id = 1051048, name = "TIME_AXIS_PASS_51048", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenADOWN", condition = "", action = "action_EVENT_TIME_AXIS_PASS_51048", trigger_count = 0 },
		{ config_id = 1051049, name = "CHALLENGE_FAIL_51049", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_51049", trigger_count = 0 },
		{ config_id = 1051050, name = "TIMER_EVENT_51050", event = EventType.EVENT_TIMER_EVENT, source = "challengeTimer", condition = "", action = "", trigger_count = 0, tag = "666" },
		{ config_id = 1051051, name = "GADGET_STATE_CHANGE_51051", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_51051", action = "action_EVENT_GADGET_STATE_CHANGE_51051", trigger_count = 0 },
		{ config_id = 1051052, name = "PLATFORM_REACH_POINT_51052", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_51052", action = "action_EVENT_PLATFORM_REACH_POINT_51052", trigger_count = 0 },
		{ config_id = 1051053, name = "PLATFORM_REACH_POINT_51053", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_51053", action = "action_EVENT_PLATFORM_REACH_POINT_51053", trigger_count = 0 },
		{ config_id = 1051055, name = "TIME_AXIS_PASS_51055", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenBDOWN", condition = "", action = "action_EVENT_TIME_AXIS_PASS_51055", trigger_count = 0 },
		{ config_id = 1051056, name = "TIME_AXIS_PASS_51056", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenCDOWN", condition = "", action = "action_EVENT_TIME_AXIS_PASS_51056", trigger_count = 0 },
		{ config_id = 1051057, name = "VARIABLE_CHANGE_51057", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_51057", action = "action_EVENT_VARIABLE_CHANGE_51057", trigger_count = 0 },
		{ config_id = 1051058, name = "TIME_AXIS_PASS_51058", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenAUP", condition = "", action = "action_EVENT_TIME_AXIS_PASS_51058", trigger_count = 0 },
		{ config_id = 1051059, name = "VARIABLE_CHANGE_51059", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_51059", action = "action_EVENT_VARIABLE_CHANGE_51059", trigger_count = 0 },
		{ config_id = 1051060, name = "VARIABLE_CHANGE_51060", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_51060", action = "action_EVENT_VARIABLE_CHANGE_51060", trigger_count = 0 },
		{ config_id = 1051061, name = "TIME_AXIS_PASS_51061", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenBUP", condition = "", action = "action_EVENT_TIME_AXIS_PASS_51061", trigger_count = 0 },
		{ config_id = 1051062, name = "VARIABLE_CHANGE_51062", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_51062", action = "action_EVENT_VARIABLE_CHANGE_51062", trigger_count = 0 },
		{ config_id = 1051063, name = "VARIABLE_CHANGE_51063", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_51063", action = "action_EVENT_VARIABLE_CHANGE_51063", trigger_count = 0 },
		{ config_id = 1051064, name = "TIME_AXIS_PASS_51064", event = EventType.EVENT_TIME_AXIS_PASS, source = "ovenAUP", condition = "", action = "action_EVENT_TIME_AXIS_PASS_51064", trigger_count = 0 },
		{ config_id = 1051065, name = "VARIABLE_CHANGE_51065", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_51065", action = "action_EVENT_VARIABLE_CHANGE_51065", trigger_count = 0 },
		{ config_id = 1051067, name = "GROUP_LOAD_51067", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_51067" },
		{ config_id = 1051071, name = "VARIABLE_CHANGE_51071", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATemp", condition = "condition_EVENT_VARIABLE_CHANGE_51071", action = "action_EVENT_VARIABLE_CHANGE_51071", trigger_count = 0 },
		{ config_id = 1051072, name = "VARIABLE_CHANGE_51072", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTemp", condition = "condition_EVENT_VARIABLE_CHANGE_51072", action = "action_EVENT_VARIABLE_CHANGE_51072", trigger_count = 0 },
		{ config_id = 1051073, name = "VARIABLE_CHANGE_51073", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTemp", condition = "condition_EVENT_VARIABLE_CHANGE_51073", action = "action_EVENT_VARIABLE_CHANGE_51073", trigger_count = 0 },
		{ config_id = 1051074, name = "VARIABLE_CHANGE_51074", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenATemp", condition = "condition_EVENT_VARIABLE_CHANGE_51074", action = "action_EVENT_VARIABLE_CHANGE_51074", trigger_count = 0 },
		{ config_id = 1051075, name = "VARIABLE_CHANGE_51075", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenBTemp", condition = "condition_EVENT_VARIABLE_CHANGE_51075", action = "action_EVENT_VARIABLE_CHANGE_51075", trigger_count = 0 },
		{ config_id = 1051076, name = "VARIABLE_CHANGE_51076", event = EventType.EVENT_VARIABLE_CHANGE, source = "ovenCTemp", condition = "condition_EVENT_VARIABLE_CHANGE_51076", action = "action_EVENT_VARIABLE_CHANGE_51076", trigger_count = 0 }
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
		gadgets = { 51001, 51002, 51003, 51004, 51005, 51006, 51008, 51009, 51010 },
		regions = { },
		triggers = { "QUEST_START_51015", "TIME_AXIS_PASS_51017", "QUEST_START_51047", "CHALLENGE_SUCCESS_51054", "TIME_AXIS_PASS_51066", "QUEST_START_51068", "QUEST_START_51069", "QUEST_START_51070", "CHALLENGE_FAIL_51077" },
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
		triggers = { "QUEST_START_51015", "TIME_AXIS_PASS_51017", "TIME_AXIS_PASS_51066" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_QUEST_START_51015(context, evt)
	-- 判断变量"failTimes"为5
	if ScriptLib.GetGroupVariableValue(context, "failTimes") >= 5 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_START_51015(context, evt)
	-- 创建标识为"monstercreate1"，时间节点为{30}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "monstercreate1", {30}, false)
	
	
	-- 创建标识为"monstercreate2"，时间节点为{60}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "monstercreate2", {60}, false)
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_51017(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001052, 2)
	
	-- 发起一个针对Td的LuaFunction "StartPotTaunt" 的请求
	local functionKey = "StartPotTaunt"
	local functionParam1 = "StartPotTaunt" .. "Param1"
	local functionParam2 = "StartPotTaunt" .. "Param2"
	local functionParam3 = "StartPotTaunt" .. "Param3"
	local functionParam4 = "StartPotTaunt" .. "Param4"
	
	ScriptLib.SetGroupTempValue(context, functionParam1, 51004, {})
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
	
	ScriptLib.SetGroupTempValue(context, functionParam1, 51006, {})
	ScriptLib.SetGroupTempValue(context, functionParam2, 0, {})
	ScriptLib.SetGroupTempValue(context, functionParam3, 0, {})
	ScriptLib.SetGroupTempValue(context, functionParam4, 0, {})
	local currentValue = ScriptLib.GetGroupTempValue(context,functionKey,{})
	ScriptLib.SetGroupTempValue(context, functionKey, currentValue+1, {})
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_51047(context, evt)
	-- 将本组内变量名为 "startOrNot" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "startOrNot", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001052, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001053, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_51054(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7050109finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1765.99,y=195.4816,z=-1515.139}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 70501091, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001051, suite = 1 }) then
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
	
	-- 停止标识为"monstercreate1"的时间轴
	ScriptLib.EndTimeAxis(context, "monstercreate1")
	
	
	-- 停止标识为"monstercreate2"的时间轴
	ScriptLib.EndTimeAxis(context, "monstercreate2")
	
	
	return 0
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_51066(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001053, 2)
	
	-- 发起一个针对Td的LuaFunction "StartPotTaunt" 的请求
	local functionKey = "StartPotTaunt"
	local functionParam1 = "StartPotTaunt" .. "Param1"
	local functionParam2 = "StartPotTaunt" .. "Param2"
	local functionParam3 = "StartPotTaunt" .. "Param3"
	local functionParam4 = "StartPotTaunt" .. "Param4"
	
	ScriptLib.SetGroupTempValue(context, functionParam1, 51006, {})
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
	
	ScriptLib.SetGroupTempValue(context, functionParam1, 51004, {})
	ScriptLib.SetGroupTempValue(context, functionParam2, 0, {})
	ScriptLib.SetGroupTempValue(context, functionParam3, 0, {})
	ScriptLib.SetGroupTempValue(context, functionParam4, 0, {})
	local currentValue = ScriptLib.GetGroupTempValue(context,functionKey,{})
	ScriptLib.SetGroupTempValue(context, functionKey, currentValue+1, {})
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_51068(context, evt)
	-- 将configid为 51005 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 51005, GadgetState.Action01) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_51069(context, evt)
	-- 将configid为 51005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 51005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_51070(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001051, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_51077(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7050109fail") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=1765.99,y=195.4816,z=-1515.139}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 70501092, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001052, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133001053, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 停止标识为"monstercreate1"的时间轴
	ScriptLib.EndTimeAxis(context, "monstercreate1")
	
	
	-- 停止标识为"monstercreate2"的时间轴
	ScriptLib.EndTimeAxis(context, "monstercreate2")
	
	
	-- 针对当前group内变量名为 "failTimes" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "failTimes", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

require "V2_1/ImmortalPotEx"
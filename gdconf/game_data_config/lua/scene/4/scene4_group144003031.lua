-- 基础信息
local base_info = {
	group_id = 144003031
}

-- DEFS_MISCS
local ProgressTable = {0,100,200,300,500}
local GalleryID = 8005
local SubScoreTimeAxis = {1}
local GadgetTargetScore = 110
local PerSecondSubScore = {-1,-2,-3,-5}
local MonsterTargetScore = {
        {monsterID = 26010101, score = 50},
        {monsterID = 22010201, score = 50},
        {monsterID = 21020601, score = 50},
}
local RandomTimeAxis = {
        {20,40,60,80,100,120,140,160,180,200,220,240,260},
        {18,38,58,78,98,118,138,158,178,198,218,238,258},
        {22,42,62,82,102,122,142,162,182,202,222,242,262},
}
local RandomTargetConfigID = {31026,31028,31029,31036}
local configIDList = {31027,31035,31037,31038}
local randomNum = 2

local smallRegion = 31065
local bigRegion = 31066

local GroupID = 144003031

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[31001] = { config_id = 31001, monster_id = 20010801, pos = { x = -197.096, y = 120.293, z = 493.751 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31002] = { config_id = 31002, monster_id = 20010901, pos = { x = -199.219, y = 120.467, z = 488.843 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31003] = { config_id = 31003, monster_id = 20010801, pos = { x = -203.194, y = 120.728, z = 487.782 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31004] = { config_id = 31004, monster_id = 20010801, pos = { x = -210.848, y = 120.092, z = 500.191 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31005] = { config_id = 31005, monster_id = 20010801, pos = { x = -213.064, y = 120.227, z = 496.908 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31006] = { config_id = 31006, monster_id = 20010801, pos = { x = -212.850, y = 120.674, z = 492.540 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31007] = { config_id = 31007, monster_id = 20010801, pos = { x = -207.462, y = 121.019, z = 487.773 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31008] = { config_id = 31008, monster_id = 20010901, pos = { x = -197.841, y = 120.251, z = 496.747 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31009] = { config_id = 31009, monster_id = 20010801, pos = { x = -210.273, y = 120.884, z = 489.882 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31010] = { config_id = 31010, monster_id = 20010801, pos = { x = -200.076, y = 120.214, z = 499.979 }, rot = { x = 0.000, y = 220.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31011] = { config_id = 31011, monster_id = 20010801, pos = { x = -197.736, y = 120.407, z = 490.379 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31012] = { config_id = 31012, monster_id = 20010801, pos = { x = -207.273, y = 120.043, z = 501.708 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31013] = { config_id = 31013, monster_id = 26010101, pos = { x = -203.415, y = 120.116, z = 501.430 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 6, drop_id = 1000100, affix = { 4118, 1033 }, area_id = 103 },
	[31039] = { config_id = 31039, monster_id = 21010301, pos = { x = -197.126, y = 120.292, z = 494.107 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31040] = { config_id = 31040, monster_id = 21011301, pos = { x = -199.249, y = 120.467, z = 489.198 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31041] = { config_id = 31041, monster_id = 21010301, pos = { x = -203.224, y = 120.727, z = 488.137 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31042] = { config_id = 31042, monster_id = 21011301, pos = { x = -210.878, y = 120.091, z = 500.546 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31043] = { config_id = 31043, monster_id = 21011401, pos = { x = -213.094, y = 120.226, z = 497.263 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31044] = { config_id = 31044, monster_id = 21011401, pos = { x = -212.880, y = 120.673, z = 492.895 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31045] = { config_id = 31045, monster_id = 21011401, pos = { x = -207.492, y = 121.018, z = 488.128 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31046] = { config_id = 31046, monster_id = 21030501, pos = { x = -197.871, y = 120.250, z = 497.102 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31047] = { config_id = 31047, monster_id = 21010301, pos = { x = -210.302, y = 120.884, z = 490.237 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31048] = { config_id = 31048, monster_id = 21011301, pos = { x = -200.106, y = 120.214, z = 500.334 }, rot = { x = 0.000, y = 220.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31049] = { config_id = 31049, monster_id = 21011401, pos = { x = -197.766, y = 120.407, z = 490.734 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31050] = { config_id = 31050, monster_id = 21020601, pos = { x = -207.303, y = 120.042, z = 502.063 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 6, drop_id = 1000100, affix = { 4118, 1033 }, area_id = 103 },
	[31051] = { config_id = 31051, monster_id = 21010301, pos = { x = -203.445, y = 120.115, z = 501.785 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31052] = { config_id = 31052, monster_id = 20010801, pos = { x = -197.453, y = 120.295, z = 493.553 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31053] = { config_id = 31053, monster_id = 20010901, pos = { x = -199.576, y = 120.470, z = 488.645 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31054] = { config_id = 31054, monster_id = 20010801, pos = { x = -203.551, y = 120.731, z = 487.584 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31055] = { config_id = 31055, monster_id = 21010901, pos = { x = -211.205, y = 120.094, z = 499.993 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31056] = { config_id = 31056, monster_id = 21010901, pos = { x = -213.421, y = 120.229, z = 496.710 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31057] = { config_id = 31057, monster_id = 21011401, pos = { x = -213.207, y = 120.677, z = 492.342 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31058] = { config_id = 31058, monster_id = 21010301, pos = { x = -207.819, y = 121.021, z = 487.575 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31059] = { config_id = 31059, monster_id = 21030501, pos = { x = -198.198, y = 120.253, z = 496.549 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31060] = { config_id = 31060, monster_id = 20010801, pos = { x = -210.629, y = 120.887, z = 489.684 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31061] = { config_id = 31061, monster_id = 20010801, pos = { x = -200.432, y = 120.217, z = 499.781 }, rot = { x = 0.000, y = 220.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31062] = { config_id = 31062, monster_id = 21011401, pos = { x = -198.093, y = 120.410, z = 490.181 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 },
	[31063] = { config_id = 31063, monster_id = 22010201, pos = { x = -207.630, y = 120.045, z = 501.510 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 6, drop_id = 1000100, affix = { 4118, 1033 }, area_id = 103 },
	[31064] = { config_id = 31064, monster_id = 21010301, pos = { x = -203.772, y = 120.118, z = 501.232 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 103 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[31014] = { config_id = 31014, gadget_id = 70950009, pos = { x = -206.301, y = 118.870, z = 490.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	[31019] = { config_id = 31019, gadget_id = 70360272, pos = { x = -205.089, y = 120.322, z = 493.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 103 },
	[31026] = { config_id = 31026, gadget_id = 70350253, pos = { x = -215.784, y = 123.741, z = 496.018 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, route_id = 400300001, area_id = 103 },
	[31027] = { config_id = 31027, gadget_id = 70350253, pos = { x = -205.579, y = 124.878, z = 485.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 400300005, area_id = 103 },
	[31028] = { config_id = 31028, gadget_id = 70350253, pos = { x = -197.273, y = 124.049, z = 487.534 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1, route_id = 400300002, area_id = 103 },
	[31029] = { config_id = 31029, gadget_id = 70350253, pos = { x = -205.306, y = 123.377, z = 505.223 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, route_id = 400300003, area_id = 103 },
	[31035] = { config_id = 31035, gadget_id = 70350253, pos = { x = -212.562, y = 124.792, z = 488.384 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, route_id = 400300006, area_id = 103 },
	[31036] = { config_id = 31036, gadget_id = 70350253, pos = { x = -194.281, y = 123.734, z = 493.627 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, level = 1, route_id = 400300004, area_id = 103 },
	[31037] = { config_id = 31037, gadget_id = 70350253, pos = { x = -198.088, y = 123.502, z = 502.789 }, rot = { x = 0.000, y = 220.000, z = 0.000 }, level = 1, route_id = 400300007, area_id = 103 },
	[31038] = { config_id = 31038, gadget_id = 70350253, pos = { x = -212.951, y = 123.608, z = 502.163 }, rot = { x = 0.000, y = 325.000, z = 0.000 }, level = 1, route_id = 400300008, area_id = 103 }
}

-- 区域
regions = {
	[31025] = { config_id = 31025, shape = RegionShape.SPHERE, radius = 20, pos = { x = -205.117, y = 120.339, z = 493.700 }, area_id = 103 },
	[31065] = { config_id = 31065, shape = RegionShape.SPHERE, radius = 25, pos = { x = -205.089, y = 120.322, z = 493.795 }, area_id = 103 },
	[31066] = { config_id = 31066, shape = RegionShape.SPHERE, radius = 30, pos = { x = -205.089, y = 120.322, z = 493.795 }, area_id = 103 }
}

-- 触发器
triggers = {
	{ config_id = 1031015, name = "VARIABLE_CHANGE_31015", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_31015", action = "action_EVENT_VARIABLE_CHANGE_31015", trigger_count = 0 },
	{ config_id = 1031016, name = "TIMER_EVENT_31016", event = EventType.EVENT_TIMER_EVENT, source = "monster_timer2", condition = "", action = "action_EVENT_TIMER_EVENT_31016", trigger_count = 0 },
	{ config_id = 1031017, name = "TIMER_EVENT_31017", event = EventType.EVENT_TIMER_EVENT, source = "target_timer2", condition = "", action = "action_EVENT_TIMER_EVENT_31017", trigger_count = 0 },
	{ config_id = 1031018, name = "MONSTER_TIDE_DIE_31018", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_31018", action = "action_EVENT_MONSTER_TIDE_DIE_31018", trigger_count = 0 },
	{ config_id = 1031020, name = "GADGET_CREATE_31020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_31020", action = "action_EVENT_GADGET_CREATE_31020", trigger_count = 0 },
	{ config_id = 1031021, name = "VARIABLE_CHANGE_31021", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_31021", action = "action_EVENT_VARIABLE_CHANGE_31021", trigger_count = 0 },
	{ config_id = 1031022, name = "TIMER_EVENT_31022", event = EventType.EVENT_TIMER_EVENT, source = "monster_timer1", condition = "", action = "action_EVENT_TIMER_EVENT_31022", trigger_count = 0 },
	{ config_id = 1031023, name = "TIMER_EVENT_31023", event = EventType.EVENT_TIMER_EVENT, source = "target_timer1", condition = "", action = "action_EVENT_TIMER_EVENT_31023", trigger_count = 0 },
	{ config_id = 1031024, name = "GALLERY_START_31024", event = EventType.EVENT_GALLERY_START, source = "", condition = "", action = "action_EVENT_GALLERY_START_31024", trigger_count = 0 },
	{ config_id = 1031025, name = "ENTER_REGION_31025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_31025", trigger_count = 0 },
	{ config_id = 1031030, name = "MONSTER_TIDE_DIE_31030", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_31030", action = "action_EVENT_MONSTER_TIDE_DIE_31030", trigger_count = 0 },
	{ config_id = 1031031, name = "VARIABLE_CHANGE_31031", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_31031", action = "action_EVENT_VARIABLE_CHANGE_31031", trigger_count = 0 },
	{ config_id = 1031032, name = "TIMER_EVENT_31032", event = EventType.EVENT_TIMER_EVENT, source = "monster_timer3", condition = "", action = "action_EVENT_TIMER_EVENT_31032", trigger_count = 0 },
	{ config_id = 1031033, name = "TIMER_EVENT_31033", event = EventType.EVENT_TIMER_EVENT, source = "target_timer3", condition = "", action = "action_EVENT_TIMER_EVENT_31033", trigger_count = 0 },
	{ config_id = 1031034, name = "MONSTER_TIDE_DIE_31034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_31034", action = "action_EVENT_MONSTER_TIDE_DIE_31034", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "wave_1", value = 0, no_refresh = false },
	{ config_id = 2, name = "wave_2", value = 0, no_refresh = false },
	{ config_id = 3, name = "wave_3", value = 0, no_refresh = false },
	{ config_id = 4, name = "time_out", value = 0, no_refresh = false }
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
		-- description = ,
		monsters = { },
		gadgets = { 31019 },
		regions = { 31025 },
		triggers = { "GALLERY_START_31024", "ENTER_REGION_31025" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 31014 },
		regions = { },
		triggers = { "GADGET_CREATE_31020", "VARIABLE_CHANGE_31021", "TIMER_EVENT_31022", "TIMER_EVENT_31023", "MONSTER_TIDE_DIE_31030" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_31015", "TIMER_EVENT_31016", "TIMER_EVENT_31017", "MONSTER_TIDE_DIE_31018" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_31031", "TIMER_EVENT_31032", "TIMER_EVENT_31033", "MONSTER_TIDE_DIE_31034" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 31026, 31028, 31029, 31036 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 31027, 31035, 31037, 31038 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 31001, 31002, 31003, 31004, 31005, 31006, 31007, 31008, 31009, 31010, 31011, 31012, 31013 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 31039, 31040, 31041, 31042, 31043, 31044, 31045, 31046, 31047, 31048, 31049, 31050, 31051 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 31052, 31053, 31054, 31055, 31056, 31057, 31058, 31059, 31060, 31061, 31062, 31063, 31064 },
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
function condition_EVENT_VARIABLE_CHANGE_31015(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave_2"为1
	if ScriptLib.GetGroupVariableValue(context, "wave_2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_31015(context, evt)
	-- 判断是否需要创建靶标空档期
	if 1 ~= time_out then
		DeduplicationRandom( context, configIDList, randomNum )
		ScriptLib.CreateGroupTimerEvent(context, 144003031, "monster_timer2", 5)
	else
		ScriptLib.CreateGroupTimerEvent(context, 144003031, "monster_timer2", 1)
		-- 将本组内变量名为 "time_out" 的变量设置为 0
		if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 0) then
			ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	
			return -1
		end
	end
	
	-- 将本组内变量名为 "wave_2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave_2", 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_31016(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为13，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 144003031, {31039,31040,31041,31042,31043,31044,31045,31046,31047,31048,31049,31050,31051}, 13, 5, 5) then
		return -1
	end
	
	-- 延迟70秒后,向groupId为：144003031的对象,请求一次调用,并将string参数："target_timer2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144003031, "target_timer2", 70) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_31017(context, evt)
	-- 将本组内变量名为 "time_out" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	DeduplicationRandom( context, configIDList, randomNum )
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_31018(context, evt)
	if 13 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_31018(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 144003031, "target_timer2") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144003031, 4)
	
	-- 针对当前group内变量名为 "wave_3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "wave_3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_31020(context, evt)
	if 31014 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_31020(context, evt)
	-- 将本组内变量名为 "wave_1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave_1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_31021(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave_1"为1
	if ScriptLib.GetGroupVariableValue(context, "wave_1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_31021(context, evt)
	-- 判断是否需要创建靶标空档期
	if 1 ~= time_out then
		DeduplicationRandom( context, configIDList, randomNum )
		ScriptLib.CreateGroupTimerEvent(context, 144003031, "monster_timer1", 8)
	else
		ScriptLib.CreateGroupTimerEvent(context, 144003031, "monster_timer1", 1)
		-- 将本组内变量名为 "time_out" 的变量设置为 0
		if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 0) then
			ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	
			return -1
		end
	end
	
	-- 将本组内变量名为 "wave_1" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave_1", 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_31022(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为13，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 144003031, {31001,31002,31003,31004,31005,31006,31007,31008,31009,31010,31011,31012,31013}, 13, 5, 5) then
		return -1
	end
	
	-- 延迟70秒后,向groupId为：144003031的对象,请求一次调用,并将string参数："target_timer1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144003031, "target_timer1", 70) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_31023(context, evt)
	-- 将本组内变量名为 "time_out" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	DeduplicationRandom( context, configIDList, randomNum )
	
	return 0
end

-- 触发操作
function action_EVENT_GALLERY_START_31024(context, evt)
	-- 将configid为 31019 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31019, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144003031, 2)
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_31025(context, evt)
	-- 显示id为142的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,142,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_31030(context, evt)
	if 13 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_31030(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 144003031, "target_timer1") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144003031, 3)
	
	-- 针对当前group内变量名为 "wave_2" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "wave_2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_31031(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave_3"为1
	if ScriptLib.GetGroupVariableValue(context, "wave_3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_31031(context, evt)
	-- 判断是否需要创建靶标空档期
	if 1 ~= time_out then
		DeduplicationRandom( context, configIDList, randomNum )
		ScriptLib.CreateGroupTimerEvent(context, 144003031, "monster_timer3", 5)
	else
		ScriptLib.CreateGroupTimerEvent(context, 144003031, "monster_timer3", 1)
		-- 将本组内变量名为 "time_out" 的变量设置为 0
		if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 0) then
			ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	
			return -1
		end
	end
	
	-- 将本组内变量名为 "wave_3" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave_3", 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_31032(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为13，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 144003031, {31052,31053,31054,31055,31056,31057,31058,31059,31060,31061,31062,31063,31064}, 13, 5, 5) then
		return -1
	end
	
	-- 延迟70秒后,向groupId为：144003031的对象,请求一次调用,并将string参数："target_timer3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144003031, "target_timer3", 70) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_31033(context, evt)
	-- 将本组内变量名为 "time_out" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	DeduplicationRandom( context, configIDList, randomNum )
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_31034(context, evt)
	if 13 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_31034(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 144003031, "target_timer3") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 针对当前group内变量名为 "wave_3" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "wave_3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

require "V1_6/ScoreChallenge"
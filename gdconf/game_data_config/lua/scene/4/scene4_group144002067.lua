-- 基础信息
local base_info = {
	group_id = 144002067
}

-- DEFS_MISCS
local ProgressTable = {0,100,200,300,500}
local GalleryID = 8007
local SubScoreTimeAxis = {1}
local GadgetTargetScore = 110
local PerSecondSubScore = {-1,-2,-3,-5}
local MonsterTargetScore = {
        {monsterID = 21020301, score = 50},
        {monsterID = 21020201, score = 50},
}
local RandomTimeAxis = {
        {20,40,60,80,100,120,140,160,180,200,220,240,260},
        {18,38,58,78,98,118,138,158,178,198,218,238,258},
        {22,42,62,82,102,122,142,162,182,202,222,242,262},
}
local RandomTargetConfigID = {67029,67031,67038,67039}

local configIDList = {67030,67066,67067}
local configIDList2 = {67032,67064,67065}
local configIDList3 = {67037,67062,67063}
local randomNum = 3

local smallRegion = 67059
local bigRegion = 67060

local GroupID = 144002067

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[67001] = { config_id = 67001, monster_id = 20011501, pos = { x = 396.691, y = 120.614, z = -387.135 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67002] = { config_id = 67002, monster_id = 20011001, pos = { x = 400.692, y = 120.801, z = -388.852 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67003] = { config_id = 67003, monster_id = 21010401, pos = { x = 404.307, y = 121.049, z = -391.032 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67004] = { config_id = 67004, monster_id = 20011001, pos = { x = 392.858, y = 120.512, z = -387.747 }, rot = { x = 0.000, y = 165.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67005] = { config_id = 67005, monster_id = 21010401, pos = { x = 389.234, y = 120.385, z = -388.947 }, rot = { x = 0.000, y = 145.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67006] = { config_id = 67006, monster_id = 20011201, pos = { x = 405.110, y = 121.341, z = -394.858 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67007] = { config_id = 67007, monster_id = 21010401, pos = { x = 387.222, y = 120.371, z = -391.834 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67008] = { config_id = 67008, monster_id = 20011201, pos = { x = 385.881, y = 120.922, z = -395.759 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67009] = { config_id = 67009, monster_id = 21020201, pos = { x = 396.519, y = 121.198, z = -401.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_id = 1000100, affix = { 4118, 1033 }, area_id = 101 },
	[67010] = { config_id = 67010, monster_id = 20011001, pos = { x = 391.801, y = 120.888, z = -400.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67011] = { config_id = 67011, monster_id = 20011001, pos = { x = 400.751, y = 121.389, z = -399.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67012] = { config_id = 67012, monster_id = 21030401, pos = { x = 389.884, y = 120.892, z = -402.559 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67015] = { config_id = 67015, monster_id = 21010901, pos = { x = 388.321, y = 120.669, z = -398.684 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67017] = { config_id = 67017, monster_id = 21011201, pos = { x = 393.275, y = 121.080, z = -403.734 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67018] = { config_id = 67018, monster_id = 21011201, pos = { x = 388.170, y = 120.727, z = -399.718 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67019] = { config_id = 67019, monster_id = 21011001, pos = { x = 385.970, y = 120.915, z = -395.813 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67020] = { config_id = 67020, monster_id = 21010901, pos = { x = 396.916, y = 121.355, z = -404.179 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67021] = { config_id = 67021, monster_id = 21010201, pos = { x = 400.157, y = 121.559, z = -403.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67022] = { config_id = 67022, monster_id = 21011201, pos = { x = 402.251, y = 121.643, z = -402.386 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67023] = { config_id = 67023, monster_id = 21010501, pos = { x = 386.345, y = 120.401, z = -394.667 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67044] = { config_id = 67044, monster_id = 21010201, pos = { x = 403.997, y = 121.668, z = -400.574 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67045] = { config_id = 67045, monster_id = 21020301, pos = { x = 399.676, y = 120.862, z = -390.642 }, rot = { x = 0.000, y = 215.000, z = 0.000 }, level = 6, drop_id = 1000100, affix = { 4118, 1033 }, area_id = 101 },
	[67046] = { config_id = 67046, monster_id = 21010201, pos = { x = 402.972, y = 121.160, z = -393.806 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67047] = { config_id = 67047, monster_id = 21010901, pos = { x = 395.568, y = 120.623, z = -388.817 }, rot = { x = 0.000, y = 190.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67048] = { config_id = 67048, monster_id = 21011201, pos = { x = 396.655, y = 120.637, z = -387.716 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67049] = { config_id = 67049, monster_id = 20011501, pos = { x = 400.656, y = 120.824, z = -389.432 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67050] = { config_id = 67050, monster_id = 21010901, pos = { x = 404.271, y = 121.072, z = -391.612 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67051] = { config_id = 67051, monster_id = 20011301, pos = { x = 392.822, y = 120.535, z = -388.327 }, rot = { x = 0.000, y = 165.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67052] = { config_id = 67052, monster_id = 21010901, pos = { x = 389.198, y = 120.408, z = -389.527 }, rot = { x = 0.000, y = 145.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67053] = { config_id = 67053, monster_id = 21011201, pos = { x = 405.074, y = 121.364, z = -395.439 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67054] = { config_id = 67054, monster_id = 21010201, pos = { x = 387.186, y = 120.394, z = -392.415 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67055] = { config_id = 67055, monster_id = 20011301, pos = { x = 387.197, y = 120.505, z = -395.559 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67056] = { config_id = 67056, monster_id = 21030401, pos = { x = 396.483, y = 121.221, z = -402.029 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67057] = { config_id = 67057, monster_id = 21010201, pos = { x = 391.765, y = 120.911, z = -400.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[67058] = { config_id = 67058, monster_id = 21020201, pos = { x = 400.715, y = 121.412, z = -400.518 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_id = 1000100, affix = { 4118, 1033 }, area_id = 101 },
	[67061] = { config_id = 67061, monster_id = 21010201, pos = { x = 405.074, y = 121.607, z = -398.599 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[67013] = { config_id = 67013, gadget_id = 70360272, pos = { x = 396.105, y = 120.918, z = -395.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	[67028] = { config_id = 67028, gadget_id = 70950009, pos = { x = 395.856, y = 117.873, z = -395.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[67029] = { config_id = 67029, gadget_id = 70350253, pos = { x = 383.458, y = 123.947, z = -397.484 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 1, route_id = 400200020, area_id = 101 },
	[67030] = { config_id = 67030, gadget_id = 70350253, pos = { x = 397.822, y = 122.450, z = -385.032 }, rot = { x = 0.000, y = 195.000, z = 0.000 }, level = 1, route_id = 400200024, start_route = false, area_id = 101 },
	[67031] = { config_id = 67031, gadget_id = 70350253, pos = { x = 406.918, y = 124.513, z = -402.485 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, route_id = 400200025, area_id = 101 },
	[67032] = { config_id = 67032, gadget_id = 70350253, pos = { x = 398.316, y = 123.580, z = -407.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 400200026, start_route = false, area_id = 101 },
	[67037] = { config_id = 67037, gadget_id = 70350253, pos = { x = 389.404, y = 122.819, z = -405.548 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1, route_id = 400200021, start_route = false, area_id = 101 },
	[67038] = { config_id = 67038, gadget_id = 70350253, pos = { x = 406.955, y = 123.561, z = -390.415 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, route_id = 400200022, area_id = 101 },
	[67039] = { config_id = 67039, gadget_id = 70350253, pos = { x = 388.564, y = 122.452, z = -385.899 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1, route_id = 400200023, area_id = 101 },
	[67062] = { config_id = 67062, gadget_id = 70350253, pos = { x = 387.216, y = 124.858, z = -404.016 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1, route_id = 400200021, start_route = false, area_id = 101 },
	[67063] = { config_id = 67063, gadget_id = 70350253, pos = { x = 384.942, y = 126.571, z = -402.423 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1, route_id = 400200021, start_route = false, area_id = 101 },
	[67064] = { config_id = 67064, gadget_id = 70350253, pos = { x = 395.280, y = 125.379, z = -407.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 400200026, start_route = false, area_id = 101 },
	[67065] = { config_id = 67065, gadget_id = 70350253, pos = { x = 398.316, y = 127.286, z = -407.082 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 400200026, start_route = false, area_id = 101 },
	[67066] = { config_id = 67066, gadget_id = 70350253, pos = { x = 399.949, y = 124.795, z = -385.602 }, rot = { x = 0.000, y = 195.000, z = 0.000 }, level = 1, route_id = 400200024, start_route = false, area_id = 101 },
	[67067] = { config_id = 67067, gadget_id = 70350253, pos = { x = 395.680, y = 124.779, z = -384.458 }, rot = { x = 0.000, y = 195.000, z = 0.000 }, level = 1, route_id = 400200024, start_route = false, area_id = 101 }
}

-- 区域
regions = {
	[67059] = { config_id = 67059, shape = RegionShape.SPHERE, radius = 25, pos = { x = 396.105, y = 120.918, z = -395.556 }, area_id = 101 },
	[67060] = { config_id = 67060, shape = RegionShape.SPHERE, radius = 30, pos = { x = 396.105, y = 120.918, z = -395.556 }, area_id = 101 },
	[67068] = { config_id = 67068, shape = RegionShape.SPHERE, radius = 20, pos = { x = 395.691, y = 120.900, z = -395.358 }, area_id = 101 }
}

-- 触发器
triggers = {
	{ config_id = 1067014, name = "GALLERY_START_67014", event = EventType.EVENT_GALLERY_START, source = "", condition = "", action = "action_EVENT_GALLERY_START_67014", trigger_count = 0 },
	{ config_id = 1067016, name = "GADGET_CREATE_67016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_67016", action = "action_EVENT_GADGET_CREATE_67016", trigger_count = 0 },
	{ config_id = 1067024, name = "VARIABLE_CHANGE_67024", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_67024", action = "action_EVENT_VARIABLE_CHANGE_67024", trigger_count = 0 },
	{ config_id = 1067025, name = "TIMER_EVENT_67025", event = EventType.EVENT_TIMER_EVENT, source = "monster_timer", condition = "", action = "action_EVENT_TIMER_EVENT_67025", trigger_count = 0 },
	{ config_id = 1067026, name = "TIMER_EVENT_67026", event = EventType.EVENT_TIMER_EVENT, source = "target_timer", condition = "", action = "action_EVENT_TIMER_EVENT_67026", trigger_count = 0 },
	{ config_id = 1067027, name = "MONSTER_TIDE_DIE_67027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_67027", action = "action_EVENT_MONSTER_TIDE_DIE_67027", trigger_count = 0 },
	{ config_id = 1067033, name = "VARIABLE_CHANGE_67033", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_67033", action = "action_EVENT_VARIABLE_CHANGE_67033", trigger_count = 0 },
	{ config_id = 1067034, name = "TIMER_EVENT_67034", event = EventType.EVENT_TIMER_EVENT, source = "monster_timer2", condition = "", action = "action_EVENT_TIMER_EVENT_67034", trigger_count = 0 },
	{ config_id = 1067035, name = "TIMER_EVENT_67035", event = EventType.EVENT_TIMER_EVENT, source = "target_timer2", condition = "", action = "action_EVENT_TIMER_EVENT_67035", trigger_count = 0 },
	{ config_id = 1067036, name = "MONSTER_TIDE_DIE_67036", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_67036", action = "action_EVENT_MONSTER_TIDE_DIE_67036", trigger_count = 0 },
	{ config_id = 1067040, name = "VARIABLE_CHANGE_67040", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_67040", action = "action_EVENT_VARIABLE_CHANGE_67040", trigger_count = 0 },
	{ config_id = 1067041, name = "TIMER_EVENT_67041", event = EventType.EVENT_TIMER_EVENT, source = "monster_timer3", condition = "", action = "action_EVENT_TIMER_EVENT_67041", trigger_count = 0 },
	{ config_id = 1067042, name = "TIMER_EVENT_67042", event = EventType.EVENT_TIMER_EVENT, source = "target_timer3", condition = "", action = "action_EVENT_TIMER_EVENT_67042", trigger_count = 0 },
	{ config_id = 1067043, name = "MONSTER_TIDE_DIE_67043", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_67043", action = "action_EVENT_MONSTER_TIDE_DIE_67043", trigger_count = 0 },
	{ config_id = 1067068, name = "ENTER_REGION_67068", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_67068", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster_tide", value = 0, no_refresh = false },
	{ config_id = 2, name = "time_out", value = 0, no_refresh = false },
	{ config_id = 3, name = "monster_tide2", value = 0, no_refresh = false },
	{ config_id = 4, name = "monster_tide3", value = 0, no_refresh = false }
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
		gadgets = { 67013 },
		regions = { 67068 },
		triggers = { "GALLERY_START_67014", "ENTER_REGION_67068" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 67028 },
		regions = { },
		triggers = { "GADGET_CREATE_67016", "VARIABLE_CHANGE_67024", "TIMER_EVENT_67025", "TIMER_EVENT_67026", "MONSTER_TIDE_DIE_67027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_67033", "TIMER_EVENT_67034", "TIMER_EVENT_67035", "MONSTER_TIDE_DIE_67036" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_67040", "TIMER_EVENT_67041", "TIMER_EVENT_67042", "MONSTER_TIDE_DIE_67043" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 67029, 67031, 67038, 67039 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 67030, 67032, 67037, 67062, 67063, 67064, 67065, 67066, 67067 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 67001, 67002, 67003, 67004, 67005, 67006, 67007, 67008, 67009, 67010, 67011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 67012, 67017, 67018, 67019, 67020, 67021, 67022, 67023, 67044, 67045, 67046, 67047 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 67015, 67048, 67049, 67050, 67051, 67052, 67053, 67054, 67055, 67056, 67057, 67058, 67061 },
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
function action_EVENT_GALLERY_START_67014(context, evt)
	-- 将configid为 67013 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 67013, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002067, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_67016(context, evt)
	if 67028 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_67016(context, evt)
	-- 将本组内变量名为 "monster_tide" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_tide", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_67024(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"monster_tide"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_tide") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_67024(context, evt)
	-- 判断是否需要创建靶标空档期
	if 1 ~= time_out then
		DeduplicationRandom( context, configIDList, randomNum )
		ScriptLib.CreateGroupTimerEvent(context, 144002067, "monster_timer", 8)
	else
		ScriptLib.CreateGroupTimerEvent(context, 144002067, "monster_timer", 1)
		-- 将本组内变量名为 "time_out" 的变量设置为 0
		if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 0) then
			ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
		end
	end
	
	-- 将本组内变量名为 "monster_tide" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_tide", 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_67025(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为11，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 144002067, {67001,67002,67003,67004,67005,67006,67007,67008,67009,67010,67011}, 11, 5, 5) then
		return -1
	end
	
	-- 延迟70秒后,向groupId为：144002067的对象,请求一次调用,并将string参数："target_timer" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144002067, "target_timer", 70) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_67026(context, evt)
	-- 将本组内变量名为 "time_out" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
		
	DeduplicationRandom( context, configIDList2, randomNum )
		
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_67027(context, evt)
	if 11 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_67027(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 144002067, "target_timer") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002067, 3)
	
	-- 将本组内变量名为 "monster_tide2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_tide2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_67033(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"monster_tide2"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_tide2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_67033(context, evt)
	-- 判断是否需要创建靶标空档期
	if 1 ~= time_out then
		DeduplicationRandom( context, configIDList2, randomNum )
		ScriptLib.CreateGroupTimerEvent(context, 144002067, "monster_timer2", 5)
	else
		ScriptLib.CreateGroupTimerEvent(context, 144002067, "monster_timer2", 1)
		-- 将本组内变量名为 "time_out" 的变量设置为 0
		if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 0) then
			ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
		end
	end
	
	-- 将本组内变量名为 "monster_tide2" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_tide2", 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_67034(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为12，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 144002067, {67012,67017,67018,67019,67020,67021,67022,67023,67044,67045,67046,67047}, 12, 5, 5) then
		return -1
	end
	
	-- 延迟70秒后,向groupId为：144002067的对象,请求一次调用,并将string参数："target_timer2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144002067, "target_timer2", 70) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_67035(context, evt)
	-- 将本组内变量名为 "time_out" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
		
	DeduplicationRandom( context, configIDList3, randomNum )
		
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_67036(context, evt)
	if 12 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_67036(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 144002067, "target_timer2") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002067, 4)
	
	-- 将本组内变量名为 "monster_tide3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_tide3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_67040(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"monster_tide3"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_tide3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_67040(context, evt)
	-- 判断是否需要创建靶标空档期
	if 1 ~= time_out then
		DeduplicationRandom( context, configIDList3, randomNum )
		ScriptLib.CreateGroupTimerEvent(context, 144002067, "monster_timer3", 5)
	else
		ScriptLib.CreateGroupTimerEvent(context, 144002067, "monster_timer3", 1)
		-- 将本组内变量名为 "time_out" 的变量设置为 0
		if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 0) then
			ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
		end
	end
	
	-- 将本组内变量名为 "monster_tide3" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_tide3", 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_67041(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为11，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 144002067, {67048,67049,67050,67051,67052,67053,67054,67055,67056,67057,67058,67015,67061}, 11, 5, 5) then
		return -1
	end
	
	-- 延迟70秒后,向groupId为：144002067的对象,请求一次调用,并将string参数："target_timer3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144002067, "target_timer3", 70) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_67042(context, evt)
	-- 将本组内变量名为 "time_out" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
		
	DeduplicationRandom( context, configIDList3, randomNum )
		
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_67043(context, evt)
	if 11 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_67043(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 144002067, "target_timer3") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "monster_tide3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_tide3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_67068(context, evt)
	-- 显示id为142的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,142,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
		return -1
	end
	
	return 0
end

require "V1_6/ScoreChallenge"
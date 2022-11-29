-- 基础信息
local base_info = {
	group_id = 144001064
}

-- DEFS_MISCS
local ProgressTable = {0,100,200,300,500}
local GalleryID = 8002
local SubScoreTimeAxis = {1}
local GadgetTargetScore = 110
local PerSecondSubScore = {-1,-2,-3,-5}
local MonsterTargetScore = {
        {monsterID = 26010201, score = 50},
        {monsterID = 22010101, score = 50},
        {monsterID = 21020201, score = 50},
}
local RandomTimeAxis = {
        {20,40,60,80,100,120,140,160,180,200,220,240,260},
        {18,38,58,78,98,118,138,158,178,198,218,238,258},
        {22,42,62,82,102,122,142,162,182,202,222,242,262},
}
local RandomTargetConfigID = {64002,64003,64004,64027,64049}

local configIDList = {64005,64019}
local configIDList2 = {64006,64073}
local configIDList3 = {64007,64074}
local randomNum = 2

local smallRegion = 64042
local bigRegion = 64058

local GroupID = 144001064

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[64008] = { config_id = 64008, monster_id = 20011201, pos = { x = 265.025, y = 120.476, z = 399.187 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64010] = { config_id = 64010, monster_id = 20011201, pos = { x = 261.856, y = 120.476, z = 402.091 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64011] = { config_id = 64011, monster_id = 20011301, pos = { x = 277.950, y = 120.476, z = 401.711 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64028] = { config_id = 64028, monster_id = 21010201, pos = { x = 264.683, y = 120.482, z = 399.352 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64029] = { config_id = 64029, monster_id = 20011201, pos = { x = 274.415, y = 120.476, z = 398.598 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64030] = { config_id = 64030, monster_id = 20011201, pos = { x = 261.469, y = 120.476, z = 409.265 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64031] = { config_id = 64031, monster_id = 20011201, pos = { x = 265.829, y = 120.476, z = 413.104 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64032] = { config_id = 64032, monster_id = 20011201, pos = { x = 278.067, y = 120.460, z = 404.228 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64033] = { config_id = 64033, monster_id = 20011301, pos = { x = 277.708, y = 120.457, z = 407.212 }, rot = { x = 0.000, y = 275.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64034] = { config_id = 64034, monster_id = 20011201, pos = { x = 275.750, y = 120.447, z = 410.099 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64035] = { config_id = 64035, monster_id = 20011201, pos = { x = 272.576, y = 120.447, z = 412.471 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64036] = { config_id = 64036, monster_id = 20011201, pos = { x = 269.428, y = 120.475, z = 413.603 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64037] = { config_id = 64037, monster_id = 26010201, pos = { x = 279.255, y = 120.476, z = 401.082 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 6, drop_id = 1000100, affix = { 1033, 4118 }, area_id = 102 },
	[64038] = { config_id = 64038, monster_id = 20011201, pos = { x = 268.496, y = 120.476, z = 397.478 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64039] = { config_id = 64039, monster_id = 20011201, pos = { x = 260.557, y = 120.476, z = 406.169 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64040] = { config_id = 64040, monster_id = 20011201, pos = { x = 271.699, y = 120.476, z = 397.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64041] = { config_id = 64041, monster_id = 20011301, pos = { x = 262.926, y = 120.476, z = 411.591 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64043] = { config_id = 64043, monster_id = 20011201, pos = { x = 261.514, y = 120.482, z = 402.256 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64044] = { config_id = 64044, monster_id = 21010201, pos = { x = 277.608, y = 120.482, z = 401.875 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64045] = { config_id = 64045, monster_id = 20011201, pos = { x = 274.073, y = 120.482, z = 398.763 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64046] = { config_id = 64046, monster_id = 21010601, pos = { x = 261.127, y = 120.482, z = 409.430 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64047] = { config_id = 64047, monster_id = 20011201, pos = { x = 265.487, y = 120.482, z = 413.269 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64048] = { config_id = 64048, monster_id = 20011201, pos = { x = 277.725, y = 120.465, z = 404.392 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64050] = { config_id = 64050, monster_id = 21010201, pos = { x = 277.366, y = 120.463, z = 407.376 }, rot = { x = 0.000, y = 275.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64051] = { config_id = 64051, monster_id = 21010601, pos = { x = 275.408, y = 120.453, z = 410.264 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64052] = { config_id = 64052, monster_id = 20011201, pos = { x = 272.233, y = 120.453, z = 412.635 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64053] = { config_id = 64053, monster_id = 20011201, pos = { x = 269.085, y = 120.481, z = 413.768 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64054] = { config_id = 64054, monster_id = 21020201, pos = { x = 276.007, y = 120.482, z = 400.136 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 6, drop_id = 1000100, affix = { 4118, 1033 }, area_id = 102 },
	[64055] = { config_id = 64055, monster_id = 20011201, pos = { x = 268.154, y = 120.482, z = 397.643 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64056] = { config_id = 64056, monster_id = 20011201, pos = { x = 260.215, y = 120.482, z = 406.333 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64057] = { config_id = 64057, monster_id = 21010601, pos = { x = 271.357, y = 120.482, z = 397.555 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64059] = { config_id = 64059, monster_id = 20011201, pos = { x = 262.246, y = 120.482, z = 401.857 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64060] = { config_id = 64060, monster_id = 20011301, pos = { x = 278.340, y = 120.482, z = 401.476 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64061] = { config_id = 64061, monster_id = 20011201, pos = { x = 274.805, y = 120.482, z = 398.364 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64062] = { config_id = 64062, monster_id = 21010501, pos = { x = 261.859, y = 120.482, z = 409.030 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64063] = { config_id = 64063, monster_id = 21010201, pos = { x = 266.218, y = 120.482, z = 412.870 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64064] = { config_id = 64064, monster_id = 20011201, pos = { x = 278.457, y = 120.466, z = 403.993 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64065] = { config_id = 64065, monster_id = 20011301, pos = { x = 278.098, y = 120.464, z = 406.977 }, rot = { x = 0.000, y = 275.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64066] = { config_id = 64066, monster_id = 21010501, pos = { x = 276.140, y = 120.454, z = 409.864 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64067] = { config_id = 64067, monster_id = 20011201, pos = { x = 272.965, y = 120.454, z = 412.236 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64068] = { config_id = 64068, monster_id = 21010201, pos = { x = 269.817, y = 120.481, z = 413.368 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64069] = { config_id = 64069, monster_id = 22010101, pos = { x = 276.739, y = 120.482, z = 399.737 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 6, drop_id = 1000100, affix = { 4118, 1033 }, area_id = 102 },
	[64070] = { config_id = 64070, monster_id = 20011201, pos = { x = 268.886, y = 120.482, z = 397.244 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64071] = { config_id = 64071, monster_id = 21010201, pos = { x = 260.947, y = 120.482, z = 405.934 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[64072] = { config_id = 64072, monster_id = 21010501, pos = { x = 272.089, y = 120.482, z = 397.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[64001] = { config_id = 64001, gadget_id = 70360272, pos = { x = 268.842, y = 120.476, z = 405.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	[64002] = { config_id = 64002, gadget_id = 70350253, pos = { x = 260.000, y = 123.000, z = 403.000 }, rot = { x = 0.000, y = 65.000, z = 0.000 }, level = 1, route_id = 400100091, area_id = 102 },
	[64003] = { config_id = 64003, gadget_id = 70350253, pos = { x = 275.177, y = 122.157, z = 415.903 }, rot = { x = 0.000, y = 220.000, z = 0.000 }, level = 1, route_id = 400100094, area_id = 102 },
	[64004] = { config_id = 64004, gadget_id = 70350253, pos = { x = 273.185, y = 122.532, z = 393.735 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 1, route_id = 400100095, area_id = 102 },
	[64005] = { config_id = 64005, gadget_id = 70350253, pos = { x = 281.631, y = 122.457, z = 399.876 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, route_id = 400100096, area_id = 102 },
	[64006] = { config_id = 64006, gadget_id = 70350253, pos = { x = 265.700, y = 122.491, z = 394.683 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1, route_id = 400100097, area_id = 102 },
	[64007] = { config_id = 64007, gadget_id = 70350253, pos = { x = 263.931, y = 122.499, z = 416.072 }, rot = { x = 0.000, y = 170.000, z = 0.000 }, level = 1, route_id = 400100098, area_id = 102 },
	[64017] = { config_id = 64017, gadget_id = 70950009, pos = { x = 269.091, y = 119.470, z = 404.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[64019] = { config_id = 64019, gadget_id = 70350253, pos = { x = 278.402, y = 126.235, z = 396.646 }, rot = { x = 0.000, y = 315.000, z = 0.000 }, level = 1, route_id = 400100115, area_id = 102 },
	[64027] = { config_id = 64027, gadget_id = 70350253, pos = { x = 259.214, y = 123.359, z = 411.341 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, route_id = 400100099, area_id = 102 },
	[64049] = { config_id = 64049, gadget_id = 70350253, pos = { x = 281.719, y = 123.359, z = 406.400 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, route_id = 400100100, area_id = 102 },
	[64073] = { config_id = 64073, gadget_id = 70350253, pos = { x = 261.994, y = 126.158, z = 397.278 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1, route_id = 400100116, area_id = 102 },
	[64074] = { config_id = 64074, gadget_id = 70350253, pos = { x = 268.609, y = 126.205, z = 416.897 }, rot = { x = 0.000, y = 170.000, z = 0.000 }, level = 1, route_id = 400100117, area_id = 102 }
}

-- 区域
regions = {
	[64042] = { config_id = 64042, shape = RegionShape.SPHERE, radius = 25, pos = { x = 268.842, y = 120.476, z = 405.306 }, area_id = 102 },
	[64058] = { config_id = 64058, shape = RegionShape.SPHERE, radius = 30, pos = { x = 268.842, y = 120.476, z = 405.306 }, area_id = 102 },
	[64075] = { config_id = 64075, shape = RegionShape.SPHERE, radius = 20, pos = { x = 269.620, y = 120.476, z = 404.651 }, area_id = 102 }
}

-- 触发器
triggers = {
	{ config_id = 1064009, name = "GALLERY_START_64009", event = EventType.EVENT_GALLERY_START, source = "", condition = "", action = "action_EVENT_GALLERY_START_64009", trigger_count = 0 },
	{ config_id = 1064012, name = "GADGET_CREATE_64012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_64012", action = "action_EVENT_GADGET_CREATE_64012", trigger_count = 0 },
	{ config_id = 1064013, name = "VARIABLE_CHANGE_64013", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_64013", action = "action_EVENT_VARIABLE_CHANGE_64013", trigger_count = 0 },
	{ config_id = 1064014, name = "TIMER_EVENT_64014", event = EventType.EVENT_TIMER_EVENT, source = "monster_timer1", condition = "", action = "action_EVENT_TIMER_EVENT_64014", trigger_count = 0 },
	{ config_id = 1064015, name = "TIMER_EVENT_64015", event = EventType.EVENT_TIMER_EVENT, source = "target_timer1", condition = "", action = "action_EVENT_TIMER_EVENT_64015", trigger_count = 0 },
	{ config_id = 1064016, name = "MONSTER_TIDE_DIE_64016", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_64016", action = "action_EVENT_MONSTER_TIDE_DIE_64016", trigger_count = 0 },
	{ config_id = 1064018, name = "VARIABLE_CHANGE_64018", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_64018", action = "action_EVENT_VARIABLE_CHANGE_64018", trigger_count = 0 },
	{ config_id = 1064020, name = "TIMER_EVENT_64020", event = EventType.EVENT_TIMER_EVENT, source = "monster_timer2", condition = "", action = "action_EVENT_TIMER_EVENT_64020", trigger_count = 0 },
	{ config_id = 1064021, name = "TIMER_EVENT_64021", event = EventType.EVENT_TIMER_EVENT, source = "target_timer2", condition = "", action = "action_EVENT_TIMER_EVENT_64021", trigger_count = 0 },
	{ config_id = 1064022, name = "MONSTER_TIDE_DIE_64022", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_64022", action = "action_EVENT_MONSTER_TIDE_DIE_64022", trigger_count = 0 },
	{ config_id = 1064023, name = "VARIABLE_CHANGE_64023", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_64023", action = "action_EVENT_VARIABLE_CHANGE_64023", trigger_count = 0 },
	{ config_id = 1064024, name = "TIMER_EVENT_64024", event = EventType.EVENT_TIMER_EVENT, source = "monster_timer3", condition = "", action = "action_EVENT_TIMER_EVENT_64024", trigger_count = 0 },
	{ config_id = 1064025, name = "TIMER_EVENT_64025", event = EventType.EVENT_TIMER_EVENT, source = "target_timer3", condition = "", action = "action_EVENT_TIMER_EVENT_64025", trigger_count = 0 },
	{ config_id = 1064026, name = "MONSTER_TIDE_DIE_64026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_64026", action = "action_EVENT_MONSTER_TIDE_DIE_64026", trigger_count = 0 },
	{ config_id = 1064075, name = "ENTER_REGION_64075", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_64075", trigger_count = 0 }
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
		gadgets = { 64001 },
		regions = { 64075 },
		triggers = { "GALLERY_START_64009", "ENTER_REGION_64075" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 64017 },
		regions = { },
		triggers = { "GADGET_CREATE_64012", "VARIABLE_CHANGE_64013", "TIMER_EVENT_64014", "TIMER_EVENT_64015", "MONSTER_TIDE_DIE_64016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 64002, 64003, 64004, 64027, 64049 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 64005, 64006, 64007, 64019, 64073, 64074 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_64018", "TIMER_EVENT_64020", "TIMER_EVENT_64021", "MONSTER_TIDE_DIE_64022" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_64023", "TIMER_EVENT_64024", "TIMER_EVENT_64025", "MONSTER_TIDE_DIE_64026" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 64008, 64010, 64011, 64029, 64030, 64031, 64032, 64033, 64034, 64035, 64036, 64037, 64038, 64039, 64040, 64041 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 64028, 64043, 64044, 64045, 64046, 64047, 64048, 64050, 64051, 64052, 64053, 64054, 64055, 64056, 64057 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 64059, 64060, 64061, 64062, 64063, 64064, 64065, 64066, 64067, 64068, 64069, 64070, 64071, 64072 },
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
function action_EVENT_GALLERY_START_64009(context, evt)
	-- 将configid为 64001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 64001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001064, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_64012(context, evt)
	if 64017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_64012(context, evt)
	-- 将本组内变量名为 "wave_1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave_1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_64013(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave_1"为1
	if ScriptLib.GetGroupVariableValue(context, "wave_1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_64013(context, evt)
	if 1 ~= time_out then
		DeduplicationRandom( context, configIDList, randomNum )
		ScriptLib.CreateGroupTimerEvent(context, 144001064, "monster_timer1", 8)
	else
		ScriptLib.CreateGroupTimerEvent(context, 144001064, "monster_timer1", 1)
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
function action_EVENT_TIMER_EVENT_64014(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为16，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 144001064, {64008,64010,64011,64029,64030,64031,64032,64033,64034,64035,64036,64037,64038,64039,64040,64041}, 16, 5, 5) then
		return -1
	end
	
	-- 延迟70秒后,向groupId为：144001064的对象,请求一次调用,并将string参数："target_timer1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001064, "target_timer1", 70) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_64015(context, evt)
	-- 将本组内变量名为 "time_out" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
		
	DeduplicationRandom( context, configIDList2, randomNum )
		
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_64016(context, evt)
	if 16 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_64016(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 144001064, "target_timer1") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001064, 5)
	
	-- 将本组内变量名为 "wave_2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave_2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_64018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave_2"为1
	if ScriptLib.GetGroupVariableValue(context, "wave_2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_64018(context, evt)
	if 1 ~= time_out then
		DeduplicationRandom( context, configIDList2, randomNum )
		ScriptLib.CreateGroupTimerEvent(context, 144001064, "monster_timer2", 5)
	else
		ScriptLib.CreateGroupTimerEvent(context, 144001064, "monster_timer2", 1)
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
function action_EVENT_TIMER_EVENT_64020(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为15，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 144001064, {64028,64043,64044,64045,64046,64047,64048,64050,64051,64052,64053,64054,64055,64056,64057}, 15, 5, 5) then
		return -1
	end
	
	-- 延迟70秒后,向groupId为：144001064的对象,请求一次调用,并将string参数："target_timer2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001064, "target_timer2", 70) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_64021(context, evt)
	-- 将本组内变量名为 "time_out" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
		
	DeduplicationRandom( context, configIDList3, randomNum )
		
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_64022(context, evt)
	if 15 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_64022(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 144001064, "target_timer2") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001064, 6)
	
	-- 将本组内变量名为 "wave_3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave_3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_64023(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave_3"为1
	if ScriptLib.GetGroupVariableValue(context, "wave_3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_64023(context, evt)
	if 1 ~= time_out then
		DeduplicationRandom( context, configIDList3, randomNum )
		ScriptLib.CreateGroupTimerEvent(context, 144001064, "monster_timer3", 5)
	else
		ScriptLib.CreateGroupTimerEvent(context, 144001064, "monster_timer3", 1)
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
function action_EVENT_TIMER_EVENT_64024(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为14，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 144001064, {64059,64060,64061,64062,64063,64064,64065,64066,64067,64068,64069,64070,64071,64072}, 14, 5, 5) then
		return -1
	end
	
	-- 延迟70秒后,向groupId为：144001064的对象,请求一次调用,并将string参数："target_timer3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001064, "target_timer3", 70) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_64025(context, evt)
	-- 将本组内变量名为 "time_out" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
		
	DeduplicationRandom( context, configIDList3, randomNum )
		
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_64026(context, evt)
	if 14 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_64026(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 144001064, "target_timer3") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "wave_3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave_3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_64075(context, evt)
	-- 显示id为142的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,142,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
		return -1
	end
	
	return 0
end

require "V1_6/ScoreChallenge"
-- 基础信息
local base_info = {
	group_id = 144001107
}

-- Trigger变量
local defs = {
	wave_1 = 0,
	wave_2 = 0,
	wave_3 = 0,
	time_out = 0
}

-- DEFS_MISCS
local ProgressTable = {0,100,200,300,500}
local GalleryID = 8004
local SubScoreTimeAxis = {1}
local GadgetTargetScore = 110
local PerSecondSubScore = {-1,-2,-3,-5}
local MonsterTargetScore = {
        {monsterID = 20010701, score = 50},
        {monsterID = 22010301, score = 50},
        {monsterID = 25070101, score = 50},
}
local RandomTimeAxis = {
        {20,40,60,80,100,120,140,160,180,200,220,240,260},
        {18,38,58,78,98,118,138,158,178,198,218,238,258},
        {22,42,62,82,102,122,142,162,182,202,222,242,262},
}
local RandomTargetConfigID = {107024,107034,107035,107036}
local configIDList = {107023,107025,107026,107027}
local randomNum = 2

local smallRegion = 107068
local bigRegion = 107069

local GroupID = 144001107

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[107003] = { config_id = 107003, monster_id = 20010501, pos = { x = 140.479, y = 120.007, z = 332.894 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107004] = { config_id = 107004, monster_id = 20010601, pos = { x = 146.727, y = 120.102, z = 331.300 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107005] = { config_id = 107005, monster_id = 20010501, pos = { x = 134.053, y = 120.204, z = 319.353 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107006] = { config_id = 107006, monster_id = 20010501, pos = { x = 138.898, y = 120.290, z = 316.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107007] = { config_id = 107007, monster_id = 20010501, pos = { x = 149.649, y = 120.315, z = 326.229 }, rot = { x = 0.000, y = 255.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107008] = { config_id = 107008, monster_id = 20010501, pos = { x = 147.505, y = 120.365, z = 319.230 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107009] = { config_id = 107009, monster_id = 20010601, pos = { x = 137.140, y = 120.040, z = 331.619 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107010] = { config_id = 107010, monster_id = 20010501, pos = { x = 132.755, y = 120.133, z = 321.899 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107011] = { config_id = 107011, monster_id = 20010501, pos = { x = 134.039, y = 120.050, z = 329.267 }, rot = { x = 0.000, y = 115.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107012] = { config_id = 107012, monster_id = 20010601, pos = { x = 148.873, y = 120.180, z = 329.164 }, rot = { x = 0.000, y = 245.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107013] = { config_id = 107013, monster_id = 20010501, pos = { x = 143.921, y = 120.053, z = 332.600 }, rot = { x = 0.000, y = 185.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107014] = { config_id = 107014, monster_id = 20010501, pos = { x = 144.099, y = 120.373, z = 316.513 }, rot = { x = 0.000, y = 325.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107015] = { config_id = 107015, monster_id = 20010701, pos = { x = 132.954, y = 120.070, z = 326.001 }, rot = { x = 0.000, y = 95.000, z = 0.000 }, level = 6, drop_id = 1000100, affix = { 4118, 1033 }, area_id = 102 },
	[107042] = { config_id = 107042, monster_id = 21010201, pos = { x = 140.814, y = 120.020, z = 333.040 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107043] = { config_id = 107043, monster_id = 21011001, pos = { x = 147.062, y = 120.115, z = 331.446 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107044] = { config_id = 107044, monster_id = 21010901, pos = { x = 134.389, y = 120.216, z = 319.499 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107045] = { config_id = 107045, monster_id = 21010201, pos = { x = 139.233, y = 120.303, z = 316.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107046] = { config_id = 107046, monster_id = 21010201, pos = { x = 149.984, y = 120.328, z = 326.375 }, rot = { x = 0.000, y = 255.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107047] = { config_id = 107047, monster_id = 21010201, pos = { x = 147.840, y = 120.377, z = 319.376 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107048] = { config_id = 107048, monster_id = 21020201, pos = { x = 137.475, y = 120.052, z = 331.765 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107049] = { config_id = 107049, monster_id = 21010201, pos = { x = 133.090, y = 120.145, z = 322.045 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107050] = { config_id = 107050, monster_id = 21010201, pos = { x = 134.375, y = 120.063, z = 329.413 }, rot = { x = 0.000, y = 115.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107051] = { config_id = 107051, monster_id = 21030101, pos = { x = 149.209, y = 120.192, z = 329.310 }, rot = { x = 0.000, y = 245.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107052] = { config_id = 107052, monster_id = 21010201, pos = { x = 144.256, y = 120.065, z = 332.746 }, rot = { x = 0.000, y = 185.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107053] = { config_id = 107053, monster_id = 21010201, pos = { x = 144.434, y = 120.385, z = 316.659 }, rot = { x = 0.000, y = 325.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107054] = { config_id = 107054, monster_id = 22010301, pos = { x = 133.289, y = 120.083, z = 326.147 }, rot = { x = 0.000, y = 95.000, z = 0.000 }, level = 6, drop_id = 1000100, affix = { 4118, 1033 }, area_id = 102 },
	[107055] = { config_id = 107055, monster_id = 25010201, pos = { x = 140.997, y = 120.025, z = 332.655 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107056] = { config_id = 107056, monster_id = 25010701, pos = { x = 147.245, y = 120.119, z = 331.061 }, rot = { x = 0.000, y = 225.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107057] = { config_id = 107057, monster_id = 25010201, pos = { x = 134.572, y = 120.221, z = 319.114 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107058] = { config_id = 107058, monster_id = 25010201, pos = { x = 139.417, y = 120.307, z = 316.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107059] = { config_id = 107059, monster_id = 25010201, pos = { x = 150.167, y = 120.332, z = 325.990 }, rot = { x = 0.000, y = 255.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107060] = { config_id = 107060, monster_id = 25010201, pos = { x = 148.023, y = 120.382, z = 318.992 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107061] = { config_id = 107061, monster_id = 25010201, pos = { x = 137.659, y = 120.057, z = 331.380 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107062] = { config_id = 107062, monster_id = 25010201, pos = { x = 133.273, y = 120.150, z = 321.660 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107063] = { config_id = 107063, monster_id = 25060101, pos = { x = 134.558, y = 120.067, z = 329.029 }, rot = { x = 0.000, y = 115.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107064] = { config_id = 107064, monster_id = 25010201, pos = { x = 149.392, y = 120.197, z = 328.925 }, rot = { x = 0.000, y = 245.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107065] = { config_id = 107065, monster_id = 25010201, pos = { x = 144.439, y = 120.070, z = 332.361 }, rot = { x = 0.000, y = 185.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107066] = { config_id = 107066, monster_id = 25010201, pos = { x = 144.617, y = 120.390, z = 316.274 }, rot = { x = 0.000, y = 325.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 102 },
	[107067] = { config_id = 107067, monster_id = 25070101, pos = { x = 133.472, y = 120.087, z = 325.762 }, rot = { x = 0.000, y = 95.000, z = 0.000 }, level = 6, drop_id = 1000100, affix = { 4118, 1033 }, area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[107001] = { config_id = 107001, gadget_id = 70360272, pos = { x = 141.339, y = 120.177, z = 324.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	[107023] = { config_id = 107023, gadget_id = 70350253, pos = { x = 143.315, y = 121.848, z = 336.489 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, route_id = 400100111, start_route = false, area_id = 102 },
	[107024] = { config_id = 107024, gadget_id = 70350253, pos = { x = 131.926, y = 122.271, z = 317.606 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, route_id = 400100107, start_route = false, area_id = 102 },
	[107025] = { config_id = 107025, gadget_id = 70350253, pos = { x = 152.159, y = 122.604, z = 325.148 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, route_id = 400100112, start_route = false, area_id = 102 },
	[107026] = { config_id = 107026, gadget_id = 70350253, pos = { x = 140.630, y = 122.538, z = 313.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 400100113, start_route = false, area_id = 102 },
	[107027] = { config_id = 107027, gadget_id = 70350253, pos = { x = 130.090, y = 122.037, z = 327.360 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, level = 1, route_id = 400100114, start_route = false, area_id = 102 },
	[107029] = { config_id = 107029, gadget_id = 70950009, pos = { x = 145.530, y = 119.000, z = 324.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	[107034] = { config_id = 107034, gadget_id = 70350253, pos = { x = 150.578, y = 122.220, z = 332.373 }, rot = { x = 0.000, y = 230.000, z = 0.000 }, level = 1, route_id = 400100108, start_route = false, area_id = 102 },
	[107035] = { config_id = 107035, gadget_id = 70350253, pos = { x = 134.184, y = 122.019, z = 334.004 }, rot = { x = 0.000, y = 145.000, z = 0.000 }, level = 1, route_id = 400100109, start_route = false, area_id = 102 },
	[107036] = { config_id = 107036, gadget_id = 70350253, pos = { x = 150.063, y = 122.587, z = 319.227 }, rot = { x = 0.000, y = 115.000, z = 0.000 }, level = 1, route_id = 400100110, start_route = false, area_id = 102 }
}

-- 区域
regions = {
	[107016] = { config_id = 107016, shape = RegionShape.SPHERE, radius = 20, pos = { x = 141.575, y = 120.188, z = 324.464 }, area_id = 102 },
	[107068] = { config_id = 107068, shape = RegionShape.SPHERE, radius = 25, pos = { x = 142.011, y = 120.195, z = 324.526 }, area_id = 102 },
	[107069] = { config_id = 107069, shape = RegionShape.SPHERE, radius = 30, pos = { x = 142.011, y = 120.195, z = 324.526 }, area_id = 102 }
}

-- 触发器
triggers = {
	{ config_id = 1107002, name = "GADGET_CREATE_107002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_107002", action = "action_EVENT_GADGET_CREATE_107002", trigger_count = 0 },
	{ config_id = 1107016, name = "ENTER_REGION_107016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_107016", trigger_count = 0 },
	{ config_id = 1107019, name = "GALLERY_START_107019", event = EventType.EVENT_GALLERY_START, source = "", condition = "", action = "action_EVENT_GALLERY_START_107019", trigger_count = 0 },
	{ config_id = 1107020, name = "VARIABLE_CHANGE_107020", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_107020", action = "action_EVENT_VARIABLE_CHANGE_107020", trigger_count = 0 },
	{ config_id = 1107021, name = "TIMER_EVENT_107021", event = EventType.EVENT_TIMER_EVENT, source = "monster_timer1", condition = "", action = "action_EVENT_TIMER_EVENT_107021", trigger_count = 0 },
	{ config_id = 1107022, name = "TIMER_EVENT_107022", event = EventType.EVENT_TIMER_EVENT, source = "target_timer1", condition = "", action = "action_EVENT_TIMER_EVENT_107022", trigger_count = 0 },
	{ config_id = 1107030, name = "MONSTER_TIDE_DIE_107030", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_107030", action = "action_EVENT_MONSTER_TIDE_DIE_107030", trigger_count = 0 },
	{ config_id = 1107031, name = "VARIABLE_CHANGE_107031", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_107031", action = "action_EVENT_VARIABLE_CHANGE_107031", trigger_count = 0 },
	{ config_id = 1107032, name = "TIMER_EVENT_107032", event = EventType.EVENT_TIMER_EVENT, source = "monster_timer2", condition = "", action = "action_EVENT_TIMER_EVENT_107032", trigger_count = 0 },
	{ config_id = 1107033, name = "TIMER_EVENT_107033", event = EventType.EVENT_TIMER_EVENT, source = "target_timer2", condition = "", action = "action_EVENT_TIMER_EVENT_107033", trigger_count = 0 },
	{ config_id = 1107037, name = "MONSTER_TIDE_DIE_107037", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_107037", action = "action_EVENT_MONSTER_TIDE_DIE_107037", trigger_count = 0 },
	{ config_id = 1107038, name = "VARIABLE_CHANGE_107038", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_107038", action = "action_EVENT_VARIABLE_CHANGE_107038", trigger_count = 0 },
	{ config_id = 1107039, name = "TIMER_EVENT_107039", event = EventType.EVENT_TIMER_EVENT, source = "monster_timer3", condition = "", action = "action_EVENT_TIMER_EVENT_107039", trigger_count = 0 },
	{ config_id = 1107040, name = "TIMER_EVENT_107040", event = EventType.EVENT_TIMER_EVENT, source = "target_timer3", condition = "", action = "action_EVENT_TIMER_EVENT_107040", trigger_count = 0 },
	{ config_id = 1107041, name = "MONSTER_TIDE_DIE_107041", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_107041", action = "action_EVENT_MONSTER_TIDE_DIE_107041", trigger_count = 0 }
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
		gadgets = { 107001 },
		regions = { 107016 },
		triggers = { "ENTER_REGION_107016", "GALLERY_START_107019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 107029 },
		regions = { },
		triggers = { "GADGET_CREATE_107002", "VARIABLE_CHANGE_107020", "TIMER_EVENT_107021", "TIMER_EVENT_107022", "MONSTER_TIDE_DIE_107030" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_107031", "TIMER_EVENT_107032", "TIMER_EVENT_107033", "MONSTER_TIDE_DIE_107037" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_107038", "TIMER_EVENT_107039", "TIMER_EVENT_107040", "MONSTER_TIDE_DIE_107041" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 107024, 107034, 107035, 107036 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 107023, 107025, 107026, 107027 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 107003, 107004, 107005, 107006, 107007, 107008, 107009, 107010, 107011, 107012, 107013, 107014, 107015 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 107042, 107043, 107044, 107045, 107046, 107047, 107048, 107049, 107050, 107051, 107052, 107053, 107054 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 107055, 107056, 107057, 107058, 107059, 107060, 107061, 107062, 107063, 107064, 107065, 107066, 107067 },
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
function condition_EVENT_GADGET_CREATE_107002(context, evt)
	if 107001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_107002(context, evt)
	-- 将本组内变量名为 "wave_1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave_1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ENTER_REGION_107016(context, evt)
	-- 显示id为142的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,142,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GALLERY_START_107019(context, evt)
	-- 将configid为 107001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 107001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001107, 2)
	
	-- 将本组内变量名为 "wave_1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave_1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_107020(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave_1"为1
	if ScriptLib.GetGroupVariableValue(context, "wave_1") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_107020(context, evt)
	-- 判断是否需要创建靶标空档期
	if 1 ~= time_out then
		DeduplicationRandom( context, configIDList, randomNum )
		ScriptLib.CreateGroupTimerEvent(context, 144001107, "monster_timer1", 8)
	else
		ScriptLib.CreateGroupTimerEvent(context, 144001107, "monster_timer1", 1)
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
function action_EVENT_TIMER_EVENT_107021(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为13，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 144001107, {107003,107004,107005,107006,107007,107008,107009,107010,107011,107012,107013,107014,107015}, 13, 5, 5) then
		return -1
	end
	
	-- 延迟70秒后,向groupId为：144001107的对象,请求一次调用,并将string参数："target_timer1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001107, "target_timer1", 70) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_107022(context, evt)
	-- 将本组内变量名为 "time_out" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	DeduplicationRandom( context, configIDList, randomNum )
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_107030(context, evt)
	if 13 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_107030(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 144001107, "target_timer1") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001107, 3)
	
	-- 将本组内变量名为 "wave_2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave_2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_107031(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave_2"为1
	if ScriptLib.GetGroupVariableValue(context, "wave_2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_107031(context, evt)
	-- 判断是否需要创建靶标空档期
	if 1 ~= time_out then
		DeduplicationRandom( context, configIDList, randomNum )
		ScriptLib.CreateGroupTimerEvent(context, 144001107, "monster_timer2", 5)
	else
		ScriptLib.CreateGroupTimerEvent(context, 144001107, "monster_timer2", 1)
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
function action_EVENT_TIMER_EVENT_107032(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为13，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 144001107, {107042,107043,107044,107045,107046,107047,107048,107049,107050,107051,107052,107053,107054}, 13, 5, 5) then
		return -1
	end
	
	-- 延迟70秒后,向groupId为：144001107的对象,请求一次调用,并将string参数："target_timer2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001107, "target_timer2", 70) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_107033(context, evt)
	-- 将本组内变量名为 "time_out" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	DeduplicationRandom( context, configIDList, randomNum )
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_107037(context, evt)
	if 13 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_107037(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 144001107, "target_timer2") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144001107, 4)
	
	-- 将本组内变量名为 "wave_3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "wave_3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_107038(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"wave_3"为1
	if ScriptLib.GetGroupVariableValue(context, "wave_3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_107038(context, evt)
	-- 判断是否需要创建靶标空档期
	if 1 ~= time_out then
		DeduplicationRandom( context, configIDList, randomNum )
		ScriptLib.CreateGroupTimerEvent(context, 144001107, "monster_timer3", 5)
	else
		ScriptLib.CreateGroupTimerEvent(context, 144001107, "monster_timer3", 1)
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
function action_EVENT_TIMER_EVENT_107039(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为13，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 144001107, {107055,107056,107057,107058,107059,107060,107061,107062,107063,107064,107065,107066,107067}, 13, 5, 5) then
		return -1
	end
	
	-- 延迟70秒后,向groupId为：144001107的对象,请求一次调用,并将string参数："target_timer3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144001107, "target_timer3", 70) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_107040(context, evt)
	-- 将本组内变量名为 "time_out" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	DeduplicationRandom( context, configIDList, randomNum )
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_107041(context, evt)
	if 13 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_107041(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 144001107, "target_timer3") then
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

require "V1_6/ScoreChallenge"
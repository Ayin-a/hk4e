-- 基础信息
local base_info = {
	group_id = 144002066
}

-- DEFS_MISCS
local ProgressTable = {0,100,200,300,500}
local GalleryID = 8006
local SubScoreTimeAxis = {1}
local GadgetTargetScore = 110
local PerSecondSubScore = {-1,-2,-3,-5}
local MonsterTargetScore = {
        {monsterID = 22010101, score = 50},
        {monsterID = 21020201, score = 50},
        {monsterID = 22010201, score = 50},
}
local RandomTimeAxis = {
        {20,40,60,80,100,120,140,160,180,200,220,240,260},
        {18,38,58,78,98,118,138,158,178,198,218,238,258},
        {22,42,62,82,102,122,142,162,182,202,222,242,262},
}
local RandomTargetConfigID = {66040,66041,66039}

local configIDList = {66030,66031,66032,66033}
local randomNum = 2

local smallRegion = 66076
local bigRegion = 66077

local GroupID = 144002066

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[66001] = { config_id = 66001, monster_id = 20011201, pos = { x = 576.689, y = 121.458, z = -591.339 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66002] = { config_id = 66002, monster_id = 20010501, pos = { x = 576.286, y = 121.055, z = -595.536 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66003] = { config_id = 66003, monster_id = 20011201, pos = { x = 576.951, y = 120.728, z = -598.968 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66004] = { config_id = 66004, monster_id = 20010501, pos = { x = 578.005, y = 120.520, z = -601.664 }, rot = { x = 0.000, y = 55.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66005] = { config_id = 66005, monster_id = 20011201, pos = { x = 576.286, y = 121.289, z = -593.235 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66006] = { config_id = 66006, monster_id = 20010501, pos = { x = 575.505, y = 120.886, z = -597.278 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66007] = { config_id = 66007, monster_id = 20011201, pos = { x = 574.021, y = 121.127, z = -595.376 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66008] = { config_id = 66008, monster_id = 20010501, pos = { x = 574.299, y = 121.442, z = -592.553 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66009] = { config_id = 66009, monster_id = 20011201, pos = { x = 578.078, y = 121.669, z = -589.190 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66010] = { config_id = 66010, monster_id = 20010501, pos = { x = 575.766, y = 121.685, z = -589.796 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66011] = { config_id = 66011, monster_id = 20011201, pos = { x = 573.939, y = 120.782, z = -598.947 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66012] = { config_id = 66012, monster_id = 20011001, pos = { x = 575.722, y = 120.619, z = -600.596 }, rot = { x = 0.000, y = 65.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66013] = { config_id = 66013, monster_id = 20010801, pos = { x = 577.188, y = 120.907, z = -596.972 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66014] = { config_id = 66014, monster_id = 20011001, pos = { x = 576.286, y = 121.055, z = -595.536 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66015] = { config_id = 66015, monster_id = 20010801, pos = { x = 578.911, y = 120.373, z = -603.711 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66016] = { config_id = 66016, monster_id = 20011001, pos = { x = 576.286, y = 120.471, z = -602.240 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66017] = { config_id = 66017, monster_id = 21020201, pos = { x = 579.720, y = 121.708, z = -587.890 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 6, drop_id = 1000100, affix = { 4118, 1033 }, area_id = 101 },
	[66018] = { config_id = 66018, monster_id = 22010101, pos = { x = 589.012, y = 121.349, z = -589.153 }, rot = { x = 0.000, y = 220.000, z = 0.000 }, level = 6, drop_id = 1000100, affix = { 4118, 1033 }, area_id = 101 },
	[66019] = { config_id = 66019, monster_id = 22010201, pos = { x = 581.942, y = 121.661, z = -587.759 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 6, drop_id = 1000100, affix = { 4118, 1033 }, area_id = 101 },
	[66022] = { config_id = 66022, monster_id = 20010801, pos = { x = 579.699, y = 120.546, z = -600.749 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66044] = { config_id = 66044, monster_id = 20011301, pos = { x = 585.818, y = 120.866, z = -594.722 }, rot = { x = 0.000, y = 255.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66045] = { config_id = 66045, monster_id = 20011101, pos = { x = 586.656, y = 120.453, z = -598.931 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66046] = { config_id = 66046, monster_id = 20011201, pos = { x = 585.323, y = 121.119, z = -592.044 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66047] = { config_id = 66047, monster_id = 20011001, pos = { x = 586.099, y = 120.297, z = -602.258 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66048] = { config_id = 66048, monster_id = 20011201, pos = { x = 583.669, y = 121.387, z = -590.153 }, rot = { x = 0.000, y = 235.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66049] = { config_id = 66049, monster_id = 20011101, pos = { x = 588.362, y = 120.585, z = -596.659 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66050] = { config_id = 66050, monster_id = 20011201, pos = { x = 588.027, y = 120.938, z = -593.000 }, rot = { x = 0.000, y = 255.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66051] = { config_id = 66051, monster_id = 20011201, pos = { x = 588.098, y = 120.257, z = -601.102 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66052] = { config_id = 66052, monster_id = 20011301, pos = { x = 590.252, y = 120.351, z = -599.029 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66053] = { config_id = 66053, monster_id = 20010801, pos = { x = 589.878, y = 120.712, z = -594.722 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66054] = { config_id = 66054, monster_id = 20011201, pos = { x = 587.631, y = 121.139, z = -591.331 }, rot = { x = 0.000, y = 245.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66055] = { config_id = 66055, monster_id = 20010801, pos = { x = 586.071, y = 121.296, z = -590.044 }, rot = { x = 0.000, y = 235.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66056] = { config_id = 66056, monster_id = 20011301, pos = { x = 590.374, y = 121.061, z = -591.969 }, rot = { x = 0.000, y = 255.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66057] = { config_id = 66057, monster_id = 20011001, pos = { x = 583.339, y = 120.331, z = -603.309 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66058] = { config_id = 66058, monster_id = 20010801, pos = { x = 585.440, y = 120.287, z = -602.623 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66059] = { config_id = 66059, monster_id = 20011001, pos = { x = 581.077, y = 120.411, z = -602.548 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66060] = { config_id = 66060, monster_id = 20010501, pos = { x = 576.770, y = 121.456, z = -591.337 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66061] = { config_id = 66061, monster_id = 20010801, pos = { x = 576.367, y = 121.054, z = -595.534 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66062] = { config_id = 66062, monster_id = 20010601, pos = { x = 577.032, y = 120.727, z = -598.966 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66063] = { config_id = 66063, monster_id = 20010901, pos = { x = 578.086, y = 120.518, z = -601.661 }, rot = { x = 0.000, y = 55.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66064] = { config_id = 66064, monster_id = 20010501, pos = { x = 576.367, y = 121.287, z = -593.233 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66065] = { config_id = 66065, monster_id = 20010801, pos = { x = 575.586, y = 120.885, z = -597.276 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66066] = { config_id = 66066, monster_id = 20010601, pos = { x = 574.102, y = 121.126, z = -595.374 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66067] = { config_id = 66067, monster_id = 20010801, pos = { x = 574.380, y = 121.441, z = -592.551 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66068] = { config_id = 66068, monster_id = 20011201, pos = { x = 578.159, y = 121.667, z = -589.188 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66069] = { config_id = 66069, monster_id = 20010801, pos = { x = 575.847, y = 121.684, z = -589.794 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66070] = { config_id = 66070, monster_id = 20011201, pos = { x = 574.021, y = 120.781, z = -598.945 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66071] = { config_id = 66071, monster_id = 20010801, pos = { x = 575.803, y = 120.617, z = -600.594 }, rot = { x = 0.000, y = 65.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66072] = { config_id = 66072, monster_id = 20011301, pos = { x = 577.269, y = 120.905, z = -596.970 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66073] = { config_id = 66073, monster_id = 20011201, pos = { x = 576.367, y = 121.054, z = -595.534 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66074] = { config_id = 66074, monster_id = 20010801, pos = { x = 578.992, y = 120.372, z = -603.709 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66075] = { config_id = 66075, monster_id = 20010901, pos = { x = 576.367, y = 120.469, z = -602.238 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66078] = { config_id = 66078, monster_id = 20010801, pos = { x = 584.237, y = 120.447, z = -600.348 }, rot = { x = 0.000, y = 300.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66079] = { config_id = 66079, monster_id = 20011201, pos = { x = 581.506, y = 120.466, z = -601.279 }, rot = { x = 0.000, y = 345.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 },
	[66080] = { config_id = 66080, monster_id = 20010801, pos = { x = 578.872, y = 120.515, z = -601.322 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1033 }, area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[66020] = { config_id = 66020, gadget_id = 70360272, pos = { x = 583.475, y = 120.869, z = -595.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	[66030] = { config_id = 66030, gadget_id = 70350253, pos = { x = 593.722, y = 124.037, z = -594.139 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, route_id = 400200013, start_route = false, area_id = 101 },
	[66031] = { config_id = 66031, gadget_id = 70350253, pos = { x = 570.622, y = 123.836, z = -600.928 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, route_id = 400200014, start_route = false, area_id = 101 },
	[66032] = { config_id = 66032, gadget_id = 70350253, pos = { x = 581.952, y = 125.179, z = -583.946 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, route_id = 400200015, start_route = false, area_id = 101 },
	[66033] = { config_id = 66033, gadget_id = 70350253, pos = { x = 569.426, y = 125.050, z = -590.701 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, level = 1, route_id = 400200016, start_route = false, area_id = 101 },
	[66038] = { config_id = 66038, gadget_id = 70950009, pos = { x = 581.723, y = 118.040, z = -593.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	[66039] = { config_id = 66039, gadget_id = 70350253, pos = { x = 590.937, y = 124.733, z = -585.579 }, rot = { x = 0.000, y = 210.000, z = 0.000 }, level = 1, route_id = 400200017, start_route = false, area_id = 101 },
	[66040] = { config_id = 66040, gadget_id = 70350253, pos = { x = 580.330, y = 123.611, z = -606.403 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1, route_id = 400200018, start_route = false, area_id = 101 },
	[66041] = { config_id = 66041, gadget_id = 70350253, pos = { x = 588.210, y = 123.584, z = -603.902 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 1, route_id = 400200019, start_route = false, area_id = 101 }
}

-- 区域
regions = {
	[66076] = { config_id = 66076, shape = RegionShape.SPHERE, radius = 25, pos = { x = 583.475, y = 120.869, z = -595.042 }, area_id = 101 },
	[66077] = { config_id = 66077, shape = RegionShape.SPHERE, radius = 30, pos = { x = 583.475, y = 120.869, z = -595.042 }, area_id = 101 },
	[66081] = { config_id = 66081, shape = RegionShape.SPHERE, radius = 20, pos = { x = 581.731, y = 120.983, z = -594.680 }, area_id = 101 }
}

-- 触发器
triggers = {
	{ config_id = 1066021, name = "GALLERY_START_66021", event = EventType.EVENT_GALLERY_START, source = "", condition = "", action = "action_EVENT_GALLERY_START_66021", trigger_count = 0 },
	{ config_id = 1066023, name = "VARIABLE_CHANGE_66023", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_66023", action = "action_EVENT_VARIABLE_CHANGE_66023", trigger_count = 0 },
	{ config_id = 1066024, name = "GADGET_CREATE_66024", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_66024", action = "action_EVENT_GADGET_CREATE_66024", trigger_count = 0 },
	{ config_id = 1066025, name = "VARIABLE_CHANGE_66025", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_66025", action = "action_EVENT_VARIABLE_CHANGE_66025", trigger_count = 0 },
	{ config_id = 1066026, name = "TIMER_EVENT_66026", event = EventType.EVENT_TIMER_EVENT, source = "monster_timer", condition = "", action = "action_EVENT_TIMER_EVENT_66026", trigger_count = 0 },
	{ config_id = 1066027, name = "TIMER_EVENT_66027", event = EventType.EVENT_TIMER_EVENT, source = "target_timer", condition = "", action = "action_EVENT_TIMER_EVENT_66027", trigger_count = 0 },
	{ config_id = 1066028, name = "MONSTER_TIDE_DIE_66028", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_66028", action = "action_EVENT_MONSTER_TIDE_DIE_66028", trigger_count = 0 },
	{ config_id = 1066029, name = "TIMER_EVENT_66029", event = EventType.EVENT_TIMER_EVENT, source = "monster_timer2", condition = "", action = "action_EVENT_TIMER_EVENT_66029", trigger_count = 0 },
	{ config_id = 1066034, name = "TIMER_EVENT_66034", event = EventType.EVENT_TIMER_EVENT, source = "target_timer2", condition = "", action = "action_EVENT_TIMER_EVENT_66034", trigger_count = 0 },
	{ config_id = 1066035, name = "MONSTER_TIDE_DIE_66035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_66035", action = "action_EVENT_MONSTER_TIDE_DIE_66035", trigger_count = 0 },
	{ config_id = 1066036, name = "VARIABLE_CHANGE_66036", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_66036", action = "action_EVENT_VARIABLE_CHANGE_66036", trigger_count = 0 },
	{ config_id = 1066037, name = "TIMER_EVENT_66037", event = EventType.EVENT_TIMER_EVENT, source = "monster_timer3", condition = "", action = "action_EVENT_TIMER_EVENT_66037", trigger_count = 0 },
	{ config_id = 1066042, name = "TIMER_EVENT_66042", event = EventType.EVENT_TIMER_EVENT, source = "target_timer3", condition = "", action = "action_EVENT_TIMER_EVENT_66042", trigger_count = 0 },
	{ config_id = 1066043, name = "MONSTER_TIDE_DIE_66043", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_66043", action = "action_EVENT_MONSTER_TIDE_DIE_66043", trigger_count = 0 },
	{ config_id = 1066081, name = "ENTER_REGION_66081", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_66081", trigger_count = 0 }
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
		gadgets = { 66020 },
		regions = { 66081 },
		triggers = { "GALLERY_START_66021", "ENTER_REGION_66081" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 66038 },
		regions = { },
		triggers = { "GADGET_CREATE_66024", "VARIABLE_CHANGE_66025", "TIMER_EVENT_66026", "TIMER_EVENT_66027", "MONSTER_TIDE_DIE_66028" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 66030, 66031, 66032, 66033 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 66039, 66040, 66041 },
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
		triggers = { "VARIABLE_CHANGE_66023", "TIMER_EVENT_66029", "TIMER_EVENT_66034", "MONSTER_TIDE_DIE_66035" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "VARIABLE_CHANGE_66036", "TIMER_EVENT_66037", "TIMER_EVENT_66042", "MONSTER_TIDE_DIE_66043" },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { 66001, 66002, 66003, 66004, 66005, 66006, 66007, 66008, 66009, 66010, 66011, 66012, 66013, 66014, 66015, 66016, 66017, 66022, 66057, 66058, 66059 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { 66018, 66044, 66045, 66046, 66047, 66048, 66049, 66050, 66051, 66052, 66053, 66054, 66055, 66056, 66078, 66079, 66080 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { 66019, 66060, 66061, 66062, 66063, 66064, 66065, 66066, 66067, 66068, 66069, 66070, 66071, 66072, 66073, 66074, 66075 },
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
function action_EVENT_GALLERY_START_66021(context, evt)
	-- 将configid为 66020 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 66020, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002066, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_66023(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"monster_tide2"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_tide2") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_66023(context, evt)
	-- 判断是否需要创建靶标空档期
	if 1 ~= time_out then
		DeduplicationRandom( context, configIDList, randomNum )
		ScriptLib.CreateGroupTimerEvent(context, 144002066, "monster_timer2", 5)
	else
		ScriptLib.CreateGroupTimerEvent(context, 144002066, "monster_timer2", 1)
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

-- 触发条件
function condition_EVENT_GADGET_CREATE_66024(context, evt)
	if 66038 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_66024(context, evt)
	-- 将本组内变量名为 "monster_tide" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_tide", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_66025(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"monster_tide"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_tide") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_66025(context, evt)
	-- 判断是否需要创建靶标空档期
	if 1 ~= time_out then
		DeduplicationRandom( context, configIDList, randomNum )
		ScriptLib.CreateGroupTimerEvent(context, 144002066, "monster_timer", 8)
	else
		ScriptLib.CreateGroupTimerEvent(context, 144002066, "monster_timer", 1)
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
function action_EVENT_TIMER_EVENT_66026(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为21，场上怪物最少6只，最多6只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 144002066, {66001,66002,66003,66004,66005,66006,66007,66008,66009,66010,66011,66012,66013,66017,66014,66015,66016,66022,66057,66058,66059}, 21, 6, 6) then
		return -1
	end
	
	-- 延迟70秒后,向groupId为：144002066的对象,请求一次调用,并将string参数："target_timer" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144002066, "target_timer", 70) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_66027(context, evt)
	-- 将本组内变量名为 "time_out" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	DeduplicationRandom( context, configIDList, randomNum )
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_66028(context, evt)
	if 21 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_66028(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 144002066, "target_timer") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002066, 5)
	
	-- 将本组内变量名为 "monster_tide2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_tide2", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_66029(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为17，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 144002066, {66044,66045,66046,66047,66048,66049,66050,66051,66052,66053,66054,66055,66018,66078,66079,66080,66056}, 17, 5, 5) then
		return -1
	end
	
	-- 延迟70秒后,向groupId为：144002066的对象,请求一次调用,并将string参数："target_timer2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144002066, "target_timer2", 70) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_66034(context, evt)
	-- 将本组内变量名为 "time_out" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	DeduplicationRandom( context, configIDList, randomNum )
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_66035(context, evt)
	if 17 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_66035(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 144002066, "target_timer2") then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cancel_timerevent_by_group")
	  return -1
	end
	
	-- 添加suite6的新内容
	    ScriptLib.AddExtraGroupSuite(context, 144002066, 6)
	
	-- 将本组内变量名为 "monster_tide3" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_tide3", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_66036(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"monster_tide3"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_tide3") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_66036(context, evt)
	-- 判断是否需要创建靶标空档期
	if 1 ~= time_out then
		DeduplicationRandom( context, configIDList, randomNum )
		ScriptLib.CreateGroupTimerEvent(context, 144002066, "monster_timer3", 5)
	else
		ScriptLib.CreateGroupTimerEvent(context, 144002066, "monster_timer3", 1)
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
function action_EVENT_TIMER_EVENT_66037(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为17，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 144002066, {66060,66061,66062,66063,66064,66065,66066,66067,66068,66069,66019,66070,66071,66072,66073,66074,66075}, 17, 5, 5) then
		return -1
	end
	
	-- 延迟70秒后,向groupId为：144002066的对象,请求一次调用,并将string参数："target_timer3" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 144002066, "target_timer3", 70) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_66042(context, evt)
	-- 将本组内变量名为 "time_out" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "time_out", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	DeduplicationRandom( context, configIDList, randomNum )
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_66043(context, evt)
	if 17 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_66043(context, evt)
	-- 取消group中对应名称的TimerEvent
	if 0 ~= ScriptLib.CancelGroupTimerEvent(context, 144002066, "target_timer3") then
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
function action_EVENT_ENTER_REGION_66081(context, evt)
	-- 显示id为142的reminder
	if 0 ~= ScriptLib.AssignPlayerShowTemplateReminder(context,142,{param_uid_vec={},param_vec={},uid_vec={context.uid}}) then
		return -1
	end
	
	return 0
end

require "V1_6/ScoreChallenge"
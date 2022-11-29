-- 基础信息
local base_info = {
	group_id = 247005003
}

-- DEFS_MISCS
local BossOperatorConfigID = 3001
local QuitPointConfigID = 3005
local BossPoolID = 24001
local GroupId = 247005003
local MainGroupID = 247005001
local RegionID = 3007
local questID = 0
local doorConfigID = 0
local doorBossFrontID = 3002
local doorBossBackID = 3003
local lastDoorConfigID = 0
local ThunderFloorTimeAxis = { 5,10 }
local ThunderFloorList = {3008,3009,3010,3011,3012,3013,3014,3015,3016,3017,3018,3019,3020,3021,3022,3023,3024,3025,3026,3027,3028,3029,3031,3032,3033,3034,3035,3036,3037,3038,3039,3040,3041,3042,3043,3044,3045,3046,3047,3048,3049,3050,3051,3052,3053,3054,3055,3056,3057,3058,3059,3060,3061,3062,3063,3064,3065,3066,3067,3068}
local AirWallConfigID = 3030
local DestinationConfigID = 0
local EnterRoomTrigger = 3007
local PlotRoom = {regionID= 0 , groupID= 0}
local BossDoorPos = {x=0,y=0,z=0}
local BossDoorRot = {0}
local nextQuestID = 0
local DestinationPos = {x=0,y=0,z=0}
local DestinationRot = {0}

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
	{ config_id = 3001, gadget_id = 70310122, pos = { x = 80.000, y = -3.700, z = 575.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3002, gadget_id = 70310125, pos = { x = 80.111, y = -3.699, z = 549.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3003, gadget_id = 70310125, pos = { x = 80.081, y = -0.793, z = 629.891 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 3004, gadget_id = 70900201, pos = { x = 79.811, y = -0.902, z = 635.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3005, gadget_id = 70310108, pos = { x = 80.000, y = 1.689, z = 646.418 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 3008, gadget_id = 70360285, pos = { x = -2.031, y = 0.124, z = 115.727 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3009, gadget_id = 70360285, pos = { x = 1.083, y = 0.124, z = 134.048 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3010, gadget_id = 70360285, pos = { x = 111.286, y = 0.839, z = 153.226 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3011, gadget_id = 70360285, pos = { x = 111.208, y = 0.839, z = 150.540 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3012, gadget_id = 70360285, pos = { x = 111.124, y = 0.839, z = 147.752 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3013, gadget_id = 70360285, pos = { x = 116.339, y = 0.839, z = 147.776 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3014, gadget_id = 70360285, pos = { x = 116.339, y = 0.839, z = 150.505 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3015, gadget_id = 70360285, pos = { x = 116.339, y = 0.839, z = 153.250 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3016, gadget_id = 70360285, pos = { x = -48.683, y = 0.777, z = 393.047 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3017, gadget_id = 70360285, pos = { x = -48.762, y = 0.777, z = 390.361 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3018, gadget_id = 70360285, pos = { x = -48.846, y = 0.777, z = 387.573 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3019, gadget_id = 70360285, pos = { x = -43.631, y = 0.777, z = 387.597 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3020, gadget_id = 70360285, pos = { x = -43.631, y = 0.777, z = 390.326 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3021, gadget_id = 70360285, pos = { x = -43.631, y = 0.777, z = 393.071 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3022, gadget_id = 70360285, pos = { x = -2.455, y = -1.950, z = 195.520 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3023, gadget_id = 70360285, pos = { x = -2.533, y = -1.950, z = 192.833 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3024, gadget_id = 70360285, pos = { x = -2.617, y = -1.950, z = 190.136 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3025, gadget_id = 70360285, pos = { x = 2.598, y = -1.950, z = 190.070 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3026, gadget_id = 70360285, pos = { x = 2.598, y = -1.950, z = 192.799 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3027, gadget_id = 70360285, pos = { x = 2.598, y = -1.950, z = 195.543 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3028, gadget_id = 70360285, pos = { x = -2.380, y = -1.950, z = 198.282 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3029, gadget_id = 70360285, pos = { x = 2.662, y = -1.950, z = 198.265 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3030, gadget_id = 70950041, pos = { x = 80.114, y = -3.700, z = 574.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3031, gadget_id = 70360285, pos = { x = 77.560, y = -0.876, z = 282.639 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3032, gadget_id = 70360285, pos = { x = 82.602, y = -0.876, z = 282.622 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3033, gadget_id = 70360285, pos = { x = 77.560, y = -0.876, z = 288.314 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3034, gadget_id = 70360285, pos = { x = 82.602, y = -0.876, z = 288.297 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3035, gadget_id = 70360285, pos = { x = 77.560, y = -0.876, z = 293.617 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3036, gadget_id = 70360285, pos = { x = 82.602, y = -0.876, z = 293.601 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3037, gadget_id = 70360285, pos = { x = -2.289, y = -0.876, z = 263.889 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3038, gadget_id = 70360285, pos = { x = 2.753, y = -0.876, z = 263.872 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3039, gadget_id = 70360285, pos = { x = -2.289, y = -0.876, z = 269.651 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3040, gadget_id = 70360285, pos = { x = 2.753, y = -0.876, z = 269.634 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3041, gadget_id = 70360285, pos = { x = -2.289, y = -0.876, z = 277.192 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3042, gadget_id = 70360285, pos = { x = 2.754, y = -0.876, z = 277.175 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3043, gadget_id = 70360285, pos = { x = 162.704, y = 0.124, z = 278.919 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3044, gadget_id = 70360285, pos = { x = 157.662, y = 0.124, z = 278.936 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3045, gadget_id = 70360285, pos = { x = 162.704, y = 0.124, z = 295.238 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3046, gadget_id = 70360285, pos = { x = 157.662, y = 0.144, z = 295.255 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3047, gadget_id = 70360285, pos = { x = -77.498, y = -0.876, z = 266.914 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3048, gadget_id = 70360285, pos = { x = -82.541, y = -0.825, z = 266.931 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3049, gadget_id = 70360285, pos = { x = -77.498, y = -0.876, z = 274.116 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3050, gadget_id = 70360285, pos = { x = -82.541, y = -0.876, z = 274.134 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3051, gadget_id = 70360285, pos = { x = -77.176, y = 0.124, z = 367.395 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3052, gadget_id = 70360285, pos = { x = -82.218, y = 0.124, z = 367.412 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3053, gadget_id = 70360285, pos = { x = 82.609, y = 0.124, z = 363.919 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3054, gadget_id = 70360285, pos = { x = 77.566, y = 0.124, z = 363.936 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3055, gadget_id = 70360285, pos = { x = 82.609, y = 0.124, z = 352.975 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3056, gadget_id = 70360285, pos = { x = 77.566, y = 0.124, z = 352.992 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3057, gadget_id = 70360285, pos = { x = 82.609, y = 0.124, z = 350.270 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3058, gadget_id = 70360285, pos = { x = 77.566, y = 0.124, z = 350.288 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3059, gadget_id = 70360285, pos = { x = 82.609, y = 0.124, z = 347.553 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3060, gadget_id = 70360285, pos = { x = 77.566, y = 0.124, z = 347.570 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3061, gadget_id = 70360285, pos = { x = 82.757, y = -0.876, z = 423.453 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3062, gadget_id = 70360285, pos = { x = 77.714, y = -0.830, z = 423.471 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3063, gadget_id = 70360285, pos = { x = 82.757, y = -0.876, z = 429.205 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3064, gadget_id = 70360285, pos = { x = 77.714, y = -0.830, z = 429.223 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3065, gadget_id = 70360285, pos = { x = 82.757, y = -0.876, z = 447.968 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3066, gadget_id = 70360285, pos = { x = 77.714, y = -0.830, z = 447.985 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3067, gadget_id = 70360285, pos = { x = 82.757, y = -0.876, z = 454.047 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3068, gadget_id = 70360285, pos = { x = 77.714, y = -0.830, z = 454.065 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3007, shape = RegionShape.CUBIC, size = { x = 65.000, y = 20.000, z = 65.000 }, pos = { x = 80.000, y = 5.000, z = 576.909 } }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 3006, pos = { x = 80.065, y = -3.700, z = 580.853 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 1 }
}

-- 变量
variables = {
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
		gadgets = { 3001, 3002, 3003, 3008, 3009, 3010, 3011, 3012, 3013, 3014, 3015, 3016, 3017, 3018, 3019, 3020, 3021, 3022, 3023, 3024, 3025, 3026, 3027, 3028, 3029, 3031, 3032, 3033, 3034, 3035, 3036, 3037, 3038, 3039, 3040, 3041, 3042, 3043, 3044, 3045, 3046, 3047, 3048, 3049, 3050, 3051, 3052, 3053, 3054, 3055, 3056, 3057, 3058, 3059, 3060, 3061, 3062, 3063, 3064, 3065, 3066, 3067, 3068 },
		regions = { 3007 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 3005, 3030 },
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

require "V2_2/RogueDungeon_BOSS"
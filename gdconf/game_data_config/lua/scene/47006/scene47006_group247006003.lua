-- 基础信息
local base_info = {
	group_id = 247006003
}

-- DEFS_MISCS
local BossOperatorConfigID = 3001
local QuitPointConfigID = 3007
local BossPoolID = 25001
local GroupId = 247006003
local MainGroupID = 247006001
local RegionID = 3010
local questID = 0
local doorConfigID = 0
local doorBossFrontID = 3002
local doorBossBackID = 3003
local ThunderFloorTimeAxis = { 5,9 }
local ThunderFloorList = {3004,3005,3006,3013,3014,3015,3016,3017,3018,3019,3020,3021,3022,3023,3024,3025,3026,3027,3028,3039,3040,3041,3042,3043,3044,3045,3046}
local lastDoorConfigID = 0
local isLastRoom =0
local EnterRoomTrigger = 3010
local PlotRoom = {regionID= 0 , groupID= 0}
local AirWallConfigID = 3012
local DestinationConfigID = 0
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
	{ config_id = 3001, gadget_id = 70310122, pos = { x = 80.000, y = -2.700, z = 510.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3002, gadget_id = 70310125, pos = { x = 80.014, y = -2.454, z = 480.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3003, gadget_id = 70310125, pos = { x = 80.000, y = -2.733, z = 540.242 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 3004, gadget_id = 70360285, pos = { x = 81.089, y = 0.082, z = 432.032 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3005, gadget_id = 70360285, pos = { x = 88.152, y = 0.090, z = 393.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3006, gadget_id = 70360285, pos = { x = 71.807, y = 0.090, z = 406.852 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3007, gadget_id = 70310108, pos = { x = 80.000, y = 2.650, z = 556.212 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 3011, gadget_id = 70900201, pos = { x = 80.044, y = 0.082, z = 561.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3012, gadget_id = 70950009, pos = { x = 80.005, y = -2.700, z = 510.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3013, gadget_id = 70360285, pos = { x = 77.310, y = 0.043, z = 467.826 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3014, gadget_id = 70360285, pos = { x = 82.493, y = 0.043, z = 467.826 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3015, gadget_id = 70360285, pos = { x = 77.310, y = 0.043, z = 465.164 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3016, gadget_id = 70360285, pos = { x = 82.493, y = 0.043, z = 465.164 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3017, gadget_id = 70360285, pos = { x = 77.310, y = 0.043, z = 462.472 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3018, gadget_id = 70360285, pos = { x = 82.493, y = 0.043, z = 462.472 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3019, gadget_id = 70360285, pos = { x = 77.310, y = 0.043, z = 457.987 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3020, gadget_id = 70360285, pos = { x = 82.493, y = 0.043, z = 457.987 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3021, gadget_id = 70360285, pos = { x = 77.310, y = -2.638, z = 477.965 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3022, gadget_id = 70360285, pos = { x = 82.493, y = -2.638, z = 477.965 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3023, gadget_id = 70360285, pos = { x = 77.310, y = -2.638, z = 475.273 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3024, gadget_id = 70360285, pos = { x = 82.493, y = -2.638, z = 475.273 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3025, gadget_id = 70360285, pos = { x = -35.135, y = 0.086, z = 78.808 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3026, gadget_id = 70360285, pos = { x = -35.135, y = 0.086, z = 81.314 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3027, gadget_id = 70360285, pos = { x = -46.715, y = 0.086, z = 78.808 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3028, gadget_id = 70360285, pos = { x = -46.715, y = 0.086, z = 81.314 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 3039, gadget_id = 70360285, pos = { x = -161.194, y = 0.140, z = 204.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3040, gadget_id = 70360285, pos = { x = -158.768, y = 0.140, z = 204.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3041, gadget_id = 70360285, pos = { x = -161.194, y = 0.140, z = 211.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3042, gadget_id = 70360285, pos = { x = -158.768, y = 0.140, z = 211.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3043, gadget_id = 70360285, pos = { x = -161.194, y = 0.140, z = 188.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3044, gadget_id = 70360285, pos = { x = -158.768, y = 0.140, z = 188.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3045, gadget_id = 70360285, pos = { x = -161.194, y = 0.140, z = 195.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3046, gadget_id = 70360285, pos = { x = -158.768, y = 0.140, z = 195.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 3010, shape = RegionShape.CUBIC, size = { x = 90.000, y = 40.000, z = 60.000 }, pos = { x = 80.000, y = 15.000, z = 510.000 } }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 3008, pos = { x = 79.992, y = -2.700, z = 517.140 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 1 },
	{ config_id = 3009, pos = { x = 82.862, y = -2.700, z = 517.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 1 },
	{ config_id = 3047, pos = { x = 76.961, y = -2.700, z = 517.209 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 1 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
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
		gadgets = { 3001, 3002, 3003, 3004, 3005, 3006, 3013, 3014, 3015, 3016, 3017, 3018, 3019, 3020, 3021, 3022, 3023, 3024, 3025, 3026, 3027, 3028, 3039, 3040, 3041, 3042, 3043, 3044, 3045, 3046 },
		regions = { 3010 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 3007, 3012 },
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
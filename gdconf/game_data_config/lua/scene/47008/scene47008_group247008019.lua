-- 基础信息
local base_info = {
	group_id = 247008019
}

-- DEFS_MISCS
local BossOperatorConfigID = 19001
local QuitPointConfigID = 19006
local BossPoolID = 29041
local GroupId = 247008019
local MainGroupID = 247008001
local RegionID = 19005
local questID = 0
local questRegionID = 0
local doorConfigID = 0
local doorBossFrontID = 19002
local doorBossBackID = 19003
local finishQuestID = 0
local lastDoorConfigID = 0
local ThunderFloorTimeAxis = { 5,9 }
local ThunderFloorList = { 19013, 19014, 19015, 19016, 19017, 19018, 19021, 19022, 19023, 19024, 19025, 19026, 19027, 19028, 19029, 19030, 19031, 19032, 19033, 19034, 19035, 19036, 19037, 19038, 19039, 19040, 19041, 19042, 19043, 19044, 19045, 19046 }
local isLastRoom = 1
local EnterRoomTrigger = 19005
local PlotRoom = {regionID= 0 , groupID= 0}
local AirWallConfigID = 19012
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
	{ config_id = 19001, gadget_id = 70310122, pos = { x = 350.000, y = -2.700, z = 320.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19002, gadget_id = 70310125, pos = { x = 300.157, y = 0.125, z = 319.988 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 19003, gadget_id = 70310125, pos = { x = 379.891, y = -2.454, z = 320.013 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 19004, gadget_id = 70900201, pos = { x = 397.944, y = 0.580, z = 319.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19006, gadget_id = 70310108, pos = { x = 395.144, y = 2.554, z = 320.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 19012, gadget_id = 70310151, pos = { x = 350.011, y = -2.700, z = 320.105 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19013, gadget_id = 70360285, pos = { x = 47.116, y = 0.140, z = 0.014 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19014, gadget_id = 70360285, pos = { x = 49.808, y = 0.140, z = 0.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19015, gadget_id = 70360285, pos = { x = 33.717, y = 0.140, z = -0.001 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19016, gadget_id = 70360285, pos = { x = 31.037, y = 0.140, z = -0.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19017, gadget_id = 70360285, pos = { x = 68.549, y = 0.058, z = 6.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19018, gadget_id = 70360285, pos = { x = 69.871, y = 0.050, z = 10.957 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 19021, gadget_id = 70360285, pos = { x = 91.405, y = -0.011, z = 160.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19022, gadget_id = 70360285, pos = { x = 68.596, y = -0.012, z = 159.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19023, gadget_id = 70360285, pos = { x = 80.607, y = 0.082, z = 187.716 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 19024, gadget_id = 70360285, pos = { x = 78.829, y = 0.082, z = 208.596 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 19025, gadget_id = 70360285, pos = { x = 68.078, y = -0.012, z = 240.049 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19026, gadget_id = 70360285, pos = { x = 92.026, y = -0.011, z = 239.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19027, gadget_id = 70360285, pos = { x = 62.965, y = 0.010, z = 262.511 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 19028, gadget_id = 70360285, pos = { x = 72.333, y = 0.010, z = 262.498 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 19029, gadget_id = 70360285, pos = { x = 57.360, y = -2.173, z = 283.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19030, gadget_id = 70360285, pos = { x = 57.310, y = -2.173, z = 275.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19031, gadget_id = 70360285, pos = { x = 74.802, y = 0.090, z = 323.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19032, gadget_id = 70360285, pos = { x = 74.782, y = 0.116, z = 316.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19035, gadget_id = 70360285, pos = { x = 148.669, y = 0.040, z = 247.862 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19036, gadget_id = 70360285, pos = { x = 171.443, y = 0.054, z = 233.088 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19037, gadget_id = 70360285, pos = { x = 160.587, y = 0.082, z = 267.735 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 19038, gadget_id = 70360285, pos = { x = 158.791, y = 0.082, z = 289.067 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 19039, gadget_id = 70360285, pos = { x = 189.489, y = 0.082, z = 158.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19040, gadget_id = 70360285, pos = { x = 186.779, y = 0.082, z = 161.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19041, gadget_id = 70360285, pos = { x = 184.105, y = 0.082, z = 158.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 19042, gadget_id = 70360285, pos = { x = 248.183, y = 0.777, z = 267.022 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 19043, gadget_id = 70360285, pos = { x = 248.180, y = 0.778, z = 269.696 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 19044, gadget_id = 70360285, pos = { x = 248.150, y = 0.777, z = 272.368 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 19045, gadget_id = 70360285, pos = { x = 251.112, y = 0.777, z = 275.044 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 19046, gadget_id = 70360285, pos = { x = 248.036, y = 0.777, z = 277.685 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- 进boss房间判断
	{ config_id = 19005, shape = RegionShape.CUBIC, size = { x = 100.000, y = 20.000, z = 90.000 }, pos = { x = 350.000, y = -2.700, z = 320.000 } }
}

-- 触发器
triggers = {
	-- 进boss房间判断
	{ config_id = 1019005, name = "ENTER_REGION_19005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 点位
points = {
	{ config_id = 19007, pos = { x = 358.995, y = -2.700, z = 319.992 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 1 },
	{ config_id = 19008, pos = { x = 357.761, y = -2.700, z = 325.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 1 },
	{ config_id = 19009, pos = { x = 358.113, y = -2.700, z = 315.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 1 },
	{ config_id = 19010, pos = { x = 356.409, y = -2.700, z = 328.634 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 1 },
	{ config_id = 19011, pos = { x = 356.286, y = -2.700, z = 311.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 1 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 19019, gadget_id = 70360285, pos = { x = 80.024, y = 0.131, z = 73.127 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
		{ config_id = 19020, gadget_id = 70360285, pos = { x = 80.030, y = 0.088, z = 86.407 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
		{ config_id = 19033, gadget_id = 70360285, pos = { x = -6.531, y = 0.091, z = 159.987 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 19034, gadget_id = 70360285, pos = { x = 7.089, y = 0.059, z = 159.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		-- description = ,
		monsters = { },
		gadgets = { 19001, 19002, 19003, 19004, 19013, 19014, 19015, 19016, 19017, 19018, 19021, 19022, 19023, 19024, 19025, 19026, 19027, 19028, 19029, 19030, 19031, 19032, 19035, 19036, 19037, 19038, 19039, 19040, 19041, 19042, 19043, 19044, 19045, 19046 },
		regions = { 19005 },
		triggers = { "ENTER_REGION_19005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 19006, 19012 },
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
-- 基础信息
local base_info = {
	group_id = 235800011
}

-- DEFS_MISCS
local Bubbles = {11001,11002,11003,11004,11005}
--local Bubbles = {{11013,11014,11015,11016,11017},{11018,11019,11020,11021,11022},{11023,11024,11025,11026,11027},{11028,11029,11030,11031,11032},{11033,11034,11035,11036,11037},{11038,11039,11040,11041,11042},{11043,11044,11045,11046,11047},{11048,11049,11050,11051,11052},{11053,11054,11055,11056,11057},{11058,11059,11060,11061,11062},{11063,11064,11065,11066,11067},{11068,11069,11070,11071,11072}}


local BubbleWeightList = {
	[1] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[2] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[3] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[4] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[5] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[6] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 0 }, { Num= 4, weight= 0 }, { Num= 5, weight= 100 }},
	[7] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[8] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[9] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[10] ={{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[11] ={{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[12] ={{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 0 }, { Num= 4, weight= 0 }, { Num= 5, weight= 100 }},								
}


local BubbleWeightList2 = {
	[1] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[2] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[3] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[4] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[5] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[6] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[7] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[8] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[9] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[10] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[11] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[12] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
										
}


local BubbleWeightList3 = {
	[1] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 20 }, { Num= 4, weight= 80 }, { Num= 5, weight= 0 }},
	[2] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 50 }, { Num= 4, weight= 50 }, { Num= 5, weight= 0 }},
	[3] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 50 }, { Num= 4, weight= 50 }, { Num= 5, weight= 0 }},
	[4] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 0 }, { Num= 4, weight= 50 }, { Num= 5, weight= 50 }},
	[5] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 20 }, { Num= 4, weight= 80 }, { Num= 5, weight= 0 }},
	[6] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 50 }, { Num= 4, weight= 50 }, { Num= 5, weight= 0 }},
	[7] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 50 }, { Num= 4, weight= 50 }, { Num= 5, weight= 0 }},
	[8] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 0 }, { Num= 4, weight= 50 }, { Num= 5, weight= 50 }},
	[9] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 20 }, { Num= 4, weight= 80 }, { Num= 5, weight= 0 }},
	[10] ={{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 50 }, { Num= 4, weight= 50 }, { Num= 5, weight= 0 }},
	[11] ={{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 50 }, { Num= 4, weight= 50 }, { Num= 5, weight= 0 }},
	[12] ={{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 0 }, { Num= 4, weight= 50 }, { Num= 5, weight= 50 }},								
}

local BubbleWeightList4 = {
	[1] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[2] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[3] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[4] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[5] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[6] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 50 }, { Num= 4, weight= 0 }, { Num= 5, weight= 50 }},
	[7] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[8] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[9] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[10] ={{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[11] ={{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 30 }, { Num= 4, weight= 70 }, { Num= 5, weight= 0 }},
	[12] ={{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 50 }, { Num= 4, weight= 0 }, { Num= 5, weight= 50 }},							
}

--BubbleStep = {{list= BubbleWeightList ,BubbleSpSuite=0},{list= BubbleWeightList2 , BubbleSpSuite=21},{list= BubbleWeightList3 , BubbleSpSuite=22} ,{list= BubbleWeightList4 ,BubbleSpSuite=22}}

BubbleStep = {{list= BubbleWeightList4 ,BubbleSpSuite=0},{list= BubbleWeightList2 , BubbleSpSuite=21},{list= BubbleWeightList3 , BubbleSpSuite=22} ,{list= BubbleWeightList2 ,BubbleSpSuite=21}}


--1.固定波次封路  2--不封路带光墙  3.随机封路+横移泡泡  4.固定封路+横移泡泡

local regionIndex =  11006

local BubbleGroupID  = 235800011

local BubbleWallID = 11007

local galleryID = 6007

local TimeAxis = {1,4,7,10,13,16,19,22,25,28,31,34,37,40,43,46,49,52,55,58,61,64,67,70,73}

local random_flower_sum = {min=3 , max=5}

local flower_suite_index = {17,18,19,20}

local RegionID = 11073

local flower_region_id = {11075,11076,11077,11078}

local bubble_delay_sec = 10  

local Bubble_PerfectScore = 20

local Bubble_TimeScore = 60

local Bubble_TimeOutScore = -10

local collect_energy = "collect_energy_6007"

local complete_timelimit_challenge = "complete_timelimit_challenge_6007"

local perfect_complete_timelimit_challenge = "perfect_complete_timelimit_challenge_6007"

local defeated_timelimit_challenge = "defeated_timelimit_challenge_6007"

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
	[11001] = { config_id = 11001, gadget_id = 70350177, pos = { x = 483.132, y = 42.490, z = 22.457 }, rot = { x = 15.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[11002] = { config_id = 11002, gadget_id = 70350177, pos = { x = 483.132, y = 42.490, z = 19.457 }, rot = { x = 15.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[11003] = { config_id = 11003, gadget_id = 70350177, pos = { x = 483.132, y = 42.490, z = 16.457 }, rot = { x = 15.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[11004] = { config_id = 11004, gadget_id = 70350177, pos = { x = 483.132, y = 42.490, z = 13.457 }, rot = { x = 15.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[11005] = { config_id = 11005, gadget_id = 70350177, pos = { x = 483.132, y = 42.490, z = 10.457 }, rot = { x = 15.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[11007] = { config_id = 11007, gadget_id = 70310044, pos = { x = 573.196, y = 16.937, z = 23.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11013] = { config_id = 11013, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 22.277 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 35 },
	[11014] = { config_id = 11014, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 19.382 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 36 },
	[11015] = { config_id = 11015, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 16.503 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 37 },
	[11016] = { config_id = 11016, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 13.624 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 38 },
	[11017] = { config_id = 11017, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 10.863 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 39 },
	[11018] = { config_id = 11018, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 22.277 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 35 },
	[11019] = { config_id = 11019, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 19.382 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 36 },
	[11020] = { config_id = 11020, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 16.503 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 37 },
	[11021] = { config_id = 11021, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 13.624 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 38 },
	[11022] = { config_id = 11022, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 10.863 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 39 },
	[11023] = { config_id = 11023, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 22.277 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 35 },
	[11024] = { config_id = 11024, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 19.382 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 36 },
	[11025] = { config_id = 11025, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 16.503 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 37 },
	[11026] = { config_id = 11026, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 13.624 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 38 },
	[11027] = { config_id = 11027, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 10.863 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 39 },
	[11028] = { config_id = 11028, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 22.277 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 35 },
	[11029] = { config_id = 11029, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 19.382 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 36 },
	[11030] = { config_id = 11030, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 16.503 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 37 },
	[11031] = { config_id = 11031, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 13.624 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 38 },
	[11032] = { config_id = 11032, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 10.863 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 39 },
	[11033] = { config_id = 11033, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 22.277 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 35 },
	[11034] = { config_id = 11034, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 19.382 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 36 },
	[11035] = { config_id = 11035, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 16.503 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 37 },
	[11036] = { config_id = 11036, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 13.624 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 38 },
	[11037] = { config_id = 11037, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 10.863 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 39 },
	[11038] = { config_id = 11038, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 22.277 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 35 },
	[11039] = { config_id = 11039, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 19.382 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 36 },
	[11040] = { config_id = 11040, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 16.503 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 37 },
	[11041] = { config_id = 11041, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 13.624 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 38 },
	[11042] = { config_id = 11042, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 10.863 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 39 },
	[11043] = { config_id = 11043, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 22.277 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 35 },
	[11044] = { config_id = 11044, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 19.382 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 36 },
	[11045] = { config_id = 11045, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 16.503 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 37 },
	[11046] = { config_id = 11046, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 13.624 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 38 },
	[11047] = { config_id = 11047, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 10.863 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 39 },
	[11048] = { config_id = 11048, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 10.863 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 39 },
	[11049] = { config_id = 11049, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 13.624 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 38 },
	[11050] = { config_id = 11050, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 16.503 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 37 },
	[11051] = { config_id = 11051, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 19.382 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 36 },
	[11052] = { config_id = 11052, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 22.277 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 35 },
	[11053] = { config_id = 11053, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 22.277 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 35 },
	[11054] = { config_id = 11054, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 19.382 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 36 },
	[11055] = { config_id = 11055, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 16.503 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 37 },
	[11056] = { config_id = 11056, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 13.624 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 38 },
	[11057] = { config_id = 11057, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 10.863 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 39 },
	[11058] = { config_id = 11058, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 22.277 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 35 },
	[11059] = { config_id = 11059, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 19.382 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 36 },
	[11060] = { config_id = 11060, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 16.503 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 37 },
	[11061] = { config_id = 11061, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 13.624 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 38 },
	[11062] = { config_id = 11062, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 10.863 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 39 },
	[11063] = { config_id = 11063, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 22.277 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 35 },
	[11064] = { config_id = 11064, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 19.382 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 36 },
	[11065] = { config_id = 11065, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 16.503 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 37 },
	[11066] = { config_id = 11066, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 13.624 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 38 },
	[11067] = { config_id = 11067, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 10.863 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 39 },
	[11068] = { config_id = 11068, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 22.277 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 35 },
	[11069] = { config_id = 11069, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 19.382 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 36 },
	[11070] = { config_id = 11070, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 16.503 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 37 },
	[11071] = { config_id = 11071, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 13.624 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 38 },
	[11072] = { config_id = 11072, gadget_id = 70350138, pos = { x = 485.048, y = 43.124, z = 10.863 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 39 },
	[11079] = { config_id = 11079, gadget_id = 70350187, pos = { x = 549.684, y = 24.799, z = 22.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11080] = { config_id = 11080, gadget_id = 70350187, pos = { x = 549.684, y = 24.790, z = 13.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11081] = { config_id = 11081, gadget_id = 70350187, pos = { x = 549.684, y = 24.793, z = 16.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11082] = { config_id = 11082, gadget_id = 70350187, pos = { x = 549.684, y = 24.802, z = 19.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11083] = { config_id = 11083, gadget_id = 70350187, pos = { x = 549.684, y = 24.787, z = 10.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11084] = { config_id = 11084, gadget_id = 70350187, pos = { x = 529.115, y = 30.306, z = 22.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11085] = { config_id = 11085, gadget_id = 70350187, pos = { x = 529.116, y = 30.301, z = 19.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11086] = { config_id = 11086, gadget_id = 70350187, pos = { x = 529.115, y = 30.299, z = 16.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11087] = { config_id = 11087, gadget_id = 70350187, pos = { x = 529.115, y = 30.297, z = 13.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11088] = { config_id = 11088, gadget_id = 70350187, pos = { x = 529.115, y = 30.272, z = 10.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11089] = { config_id = 11089, gadget_id = 70350187, pos = { x = 509.453, y = 35.543, z = 13.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11090] = { config_id = 11090, gadget_id = 70350187, pos = { x = 509.453, y = 35.543, z = 16.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11091] = { config_id = 11091, gadget_id = 70350187, pos = { x = 509.454, y = 35.545, z = 19.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11092] = { config_id = 11092, gadget_id = 70350187, pos = { x = 509.453, y = 35.552, z = 22.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11093] = { config_id = 11093, gadget_id = 70350187, pos = { x = 509.453, y = 35.539, z = 10.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11094] = { config_id = 11094, gadget_id = 70350187, pos = { x = 492.765, y = 40.007, z = 10.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11095] = { config_id = 11095, gadget_id = 70350187, pos = { x = 492.765, y = 40.016, z = 22.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11096] = { config_id = 11096, gadget_id = 70350187, pos = { x = 492.766, y = 40.015, z = 19.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11097] = { config_id = 11097, gadget_id = 70350187, pos = { x = 492.765, y = 40.011, z = 16.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11098] = { config_id = 11098, gadget_id = 70350187, pos = { x = 492.766, y = 40.008, z = 13.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11099] = { config_id = 11099, gadget_id = 70350138, pos = { x = 573.157, y = 19.696, z = 23.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart, route_id = 44 },
	[11100] = { config_id = 11100, gadget_id = 70350138, pos = { x = 545.126, y = 26.826, z = 23.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart, route_id = 45 },
	[11101] = { config_id = 11101, gadget_id = 70350138, pos = { x = 510.429, y = 36.632, z = 22.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart, route_id = 46 },
	[11102] = { config_id = 11102, gadget_id = 70350138, pos = { x = 492.958, y = 40.610, z = 22.763 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart, route_id = 47 },
	[11103] = { config_id = 11103, gadget_id = 70950010, pos = { x = 560.529, y = 16.836, z = 24.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11104] = { config_id = 11104, gadget_id = 70950010, pos = { x = 520.295, y = 28.525, z = 23.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11105] = { config_id = 11105, gadget_id = 70950010, pos = { x = 535.388, y = 24.770, z = 8.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11106] = { config_id = 11106, gadget_id = 70950010, pos = { x = 501.446, y = 33.111, z = 8.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[11107] = { config_id = 11107, gadget_id = 70360025, pos = { x = 479.264, y = 45.198, z = 16.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[11006] = { config_id = 11006, shape = RegionShape.CUBIC, size = { x = 180.000, y = 80.000, z = 50.000 }, pos = { x = 530.448, y = 37.254, z = 23.850 } },
	[11073] = { config_id = 11073, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 14.000 }, pos = { x = 477.193, y = 44.613, z = 16.163 } },
	[11075] = { config_id = 11075, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 20.000 }, pos = { x = 559.950, y = 21.562, z = 16.769 } },
	[11076] = { config_id = 11076, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 20.000 }, pos = { x = 538.730, y = 27.225, z = 16.769 } },
	[11077] = { config_id = 11077, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 20.000 }, pos = { x = 519.836, y = 32.273, z = 16.769 } },
	[11078] = { config_id = 11078, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 20.000 }, pos = { x = 502.879, y = 36.802, z = 16.769 } }
}

-- 触发器
triggers = {
	{ config_id = 1011073, name = "ENTER_REGION_11073", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0, forbid_guest = false },
	{ config_id = 1011075, name = "ENTER_REGION_11075", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11075", action = "action_EVENT_ENTER_REGION_11075" },
	{ config_id = 1011076, name = "ENTER_REGION_11076", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11076", action = "action_EVENT_ENTER_REGION_11076" },
	{ config_id = 1011077, name = "ENTER_REGION_11077", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11077", action = "action_EVENT_ENTER_REGION_11077" },
	{ config_id = 1011078, name = "ENTER_REGION_11078", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11078", action = "action_EVENT_ENTER_REGION_11078" }
}

-- 变量
variables = {
	{ config_id = 1, name = "BubbleNum", value = 11, no_refresh = false },
	{ config_id = 2, name = "BubbleRefresh", value = 0, no_refresh = false },
	{ config_id = 3, name = "BubbleFlowerCount", value = 0, no_refresh = false }
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
		gadgets = { 11007 },
		regions = { 11006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 11001, 11002, 11003, 11004, 11005, 11107 },
		regions = { 11073, 11075, 11076, 11077, 11078 },
		triggers = { "ENTER_REGION_11073", "ENTER_REGION_11075", "ENTER_REGION_11076", "ENTER_REGION_11077", "ENTER_REGION_11078" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 11013, 11014, 11015, 11016, 11017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 11018, 11019, 11020, 11021, 11022 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 11023, 11024, 11025, 11026, 11027 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 11028, 11029, 11030, 11031, 11032 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 11033, 11034, 11035, 11036, 11037 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 11038, 11039, 11040, 11041, 11042 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 11043, 11044, 11045, 11046, 11047 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 11048, 11049, 11050, 11051, 11052 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 11053, 11054, 11055, 11056, 11057 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 11058, 11059, 11060, 11061, 11062 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 11063, 11064, 11065, 11066, 11067 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = ,
		monsters = { },
		gadgets = { 11068, 11069, 11070, 11071, 11072 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 16,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 17,
		-- description = ,
		monsters = { },
		gadgets = { 11079, 11080, 11081, 11082, 11083 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 18,
		-- description = ,
		monsters = { },
		gadgets = { 11084, 11085, 11086, 11087, 11088 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 19,
		-- description = ,
		monsters = { },
		gadgets = { 11089, 11090, 11091, 11092, 11093 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 20,
		-- description = ,
		monsters = { },
		gadgets = { 11094, 11095, 11096, 11097, 11098 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 21,
		-- description = ,
		monsters = { },
		gadgets = { 11103, 11104, 11105, 11106 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 22,
		-- description = ,
		monsters = { },
		gadgets = { 11099, 11100, 11101, 11102 },
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
function condition_EVENT_ENTER_REGION_11075(context, evt)
	if evt.param1 ~= 11075 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11075(context, evt)
	-- 针对当前group内变量名为 "BubbleFlowerCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "BubbleFlowerCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11076(context, evt)
	if evt.param1 ~= 11076 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11076(context, evt)
	-- 针对当前group内变量名为 "BubbleFlowerCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "BubbleFlowerCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11077(context, evt)
	if evt.param1 ~= 11077 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11077(context, evt)
	-- 针对当前group内变量名为 "BubbleFlowerCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "BubbleFlowerCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_11078(context, evt)
	if evt.param1 ~= 11078 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11078(context, evt)
	-- 针对当前group内变量名为 "BubbleFlowerCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "BubbleFlowerCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

require "BubbleGame"
require "WindFlora_ReTrans"
-- 基础信息
local base_info = {
	group_id = 235800010
}

-- DEFS_MISCS
--local Bubbles = {{10010,10011,10012},{10013,10014,10015},{10016,10017,10018},{10019,10020,10021},{10022,10023,10024},{10025,10026,10027},{10028,10029,10030},{10031,10032,10033},{10034,10035,10036},{10037,10038,10039},{10040,10041,10042},{10043,10044,10045}}

local Bubbles = {10001,10002,10003}   

local BubbleWeightList = {
        [1] = {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [2] = {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [3] = {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [4] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 100 }},
        [5] = {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [6] = {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [7] = {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [8] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 100 }},
        [9] = {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [10]= {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},          
        [11]= {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [12]= {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 100 }},                                                  
}

local BubbleWeightList2 = {
        [1] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 100 }, { Num= 3, weight= 0 }},
        [2] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 100 }, { Num= 3, weight= 0 }},
        [3] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 100 }, { Num= 3, weight= 0 }},
        [4] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 100 }, { Num= 3, weight= 0 }},
        [5] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 100 }, { Num= 3, weight= 0 }},
        [6] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 100 }, { Num= 3, weight= 0 }},
        [7] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 100 }, { Num= 3, weight= 0 }},
        [8] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 100 }, { Num= 3, weight= 0 }},
        [9] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 100 }, { Num= 3, weight= 0 }},
        [10]= {{ Num= 1, weight= 0 }, { Num= 2, weight= 100 }, { Num= 3, weight= 0 }},          
        [11]= {{ Num= 1, weight= 0 }, { Num= 2, weight= 100 }, { Num= 3, weight= 0 }},
        [12]= {{ Num= 1, weight= 0 }, { Num= 2, weight= 100 }, { Num= 3, weight= 0 }},                                                  
}

local BubbleWeightList3 = {
        [1] = {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [2] = {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [3] = {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [4] = {{ Num= 1, weight= 0  }, { Num= 2, weight= 50 }, { Num= 3, weight= 50}},
        [5] = {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [6] = {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [7] = {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [8] = {{ Num= 1, weight= 0  }, { Num= 2, weight= 50 }, { Num= 3, weight= 50}},
        [9] = {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [10]= {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},         
        [11]= {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [12]= {{ Num= 1, weight= 0  }, { Num= 2, weight= 50 }, { Num= 3, weight= 50}},                                          
}




local BubbleWeightList4 = {
        [1] = {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [2] = {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [3] = {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [4] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 100 }},
        [5] = {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [6] = {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [7] = {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [8] = {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 100 }},
        [9] = {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [10]= {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [11]= {{ Num= 1, weight= 20 }, { Num= 2, weight= 80 }, { Num= 3, weight= 0 }},
        [12]= {{ Num= 1, weight= 0 }, { Num= 2, weight= 0 }, { Num= 3, weight= 100 }},                                  
}

--BubbleStep = {{list= BubbleWeightList ,BubbleSpSuite=0},{list= BubbleWeightList2 , BubbleSpSuite=21},{list= BubbleWeightList3 , BubbleSpSuite=22} ,{list= BubbleWeightList4 ,BubbleSpSuite=22}}

BubbleStep = {{list= BubbleWeightList2 ,BubbleSpSuite=21},{list= BubbleWeightList3 , BubbleSpSuite=22},{list= BubbleWeightList2 , BubbleSpSuite=21} ,{list= BubbleWeightList ,BubbleSpSuite=0}}



--1.固定波次封路  2--不封路带光墙  3.随机封路+横移泡泡  4.固定封路+横移泡泡



local regionIndex =  10004

local BubbleGroupID  = 235800010

local BubbleWallID = 10055

local galleryID = 6006

local TimeAxis = {1,4,7,10,13,16,19,22,25,28,31,34,37,40,43,46,49,52,55,58,61,64,67,70,73}
--{1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35,37,39,41,43,45,47,49,51,53,55,57,59,61,63,65,67,69,71,73}

local random_flower_sum = {min=3 , max=5}

local flower_suite_index = {17,18,19,20}

local RegionID = 10046

local flower_region_id = {10048,10049,10050,10051}

local bubble_delay_sec = 10  --延迟开门时间,用来先刷泡泡

local Bubble_PerfectScore = 20

local Bubble_TimeScore = 60

local Bubble_TimeOutScore = -10

local collect_energy = "collect_energy_6006"

local complete_timelimit_challenge = "complete_timelimit_challenge_6006"

local perfect_complete_timelimit_challenge = "perfect_complete_timelimit_challenge_6006"

local defeated_timelimit_challenge = "defeated_timelimit_challenge_6006"

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
	[10001] = { config_id = 10001, gadget_id = 70350177, pos = { x = 482.714, y = 42.817, z = -15.000 }, rot = { x = 15.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[10002] = { config_id = 10002, gadget_id = 70350177, pos = { x = 482.715, y = 42.619, z = -11.700 }, rot = { x = 15.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[10003] = { config_id = 10003, gadget_id = 70350177, pos = { x = 482.715, y = 42.618, z = -8.400 }, rot = { x = 15.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	[10010] = { config_id = 10010, gadget_id = 70350138, pos = { x = 484.995, y = 43.344, z = -8.322 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 32 },
	[10011] = { config_id = 10011, gadget_id = 70350138, pos = { x = 485.025, y = 43.306, z = -11.435 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 33 },
	[10012] = { config_id = 10012, gadget_id = 70350138, pos = { x = 484.859, y = 43.331, z = -14.644 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 34 },
	[10013] = { config_id = 10013, gadget_id = 70350138, pos = { x = 484.995, y = 43.344, z = -8.322 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 32 },
	[10014] = { config_id = 10014, gadget_id = 70350138, pos = { x = 485.025, y = 43.306, z = -11.435 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 33 },
	[10015] = { config_id = 10015, gadget_id = 70350138, pos = { x = 484.859, y = 43.331, z = -14.644 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 34 },
	[10016] = { config_id = 10016, gadget_id = 70350138, pos = { x = 484.995, y = 43.344, z = -8.322 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 32 },
	[10017] = { config_id = 10017, gadget_id = 70350138, pos = { x = 485.025, y = 43.306, z = -11.435 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 33 },
	[10018] = { config_id = 10018, gadget_id = 70350138, pos = { x = 484.859, y = 43.331, z = -14.644 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 34 },
	[10019] = { config_id = 10019, gadget_id = 70350138, pos = { x = 484.995, y = 43.344, z = -8.322 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 32 },
	[10020] = { config_id = 10020, gadget_id = 70350138, pos = { x = 485.025, y = 43.306, z = -11.435 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 33 },
	[10021] = { config_id = 10021, gadget_id = 70350138, pos = { x = 484.859, y = 43.331, z = -14.644 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 34 },
	[10022] = { config_id = 10022, gadget_id = 70350138, pos = { x = 484.995, y = 43.344, z = -8.322 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 32 },
	[10023] = { config_id = 10023, gadget_id = 70350138, pos = { x = 485.025, y = 43.306, z = -11.435 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 33 },
	[10024] = { config_id = 10024, gadget_id = 70350138, pos = { x = 484.859, y = 43.331, z = -14.644 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 34 },
	[10025] = { config_id = 10025, gadget_id = 70350138, pos = { x = 484.995, y = 43.344, z = -8.322 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 32 },
	[10026] = { config_id = 10026, gadget_id = 70350138, pos = { x = 485.025, y = 43.306, z = -11.435 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 33 },
	[10027] = { config_id = 10027, gadget_id = 70350138, pos = { x = 484.859, y = 43.331, z = -14.644 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 34 },
	[10028] = { config_id = 10028, gadget_id = 70350138, pos = { x = 484.995, y = 43.344, z = -8.322 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 32 },
	[10029] = { config_id = 10029, gadget_id = 70350138, pos = { x = 485.025, y = 43.306, z = -11.435 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 33 },
	[10030] = { config_id = 10030, gadget_id = 70350138, pos = { x = 484.859, y = 43.331, z = -14.644 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 34 },
	[10031] = { config_id = 10031, gadget_id = 70350138, pos = { x = 484.995, y = 43.344, z = -8.322 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 32 },
	[10032] = { config_id = 10032, gadget_id = 70350138, pos = { x = 485.025, y = 43.306, z = -11.435 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 33 },
	[10033] = { config_id = 10033, gadget_id = 70350138, pos = { x = 484.859, y = 43.331, z = -14.644 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 34 },
	[10034] = { config_id = 10034, gadget_id = 70350138, pos = { x = 484.995, y = 43.344, z = -8.322 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 32 },
	[10035] = { config_id = 10035, gadget_id = 70350138, pos = { x = 485.025, y = 43.306, z = -11.435 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 33 },
	[10036] = { config_id = 10036, gadget_id = 70350138, pos = { x = 484.859, y = 43.331, z = -14.644 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 34 },
	[10037] = { config_id = 10037, gadget_id = 70350138, pos = { x = 484.995, y = 43.344, z = -8.322 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 32 },
	[10038] = { config_id = 10038, gadget_id = 70350138, pos = { x = 485.025, y = 43.306, z = -11.435 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 33 },
	[10039] = { config_id = 10039, gadget_id = 70350138, pos = { x = 484.859, y = 43.331, z = -14.644 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 34 },
	[10040] = { config_id = 10040, gadget_id = 70350138, pos = { x = 484.995, y = 43.344, z = -8.322 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 32 },
	[10041] = { config_id = 10041, gadget_id = 70350138, pos = { x = 485.025, y = 43.306, z = -11.435 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 33 },
	[10042] = { config_id = 10042, gadget_id = 70350138, pos = { x = 484.859, y = 43.331, z = -14.644 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 34 },
	[10043] = { config_id = 10043, gadget_id = 70350138, pos = { x = 484.995, y = 43.344, z = -8.322 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 32 },
	[10044] = { config_id = 10044, gadget_id = 70350138, pos = { x = 485.025, y = 43.306, z = -11.435 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 33 },
	[10045] = { config_id = 10045, gadget_id = 70350138, pos = { x = 484.859, y = 43.331, z = -14.644 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 80, route_id = 34 },
	[10052] = { config_id = 10052, gadget_id = 70350187, pos = { x = 547.675, y = 25.717, z = -8.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10053] = { config_id = 10053, gadget_id = 70350187, pos = { x = 547.671, y = 25.719, z = -9.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10054] = { config_id = 10054, gadget_id = 70350187, pos = { x = 547.681, y = 25.714, z = -11.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10055] = { config_id = 10055, gadget_id = 70310044, pos = { x = 570.056, y = 16.958, z = -16.591 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10056] = { config_id = 10056, gadget_id = 70350187, pos = { x = 547.681, y = 25.713, z = -13.301 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10057] = { config_id = 10057, gadget_id = 70350187, pos = { x = 547.681, y = 25.714, z = -15.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10058] = { config_id = 10058, gadget_id = 70350187, pos = { x = 528.675, y = 30.811, z = -8.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10059] = { config_id = 10059, gadget_id = 70350187, pos = { x = 528.670, y = 30.828, z = -9.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10060] = { config_id = 10060, gadget_id = 70350187, pos = { x = 528.680, y = 30.805, z = -11.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10061] = { config_id = 10061, gadget_id = 70350187, pos = { x = 528.681, y = 30.803, z = -13.301 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10062] = { config_id = 10062, gadget_id = 70350187, pos = { x = 528.681, y = 30.803, z = -15.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10063] = { config_id = 10063, gadget_id = 70350187, pos = { x = 511.861, y = 35.328, z = -8.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10064] = { config_id = 10064, gadget_id = 70350187, pos = { x = 511.857, y = 35.334, z = -9.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10065] = { config_id = 10065, gadget_id = 70350187, pos = { x = 511.866, y = 35.335, z = -11.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10066] = { config_id = 10066, gadget_id = 70350187, pos = { x = 511.868, y = 35.351, z = -13.301 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10067] = { config_id = 10067, gadget_id = 70350187, pos = { x = 511.866, y = 35.329, z = -15.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10068] = { config_id = 10068, gadget_id = 70350187, pos = { x = 491.866, y = 40.671, z = -15.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10069] = { config_id = 10069, gadget_id = 70350187, pos = { x = 491.868, y = 40.672, z = -13.301 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10070] = { config_id = 10070, gadget_id = 70350187, pos = { x = 491.867, y = 40.686, z = -11.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10071] = { config_id = 10071, gadget_id = 70350187, pos = { x = 491.856, y = 40.675, z = -9.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10072] = { config_id = 10072, gadget_id = 70350187, pos = { x = 491.860, y = 40.673, z = -8.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 左右移动的泡泡
	[10073] = { config_id = 10073, gadget_id = 70350138, pos = { x = 573.422, y = 19.814, z = -8.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart, route_id = 40 },
	-- 左右移动的泡泡
	[10074] = { config_id = 10074, gadget_id = 70350138, pos = { x = 548.082, y = 26.628, z = -7.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart, route_id = 41 },
	-- 左右移动的泡泡
	[10075] = { config_id = 10075, gadget_id = 70350138, pos = { x = 523.841, y = 33.047, z = -7.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart, route_id = 42 },
	-- 左右移动的泡泡
	[10076] = { config_id = 10076, gadget_id = 70350138, pos = { x = 494.349, y = 41.023, z = -7.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 80, state = GadgetState.GearStart, route_id = 43 },
	[10077] = { config_id = 10077, gadget_id = 70950010, pos = { x = 538.302, y = 24.437, z = -16.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10078] = { config_id = 10078, gadget_id = 70950010, pos = { x = 503.761, y = 33.979, z = -16.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10079] = { config_id = 10079, gadget_id = 70950010, pos = { x = 521.439, y = 31.145, z = -6.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10080] = { config_id = 10080, gadget_id = 70950010, pos = { x = 560.791, y = 17.380, z = -6.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[10081] = { config_id = 10081, gadget_id = 70360025, pos = { x = 478.957, y = 45.115, z = -11.446 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[10004] = { config_id = 10004, shape = RegionShape.CUBIC, size = { x = 180.000, y = 80.000, z = 50.000 }, pos = { x = 530.448, y = 37.254, z = -22.331 } },
	[10046] = { config_id = 10046, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 9.500 }, pos = { x = 477.003, y = 43.982, z = -11.639 } },
	[10048] = { config_id = 10048, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 15.000 }, pos = { x = 559.985, y = 21.949, z = -11.240 } },
	[10049] = { config_id = 10049, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 15.000 }, pos = { x = 538.076, y = 27.784, z = -11.240 } },
	[10050] = { config_id = 10050, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 15.000 }, pos = { x = 519.952, y = 32.642, z = -11.240 } },
	[10051] = { config_id = 10051, shape = RegionShape.CUBIC, size = { x = 10.000, y = 10.000, z = 15.000 }, pos = { x = 503.047, y = 37.216, z = -11.240 } }
}

-- 触发器
triggers = {
	{ config_id = 1010046, name = "ENTER_REGION_10046", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "", trigger_count = 0, forbid_guest = false },
	{ config_id = 1010048, name = "ENTER_REGION_10048", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10048", action = "action_EVENT_ENTER_REGION_10048" },
	{ config_id = 1010049, name = "ENTER_REGION_10049", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10049", action = "action_EVENT_ENTER_REGION_10049" },
	{ config_id = 1010050, name = "ENTER_REGION_10050", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10050", action = "action_EVENT_ENTER_REGION_10050" },
	{ config_id = 1010051, name = "ENTER_REGION_10051", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_10051", action = "action_EVENT_ENTER_REGION_10051" }
}

-- 变量
variables = {
	{ config_id = 1, name = "BubbleNum", value = 1, no_refresh = false },
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
		gadgets = { 10055 },
		regions = { 10004 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 10001, 10002, 10003, 10081 },
		regions = { 10046, 10048, 10049, 10050, 10051 },
		triggers = { "ENTER_REGION_10046", "ENTER_REGION_10048", "ENTER_REGION_10049", "ENTER_REGION_10050", "ENTER_REGION_10051" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 10010, 10011, 10012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 10013, 10014, 10015 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 10016, 10017, 10018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { },
		gadgets = { 10019, 10020, 10021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = ,
		monsters = { },
		gadgets = { 10022, 10023, 10024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = ,
		monsters = { },
		gadgets = { 10025, 10026, 10027 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = ,
		monsters = { },
		gadgets = { 10028, 10029, 10030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = ,
		monsters = { },
		gadgets = { 10031, 10032, 10033 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = ,
		monsters = { },
		gadgets = { 10034, 10035, 10036 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = ,
		monsters = { },
		gadgets = { 10037, 10038, 10039 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = ,
		monsters = { },
		gadgets = { 10040, 10041, 10042 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = ,
		monsters = { },
		gadgets = { 10043, 10044, 10045 },
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
		gadgets = { 10052, 10053, 10054, 10056, 10057 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 18,
		-- description = ,
		monsters = { },
		gadgets = { 10058, 10059, 10060, 10061, 10062 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 19,
		-- description = ,
		monsters = { },
		gadgets = { 10063, 10064, 10065, 10066, 10067 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 20,
		-- description = ,
		monsters = { },
		gadgets = { 10068, 10069, 10070, 10071, 10072 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 21,
		-- description = ,
		monsters = { },
		gadgets = { 10077, 10078, 10079, 10080 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 22,
		-- description = ,
		monsters = { },
		gadgets = { 10073, 10074, 10075, 10076 },
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
function condition_EVENT_ENTER_REGION_10048(context, evt)
	if evt.param1 ~= 10048 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10048(context, evt)
	-- 针对当前group内变量名为 "BubbleFlowerCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "BubbleFlowerCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10049(context, evt)
	if evt.param1 ~= 10049 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10049(context, evt)
	-- 针对当前group内变量名为 "BubbleFlowerCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "BubbleFlowerCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10050(context, evt)
	if evt.param1 ~= 10050 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10050(context, evt)
	-- 针对当前group内变量名为 "BubbleFlowerCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "BubbleFlowerCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_10051(context, evt)
	if evt.param1 ~= 10051 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_10051(context, evt)
	-- 针对当前group内变量名为 "BubbleFlowerCount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "BubbleFlowerCount", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

require "BubbleGame"
require "WindFlora_ReTrans"
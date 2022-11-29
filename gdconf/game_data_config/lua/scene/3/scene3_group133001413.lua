-- 基础信息
local base_info = {
	group_id = 133001413
}

-- Trigger变量
local defs = {
	gadget_aster = 413001,
	gadget_reward = 413124,
	group_id = 133001413,
	score_ratio = {normal=1,hard=1,nightmare=2,easy=3},
	difficulty_weight = {normal=35,hard=35,nightmare=30}
}

-- DEFS_MISCS
--交能量圈的模式，1为动态模式，2为静态模式
local circle_type_defs = {
        [1] = 1,
        [2] = 2,
        [3] = 2,
        [4] = 1
}

--配在主Group中
local progress_def = {
        ["normal"] = {0,700,1400,2000},
        ["hard"] = {0,700,1400,2000},
        ["nightmare"] = {0,700,1400,2000},
        ["easy"] = {0,300,700,1000,1600,2000}
}

--根据progress对应的monster_tide,配在主group中
local tide_defs = {
        [1] = {
                [0] = {suite={2,3},weight={50,50},circle=3},
                [1] = {suite={4,5,6,7},weight={25,25,25,25},circle=5},
                [2] = {suite={8,9,10,11},weight={25,25,25,25},circle=7},
        },
        [2] = {
                [0] = {suite={12,13},weight={50,50},circle=2},
                [1] = {suite={14,15,16,17},weight={25,25,25,25},circle=2},
                [2] = {suite={18,19,20,21},weight={25,25,25,25},circle=2},
        },
        [3] = {
                [0] = {suite={62,63},weight={50,50},circle=2},
                [1] = {suite={64,65,66,67},weight={25,25,25,25},circle=2},
                [2] = {suite={68,69,70,71},weight={25,25,25,25},circle=2},
        },
        [4] = {
                [0] = {suite={32,33},weight={50,50},circle=8},
                [1] = {suite={34,35},weight={50,50},circle=9},
                [2] = {suite={36,37},weight={50,50},circle=10},
                [3] = {suite={38,39},weight={50,50},circle=11},
                [4] = {suite={40,41},weight={50,50},circle=12}
        }
}

--点名buff参数,配在主group中
local buff_def = {
        --difficulty
        [1] = {
                --stage
                [1] = {buff={3},weight={100}},                
                [2] = {buff={1},weight={100}}                                           
        },
        [2] = {
                [1] = {buff={3},weight={100}},                
                [2] = {buff={1},weight={100}}     
        },
        [3] = {
                [1] = {buff={3},weight={100}},                
                [2] = {buff={1},weight={100}}     
        },
        [4] = {
                [1] = {buff={1},weight={100}},                
                [2] = {buff={3},weight={100}},
                [3] = {buff={3},weight={100}},
                [4] = {buff={1},weight={100}}     
        }
}


--monster_tide的启动参数,配在主group中
local tide_suite_config = {
        [2] = {total=12,min=1,max=6,next=22,delay=3},
        [3] = {total=12,min=1,max=6,next=23,delay=3},
        [4] = {total=12,min=1,max=6,next=24,delay=3},
        [5] = {total=12,min=1,max=6,next=25,delay=3},
        [6] = {total=8,min=1,max=4,next=26,delay=3},
        [7] = {total=10,min=1,max=5,next=27,delay=3},
        [8] = {total=12,min=1,max=6,next=28,delay=3},
        [9] = {total=2,min=1,max=2,next=29,delay=3},
        [10] = {total=2,min=1,max=2,next=30,delay=3},
        [11] = {total=2,min=1,max=2,next=31,delay=3},
        [12] = {total=2,min=1,max=2,next=13,delay=3},
        [13] = {total=3,min=1,max=3,next=12,delay=3},
        [14] = {total=6,min=1,max=6,next=15,delay=3},
        [15] = {total=2,min=1,max=2,next=16,delay=3},
        [16] = {total=3,min=1,max=3,next=17,delay=3},
        [17] = {total=3,min=1,max=3,next=14,delay=3},
        [18] = {total=4,min=1,max=4,next=19,delay=3},
        [19] = {total=3,min=1,max=3,next=20,delay=3},
        [20] = {total=1,min=1,max=1,next=21,delay=3},
        [21] = {total=1,min=1,max=1,next=18,delay=3},
        [22] = {total=4,min=1,max=4,next=3,delay=3},
        [23] = {total=4,min=1,max=4,next=2,delay=3},
        [24] = {total=4,min=1,max=4,next=5,delay=3},
        [25] = {total=4,min=1,max=4,next=6,delay=3},
        [26] = {total=4,min=1,max=4,next=7,delay=3},
        [27] = {total=4,min=1,max=4,next=4,delay=3},
        [28] = {total=6,min=1,max=6,next=9,delay=3},
        [29] = {total=4,min=1,max=4,next=10,delay=3},
        [30] = {total=3,min=1,max=3,next=11,delay=3},
        [31] = {total=3,min=1,max=3,next=8,delay=3},
        [32] = {total=6,min=1,max=6,next=42,delay=10},
        [33] = {total=6,min=1,max=6,next=47,delay=10},
        [34] = {total=5,min=1,max=5,next=43,delay=10},
        [35] = {total=5,min=1,max=5,next=48,delay=10},
        [36] = {total=5,min=1,max=5,next=44,delay=10},
        [37] = {total=6,min=1,max=6,next=49,delay=10},
        [38] = {total=3,min=1,max=3,next=45,delay=10},
        [39] = {total=3,min=1,max=3,next=50,delay=10},
        [40] = {total=2,min=1,max=2,next=46,delay=10},
        [41] = {total=3,min=1,max=3,next=51,delay=10},
        [42] = {total=3,min=1,max=3,next=32,delay=10},
        [43] = {total=1,min=1,max=1,next=34,delay=10},
        [44] = {total=3,min=1,max=3,next=36,delay=10},
        [45] = {total=1,min=1,max=1,next=38,delay=10},
        [46] = {total=2,min=1,max=2,next=40,delay=10},
        [47] = {total=3,min=1,max=3,next=33,delay=10},
        [48] = {total=1,min=1,max=1,next=35,delay=10},
        [49] = {total=3,min=1,max=3,next=37,delay=10},
        [50] = {total=1,min=1,max=1,next=39,delay=10},
        [51] = {total=2,min=1,max=2,next=41,delay=10},
        [52] = {total=4,min=1,max=4,next=63,delay=2},
        [53] = {total=4,min=1,max=4,next=62,delay=2},
        [54] = {total=4,min=1,max=4,next=65,delay=2},
        [55] = {total=4,min=1,max=4,next=66,delay=2},
        [56] = {total=4,min=1,max=4,next=67,delay=2},
        [57] = {total=4,min=1,max=4,next=64,delay=2},
        [58] = {total=6,min=1,max=6,next=69,delay=2},
        [59] = {total=4,min=1,max=4,next=70,delay=2},
        [60] = {total=3,min=1,max=3,next=71,delay=2},
        [61] = {total=3,min=1,max=3,next=68,delay=2},
        [62] = {total=12,min=1,max=6,next=52,delay=2},
        [63] = {total=12,min=1,max=6,next=53,delay=2},
        [64] = {total=12,min=1,max=6,next=54,delay=2},
        [65] = {total=12,min=1,max=6,next=55,delay=2},
        [66] = {total=8,min=1,max=4,next=56,delay=2},
        [67] = {total=10,min=1,max=5,next=57,delay=2},
        [68] = {total=12,min=1,max=6,next=58,delay=2},
        [69] = {total=2,min=1,max=2,next=59,delay=2},
        [70] = {total=2,min=1,max=2,next=60,delay=2},
        [71] = {total=2,min=1,max=2,next=61,delay=2}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[413002] = { config_id = 413002, monster_id = 25060101, pos = { x = 1886.671, y = 196.135, z = -1555.855 }, rot = { x = 0.000, y = 188.661, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413003] = { config_id = 413003, monster_id = 21010502, pos = { x = 1881.186, y = 196.037, z = -1535.823 }, rot = { x = 0.000, y = 158.494, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413006] = { config_id = 413006, monster_id = 21010502, pos = { x = 1887.032, y = 196.702, z = -1530.958 }, rot = { x = 0.000, y = 185.844, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413007] = { config_id = 413007, monster_id = 21030303, pos = { x = 1883.612, y = 195.979, z = -1544.233 }, rot = { x = 0.000, y = 33.395, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413008] = { config_id = 413008, monster_id = 21010301, pos = { x = 1896.673, y = 197.121, z = -1545.921 }, rot = { x = 0.000, y = 249.854, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413009] = { config_id = 413009, monster_id = 20010904, pos = { x = 1868.619, y = 196.354, z = -1545.238 }, rot = { x = 0.000, y = 105.227, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413010] = { config_id = 413010, monster_id = 20011103, pos = { x = 1869.740, y = 196.572, z = -1548.087 }, rot = { x = 0.000, y = 99.932, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413011] = { config_id = 413011, monster_id = 20010904, pos = { x = 1865.196, y = 196.582, z = -1549.634 }, rot = { x = 0.000, y = 80.098, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413012] = { config_id = 413012, monster_id = 21030303, pos = { x = 1861.684, y = 196.310, z = -1549.594 }, rot = { x = 0.000, y = 69.756, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413013] = { config_id = 413013, monster_id = 21030304, pos = { x = 1863.616, y = 195.577, z = -1539.792 }, rot = { x = 0.000, y = 116.099, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413014] = { config_id = 413014, monster_id = 21010902, pos = { x = 1883.315, y = 195.137, z = -1574.308 }, rot = { x = 0.000, y = 6.810, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413015] = { config_id = 413015, monster_id = 21010902, pos = { x = 1882.957, y = 196.194, z = -1534.522 }, rot = { x = 0.000, y = 180.892, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413016] = { config_id = 413016, monster_id = 21010603, pos = { x = 1872.558, y = 195.501, z = -1568.959 }, rot = { x = 0.000, y = 51.379, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413017] = { config_id = 413017, monster_id = 20011304, pos = { x = 1897.832, y = 197.241, z = -1549.909 }, rot = { x = 0.000, y = 264.376, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413018] = { config_id = 413018, monster_id = 20010604, pos = { x = 1900.070, y = 197.498, z = -1547.849 }, rot = { x = 0.000, y = 240.026, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413019] = { config_id = 413019, monster_id = 21030203, pos = { x = 1895.621, y = 197.075, z = -1544.696 }, rot = { x = 0.000, y = 243.525, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413020] = { config_id = 413020, monster_id = 20010702, pos = { x = 1900.674, y = 197.525, z = -1550.732 }, rot = { x = 0.000, y = 265.425, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413021] = { config_id = 413021, monster_id = 21030203, pos = { x = 1898.317, y = 197.144, z = -1557.108 }, rot = { x = 0.000, y = 288.864, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413022] = { config_id = 413022, monster_id = 21011002, pos = { x = 1875.371, y = 195.295, z = -1570.044 }, rot = { x = 0.000, y = 5.757, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413023] = { config_id = 413023, monster_id = 21011002, pos = { x = 1888.402, y = 197.062, z = -1536.171 }, rot = { x = 0.000, y = 180.966, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413024] = { config_id = 413024, monster_id = 21010603, pos = { x = 1880.210, y = 195.912, z = -1534.773 }, rot = { x = 0.000, y = 159.558, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413025] = { config_id = 413025, monster_id = 21010603, pos = { x = 1886.504, y = 195.137, z = -1574.117 }, rot = { x = 0.000, y = 347.529, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413026] = { config_id = 413026, monster_id = 25010301, pos = { x = 1888.051, y = 197.018, z = -1536.026 }, rot = { x = 0.000, y = 188.025, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413027] = { config_id = 413027, monster_id = 25010501, pos = { x = 1884.521, y = 196.453, z = -1535.436 }, rot = { x = 0.000, y = 190.845, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413028] = { config_id = 413028, monster_id = 23010601, pos = { x = 1898.613, y = 197.457, z = -1543.673 }, rot = { x = 0.000, y = 244.364, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413029] = { config_id = 413029, monster_id = 23010301, pos = { x = 1875.298, y = 195.129, z = -1573.467 }, rot = { x = 0.000, y = 21.865, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413030] = { config_id = 413030, monster_id = 21010701, pos = { x = 1895.592, y = 197.111, z = -1554.812 }, rot = { x = 0.000, y = 267.647, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413031] = { config_id = 413031, monster_id = 25070101, pos = { x = 1883.074, y = 196.093, z = -1556.160 }, rot = { x = 0.000, y = 184.785, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413032] = { config_id = 413032, monster_id = 21010701, pos = { x = 1891.577, y = 196.635, z = -1546.382 }, rot = { x = 0.000, y = 251.472, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413033] = { config_id = 413033, monster_id = 21010301, pos = { x = 1899.125, y = 197.408, z = -1552.809 }, rot = { x = 0.000, y = 254.805, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413034] = { config_id = 413034, monster_id = 21010301, pos = { x = 1896.583, y = 197.102, z = -1549.823 }, rot = { x = 0.000, y = 245.197, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413035] = { config_id = 413035, monster_id = 21010701, pos = { x = 1893.325, y = 196.793, z = -1551.112 }, rot = { x = 0.000, y = 256.446, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413036] = { config_id = 413036, monster_id = 21010301, pos = { x = 1896.673, y = 197.121, z = -1545.921 }, rot = { x = 0.000, y = 249.854, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413037] = { config_id = 413037, monster_id = 21011002, pos = { x = 1890.698, y = 197.302, z = -1536.252 }, rot = { x = 0.000, y = 207.523, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413038] = { config_id = 413038, monster_id = 21010502, pos = { x = 1893.254, y = 197.009, z = -1542.746 }, rot = { x = 0.000, y = 241.304, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413039] = { config_id = 413039, monster_id = 21011201, pos = { x = 1877.162, y = 195.779, z = -1533.802 }, rot = { x = 0.000, y = 175.154, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413040] = { config_id = 413040, monster_id = 21011002, pos = { x = 1897.811, y = 197.255, z = -1550.343 }, rot = { x = 0.000, y = 242.331, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413041] = { config_id = 413041, monster_id = 25060101, pos = { x = 1879.365, y = 196.039, z = -1555.164 }, rot = { x = 0.000, y = 170.055, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413042] = { config_id = 413042, monster_id = 25010401, pos = { x = 1895.625, y = 197.005, z = -1549.784 }, rot = { x = 0.000, y = 303.161, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413043] = { config_id = 413043, monster_id = 23010101, pos = { x = 1886.680, y = 196.015, z = -1549.458 }, rot = { x = 0.000, y = 13.795, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413044] = { config_id = 413044, monster_id = 23010201, pos = { x = 1879.939, y = 195.797, z = -1548.065 }, rot = { x = 0.000, y = 32.939, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413045] = { config_id = 413045, monster_id = 25010601, pos = { x = 1875.347, y = 195.979, z = -1544.368 }, rot = { x = 0.000, y = 75.120, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413046] = { config_id = 413046, monster_id = 23010601, pos = { x = 1894.041, y = 196.658, z = -1561.699 }, rot = { x = 0.000, y = 252.103, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413047] = { config_id = 413047, monster_id = 23010301, pos = { x = 1872.796, y = 196.305, z = -1557.608 }, rot = { x = 0.000, y = 128.219, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413048] = { config_id = 413048, monster_id = 25030301, pos = { x = 1875.609, y = 196.068, z = -1553.926 }, rot = { x = 0.000, y = 286.525, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413049] = { config_id = 413049, monster_id = 25030201, pos = { x = 1878.631, y = 195.929, z = -1551.668 }, rot = { x = 0.000, y = 284.583, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413050] = { config_id = 413050, monster_id = 23010301, pos = { x = 1881.735, y = 196.086, z = -1555.764 }, rot = { x = 0.000, y = 104.731, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413051] = { config_id = 413051, monster_id = 23010501, pos = { x = 1883.962, y = 195.754, z = -1549.095 }, rot = { x = 0.000, y = 96.186, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413052] = { config_id = 413052, monster_id = 25010701, pos = { x = 1877.336, y = 195.913, z = -1548.506 }, rot = { x = 0.000, y = 270.968, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413053] = { config_id = 413053, monster_id = 21011201, pos = { x = 1888.584, y = 196.042, z = -1560.482 }, rot = { x = 0.000, y = 357.686, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4106, 4103 }, area_id = 2, kill_score = 20 },
	[413054] = { config_id = 413054, monster_id = 21011201, pos = { x = 1882.970, y = 195.371, z = -1561.644 }, rot = { x = 0.000, y = 359.306, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4106, 4103 }, area_id = 2, kill_score = 20 },
	[413055] = { config_id = 413055, monster_id = 21010701, pos = { x = 1878.880, y = 195.861, z = -1544.399 }, rot = { x = 0.000, y = 168.116, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4106, 4103 }, area_id = 2, kill_score = 20 },
	[413056] = { config_id = 413056, monster_id = 21010701, pos = { x = 1888.062, y = 196.337, z = -1545.128 }, rot = { x = 0.000, y = 190.569, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4106, 4103 }, area_id = 2, kill_score = 20 },
	[413057] = { config_id = 413057, monster_id = 21010502, pos = { x = 1876.212, y = 195.783, z = -1561.846 }, rot = { x = 0.000, y = 173.100, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413058] = { config_id = 413058, monster_id = 21011002, pos = { x = 1884.789, y = 195.301, z = -1562.110 }, rot = { x = 0.000, y = 179.149, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413059] = { config_id = 413059, monster_id = 21011201, pos = { x = 1883.687, y = 196.295, z = -1534.591 }, rot = { x = 0.000, y = 192.071, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413060] = { config_id = 413060, monster_id = 21010603, pos = { x = 1887.017, y = 196.830, z = -1532.534 }, rot = { x = 0.000, y = 199.895, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413061] = { config_id = 413061, monster_id = 21010603, pos = { x = 1880.020, y = 195.764, z = -1528.865 }, rot = { x = 0.000, y = 187.642, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413062] = { config_id = 413062, monster_id = 21010603, pos = { x = 1873.264, y = 196.155, z = -1544.184 }, rot = { x = 0.000, y = 143.552, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413063] = { config_id = 413063, monster_id = 21011201, pos = { x = 1880.338, y = 195.990, z = -1536.891 }, rot = { x = 0.000, y = 183.817, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413064] = { config_id = 413064, monster_id = 21010701, pos = { x = 1895.592, y = 197.111, z = -1554.812 }, rot = { x = 0.000, y = 267.647, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413065] = { config_id = 413065, monster_id = 21010502, pos = { x = 1896.852, y = 197.189, z = -1544.872 }, rot = { x = 0.000, y = 239.393, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413066] = { config_id = 413066, monster_id = 21030304, pos = { x = 1882.010, y = 195.713, z = -1560.360 }, rot = { x = 0.000, y = 166.592, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413067] = { config_id = 413067, monster_id = 20011103, pos = { x = 1864.693, y = 196.344, z = -1546.638 }, rot = { x = 0.000, y = 110.988, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413068] = { config_id = 413068, monster_id = 21030402, pos = { x = 1880.356, y = 195.678, z = -1561.232 }, rot = { x = 0.000, y = 181.076, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413069] = { config_id = 413069, monster_id = 21010603, pos = { x = 1890.466, y = 197.286, z = -1536.359 }, rot = { x = 0.000, y = 198.087, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413070] = { config_id = 413070, monster_id = 21010603, pos = { x = 1874.050, y = 195.137, z = -1575.747 }, rot = { x = 0.000, y = 49.902, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413071] = { config_id = 413071, monster_id = 21010603, pos = { x = 1882.625, y = 196.028, z = -1530.585 }, rot = { x = 0.000, y = 236.187, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413072] = { config_id = 413072, monster_id = 20011304, pos = { x = 1898.019, y = 197.333, z = -1552.485 }, rot = { x = 0.000, y = 264.376, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413076] = { config_id = 413076, monster_id = 21010701, pos = { x = 1891.577, y = 196.635, z = -1546.382 }, rot = { x = 0.000, y = 251.472, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413077] = { config_id = 413077, monster_id = 21010603, pos = { x = 1875.210, y = 195.600, z = -1530.506 }, rot = { x = 0.000, y = 132.250, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413078] = { config_id = 413078, monster_id = 21010603, pos = { x = 1882.449, y = 195.137, z = -1577.641 }, rot = { x = 0.000, y = 338.180, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413079] = { config_id = 413079, monster_id = 21010301, pos = { x = 1887.129, y = 195.586, z = -1561.868 }, rot = { x = 0.000, y = 357.686, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4106, 4103 }, area_id = 2, kill_score = 20 },
	[413080] = { config_id = 413080, monster_id = 22010301, pos = { x = 1896.437, y = 197.074, z = -1549.364 }, rot = { x = 0.000, y = 256.032, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1026, 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413081] = { config_id = 413081, monster_id = 22010201, pos = { x = 1895.241, y = 196.987, z = -1545.926 }, rot = { x = 0.000, y = 253.031, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1029, 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413082] = { config_id = 413082, monster_id = 23020101, pos = { x = 1894.123, y = 196.891, z = -1553.177 }, rot = { x = 0.000, y = 279.635, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 60 },
	[413083] = { config_id = 413083, monster_id = 24010101, pos = { x = 1896.483, y = 197.066, z = -1548.524 }, rot = { x = 0.000, y = 248.234, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, pose_id = 100, area_id = 2, kill_score = 80 },
	[413084] = { config_id = 413084, monster_id = 23010101, pos = { x = 1881.937, y = 196.121, z = -1537.281 }, rot = { x = 0.000, y = 318.545, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413085] = { config_id = 413085, monster_id = 23010401, pos = { x = 1882.997, y = 196.074, z = -1530.049 }, rot = { x = 0.000, y = 234.298, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413086] = { config_id = 413086, monster_id = 23010201, pos = { x = 1876.496, y = 195.575, z = -1528.853 }, rot = { x = 0.000, y = 149.246, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413087] = { config_id = 413087, monster_id = 23030101, pos = { x = 1873.565, y = 195.226, z = -1572.686 }, rot = { x = 0.000, y = 37.927, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 60 },
	[413088] = { config_id = 413088, monster_id = 24010101, pos = { x = 1899.739, y = 197.602, z = -1543.966 }, rot = { x = 0.000, y = 220.361, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, pose_id = 100, area_id = 2, kill_score = 80 },
	[413089] = { config_id = 413089, monster_id = 23010601, pos = { x = 1884.565, y = 194.994, z = -1567.434 }, rot = { x = 0.000, y = 178.652, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413090] = { config_id = 413090, monster_id = 23010501, pos = { x = 1877.269, y = 195.137, z = -1579.251 }, rot = { x = 0.000, y = 0.985, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413091] = { config_id = 413091, monster_id = 23010301, pos = { x = 1871.277, y = 195.072, z = -1576.309 }, rot = { x = 0.000, y = 43.232, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413092] = { config_id = 413092, monster_id = 21020202, pos = { x = 1894.755, y = 196.936, z = -1551.449 }, rot = { x = 0.000, y = 228.166, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413093] = { config_id = 413093, monster_id = 24010101, pos = { x = 1875.415, y = 195.986, z = -1545.398 }, rot = { x = 0.000, y = 128.115, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, pose_id = 100, area_id = 2, kill_score = 80 },
	[413094] = { config_id = 413094, monster_id = 20011304, pos = { x = 1899.805, y = 197.410, z = -1549.765 }, rot = { x = 0.000, y = 256.302, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413095] = { config_id = 413095, monster_id = 21020202, pos = { x = 1873.086, y = 196.009, z = -1559.619 }, rot = { x = 0.000, y = 77.973, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413096] = { config_id = 413096, monster_id = 21020101, pos = { x = 1884.890, y = 196.344, z = -1542.107 }, rot = { x = 0.000, y = 204.701, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413097] = { config_id = 413097, monster_id = 21020301, pos = { x = 1892.520, y = 196.683, z = -1558.406 }, rot = { x = 0.000, y = 308.799, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413098] = { config_id = 413098, monster_id = 26010201, pos = { x = 1888.391, y = 197.041, z = -1538.451 }, rot = { x = 0.000, y = 218.264, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413099] = { config_id = 413099, monster_id = 26010101, pos = { x = 1891.450, y = 196.812, z = -1543.561 }, rot = { x = 0.000, y = 237.710, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413100] = { config_id = 413100, monster_id = 20011304, pos = { x = 1869.443, y = 196.485, z = -1546.971 }, rot = { x = 0.000, y = 123.245, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413101] = { config_id = 413101, monster_id = 20010904, pos = { x = 1870.940, y = 196.221, z = -1543.088 }, rot = { x = 0.000, y = 112.387, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413102] = { config_id = 413102, monster_id = 20010904, pos = { x = 1871.975, y = 195.391, z = -1569.952 }, rot = { x = 0.000, y = 37.756, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413103] = { config_id = 413103, monster_id = 21010301, pos = { x = 1899.125, y = 197.408, z = -1552.809 }, rot = { x = 0.000, y = 254.805, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413104] = { config_id = 413104, monster_id = 22010202, pos = { x = 1894.721, y = 196.917, z = -1549.567 }, rot = { x = 0.000, y = 217.882, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, isElite = true, area_id = 2, kill_score = 50 },
	[413105] = { config_id = 413105, monster_id = 21010301, pos = { x = 1896.583, y = 197.102, z = -1549.823 }, rot = { x = 0.000, y = 245.197, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413106] = { config_id = 413106, monster_id = 22010104, pos = { x = 1880.118, y = 195.904, z = -1534.798 }, rot = { x = 0.000, y = 177.144, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, isElite = true, area_id = 2, kill_score = 50 },
	[413107] = { config_id = 413107, monster_id = 23010101, pos = { x = 1887.667, y = 196.208, z = -1553.571 }, rot = { x = 0.000, y = 90.735, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413108] = { config_id = 413108, monster_id = 23010401, pos = { x = 1874.722, y = 195.897, z = -1559.914 }, rot = { x = 0.000, y = 217.859, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413109] = { config_id = 413109, monster_id = 23010201, pos = { x = 1876.103, y = 195.945, z = -1545.796 }, rot = { x = 0.000, y = 313.421, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413110] = { config_id = 413110, monster_id = 23010301, pos = { x = 1884.335, y = 196.331, z = -1541.392 }, rot = { x = 0.000, y = 189.749, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413111] = { config_id = 413111, monster_id = 23010501, pos = { x = 1872.488, y = 196.442, z = -1553.229 }, rot = { x = 0.000, y = 83.918, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413112] = { config_id = 413112, monster_id = 23010601, pos = { x = 1885.429, y = 195.278, z = -1562.778 }, rot = { x = 0.000, y = 322.091, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413113] = { config_id = 413113, monster_id = 23020102, pos = { x = 1867.582, y = 196.532, z = -1547.855 }, rot = { x = 0.000, y = 106.876, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413114] = { config_id = 413114, monster_id = 23030102, pos = { x = 1890.433, y = 196.497, z = -1552.883 }, rot = { x = 0.000, y = 273.945, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, isElite = true, area_id = 2, kill_score = 50 },
	[413115] = { config_id = 413115, monster_id = 25010401, pos = { x = 1894.361, y = 196.890, z = -1550.720 }, rot = { x = 0.000, y = 203.305, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413116] = { config_id = 413116, monster_id = 25010601, pos = { x = 1882.549, y = 196.203, z = -1539.280 }, rot = { x = 0.000, y = 182.450, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413117] = { config_id = 413117, monster_id = 25010301, pos = { x = 1868.209, y = 196.569, z = -1550.783 }, rot = { x = 0.000, y = 98.627, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413118] = { config_id = 413118, monster_id = 25030201, pos = { x = 1895.625, y = 196.984, z = -1547.927 }, rot = { x = 0.000, y = 220.194, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413119] = { config_id = 413119, monster_id = 25030201, pos = { x = 1878.873, y = 195.925, z = -1536.224 }, rot = { x = 0.000, y = 171.100, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413120] = { config_id = 413120, monster_id = 21020501, pos = { x = 1881.736, y = 195.919, z = -1529.655 }, rot = { x = 0.000, y = 171.100, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 80 },
	[413121] = { config_id = 413121, monster_id = 21010701, pos = { x = 1893.325, y = 196.793, z = -1551.112 }, rot = { x = 0.000, y = 256.446, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413122] = { config_id = 413122, monster_id = 21011201, pos = { x = 1877.305, y = 195.788, z = -1534.094 }, rot = { x = 0.000, y = 179.905, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413123] = { config_id = 413123, monster_id = 24010101, pos = { x = 1894.366, y = 196.936, z = -1553.858 }, rot = { x = 0.000, y = 277.482, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, pose_id = 100, area_id = 2, kill_score = 80 },
	[413125] = { config_id = 413125, monster_id = 21010301, pos = { x = 1880.318, y = 195.460, z = -1562.507 }, rot = { x = 0.000, y = 21.952, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4106, 4103 }, area_id = 2, kill_score = 20 },
	[413126] = { config_id = 413126, monster_id = 21010201, pos = { x = 1885.286, y = 196.626, z = -1538.155 }, rot = { x = 0.000, y = 197.698, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413127] = { config_id = 413127, monster_id = 21010201, pos = { x = 1875.992, y = 195.997, z = -1539.039 }, rot = { x = 0.000, y = 181.523, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413128] = { config_id = 413128, monster_id = 21011201, pos = { x = 1884.615, y = 196.452, z = -1534.152 }, rot = { x = 0.000, y = 184.856, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413129] = { config_id = 413129, monster_id = 21011201, pos = { x = 1880.940, y = 196.008, z = -1535.516 }, rot = { x = 0.000, y = 175.248, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413130] = { config_id = 413130, monster_id = 21010201, pos = { x = 1881.034, y = 196.061, z = -1539.018 }, rot = { x = 0.000, y = 186.497, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413131] = { config_id = 413131, monster_id = 20011401, pos = { x = 1883.571, y = 195.107, z = -1563.726 }, rot = { x = 0.000, y = 333.474, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413132] = { config_id = 413132, monster_id = 20011401, pos = { x = 1878.564, y = 195.700, z = -1561.774 }, rot = { x = 0.000, y = 59.358, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413133] = { config_id = 413133, monster_id = 20011201, pos = { x = 1883.763, y = 196.377, z = -1537.240 }, rot = { x = 0.000, y = 179.905, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413134] = { config_id = 413134, monster_id = 20011201, pos = { x = 1887.376, y = 196.924, z = -1537.466 }, rot = { x = 0.000, y = 179.905, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413135] = { config_id = 413135, monster_id = 20011201, pos = { x = 1885.738, y = 196.691, z = -1538.083 }, rot = { x = 0.000, y = 179.905, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413136] = { config_id = 413136, monster_id = 20011201, pos = { x = 1881.822, y = 196.118, z = -1537.682 }, rot = { x = 0.000, y = 179.905, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413137] = { config_id = 413137, monster_id = 21030201, pos = { x = 1884.862, y = 196.517, z = -1535.585 }, rot = { x = 0.000, y = 179.905, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413138] = { config_id = 413138, monster_id = 20011001, pos = { x = 1881.529, y = 194.964, z = -1568.871 }, rot = { x = 0.000, y = 15.870, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413139] = { config_id = 413139, monster_id = 20011001, pos = { x = 1878.113, y = 195.179, z = -1567.659 }, rot = { x = 0.000, y = 15.870, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413140] = { config_id = 413140, monster_id = 20011001, pos = { x = 1879.858, y = 195.046, z = -1567.514 }, rot = { x = 0.000, y = 15.870, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413141] = { config_id = 413141, monster_id = 20011001, pos = { x = 1883.518, y = 194.957, z = -1568.983 }, rot = { x = 0.000, y = 15.870, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413142] = { config_id = 413142, monster_id = 21030301, pos = { x = 1880.018, y = 195.011, z = -1570.161 }, rot = { x = 0.000, y = 15.870, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413143] = { config_id = 413143, monster_id = 21010902, pos = { x = 1877.079, y = 195.979, z = -1551.092 }, rot = { x = 0.000, y = 298.899, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413144] = { config_id = 413144, monster_id = 21010201, pos = { x = 1873.579, y = 196.136, z = -1543.730 }, rot = { x = 0.000, y = 111.843, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413145] = { config_id = 413145, monster_id = 21020301, pos = { x = 1873.054, y = 196.294, z = -1547.302 }, rot = { x = 0.000, y = 107.967, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 40 },
	[413146] = { config_id = 413146, monster_id = 21010201, pos = { x = 1871.241, y = 196.672, z = -1550.687 }, rot = { x = 0.000, y = 93.237, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413147] = { config_id = 413147, monster_id = 21010301, pos = { x = 1896.872, y = 197.241, z = -1553.431 }, rot = { x = 0.000, y = 286.420, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413148] = { config_id = 413148, monster_id = 21010301, pos = { x = 1897.525, y = 197.211, z = -1550.014 }, rot = { x = 0.000, y = 282.544, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413149] = { config_id = 413149, monster_id = 21010301, pos = { x = 1899.009, y = 197.389, z = -1546.472 }, rot = { x = 0.000, y = 267.814, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413150] = { config_id = 413150, monster_id = 21030101, pos = { x = 1901.847, y = 197.921, z = -1544.095 }, rot = { x = 0.000, y = 267.814, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413151] = { config_id = 413151, monster_id = 21030101, pos = { x = 1898.342, y = 197.199, z = -1556.413 }, rot = { x = 0.000, y = 298.426, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413152] = { config_id = 413152, monster_id = 21020101, pos = { x = 1901.582, y = 197.644, z = -1550.607 }, rot = { x = 0.000, y = 277.393, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 40 },
	[413153] = { config_id = 413153, monster_id = 20011201, pos = { x = 1885.764, y = 196.683, z = -1538.704 }, rot = { x = 0.000, y = 209.460, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413154] = { config_id = 413154, monster_id = 20010501, pos = { x = 1888.059, y = 196.815, z = -1541.120 }, rot = { x = 0.000, y = 257.842, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413155] = { config_id = 413155, monster_id = 20011101, pos = { x = 1871.266, y = 196.619, z = -1549.307 }, rot = { x = 0.000, y = 103.139, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413156] = { config_id = 413156, monster_id = 20010901, pos = { x = 1870.851, y = 196.343, z = -1545.408 }, rot = { x = 0.000, y = 117.750, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413157] = { config_id = 413157, monster_id = 20011101, pos = { x = 1873.883, y = 196.115, z = -1544.599 }, rot = { x = 0.000, y = 117.750, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413158] = { config_id = 413158, monster_id = 20010601, pos = { x = 1900.419, y = 197.580, z = -1547.126 }, rot = { x = 0.000, y = 256.728, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413159] = { config_id = 413159, monster_id = 20011301, pos = { x = 1902.524, y = 197.849, z = -1550.434 }, rot = { x = 0.000, y = 271.340, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413160] = { config_id = 413160, monster_id = 20010701, pos = { x = 1900.169, y = 197.452, z = -1552.507 }, rot = { x = 0.000, y = 271.340, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413161] = { config_id = 413161, monster_id = 20011502, pos = { x = 1883.923, y = 196.245, z = -1541.715 }, rot = { x = 0.000, y = 183.925, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413162] = { config_id = 413162, monster_id = 21010902, pos = { x = 1883.315, y = 196.269, z = -1535.915 }, rot = { x = 0.000, y = 179.477, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413163] = { config_id = 413163, monster_id = 22010301, pos = { x = 1886.361, y = 195.998, z = -1550.296 }, rot = { x = 0.000, y = 256.728, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413164] = { config_id = 413164, monster_id = 22010201, pos = { x = 1886.656, y = 196.119, z = -1556.357 }, rot = { x = 0.000, y = 282.385, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413165] = { config_id = 413165, monster_id = 22010101, pos = { x = 1885.709, y = 196.064, z = -1553.202 }, rot = { x = 0.000, y = 282.385, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413166] = { config_id = 413166, monster_id = 21030203, pos = { x = 1889.510, y = 196.464, z = -1555.784 }, rot = { x = 0.000, y = 282.385, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413167] = { config_id = 413167, monster_id = 21030303, pos = { x = 1889.842, y = 196.408, z = -1550.619 }, rot = { x = 0.000, y = 241.938, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413168] = { config_id = 413168, monster_id = 21010502, pos = { x = 1894.526, y = 198.412, z = -1540.559 }, rot = { x = 0.000, y = 208.346, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413169] = { config_id = 413169, monster_id = 21011002, pos = { x = 1901.652, y = 198.235, z = -1559.773 }, rot = { x = 0.000, y = 294.942, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413170] = { config_id = 413170, monster_id = 20010301, pos = { x = 1888.063, y = 196.175, z = -1547.503 }, rot = { x = 0.000, y = 333.474, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413171] = { config_id = 413171, monster_id = 20010301, pos = { x = 1882.630, y = 195.778, z = -1547.003 }, rot = { x = 0.000, y = 32.910, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413172] = { config_id = 413172, monster_id = 21010502, pos = { x = 1890.517, y = 196.506, z = -1552.152 }, rot = { x = 0.000, y = 89.635, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413173] = { config_id = 413173, monster_id = 20011001, pos = { x = 1868.470, y = 195.941, z = -1560.166 }, rot = { x = 0.000, y = 80.484, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413174] = { config_id = 413174, monster_id = 20010801, pos = { x = 1872.156, y = 195.993, z = -1563.424 }, rot = { x = 0.000, y = 351.342, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413175] = { config_id = 413175, monster_id = 20010403, pos = { x = 1880.318, y = 195.032, z = -1567.152 }, rot = { x = 0.000, y = 15.981, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413176] = { config_id = 413176, monster_id = 21011002, pos = { x = 1878.642, y = 195.106, z = -1573.505 }, rot = { x = 0.000, y = 15.225, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413177] = { config_id = 413177, monster_id = 21010502, pos = { x = 1881.186, y = 196.037, z = -1535.823 }, rot = { x = 0.000, y = 158.494, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413178] = { config_id = 413178, monster_id = 21011002, pos = { x = 1890.698, y = 197.302, z = -1536.252 }, rot = { x = 0.000, y = 207.523, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413179] = { config_id = 413179, monster_id = 21010502, pos = { x = 1889.422, y = 195.554, z = -1566.977 }, rot = { x = 0.000, y = 335.508, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413180] = { config_id = 413180, monster_id = 21011002, pos = { x = 1873.264, y = 195.972, z = -1560.982 }, rot = { x = 0.000, y = 72.752, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413181] = { config_id = 413181, monster_id = 21010502, pos = { x = 1870.511, y = 196.543, z = -1552.183 }, rot = { x = 0.000, y = 98.870, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413182] = { config_id = 413182, monster_id = 21030303, pos = { x = 1883.734, y = 196.399, z = -1538.435 }, rot = { x = 0.000, y = 172.801, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413183] = { config_id = 413183, monster_id = 21010502, pos = { x = 1897.880, y = 197.339, z = -1553.613 }, rot = { x = 0.000, y = 289.456, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413184] = { config_id = 413184, monster_id = 21030304, pos = { x = 1882.915, y = 194.949, z = -1568.423 }, rot = { x = 0.000, y = 16.140, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413185] = { config_id = 413185, monster_id = 21010902, pos = { x = 1899.337, y = 197.323, z = -1554.826 }, rot = { x = 0.000, y = 271.300, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413186] = { config_id = 413186, monster_id = 21010902, pos = { x = 1876.719, y = 196.001, z = -1540.001 }, rot = { x = 0.000, y = 138.441, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413187] = { config_id = 413187, monster_id = 21010603, pos = { x = 1899.135, y = 197.382, z = -1548.732 }, rot = { x = 0.000, y = 254.258, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413188] = { config_id = 413188, monster_id = 21010603, pos = { x = 1871.534, y = 196.282, z = -1544.958 }, rot = { x = 0.000, y = 129.800, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413189] = { config_id = 413189, monster_id = 21011002, pos = { x = 1885.383, y = 195.052, z = -1566.946 }, rot = { x = 0.000, y = 352.615, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413190] = { config_id = 413190, monster_id = 21011002, pos = { x = 1877.261, y = 195.945, z = -1541.893 }, rot = { x = 0.000, y = 153.452, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413191] = { config_id = 413191, monster_id = 21010603, pos = { x = 1893.117, y = 196.536, z = -1561.184 }, rot = { x = 0.000, y = 305.353, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413192] = { config_id = 413192, monster_id = 21010603, pos = { x = 1871.435, y = 196.518, z = -1548.346 }, rot = { x = 0.000, y = 131.260, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413193] = { config_id = 413193, monster_id = 25010301, pos = { x = 1887.364, y = 196.876, z = -1539.824 }, rot = { x = 0.000, y = 188.025, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413194] = { config_id = 413194, monster_id = 25010501, pos = { x = 1883.834, y = 196.388, z = -1539.234 }, rot = { x = 0.000, y = 190.845, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413195] = { config_id = 413195, monster_id = 23010601, pos = { x = 1870.850, y = 195.690, z = -1565.896 }, rot = { x = 0.000, y = 43.254, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413196] = { config_id = 413196, monster_id = 23010301, pos = { x = 1877.494, y = 195.117, z = -1569.944 }, rot = { x = 0.000, y = 21.865, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413197] = { config_id = 413197, monster_id = 25010401, pos = { x = 1895.625, y = 197.005, z = -1549.784 }, rot = { x = 0.000, y = 253.945, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413198] = { config_id = 413198, monster_id = 25010601, pos = { x = 1875.347, y = 195.979, z = -1544.368 }, rot = { x = 0.000, y = 125.648, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413199] = { config_id = 413199, monster_id = 23010601, pos = { x = 1892.614, y = 196.502, z = -1560.353 }, rot = { x = 0.000, y = 306.716, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413200] = { config_id = 413200, monster_id = 23010301, pos = { x = 1871.707, y = 196.695, z = -1550.940 }, rot = { x = 0.000, y = 108.579, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413201] = { config_id = 413201, monster_id = 21010502, pos = { x = 1873.819, y = 195.765, z = -1564.655 }, rot = { x = 0.000, y = 48.860, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413202] = { config_id = 413202, monster_id = 21011002, pos = { x = 1869.211, y = 196.183, z = -1557.417 }, rot = { x = 0.000, y = 54.909, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413203] = { config_id = 413203, monster_id = 21030402, pos = { x = 1870.979, y = 196.045, z = -1561.577 }, rot = { x = 0.000, y = 56.836, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413204] = { config_id = 413204, monster_id = 21010603, pos = { x = 1877.589, y = 195.438, z = -1565.084 }, rot = { x = 0.000, y = 27.799, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413205] = { config_id = 413205, monster_id = 21010603, pos = { x = 1876.857, y = 195.999, z = -1539.810 }, rot = { x = 0.000, y = 150.386, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413206] = { config_id = 413206, monster_id = 21010603, pos = { x = 1893.910, y = 196.540, z = -1563.789 }, rot = { x = 0.000, y = 320.003, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413207] = { config_id = 413207, monster_id = 21010603, pos = { x = 1894.241, y = 196.902, z = -1546.272 }, rot = { x = 0.000, y = 235.145, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413208] = { config_id = 413208, monster_id = 23010101, pos = { x = 1888.435, y = 197.015, z = -1539.437 }, rot = { x = 0.000, y = 185.013, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413209] = { config_id = 413209, monster_id = 23010401, pos = { x = 1883.734, y = 196.342, z = -1536.604 }, rot = { x = 0.000, y = 178.457, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413210] = { config_id = 413210, monster_id = 23010201, pos = { x = 1878.248, y = 195.978, z = -1537.813 }, rot = { x = 0.000, y = 161.389, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413211] = { config_id = 413211, monster_id = 23010601, pos = { x = 1882.280, y = 194.949, z = -1568.835 }, rot = { x = 0.000, y = 355.725, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413212] = { config_id = 413212, monster_id = 23010501, pos = { x = 1879.203, y = 195.527, z = -1562.940 }, rot = { x = 0.000, y = 0.985, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413213] = { config_id = 413213, monster_id = 23010301, pos = { x = 1874.573, y = 195.692, z = -1565.395 }, rot = { x = 0.000, y = 27.226, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413214] = { config_id = 413214, monster_id = 21010301, pos = { x = 1896.673, y = 197.121, z = -1545.921 }, rot = { x = 0.000, y = 249.854, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413215] = { config_id = 413215, monster_id = 21010701, pos = { x = 1895.592, y = 197.111, z = -1554.812 }, rot = { x = 0.000, y = 267.647, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413216] = { config_id = 413216, monster_id = 21010701, pos = { x = 1891.577, y = 196.635, z = -1546.382 }, rot = { x = 0.000, y = 251.472, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413217] = { config_id = 413217, monster_id = 21010301, pos = { x = 1899.125, y = 197.408, z = -1552.809 }, rot = { x = 0.000, y = 254.805, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413218] = { config_id = 413218, monster_id = 21010301, pos = { x = 1896.583, y = 197.102, z = -1549.823 }, rot = { x = 0.000, y = 245.197, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413219] = { config_id = 413219, monster_id = 21010701, pos = { x = 1893.325, y = 196.793, z = -1551.112 }, rot = { x = 0.000, y = 256.446, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413220] = { config_id = 413220, monster_id = 21011201, pos = { x = 1877.162, y = 195.779, z = -1533.802 }, rot = { x = 0.000, y = 175.154, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413221] = { config_id = 413221, monster_id = 21011201, pos = { x = 1883.687, y = 196.295, z = -1534.591 }, rot = { x = 0.000, y = 192.071, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413222] = { config_id = 413222, monster_id = 21010603, pos = { x = 1887.017, y = 196.830, z = -1532.534 }, rot = { x = 0.000, y = 199.895, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413223] = { config_id = 413223, monster_id = 21010603, pos = { x = 1880.020, y = 195.764, z = -1528.865 }, rot = { x = 0.000, y = 187.642, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413224] = { config_id = 413224, monster_id = 21010603, pos = { x = 1873.264, y = 196.155, z = -1544.184 }, rot = { x = 0.000, y = 143.552, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413225] = { config_id = 413225, monster_id = 21011201, pos = { x = 1880.338, y = 195.990, z = -1536.891 }, rot = { x = 0.000, y = 183.817, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413226] = { config_id = 413226, monster_id = 20010904, pos = { x = 1868.619, y = 196.354, z = -1545.238 }, rot = { x = 0.000, y = 105.227, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413227] = { config_id = 413227, monster_id = 20011103, pos = { x = 1869.740, y = 196.572, z = -1548.087 }, rot = { x = 0.000, y = 99.932, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413228] = { config_id = 413228, monster_id = 20010904, pos = { x = 1865.196, y = 196.582, z = -1549.634 }, rot = { x = 0.000, y = 80.098, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413229] = { config_id = 413229, monster_id = 21030303, pos = { x = 1861.684, y = 196.310, z = -1549.594 }, rot = { x = 0.000, y = 69.756, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413230] = { config_id = 413230, monster_id = 21030304, pos = { x = 1863.616, y = 195.577, z = -1539.792 }, rot = { x = 0.000, y = 116.099, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413231] = { config_id = 413231, monster_id = 20011103, pos = { x = 1864.693, y = 196.344, z = -1546.638 }, rot = { x = 0.000, y = 110.988, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413232] = { config_id = 413232, monster_id = 20011304, pos = { x = 1897.832, y = 197.241, z = -1549.909 }, rot = { x = 0.000, y = 264.376, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413233] = { config_id = 413233, monster_id = 20010604, pos = { x = 1900.070, y = 197.498, z = -1547.849 }, rot = { x = 0.000, y = 240.026, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413234] = { config_id = 413234, monster_id = 21030203, pos = { x = 1895.621, y = 197.075, z = -1544.696 }, rot = { x = 0.000, y = 243.525, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413235] = { config_id = 413235, monster_id = 20010702, pos = { x = 1900.674, y = 197.525, z = -1550.732 }, rot = { x = 0.000, y = 265.425, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413236] = { config_id = 413236, monster_id = 21030203, pos = { x = 1898.317, y = 197.144, z = -1557.108 }, rot = { x = 0.000, y = 288.864, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413237] = { config_id = 413237, monster_id = 20011304, pos = { x = 1898.019, y = 197.333, z = -1552.485 }, rot = { x = 0.000, y = 264.376, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413238] = { config_id = 413238, monster_id = 25060101, pos = { x = 1886.671, y = 196.135, z = -1555.855 }, rot = { x = 0.000, y = 188.661, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413239] = { config_id = 413239, monster_id = 25070101, pos = { x = 1883.074, y = 196.093, z = -1556.160 }, rot = { x = 0.000, y = 184.785, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413240] = { config_id = 413240, monster_id = 25060101, pos = { x = 1879.365, y = 196.039, z = -1555.164 }, rot = { x = 0.000, y = 170.055, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413241] = { config_id = 413241, monster_id = 23010101, pos = { x = 1886.680, y = 196.015, z = -1549.458 }, rot = { x = 0.000, y = 13.795, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413242] = { config_id = 413242, monster_id = 23010201, pos = { x = 1879.939, y = 195.797, z = -1548.065 }, rot = { x = 0.000, y = 32.939, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413243] = { config_id = 413243, monster_id = 25030301, pos = { x = 1875.609, y = 196.068, z = -1553.926 }, rot = { x = 0.000, y = 286.525, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413244] = { config_id = 413244, monster_id = 25030201, pos = { x = 1878.631, y = 195.929, z = -1551.668 }, rot = { x = 0.000, y = 284.583, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413245] = { config_id = 413245, monster_id = 23010301, pos = { x = 1881.735, y = 196.086, z = -1555.764 }, rot = { x = 0.000, y = 104.731, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413246] = { config_id = 413246, monster_id = 23010501, pos = { x = 1883.962, y = 195.754, z = -1549.095 }, rot = { x = 0.000, y = 96.186, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413247] = { config_id = 413247, monster_id = 25010701, pos = { x = 1877.336, y = 195.913, z = -1548.506 }, rot = { x = 0.000, y = 270.968, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 30 },
	[413248] = { config_id = 413248, monster_id = 21011201, pos = { x = 1888.584, y = 196.042, z = -1560.482 }, rot = { x = 0.000, y = 357.686, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4106, 4103 }, area_id = 2, kill_score = 20 },
	[413249] = { config_id = 413249, monster_id = 21011201, pos = { x = 1882.970, y = 195.371, z = -1561.644 }, rot = { x = 0.000, y = 359.306, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4106, 4103 }, area_id = 2, kill_score = 20 },
	[413250] = { config_id = 413250, monster_id = 21010701, pos = { x = 1878.880, y = 195.861, z = -1544.399 }, rot = { x = 0.000, y = 168.116, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4106, 4103 }, area_id = 2, kill_score = 20 },
	[413251] = { config_id = 413251, monster_id = 21010701, pos = { x = 1888.062, y = 196.337, z = -1545.128 }, rot = { x = 0.000, y = 190.569, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4106, 4103 }, area_id = 2, kill_score = 20 },
	[413252] = { config_id = 413252, monster_id = 21010301, pos = { x = 1887.129, y = 195.586, z = -1561.868 }, rot = { x = 0.000, y = 357.686, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4106, 4103 }, area_id = 2, kill_score = 20 },
	[413253] = { config_id = 413253, monster_id = 21010301, pos = { x = 1880.318, y = 195.460, z = -1562.507 }, rot = { x = 0.000, y = 21.952, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109, 4106, 4103 }, area_id = 2, kill_score = 20 },
	[413254] = { config_id = 413254, monster_id = 22010301, pos = { x = 1896.437, y = 197.074, z = -1549.364 }, rot = { x = 0.000, y = 256.032, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1026, 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413255] = { config_id = 413255, monster_id = 22010201, pos = { x = 1895.241, y = 196.987, z = -1545.926 }, rot = { x = 0.000, y = 253.031, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1029, 4107, 4108, 4109 }, area_id = 2, kill_score = 50 },
	[413256] = { config_id = 413256, monster_id = 23020101, pos = { x = 1894.123, y = 196.891, z = -1553.177 }, rot = { x = 0.000, y = 279.635, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 60 },
	[413257] = { config_id = 413257, monster_id = 24010101, pos = { x = 1896.483, y = 197.066, z = -1548.524 }, rot = { x = 0.000, y = 248.234, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, pose_id = 100, area_id = 2, kill_score = 80 },
	[413258] = { config_id = 413258, monster_id = 23030101, pos = { x = 1873.565, y = 195.226, z = -1572.686 }, rot = { x = 0.000, y = 37.927, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 60 },
	[413259] = { config_id = 413259, monster_id = 24010101, pos = { x = 1899.739, y = 197.602, z = -1543.966 }, rot = { x = 0.000, y = 220.361, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, pose_id = 100, area_id = 2, kill_score = 80 },
	[413260] = { config_id = 413260, monster_id = 20011401, pos = { x = 1882.237, y = 195.959, z = -1557.832 }, rot = { x = 0.000, y = 195.480, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413261] = { config_id = 413261, monster_id = 20010301, pos = { x = 1886.779, y = 196.629, z = -1541.646 }, rot = { x = 0.000, y = 200.567, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413262] = { config_id = 413262, monster_id = 21011201, pos = { x = 1871.446, y = 196.268, z = -1544.316 }, rot = { x = 0.000, y = 111.843, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413263] = { config_id = 413263, monster_id = 21011201, pos = { x = 1869.548, y = 196.590, z = -1548.936 }, rot = { x = 0.000, y = 111.843, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413264] = { config_id = 413264, monster_id = 20011201, pos = { x = 1887.685, y = 196.347, z = -1544.414 }, rot = { x = 0.000, y = 285.527, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413265] = { config_id = 413265, monster_id = 20011001, pos = { x = 1875.819, y = 195.825, z = -1560.509 }, rot = { x = 0.000, y = 289.187, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 20 },
	[413266] = { config_id = 413266, monster_id = 21010502, pos = { x = 1884.878, y = 196.502, z = -1540.284 }, rot = { x = 0.000, y = 333.096, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413267] = { config_id = 413267, monster_id = 21011002, pos = { x = 1876.728, y = 195.928, z = -1542.969 }, rot = { x = 0.000, y = 339.144, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413268] = { config_id = 413268, monster_id = 21030402, pos = { x = 1881.194, y = 195.966, z = -1542.278 }, rot = { x = 0.000, y = 341.071, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413269] = { config_id = 413269, monster_id = 21010502, pos = { x = 1895.742, y = 197.025, z = -1545.956 }, rot = { x = 0.000, y = 255.483, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413270] = { config_id = 413270, monster_id = 21011002, pos = { x = 1896.617, y = 197.226, z = -1554.492 }, rot = { x = 0.000, y = 261.531, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 },
	[413271] = { config_id = 413271, monster_id = 21030402, pos = { x = 1896.901, y = 197.141, z = -1549.981 }, rot = { x = 0.000, y = 263.458, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 4107, 4108, 4109 }, area_id = 2, kill_score = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[413001] = { config_id = 413001, gadget_id = 70900361, pos = { x = 1883.000, y = 196.011, z = -1553.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, area_id = 2 },
	[413124] = { config_id = 413124, gadget_id = 70330041, pos = { x = 1883.000, y = 196.011, z = -1553.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 5, persistent = true, autopick = true, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1413004, name = "SCENE_MP_PLAY_OPEN_413004", event = EventType.EVENT_SCENE_MP_PLAY_OPEN, source = "", condition = "", action = "action_EVENT_SCENE_MP_PLAY_OPEN_413004", trigger_count = 0 },
	{ config_id = 1413005, name = "GADGET_CREATE_413005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_413005", action = "action_EVENT_GADGET_CREATE_413005", trigger_count = 0 }
}

-- 点位
points = {
	{ config_id = 413073, pos = { x = 1879.638, y = 195.981, z = -1538.696 }, rot = { x = 0.000, y = 184.551, z = 0.000 }, area_id = 2 },
	{ config_id = 413074, pos = { x = 1867.017, y = 196.577, z = -1550.822 }, rot = { x = 0.000, y = 73.131, z = 0.000 }, area_id = 2 },
	{ config_id = 413075, pos = { x = 1878.407, y = 195.738, z = -1560.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 2 }
}

-- 变量
variables = {
	{ config_id = 1, name = "interact_flag", value = 0, no_refresh = true },
	{ config_id = 2, name = "GM_Mode", value = 0, no_refresh = true }
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
		-- description = 大陨石主体,
		monsters = { },
		gadgets = { 413001 },
		regions = { },
		triggers = { "SCENE_MP_PLAY_OPEN_413004", "GADGET_CREATE_413005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 联机组1A-游击组,
		monsters = { 413008, 413030, 413032, 413033, 413034, 413035 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 联机组1B-游击组,
		monsters = { 413039, 413059, 413060, 413061, 413062, 413063 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 联机组2A-游击组,
		monsters = { 413009, 413010, 413011, 413012, 413013, 413067 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 联机组2B-游击组,
		monsters = { 413017, 413018, 413019, 413020, 413021, 413072 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 联机组3A-游击组,
		monsters = { 413002, 413031, 413041, 413043, 413044 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 联机组3B-游击组,
		monsters = { 413048, 413049, 413050, 413051, 413052 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 联机组4A-游击组,
		monsters = { 413053, 413054, 413055, 413056, 413079, 413125 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = 联机组4B-游击组,
		monsters = { 413080, 413081 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = 联机组5A-游击组,
		monsters = { 413082, 413083 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 11,
		-- description = 联机组5B-游击组,
		monsters = { 413087, 413088 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 12,
		-- description = 精英组1A-游击组,
		monsters = { 413092, 413093 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 13,
		-- description = 精英组1B-游击组,
		monsters = { 413095, 413096, 413097 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 14,
		-- description = 精英组2A-游击组,
		monsters = { 413094, 413098, 413099, 413100, 413101, 413102 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 15,
		-- description = 精英组2B-游击组,
		monsters = { 413104, 413106 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 16,
		-- description = 精英组3A-游击组,
		monsters = { 413107, 413108, 413109 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 17,
		-- description = 精英组3B-游击组,
		monsters = { 413110, 413111, 413112 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 18,
		-- description = 精英组4A-游击组,
		monsters = { 413114, 413115, 413116, 413117 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 19,
		-- description = 精英组4B-游击组,
		monsters = { 413113, 413118, 413119 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 20,
		-- description = 精英组5A-游击组,
		monsters = { 413120 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 21,
		-- description = 精英组5B-游击组,
		monsters = { 413123 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 22,
		-- description = 联机组1A-守分组,
		monsters = { 413003, 413037, 413038, 413040 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 23,
		-- description = 联机组1B-守分组,
		monsters = { 413006, 413007, 413065, 413066 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 24,
		-- description = 联机组2A-守分组,
		monsters = { 413014, 413015, 413016, 413069 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 25,
		-- description = 联机组2B-守分组,
		monsters = { 413022, 413023, 413024, 413025 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 26,
		-- description = 联机组3A-守分组,
		monsters = { 413026, 413027, 413028, 413029 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 27,
		-- description = 联机组3B-守分组,
		monsters = { 413042, 413045, 413046, 413047 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 28,
		-- description = 联机组4A-守分组,
		monsters = { 413057, 413058, 413068, 413266, 413267, 413268 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 29,
		-- description = 联机组4B-守分组,
		monsters = { 413070, 413071, 413077, 413078 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 30,
		-- description = 联机组5A-守分组,
		monsters = { 413084, 413085, 413086 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 31,
		-- description = 联机组5B-守分组,
		monsters = { 413089, 413090, 413091 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 32,
		-- description = 单人组1A-游击组,
		monsters = { 413036, 413064, 413076, 413103, 413105, 413121 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 33,
		-- description = 单人组1B-游击组,
		monsters = { 413122, 413126, 413127, 413128, 413129, 413130 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 34,
		-- description = 单人组2A-游击组,
		monsters = { 413133, 413134, 413135, 413136, 413137 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 35,
		-- description = 单人组2B-游击组,
		monsters = { 413138, 413139, 413140, 413141, 413142 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 36,
		-- description = 单人组3A-游击组,
		monsters = { 413144, 413145, 413146, 413262, 413263 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 37,
		-- description = 单人组3B-游击组,
		monsters = { 413147, 413148, 413149, 413150, 413151, 413152 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 38,
		-- description = 单人组4A-游击组,
		monsters = { 413155, 413156, 413157 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 39,
		-- description = 单人组4B-游击组,
		monsters = { 413158, 413159, 413160 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 40,
		-- description = 单人组5A-游击组,
		monsters = { 413163, 413164 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 41,
		-- description = 单人组5B-游击组,
		monsters = { 413165, 413166, 413167 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 42,
		-- description = 单人组1A-守分组,
		monsters = { 413131, 413132, 413260 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 43,
		-- description = 单人组2A-守分组,
		monsters = { 413143 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 44,
		-- description = 单人组3A-守分组,
		monsters = { 413153, 413154, 413264 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 45,
		-- description = 单人组4A-守分组,
		monsters = { 413161 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 46,
		-- description = 单人组5A-守分组,
		monsters = { 413168, 413169 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 47,
		-- description = 单人组1B-守分组,
		monsters = { 413170, 413171, 413261 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 48,
		-- description = 单人组2B-守分组,
		monsters = { 413172 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 49,
		-- description = 单人组3B-守分组,
		monsters = { 413173, 413174, 413265 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 50,
		-- description = 单人组4B-守分组,
		monsters = { 413175 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 51,
		-- description = 单人组5B-守分组,
		monsters = { 413162, 413176 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 52,
		-- description = 惊喜组1A-守分组,
		monsters = { 413177, 413178, 413179, 413180 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 53,
		-- description = 惊喜组1B-守分组,
		monsters = { 413181, 413182, 413183, 413184 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 54,
		-- description = 惊喜组2A-守分组,
		monsters = { 413185, 413186, 413187, 413188 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 55,
		-- description = 惊喜组2B-守分组,
		monsters = { 413189, 413190, 413191, 413192 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 56,
		-- description = 惊喜组3A-守分组,
		monsters = { 413193, 413194, 413195, 413196 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 57,
		-- description = 惊喜组3B-守分组,
		monsters = { 413197, 413198, 413199, 413200 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 58,
		-- description = 惊喜组4A-守分组,
		monsters = { 413201, 413202, 413203, 413269, 413270, 413271 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 59,
		-- description = 惊喜组4B-守分组,
		monsters = { 413204, 413205, 413206, 413207 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 60,
		-- description = 惊喜组5A-守分组,
		monsters = { 413208, 413209, 413210 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 61,
		-- description = 惊喜组5B-守分组,
		monsters = { 413211, 413212, 413213 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 62,
		-- description = 惊喜组1A-游击组,
		monsters = { 413214, 413215, 413216, 413217, 413218, 413219 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 63,
		-- description = 惊喜组1B-游击组,
		monsters = { 413220, 413221, 413222, 413223, 413224, 413225 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 64,
		-- description = 惊喜组2A-游击组,
		monsters = { 413226, 413227, 413228, 413229, 413230, 413231 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 65,
		-- description = 惊喜组2B-游击组,
		monsters = { 413232, 413233, 413234, 413235, 413236, 413237 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 66,
		-- description = 惊喜组3A-游击组,
		monsters = { 413238, 413239, 413240, 413241, 413242 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 67,
		-- description = 惊喜组3B-游击组,
		monsters = { 413243, 413244, 413245, 413246, 413247 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 68,
		-- description = 惊喜组4A-游击组,
		monsters = { 413248, 413249, 413250, 413251, 413252, 413253 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 69,
		-- description = 惊喜组4B-游击组,
		monsters = { 413254, 413255 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 70,
		-- description = 惊喜组5A-游击组,
		monsters = { 413256, 413257 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 71,
		-- description = 惊喜组5B-游击组,
		monsters = { 413258, 413259 },
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
function action_EVENT_SCENE_MP_PLAY_OPEN_413004(context, evt)
	ScriptLib.SetGroupVariableValue(context, "interact_flag", 1)
	
	ScriptLib.SetGadgetEnableInteract(context, defs.group_id, defs.gadget_aster, true)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_413005(context, evt)
	if 413001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_413005(context, evt)
	local flag = ScriptLib.GetGroupVariableValue(context, "interact_flag")
	
	if flag == 1 then
	        ScriptLib.SetGadgetEnableInteract(context, defs.group_id, defs.gadget_aster, true)
	else
	        ScriptLib.SetGadgetEnableInteract(context, defs.group_id, defs.gadget_aster, false)
	end
	
	return 0
end

require "AsterBig"
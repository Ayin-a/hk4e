--ServerUploadTool Save to [/root/env/data/lua/common/V3_0]
-- goto 1296.946 271.098 -1590.922
--[[======================================
||	filename:       SumeruOneLineDraw
||	owner:          zijun.ma
||	description:    须弥苗圃一笔画
||	LogName:        TD_SOLD
||	Protection:     [Protection]
=======================================]]

--[[
group133301105：goto -918 196 3628      采集物：133301513
group133301106：goto -310 292 3321     采集物：133301526
group133301108：goto -1166 265 3332    采集物：133301554
group133301109：goto -1385 326 3660    采集物：133301565
group133301110：goto -1237 225 3806    采集物：133301584
group133301111：goto -1657 219 2926    采集物：133301606
group133301112：goto -1472 354 2111    采集物：133301607
group133301113：goto -1716 321 2376    采集物：133301608
group133301114：goto -987 225 2510      采集物：133301609
group133301115：goto -662 217 2420      采集物：133301610
group133301116：goto -741 220 3039      采集物：133301611
group133301206：goto -256 286 3690

goto -256 287 3690
group unload 133301206
group load 133301206
group remove 133301206

QUEST CLEAR FATHER 73106;
QUEST ACCEPT 7310601;
QUEST FINISH 7310601

GROUP GETVAR 133301206 ExhibitionVar
GROUP GETVAR 133301206 CurPlayStep
GROUP GETVAR 133301206 LevelIdx

GROUP SETVAR 133301106 GM_Reset 1
--]]

-- 田有多大，绘制在9*9的方格中
local PhasePlay = {
    [1] = {
        FloorArray = {
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 7, 0},
            {0, 0, 0, 0, 0, 0, 0, 6, 0},
            {0, 0, 0, 1, 0, 0, 0, 6, 0},
            {0, 0, 2, 2, 0, 0, 0, 6, 0},
            {0, 0, 2, 2, 0, 0, 2, 5, 0},
            {0, 0, 0, 3, 0, 0, 2, 0, 0},
            {0, 0, 0, 4, 4, 4, 2, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
        },
        FloorNum = 15,
        StartIdx = 31,
        TreeIdx = 17,
        ButterFlyIdx = {58,53},
        ChangeWave = {
            [1] = {40},
            [2] = {39,49},
            [3] = {48,58},
            [4] = {52},
            [5] = {17,53,61},
            [6] = {70},
        },
        ChangeWaveTimeAxis = {0.33,0.67,1.0,1.33,1.67,2.0},
        ReturnWave = {
            [1] = {26},
            [2] = {35},
            [3] = {44},
            [4] = {53},
            [5] = {52},
            [6] = {61},
            [7] = {40,70},
            [8] = {39,49,69},
            [9] = {48,58,68},
            [10] = {67},
        },
        ReturnWaveTimeAxis = {0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0,1.2},
        ButterFlyRoads = {
            [1] = {
                IdxList = {67,68,69},
                TimeAxis = {0.25,0.5,0.75},
            },
            [2] = {
                IdxList = {26,35,44},
                TimeAxis = {0.25,0.5,0.75},
            },
        },
    },
    [2] = {
        FloorArray = {
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 2, 2, 1, 0, 0, 0, 0, 0},
            {0, 2, 7, 6, 6, 6, 6, 0, 0},
            {0, 2, 2, 3, 2, 2, 5, 0, 0},
            {0, 0, 0, 4, 4, 0, 0, 0, 0},
            {0, 0, 0, 4, 4, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
        },
        FloorNum = 17,
        StartIdx = 31,
        TreeIdx = 39,
        ButterFlyIdx = {49,52},
        ChangeWave = {
            [1] = {30},
            [2] = {29,39,49},
            [3] = {38,48,50},
            [4] = {47,51},
            [5] = {52},
        },
        ChangeWaveTimeAxis = {0.4,0.8,1.2,1.6,2.0},
        ReturnWave = {
            [1] = {30,38,40,48},
            [2] = {29,41,47,49},
            [3] = {42,50,58},
            [4] = {43,51,59,67},
            [5] = {52,68},
        },
        ReturnWaveTimeAxis = {0.2,0.4,0.6,0.8,1.0,1.2},
        ButterFlyRoads = {
            [1] = {
                IdxList = {58,59,67,68},
                TimeAxis = {0.25,0.5,0.75,1.0},
            },
            [2] = {
                IdxList = {40,41,42,43},
                TimeAxis = {0.25,0.5,0.75,1.0},
            },
        },
    },
    [3] = {
        FloorArray = {
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 2, 2, 1, 6, 6, 5, 0},
            {0, 0, 2, 2, 7, 2, 2, 2, 0},
            {0, 0, 2, 3, 0, 0, 2, 0, 0},
            {0, 0, 2, 4, 4, 4, 2, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
        },
        FloorNum = 18,
        StartIdx = 32,
        TreeIdx = 41,
        ButterFlyIdx = {49,35},
        ChangeWave = {
            [1] = {31,41},
            [2] = {30,40,42},
            [3] = {35,39,43,49},
            [4] = {44,48,52},
            [5] = {57,61},
        },
        ChangeWaveTimeAxis = {0.4,0.8,1.2,1.6,2.0},
        ReturnWave = {
            [1] = {40,42},
            [2] = {31,33,39,43,49,59},
            [3] = {30,34,44,48,52,58,60},
            [4] = {35,57,61},
        },
        ReturnWaveTimeAxis = {0.25,0.5,0.75,1.0,1.2},
        ButterFlyRoads = {
            [1] = {
                IdxList = {58,59,60},
                TimeAxis = {0.25,0.5,0.75},
            },
            [2] = {
                IdxList = {33,34},
                TimeAxis = {0.25,0.5},
            },
        },
    },
    [4] = {
        FloorArray = {
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 2, 2, 2, 0, 0, 0, 0},
            {0, 0, 2, 1, 2, 0, 0, 0, 0},
            {0, 0, 3, 4, 0, 2, 2, 0, 0},
            {0, 0, 2, 4, 5, 6, 6, 0, 0},
            {0, 0, 2, 4, 2, 0, 2, 0, 0},
            {0, 0, 0, 0, 0, 0, 7, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
        },
        FloorNum = 18,
        StartIdx = 31,
        TreeIdx = 70,
        ButterFlyIdx = {39,50},
        ChangeWave = {
            [1] = {22,30,32},
            [2] = {21,23,39},
            [3] = {42,48,50},
            [4] = {43,57,59},
            [5] = {61},
            [6] = {70},
        },
        ChangeWaveTimeAxis = {0.33,0.67,1.0,1.33,1.67,2.0},
        ReturnWave = {
            [1] = {61},
            [2] = {52},
            [3] = {43,51,59},
            [4] = {42,50,58},
            [5] = {49,57},
            [6] = {32,40,48},
            [7] = {23,39},
            [8] = {22,30},
            [9] = {21},
        },
        ReturnWaveTimeAxis = {0.11,0.22,0.33,0.44,0.56,0.67,0.78,0.89,1.0,1.2},
        ButterFlyRoads = {
            [1] = {
                IdxList = {40,49,58},
                TimeAxis = {0.25,0.5,0.75},
            },
            [2] = {
                IdxList = {51,52},
                TimeAxis = {0.25,0.5},
            },
        },
    },
    [5] = {
        FloorArray = {
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 2, 2, 2, 0, 0, 0, 0},
            {0, 0, 6, 7, 6, 0, 0, 0, 0},
            {0, 0, 6, 6, 6, 0, 1, 0, 0},
            {0, 0, 0, 6, 2, 0, 2, 3, 0},
            {0, 0, 0, 6, 2, 5, 4, 4, 0},
            {0, 0, 0, 6, 2, 0, 2, 2, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
        },
        FloorNum = 21,
        StartIdx = 43,
        TreeIdx = 31,
        ButterFlyIdx = {53,60},
        ChangeWave = {
            [1] = {52},
            [2] = {53},
            [3] = {50,60,70},
            [4] = {23,31,59,71},
            [5] = {22,68},
            [6] = {21},
        },
        ChangeWaveTimeAxis = {0.33,0.67,1.0,1.33,1.67,2.0},
        ReturnWave = {
            [1] = {22,30,32,40},
            [2] = {21,23,39,41,49},
            [3] = {50,58},
            [4] = {59,67},
            [5] = {52,60,68},
            [6] = {53,61},
            [7] = {62,70},
            [8] = {71},
        },
        ReturnWaveTimeAxis = {0.12,0.25,0.38,0.5,0.62,0.75,0.88,1.0,1.2},
        ButterFlyRoads = {
            [1] = {
                IdxList = {61,62},
                TimeAxis = {0.25,0.5},
            },
            [2] = {
                IdxList = {30,32,39,40,41,49,58,67},
                TimeAxis = {0.25,0.5,0.75,1.0,1.25,1.5,1.75,2.0},
            },
        },
    },
    [6] = {
        FloorArray = {
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 2, 2, 7, 0, 0, 0, 0},
            {0, 0, 6, 6, 6, 0, 0, 0, 0},
            {0, 0, 2, 0, 0, 0, 0, 0, 0},
            {0, 0, 5, 2, 2, 2, 2, 2, 0},
            {0, 0, 2, 2, 0, 4, 4, 4, 0},
            {0, 0, 2, 2, 1, 2, 2, 3, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
        },
        FloorNum = 22,
        StartIdx = 68,
        TreeIdx = 23,
        ButterFlyIdx = {71,48},
        ChangeWave = {
            [1] = {67,69},
            [2] = {50,58,66,70},
            [3] = {49,51,57,71},
            [4] = {48,52},
            [5] = {23,39,53},
            [6] = {22},
            [7] = {21},
        },
        ChangeWaveTimeAxis = {0.29,0.57,0.86,1.14,1.43,1.71,2.0},
        ReturnWave = {
            [1] = {22,32},
            [2] = {21,31},
            [3] = {30,50},
            [4] = {39,49,51},
            [5] = {48,52,58,60},
            [6] = {53,57,61,67,69},
            [7] = {62,66,70},
            [8] = {71},
        },
        ReturnWaveTimeAxis = {0.12,0.25,0.38,0.5,0.62,0.75,0.88,1.0,1.2},
        ButterFlyRoads = {
            [1] = {
                IdxList = {60,61,62},
                TimeAxis = {0.25,0.5,0.75},
            },
            [2] = {
                IdxList = {30,31,32},
                TimeAxis = {0.25,0.5,0.75},
            },
        },
    },
    [7] = {
        FloorArray = {
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 4, 2, 4, 0, 0},
            {0, 0, 0, 0, 2, 7, 2, 0, 0},
            {0, 0, 2, 2, 0, 2, 4, 0, 0},
            {0, 2, 2, 2, 2, 6, 0, 0, 0},
            {0, 2, 2, 3, 1, 6, 2, 2, 0},
            {0, 0, 0, 2, 2, 2, 5, 2, 0},
            {0, 0, 0, 0, 0, 2, 2, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
        },
        FloorNum = 27,
        StartIdx = 50,
        TreeIdx = 24,
        ButterFlyIdx = {49,61},
        ChangeWave = {
            [1] = {41,49,59},
            [2] = {40,48,52,58,60},
            [3] = {23,31,33,39,47,53,61,69},
            [4] = {24,30,38,62,70},
            [5] = {15,25},
        },
        ChangeWaveTimeAxis = {0.4,0.8,1.2,1.6,2.0},
        ReturnWave = {
            [1] = {15,23,25,33},
            [2] = {14,16,34,42},
            [3] = {31,41,51},
            [4] = {30,40,52,60},
            [5] = {39,49,53,59,61,69},
            [6] = {38,48,58,62,70},
            [7] = {47},
        },
        ReturnWaveTimeAxis = {0.14,0.29,0.43,0.57,0.71,0.86,1.0,1.2},
        ButterFlyRoads = {
            [1] = {
                IdxList = {14,16,34},
                TimeAxis = {0.25,0.5,0.75},
            },
            [2] = {
                IdxList = {42,51},
                TimeAxis = {0.25,0.5},
            },
        },
    },
    [8] = {
        FloorArray = {
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 3, 4, 4, 0, 0},
            {0, 0, 2, 6, 1, 2, 4, 0, 0},
            {0, 0, 2, 6, 5, 2, 0, 0, 0},
            {0, 0, 2, 6, 2, 7, 0, 0, 0},
            {0, 0, 0, 6, 6, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
        },
        FloorNum = 16,
        StartIdx = 32,
        TreeIdx = 51,
        ButterFlyIdx = {23,41},
        ChangeWave = {
            [1] = {23,33,41},
            [2] = {30,42,50},
            [3] = {39,51},
            [4] = {48},
        },
        ChangeWaveTimeAxis = {0.5,1.0,1.5,2.0},
        ReturnWave = {
            [1] = {42,50},
            [2] = {33,41,49,59},
            [3] = {24,34,40,48,58},
            [4] = {23,25,31,39},
            [5] = {30},
        },
        ReturnWaveTimeAxis = {0.2,0.4,0.6,0.8,1.0,1.2},
        ButterFlyRoads = {
            [1] = {
                IdxList = {24,25,34},
                TimeAxis = {0.25,0.5,0.75},
            },
            [2] = {
                IdxList = {31,40,49,58,59},
                TimeAxis = {0.25,0.5,0.75,1.0,1.25},
            },
        },
    },
    [9] = {
        FloorArray = {
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 2, 2, 0, 0},
            {0, 2, 3, 2, 0, 2, 2, 0, 0},
            {0, 2, 1, 2, 0, 2, 2, 0, 0},
            {0, 0, 2, 2, 6, 6, 6, 6, 2},
            {0, 0, 4, 0, 5, 0, 0, 6, 2},
            {0, 0, 4, 0, 2, 7, 2, 6, 0},
            {0, 0, 4, 4, 4, 2, 2, 0, 0},
            {0, 0, 0, 0, 0, 2, 2, 0, 0},
        },
        FloorNum = 33,
        StartIdx = 30,
        TreeIdx = 60,
        ButterFlyIdx = {21,50},
        ChangeWave = {
            [1] = {21,29,31,39},
            [2] = {20,22,40},
            [3] = {33},
            [4] = {24,34,50},
            [5] = {15,25,59},
            [6] = {16,60},
            [7] = {45,61,69},
            [8] = {54,70,78},
            [9] = {79},
        },
        ChangeWaveTimeAxis = {0.22,0.44,0.67,0.89,1.11,1.33,1.56,1.78,2.0},
        ReturnWave = {
            [1] = {59,61,69},
            [2] = {42,50,62,68,70,78},
            [3] = {33,41,43,53,57,67,79},
            [4] = {24,34,40,44,48,54,66},
            [5] = {15,25,31,39,45},
            [6] = {16,22},
            [7] = {21,29},
            [8] = {20},
        },
        ReturnWaveTimeAxis = {0.12,0.25,0.38,0.5,0.62,0.75,0.88,1.0,1.2},
        ButterFlyRoads = {
            [1] = {
                IdxList = {48,57,66,67,68},
                TimeAxis = {0.25,0.5,0.75,1.0,1.25},
            },
            [2] = {
                IdxList = {41,42,43,44,53,62},
                TimeAxis = {0.25,0.5,0.75,1.0,1.25,1.5},
            },
        },
    },
    [10] = {
        FloorArray = {
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 0, 0, 4, 4, 4, 4, 0, 0},
            {0, 5, 2, 4, 0, 0, 4, 4, 0},
            {0, 2, 2, 4, 1, 2, 4, 4, 0},
            {0, 6, 2, 2, 2, 2, 2, 2, 0},
            {0, 6, 6, 2, 2, 2, 2, 3, 0},
            {0, 6, 7, 2, 0, 0, 0, 0, 0},
            {0, 6, 6, 2, 0, 0, 0, 0, 0},
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
        },
        FloorNum = 34,
        StartIdx = 32,
        TreeIdx = 57,
        ButterFlyIdx = {53,20},
        ChangeWave = {
            [1] = {33,41},
            [2] = {30,40,42,50},
            [3] = {21,29,39,43,49,51},
            [4] = {20,44,52,58},
            [5] = {53,57,67},
        },
        ChangeWaveTimeAxis = {0.4,0.8,1.2,1.6,2.0},
        ReturnWave = {
            [1] = {48,56,58,66},
            [2] = {39,47,49,65,67},
            [3] = {30,38,40,50},
            [4] = {21,29,31,41,51},
            [5] = {20,22,42,52},
            [6] = {13,33,43,53},
            [7] = {14,34,44},
            [8] = {15,25,35},
            [9] = {16,26},
        },
        ReturnWaveTimeAxis = {0.11,0.22,0.33,0.44,0.56,0.67,0.78,0.89,1.0,1.2},
        ButterFlyRoads = {
            [1] = {
                IdxList = {13,14,15,16,22,25,26,31,34,35},
                TimeAxis = {0.25,0.5,0.75,1.0,1.25,1.5,1.75,2.0,2.25,2.5},
            },
            [2] = {
                IdxList = {38,47,48,56,65,66},
                TimeAxis = {0.25,0.5,0.75,1.0,1.25,1.5},
            },
        },
    },
    [11] = {
        FloorArray = {
            {0, 0, 2, 2, 1, 0, 0, 0, 0},
            {0, 0, 2, 2, 2, 0, 0, 0, 0},
            {0, 2, 3, 2, 2, 2, 2, 2, 2},
            {0, 2, 4, 4, 4, 2, 0, 2, 2},
            {0, 0, 0, 2, 4, 2, 2, 2, 2},
            {0, 0, 0, 2, 2, 6, 6, 2, 5},
            {0, 0, 2, 2, 2, 6, 0, 0, 0},
            {0, 0, 2, 2, 2, 6, 0, 0, 0},
            {0, 0, 0, 0, 0, 7, 0, 0, 0},
        },
        FloorNum = 40,
        StartIdx = 5,
        TreeIdx = 78,
        ButterFlyIdx = {21,54},
        ChangeWave = {
            [1] = {4,14},
            [2] = {3,13,23},
            [3] = {12,22,24},
            [4] = {21,25,33},
            [5] = {20,26,40,42,50},
            [6] = {27,29,35,43,49,59},
            [7] = {36,44,58,68},
            [8] = {45,53,57,67},
            [9] = {54,66,78},
        },
        ChangeWaveTimeAxis = {0.22,0.44,0.67,0.89,1.11,1.33,1.56,1.78,2.0},
        ReturnWave = {
            [1] = {66,67,68,69},
            [2] = {57,58,59,60},
            [3] = {49,50,51,52,53,54},
            [4] = {40,41,42,43,44,45},
            [5] = {29,30,31,32,33,35,36},
            [6] = {20,21,22,23,24,25,26,27},
            [7] = {12,13,14},
            [8] = {3,4},
        },
        ReturnWaveTimeAxis = {0.12,0.25,0.38,0.5,0.62,0.75,0.88,1.0,1.2},
        ButterFlyRoads = {
            [1] = {
                IdxList = {30,31,32,41},
                TimeAxis = {0.25,0.5,0.75,1.0},
            },
            [2] = {
                IdxList = {51,52,60,69},
                TimeAxis = {0.25,0.5,0.75,1.0},
            },
        },
    },
    [12] = {
        FloorArray = {
            {0, 0, 0, 0, 0, 0, 0, 0, 0},
            {0, 2, 1, 0, 0, 2, 2, 0, 0},
            {0, 2, 2, 2, 2, 2, 2, 0, 0},
            {0, 2, 2, 2, 2, 2, 2, 0, 0},
            {0, 2, 3, 4, 6, 5, 2, 0, 0},
            {0, 0, 2, 6, 4, 7, 0, 0, 0},
            {0, 0, 2, 4, 6, 2, 0, 0, 0},
            {0, 0, 2, 6, 4, 2, 0, 0, 0},
            {0, 0, 2, 2, 2, 2, 0, 0, 0},
        },
        FloorNum = 36,
        StartIdx = 12,
        TreeIdx = 51,
        ButterFlyIdx = {39,42},
        ChangeWave = {
            [1] = {11,21},
            [2] = {20,22,30},
            [3] = {15,23,29,31,39},
            [4] = {16,24,32,38,48},
            [5] = {25,33,57},
            [6] = {34,42,66},
            [7] = {43,51,75},
            [8] = {60,76},
            [9] = {69,77},
            [10] = {78},
        },
        ChangeWaveTimeAxis = {0.2,0.4,0.6,0.8,1.0,1.2,1.4,1.6,1.8,2.0},
        ReturnWave = {
            [1] = {42,50,60},
            [2] = {33,41,43,49,59,69},
            [3] = {24,32,34,40,48,58,68,78},
            [4] = {15,23,25,31,39,57,67,77},
            [5] = {16,22,30,38,66,76},
            [6] = {21,29,75},
            [7] = {20},
            [8] = {11},
        },
        ReturnWaveTimeAxis = {0.12,0.25,0.38,0.5,0.62,0.75,0.88,1.0,1.2},
        ButterFlyRoads = {
            [1] = {
                IdxList = {40,50,58,68},
                TimeAxis = {0.25,0.5,0.75,1.0},
            },
            [2] = {
                IdxList = {41,49,59,67},
                TimeAxis = {0.25,0.5,0.75,1.0},
            },
        },
    },

}
local LevelInfo = {
    -- 需要用到的Cid
    StartCid = defs.gadget_StarCid,
    TreeCid = defs.gadget_TreeCid,
    FloorCid = defs.gadget_FloorCid, -- 这个cid往后拉81个
    Volume01Cid = defs.gadget_Volume01,
    Volume02Cid = defs.gadget_Volume02,
    ChestCid = defs.gadget_Chest,
    -- RegionCid
    InitRegion = defs.region_InitRegion,
    PlayRegion = defs.region_PlayRegion,
    -- 任务
    QuestId = defs.quest_id,
    -- 陈列室id
    Exhibition = {id = 11601101, key = "Permanent_SumeruNurseryPlay_LevelCount"},
    -- ArraySize
    MaxSize = 9,
    -- LevelSuite
    LevelSuite =  { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12},
    followPos = {x=0, y=0, z=0},
}

local VarInfo = {
    -- 值String
    CurStep = "CurPlayStep",
    CurNum = "CurrentFloorNum",
    LevelIdx = "LevelIdx",
    LastCid = "LastFloorCid",
}

local PlayStep = {
    Loaded = 1,
    Start = 2,
    End = 3,
    Over = 4,
    ReStart = 5,
}
local ObjState = {
    Start = { idle = 0, over = 201, ending = 902},
    Floor = { hide = 0, bud = 201, bfFlee = 202, bfFly = 203, fail = 204, success = 901,ending = 902 },
    Tree = { hide = 0, bud = 201, fruit = 202, over = 203, fail = 204, success = 901},
}

local SumeruOneLineDraw_Trigger = {
    -- 检查Event
    { keyWord = "RegionCheck",event = EventType.EVENT_ENTER_REGION, source = "", trigger_count = 0},
    { keyWord = "GadgetCheck",event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", trigger_count = 0},
    -- GroupLoad时检查玩法是否已结束
    { keyWord = "GroupLoad",event = EventType.EVENT_GROUP_LOAD, source = "", trigger_count = 0},
    -- 进入区域会确认是否要重置玩法
    { keyWord = "CheckPlay",event = EventType.EVENT_ENTER_REGION, source = "", trigger_count = 0},
    -- 离开区域会判定玩法是否失败
    { keyWord = "ReStart", event = EventType.EVENT_LEAVE_REGION, source = "", trigger_count = 0},
    -- 踩入Start
    { keyWord = "StartPlay", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", trigger_count = 0},
    -- 创生、失败、成功时的演出逻辑
    { keyWord = "ChangeWave", event = EventType.EVENT_TIME_AXIS_PASS, source = "ChangeWave", trigger_count = 0},
    { keyWord = "ReturnWave", event = EventType.EVENT_TIME_AXIS_PASS, source = "ReturnWave", trigger_count = 0},
    { keyWord = "LastWave", event = EventType.EVENT_TIME_AXIS_PASS, source = "LastWave", trigger_count = 0},
    { keyWord = "LastWaveDelay", event = EventType.EVENT_TIME_AXIS_PASS, source = "LastWaveDelay", trigger_count = 0},
    -- 由Gadget层发起的通知
    { keyWord = "PlayEnd", event = EventType.EVENT_LUA_NOTIFY, source = "PlayEnd", trigger_count = 0},
    -- 完成对应隐藏任务
    { keyWord = "QuestFinish", event = EventType.EVENT_QUEST_FINISH, source = "", trigger_count = 0},
    -- 测试用
    { keyWord = "GMReset", event = EventType.EVENT_VARIABLE_CHANGE, source = "GM_Reset", trigger_count = 0},
}

function LF_Initialize_SumeruOneLineDraw()
    local startConfigID = 50010001
    for _,v in pairs(SumeruOneLineDraw_Trigger) do
        v.config_id = startConfigID
        if v.keyWordType == nil then
            v.name = "tri_" .. v.keyWord
        else
            v.name = "tri_" .. v.keyWord .. v.keyWordType
        end
        v.action = "action_" .. v.keyWord
        v.condition = ""
        startConfigID = startConfigID + 1
        table.insert(triggers, v)
    end
    LF_InsertTriggers(SumeruOneLineDraw_Trigger,LevelInfo.LevelSuite)

    for i = 1,#PhasePlay do
        -- 往suites里面塞gadgets
        LF_SetGadgetsToTargetSuite(i)
    end

    local var = { config_id= 50010101, name = VarInfo.LevelIdx, value = 0, no_refresh = true }
    variables[var.name] = var
    local var = { config_id= 50010102, name = VarInfo.CurNum, value = 0, no_refresh = false }
    variables[var.name] = var
    local var = { config_id= 50010103, name = VarInfo.LastCid, value = 0, no_refresh = false }
    variables[var.name] = var
    local var = { config_id= 50010104, name = VarInfo.CurStep, value = 1, no_refresh = true }
    variables[var.name] = var
    local var = { config_id= 50010105, name = "GM_Reset", value = 0, no_refresh = false }
    variables[var.name] = var

    return 0
end

function action_GMReset(context,evt)
    -- 重置陈列室
    local uid = ScriptLib.GetSceneOwnerUid(context)
    ScriptLib.ClearExhibitionReplaceableData(context, uid, LevelInfo.Exhibition.key)
    ScriptLib.SetGroupVariableValue(context, VarInfo.LevelIdx,0)

    return 0
end

function action_RegionCheck(context,evt)
    ScriptLib.PrintContextLog(context, "## TD_SOLD  RegionCheck| RegionID = " .. evt.param1 )
    return 0
end

function action_GadgetCheck(context,evt)
    ScriptLib.PrintContextLog(context, "## TD_SOLD  GadgetCheck| configID = " .. evt.param2 .. " 的状态被修改为" .. evt.param1 )
    return 0
end

function action_GroupLoad(context,evt)
    if LF_CheckPlayStep(context,{PlayStep.Over},"action_GroupLoad") then
        -- 直接刷最终的Suite
        ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = 13 })
    end
    return 0
end

-- EnterRegion 检查玩法是否要刷新
function action_CheckPlay(context,evt)
    local regionConfigID = evt.param1
    if regionConfigID ~= LevelInfo.InitRegion then
        return 0
    end

    if LF_CheckPlayStep(context,{PlayStep.Loaded},"action_CheckPlay_01") then
        if 0 == LF_TryRefresh(context) then
            LF_CreateInitLevel(context)
        end
        return 0
    end

    if LF_CheckPlayStep(context,{PlayStep.Start,PlayStep.ReStart,PlayStep.End},"action_CheckPlay_02") then
        LF_QuickReturn(context)
        return 0
    end

    return 0
end

-- LeaveRegion 游戏失败
function action_ReStart(context,evt)

    local regionConfigID = evt.param1
    if regionConfigID ~= LevelInfo.PlayRegion then
        return 0
    end

    if LF_CheckPlayStep(context,{PlayStep.Start},"action_ReStart") then
        ScriptLib.PrintContextLog(context, "## TD_SOLD : action_ReStart 快速刷新关卡")
        -- 快速刷新流程会将玩法设置为Loaded，玩家之后再次EnterRegion时会触发action_CheckPlay的TryRefresh逻辑
        LF_QuickReturn(context)
    end

    return 0
end

-- GadgetStateChange 已踩入Start 玩法开始
function action_StartPlay(context,evt)
    -- 判断是否为Start
    if evt.param1 ~=  ObjState.Start.over or evt.param2 ~= LevelInfo.StartCid then
        return 0
    end
    if not LF_CheckPlayStep(context,{PlayStep.Loaded},"action_StartPlay") then
        return 0
    end

    local curPhasePlay = LF_GetCurPhasePlay(context)

    -- 初始化地板
    ScriptLib.SetGroupVariableValue(context, VarInfo.CurNum,curPhasePlay.FloorNum)
    -- 根据StartIdx来设置初始地板
    ScriptLib.SetGroupVariableValue(context, VarInfo.LastCid,LF_GetFloorCidByIdx(curPhasePlay.StartIdx))

    -- 启时间轴，做演出
    ScriptLib.SetGroupTempValue(context, "curWaveNum", 1, {})
    ScriptLib.InitTimeAxis(context, "ChangeWave",curPhasePlay.ChangeWaveTimeAxis, false)
    ScriptLib.PrintContextLog(context, "## TD_SOLD 开启ChangeWave Send Time Axis")
    LF_TreeLook(context)
    -- 阶段切换
    LF_SetPlayStep(context,PlayStep.Start,"action_StartPlay")

    -- 埋点
    ScriptLib.MarkGroupLuaAction(context, "SumeruOneLineDraw_StartPlay", "", {["group_id"] = base_info.group_id})
    -- G引导
    ScriptLib.MarkPlayerAction(context, 7020, 3, 1)
    return 0
end

-- TimeAxisPass 时间轴
function action_ChangeWave(context,evt)

    if not LF_CheckPlayStep(context,{PlayStep.Start},"action_ChangeWave") then
        -- 关闭时间轴
        ScriptLib.EndTimeAxis(context, "ChangeWave")
        return 0
    end

    -- 会被时间轴触发个几次（次数与值有关） FloorPlay
    local curPhasePlay = LF_GetCurPhasePlay(context)
    local curWave = curPhasePlay.ChangeWave
    local curWaveNum= ScriptLib.GetGroupTempValue(context, "curWaveNum", {})
    curWaveNum = Fix(curWaveNum,curWave,"action_ChangeWave:curWaveNum")

    local curWaveIdxList = curWave[curWaveNum]
    ScriptLib.PrintContextLog(context, "## TD_SOLD curChangeWave =" .. LF_ArrayToString(curWaveIdxList))
    -- 地板在过程中逐步新芽
    for i = 1,#curWaveIdxList do
        local floorCid = LF_GetFloorCidByIdx(curWaveIdxList[i])
        ScriptLib.SetGadgetStateByConfigId(context, floorCid, ObjState.Floor.bud)
    end

    if curWaveNum == #curWave then
        -- 蝴蝶转移
        local butterflyIdx = curPhasePlay.ButterFlyIdx
        for i = 1,#butterflyIdx do
            local butterFlyCid =  LF_GetFloorCidByIdx(butterflyIdx[i])
            ScriptLib.SetGadgetStateByConfigId(context, butterFlyCid, ObjState.Floor.bfFly)
        end
        -- 树成长
        ScriptLib.SetGadgetStateByConfigId(context, LevelInfo.TreeCid, ObjState.Tree.bud)
    end

    ScriptLib.SetGroupTempValue(context, "curWaveNum", curWaveNum + 1, {})

    return 0
end

-- TimeAxisPass
function action_ReturnWave(context,evt)

    if not LF_CheckPlayStep(context,{PlayStep.ReStart},"action_ReturnWave") then
        -- 关闭时间轴
        ScriptLib.EndTimeAxis(context, "ReturnWave")
        return 0
    end
    -- 会被时间轴触发个几次（次数与值有关） FloorPlay
    local curPhasePlay = LF_GetCurPhasePlay(context)
    local curWave = curPhasePlay.ReturnWave
    local curWaveNum= ScriptLib.GetGroupTempValue(context, "curWaveNum", {})

    if curWaveNum == #curWave + 1 then
        -- Start还原
        ScriptLib.SetGadgetStateByConfigId(context, LevelInfo.StartCid, ObjState.Start.idle)
        -- 延时结束
        ScriptLib.SetGroupVariableValue(context, VarInfo.CurNum, 0)
        LF_SetPlayStep(context,PlayStep.Loaded,"action_ReturnWave")
        return 0
    end

    curWaveNum = Fix(curWaveNum,curWave,"action_ReturnWave:curWaveNum")
    local curWaveIdxList = curWave[curWaveNum]
    ScriptLib.PrintContextLog(context, "## TD_SOLD curChangeWave =" .. LF_ArrayToString(curWaveIdxList))
    -- 地板在过程中逐步枯萎
    for i = 1,#curWaveIdxList do
        local floorCid = LF_GetFloorCidByIdx(curWaveIdxList[i])
        ScriptLib.SetGadgetStateByConfigId(context, floorCid, ObjState.Floor.fail)
    end

    if curWaveNum == 1 then
        -- Tree还原
        ScriptLib.SetGadgetStateByConfigId(context, LevelInfo.TreeCid, ObjState.Tree.fail)
    end

    ScriptLib.SetGroupTempValue(context, "curWaveNum", curWaveNum + 1, {})

    return 0
end

function action_PlayEnd(context,evt)
    -- 任务推进
    local questParam = "GardenFinish_" .. LevelInfo.QuestId
    ScriptLib.AddQuestProgress(context, questParam)
    -- 果树开花动画
    ScriptLib.SetGadgetStateByConfigId(context, LevelInfo.TreeCid, ObjState.Tree.over)
    -- 快速测试
    ScriptLib.PrintContextLog(context, "## TD_SOLD 玩法完成,通知任务")

    return 0
end

function action_QuestFinish(context,evt)
    if  LevelInfo.QuestId == evt.param1 and 1 == evt.param2 then
        -- 果树调整状态
        LF_SetPlayStep(context,PlayStep.Over,"action_QuestFinish")
        -- 修改关卡数据（可能出现玩家未接取到任务的情况，所以从action_PlayEnd转移到action_QuestFinish
        LF_CompleteCurLevel(context)
        ScriptLib.PlayCutScene(context, defs.cutSceneId, 0)
        -- todo 两秒之后开时间轴
        ScriptLib.InitTimeAxis(context,"LastWaveDelay",{1.2},false)
        -- 埋点
        ScriptLib.MarkGroupLuaAction(context, "SumeruOneLineDraw_EndPlay", "", {["group_id"] = base_info.group_id})

    end
    return 0
end

-- 最终阶段演出的延时
function action_LastWaveDelay(context,evt)
    -- 启时间轴，做演出
    -- 移除旧压草片
    ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, LevelInfo.Volume01Cid )
    -- 添加新压草片
    local curPhasePlay = LF_GetCurPhasePlay(context)
    local treeFloorCid = LF_GetFloorCidByIdx(curPhasePlay.TreeIdx)
    local tempPos = gadgets[treeFloorCid].pos
    local tempRot = gadgets[treeFloorCid].rot
    ScriptLib.CreateGadgetByConfigIdByPos(context, LevelInfo.Volume02Cid, tempPos, tempRot)

    ScriptLib.SetGroupTempValue(context, "curWaveNum", 1, {})
    ScriptLib.InitTimeAxis(context, "LastWave",{0.2,0.4,0.6,7.2}, false)
    ScriptLib.PrintContextLog(context, "## TD_SOLD 延时开启LastWave")
    return 0
end

-- TimeAxisPass 最终阶段的演出
function action_LastWave(context,evt)

    if not LF_CheckPlayStep(context,{PlayStep.Over},"action_LastWave") then
        -- 关闭时间轴
        ScriptLib.EndTimeAxis(context, "LastWave")
        return 0
    end
    -- 会被时间轴触发个几次（次数与值有关） FloorPlay
    local curWaveNum= ScriptLib.GetGroupTempValue(context, "curWaveNum", {})

    -- 一口气切换所有田
    if curWaveNum == 1 then
        -- 起点也枯萎
        ScriptLib.SetGadgetStateByConfigId(context, LevelInfo.StartCid, ObjState.Start.ending)
        -- 释放成功效果
        -- ScriptLib.SetGadgetStateByConfigId(context, LevelInfo.TreeCid, ObjState.Tree.success)
        -- 草消失
        local selectLevel = ScriptLib.GetGroupVariableValue(context, VarInfo.LevelIdx)
        local gadgetList = suites[selectLevel].gadgets
        for i = 1,#gadgetList do
            local tempCid = gadgetList[i]
            if 70330241 == gadgets[tempCid].gadget_id then
                ScriptLib.SetGadgetStateByConfigId(context, tempCid, ObjState.Floor.ending)
            end
        end
    end

    if curWaveNum == 2 then
        -- 压草片动画
        ScriptLib.SetGadgetStateByConfigId(context, LevelInfo.Volume02Cid, 201)
    end

    if curWaveNum == 3 then
        -- 创造宝箱
        ScriptLib.CreateGadget(context, { config_id = LevelInfo.ChestCid })
    end

    if curWaveNum == 4 then
        -- 树消失
        ScriptLib.SetGadgetStateByConfigId(context, LevelInfo.TreeCid, ObjState.Tree.success)
    end

    ScriptLib.SetGroupTempValue(context, "curWaveNum", curWaveNum + 1, {})

    return 0
end

--[[=====================================
||	LocalFunction
--======================================]]
function LF_TreeLook(context)
    -- 触发镜头注目，注目位置为坐标（-1747.105，336.1454，3702.49），持续时间为3秒，并且为强制注目形式，不广播其他玩家
    local startPos = LF_GetEntityPos(context,0,LevelInfo.StartCid)
    local treePos = LF_GetEntityPos(context,0,LevelInfo.TreeCid)
    -- 抬高起点pos,做摄像机位置支点，最终用于瞄准树
    startPos.y = startPos.y + 2
    local dirVector = LF_GetNormalizedDirection(treePos,startPos)
    local dirNum = 6.85
    dirVector = LF_VectorMultiply(dirVector,dirNum)
    local cameraPos = LF_VectorAdd(startPos,dirVector)

    local followPos = {x=0, y=0, z=0}
    if nil ~= LevelInfo.followPos then
        followPos = LevelInfo.followPos
    end
    ScriptLib.PrintContextLog(context, "## TD_SOLD LF_TreeLook")
    ScriptLib.BeginCameraSceneLook(context,
            {
                look_pos = startPos,
                follow_pos = cameraPos,
                is_set_follow_pos = true,
                is_abs_follow_pos = true,
                duration = 3.5,
                is_force = true,
                is_broadcast = false,
                is_allow_input = false,
                blend_type = 0,
                blend_duration = 1,
            })

    return 0
end

function LF_TryRefresh(context)
    -- 根据当前玩法，在指定位置创建Start
    local curSuite = ScriptLib.GetGroupSuite(context, base_info.group_id)
    local levelData = LF_Exhibition_GetLevelData(context)
    ScriptLib.PrintContextLog(context, "## TD_SOLD : LF_TryRefresh| curSuite = " .. curSuite .. " dataValue = " .. levelData)

    local selectLevel = ScriptLib.GetGroupVariableValue(context, VarInfo.LevelIdx)
    local isLevelCompleted = LF_Exhibition_CheckTargetComplete(selectLevel,levelData)
    ScriptLib.PrintContextLog(context, "## TD_SOLD : LF_TryRefresh| curSelectLevel = " .. selectLevel .."||isLevelCompleted = " .. isLevelCompleted)


    if selectLevel == 0 or isLevelCompleted == 1 then
        -- 尝试选关
        local selectNewLevel = LF_SelectTargetLevel(context,levelData)
        if selectNewLevel == 0 then
            -- 无可选关卡时
            ScriptLib.PrintContextLog(context, "## TD_SOLD : LF_TryRefresh 异常，所有可用已全部完成，保底刷新到已完成")
            ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = 13 })
            -- 不再创建初始
            return 1
        end
        -- 如果返回可用关卡
        -- 成功选出的场合
        local selectSuite = LevelInfo.LevelSuite[selectNewLevel]
        ScriptLib.SetGroupVariableValue(context, VarInfo.LevelIdx,selectNewLevel)
        ScriptLib.PrintContextLog(context, "## TD_SOLD : LF_TryRefresh 重新选择关卡| selectSuite = " .. selectSuite)
        ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = selectSuite })
        return 1
    end

    ScriptLib.PrintContextLog(context, "## TD_SOLD : LF_TryRefresh 已预设关卡不再处理")

    return 0
end

-- 实际是一个快速刷新的流程
function LF_QuickReturn(context)
    -- 快速刷新关卡，同时将当前步骤设置为Loaded
    local selectLevel = ScriptLib.GetGroupVariableValue(context, VarInfo.LevelIdx)
    if selectLevel <= 0 or selectLevel >= 13 then
        -- 无可选关卡时
        ScriptLib.PrintContextLog(context, "## TD_SOLD : LF_QuickReturn 异常，刷新到TryRefresh中统一处理")
        LF_SetPlayStep(context,PlayStep.Loaded,"LF_QuickReturn")
        return 0
    end
    local selectSuite = LevelInfo.LevelSuite[selectLevel]
    LF_SetPlayStep(context,PlayStep.Loaded,"LF_QuickReturn")
    ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = selectSuite })
    ScriptLib.PrintContextLog(context, "## TD_SOLD : LF_QuickReturn| selectSuite = " .. selectSuite)
    return 0
end

-- 选择关卡
function LF_SelectTargetLevel(context,dataValue)
    local dataArray = LF_DecToBin(dataValue)
    local selectLevel = {}
    local totalLevelNum = 0
    for i = 1,#LevelInfo.LevelSuite,1 do

        local index = Fix(i,dataArray)
        if dataArray[index] == 0 then
            table.insert(selectLevel,index)
            totalLevelNum = totalLevelNum + 1
        end

        -- 关卡难度分布
        if i== 1 or i== 6 or i==10 or i==12 then
            if totalLevelNum >0 then
                math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
                local selectIndex = math.random(1,#selectLevel)
                local selectSuiteNum = selectLevel[selectIndex]
                return selectSuiteNum
            end
        end
    end
    -- 如果所有关卡都完成，就切进关卡已完成。
    return 0
end

-- 在Group上创建初始的起点和树
function LF_CreateInitLevel(context)
    local phasePlay = LF_GetCurPhasePlay(context)
    -- 创建起点
    local startFloorCid = LF_GetFloorCidByIdx(phasePlay.StartIdx)
    ScriptLib.PrintContextLog(context, "## TD_SOLD : startFloorCid = " .. startFloorCid)
    if gadgets[startFloorCid] ~= nil then
        -- 创建Start
        ScriptLib.CreateGadgetByConfigIdByPos(context, LevelInfo.StartCid, gadgets[startFloorCid].pos, gadgets[startFloorCid].rot)
        ScriptLib.PrintContextLog(context, "## TD_SOLD : LF_CreateInitLevel 在指定位置创建起点")
    end

    -- 创建终点
    local treeFloorCid = LF_GetFloorCidByIdx(phasePlay.TreeIdx)
    ScriptLib.PrintContextLog(context, "## TD_SOLD : treeFloorCid = " .. treeFloorCid)
    if gadgets[treeFloorCid] ~= nil then
        -- 创建树和Volume
        local tempPos = gadgets[treeFloorCid].pos
        local tempRot = gadgets[treeFloorCid].rot
        ScriptLib.CreateGadgetByConfigIdByPos(context, LevelInfo.TreeCid, tempPos, tempRot)
        -- Volume01不再创建
        --[[
        if nil ~= LevelInfo.Volume01Cid then
            ScriptLib.CreateGadgetByConfigIdByPos(context, LevelInfo.Volume01Cid, tempPos, tempRot)
        end
        --]]

        ScriptLib.PrintContextLog(context, "## TD_SOLD : LF_CreateInitLevel 在指定位置创建大树")
    end

    return 0
end

function LF_ReStart(context)
    local curPhasePlay = LF_GetCurPhasePlay(context)
    if LF_CheckPlayStep(context,{PlayStep.ReStart},"LF_ReStart") then
        ScriptLib.PrintContextLog(context, "## TD_SOLD : ReInit 重复触发")
        return 0
    end

    LF_SetPlayStep(context,PlayStep.ReStart,"LF_ReStart")

    -- 启时间轴，枯萎演出，所有地板变204
    -- 时间轴最后处理Start
    ScriptLib.SetGroupTempValue(context, "curWaveNum", 1, {})
    ScriptLib.InitTimeAxis(context, "ReturnWave",curPhasePlay.ReturnWaveTimeAxis, false)

    return 0
end

-- 设置状态
function LF_SetButterFlyRoad(context,config_id)
    local curPhasePlay = LF_GetCurPhasePlay(context)
    local butterflyIdx = curPhasePlay.ButterFlyIdx

    local targetRoad = 1
    for i = 1,#butterflyIdx do
        local butterFlyCid =  LF_GetFloorCidByIdx(butterflyIdx[i])
        if  config_id == butterFlyCid then
            targetRoad = i
        end
    end

    targetRoad = Fix(targetRoad,curPhasePlay.ButterFlyRoads)
    local butterFlyRoad = curPhasePlay.ButterFlyRoads[targetRoad]
    local butterFlyRoadList = butterFlyRoad.IdxList

    for i = 1,#butterFlyRoadList do
        local cid  = LF_GetFloorCidByIdx(butterFlyRoadList[i])
        -- 改变物件的状态
        ScriptLib.SetGadgetStateByConfigId(context, cid, ObjState.Floor.bfFlee)
        -- 给目标复制用于ability的演出
        -- ScriptLib.SetEntityServerGlobalValueByEntityId(context, cid, "SGV_BFRoad", targetRoad*20 + i)
    end
end

-- 返回当前的PhasePlay
function LF_GetCurPhasePlay(context)
    local levelIdx = ScriptLib.GetGroupVariableValue(context, VarInfo.LevelIdx)
    levelIdx = Fix(levelIdx,PhasePlay,"action_StartPlay:levelIdx")
    local curPhasePlay = PhasePlay[levelIdx]

    return curPhasePlay
end

-- 完成关卡
function LF_CompleteCurLevel(context)
    local selectLevel = ScriptLib.GetGroupVariableValue(context, VarInfo.LevelIdx)
    local levelData = LF_Exhibition_GetLevelData(context)
    local changeLevelData = LF_Exhibition_SetTargetLevel(levelData,selectLevel,1)

    local msg1 = " |changeLevelDataArray = " .. LF_ArrayToString(LF_DecToBin(changeLevelData))
    local msg2 = " | selectLevel = " .. selectLevel
    ScriptLib.PrintContextLog(context, "## TD_SOLD : LF_CompleteCurLevel"..msg1..msg2)

    LF_Exhibition_SetLevelData(context,changeLevelData)

    return 0
end

-- 由地板发出的ServerLuaCall
function SLC_EnterFloor(context)
    if not LF_CheckPlayStep(context,{PlayStep.Start},"SLC_EnterFloor") then
        ScriptLib.PrintContextLog(context, "## TD_SOLD : SLC_EnterFloor 不合法")
        return 0
    end

    local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
    local curGadgetState = ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, config_id)

    ScriptLib.PrintContextLog(context, "## TD_SOLD action_EnterFloor：触发Cid = " .. config_id)

    if config_id >= LevelInfo.FloorCid and config_id < LevelInfo.FloorCid + LevelInfo.MaxSize^2 then
        -- 如果踩的地板是 2 ~ 6
        if curGadgetState == ObjState.Floor.bfFly then
            -- 如果踩的地板之前状态是蝴蝶状态
            LF_SetButterFlyRoad(context,config_id)
        end
        LF_AnalyzeFloorByOrder(context,config_id)
    end

    return 0
end

-- 确认地板状态
function LF_AnalyzeFloorByOrder(context,currentConfigID)
    local lastConfigID = ScriptLib.GetGroupVariableValue(context, VarInfo.LastCid) --上一个踩中地板的ConfigID

    ScriptLib.PrintContextLog(context, "## TD_SOLD LF_AnalyzeFloorByOrder lastCid = " .. lastConfigID .. " currentCid = " .. currentConfigID)

    -- 附近地板且顺位正确
    if LF_IsNearbyFloor(lastConfigID,currentConfigID) then

        ScriptLib.PrintContextLog(context, "## TD_SOLD : 踩入的地板顺序正确")
        ScriptLib.SetGroupVariableValue(context, VarInfo.LastCid, currentConfigID)
        ScriptLib.SetGadgetStateByConfigId(context,currentConfigID,ObjState.Floor.success)
        -- 成功踩入的逻辑
        LF_EnterSuccess(context)
    else
        -- 失败,重置所有地板
        ScriptLib.PrintContextLog(context, "## TD_SOLD : 踩入的地板顺序错误")
        ScriptLib.SetGadgetStateByConfigId(context,currentConfigID,ObjState.Floor.fail)
        -- 失败踩入的逻辑
        LF_ReStart(context)
        return 0
    end

    return 0
end

function LF_EnterSuccess(context)

    local curFloorNum = ScriptLib.GetGroupVariableValue(context, VarInfo.CurNum)
    if curFloorNum <= 1 then
        -- 树结果
        ScriptLib.SetGadgetStateByConfigId(context, LevelInfo.TreeCid, ObjState.Tree.fruit)
        ScriptLib.PrintContextLog(context, "## TD_SOLD : 地板已踩光光")
        LF_SetPlayStep(context,PlayStep.End,"LF_EnterSuccess")
    else
        -- 总计数变化
        ScriptLib.SetGroupVariableValue(context, VarInfo.CurNum, curFloorNum - 1)
        ScriptLib.PrintContextLog(context, "## TD_SOLD : 地板数-1，当前为 " .. curFloorNum - 1 )
    end

    return 0
end

-- 步骤检查
function LF_CheckPlayStep(context,phase,functionName)
    local curPlayStep = ScriptLib.GetGroupVariableValue(context, VarInfo.CurStep)
    for _,v in pairs(phase) do
        if v == curPlayStep then
            ScriptLib.PrintContextLog(context, "## TD_SOLD From:" .. functionName .." ||  当前[Phase:".. curPlayStep .."]符合目标进度" ..LF_ArrayToString(phase)  )
            return true
        end
    end

    ScriptLib.PrintContextLog(context, "## TD_SOLD From:" .. functionName .." ||  当前[Phase:".. curPlayStep .."]不符合目标进度" .. LF_ArrayToString(phase) .."!!!" )
    return false
end

-- 步骤设置
function LF_SetPlayStep(context,phase,functionName)
    ScriptLib.SetGroupVariableValue(context, VarInfo.CurStep, phase)
    ScriptLib.PrintContextLog(context, "## TD_SOLD From：" .. functionName .."  || 流程进度变化，当前[Phase:"..phase .."]" )
    return 0
end
--[[=====================================
||	永久陈列室工具包
--======================================]]
-- 写入陈列室值
function LF_Exhibition_SetLevelData(context,levelDataDec)
    --拿陈列室的值，并且做加法操作
    local exhibition = LevelInfo.Exhibition
    local uid = ScriptLib.GetSceneOwnerUid(context)
    local msg = "## TD_SOLD : LF_Exhibition_SetLevelData"
    msg = msg .. " |uid = " .. uid
    msg = msg .. " |LevelInfo.Exhibition.id = " .. exhibition.id
    ScriptLib.PrintContextLog(context, msg)

    local curDataDec = ScriptLib.GetExhibitionReplaceableData(context, uid, exhibition.id)

    msg = "## TD_SOLD : LF_Exhibition_SetLevelData"
    msg = msg .. " |levelDataDec = " .. levelDataDec
    msg = msg .. " |curDataDec = " .. curDataDec
    ScriptLib.PrintContextLog(context, msg)
    ScriptLib.AddExhibitionReplaceableData(context, uid, exhibition.key,levelDataDec - curDataDec)
    return 0
end

-- 返回当前的陈列室值
function LF_Exhibition_GetLevelData(context)
    local exhibition = LevelInfo.Exhibition
    local uid = ScriptLib.GetSceneOwnerUid(context)
    local msg = "## TD_SOLD : LF_Exhibition_GetLevelData"
    msg = msg .. " |uid = " .. uid
    msg = msg .. " |LevelInfo.Exhibition.id = " .. exhibition.id
    ScriptLib.PrintContextLog(context, msg)

    local levelDataDec = ScriptLib.GetExhibitionReplaceableData(context, uid, exhibition.id)

    msg = "## TD_SOLD : LF_Exhibition_GetLevelData"
    msg = msg .. " |levelDataDec = " .. levelDataDec
    ScriptLib.PrintContextLog(context, msg)

    return levelDataDec
end

-- 返回当前的陈列室值导出的数组
function LF_Exhibition_GetLevelDataArray(context)
    local levelDataDec = LF_Exhibition_GetLevelData(context)
    local levelDataArray = LF_DecToBin(levelDataDec)
    return levelDataArray
end

-- 修改bin中指定Index数据
function LF_Exhibition_SetTargetLevel(levelDataDec,targetIndex,value)
    local dataArray = LF_DecToBin(levelDataDec)
    if value ~= 0 and value ~=1 then
        ScriptLib.PrintLog("Error: LF_Exhibition_SetTargetCompelete: value = " .. value)
        value = 0
    end
    -- 指定关卡设为完成
    dataArray[targetIndex] = value
    local changeLevelData = LF_BinToDec(dataArray)


    return changeLevelData
end

-- 通过bin查询对应Index的关卡情况
function LF_Exhibition_CheckTargetComplete(targetIndex,levelDataDec)
    local dataArray = LF_DecToBin(levelDataDec)

    if targetIndex == 0 or nil == dataArray[targetIndex] then
        local msg1 = " |dataArray = " .. LF_ArrayToString(dataArray)
        local msg2 = " | index = " .. targetIndex
        ScriptLib.PrintLog("Error: LF_Exhibition_CheckTargetCompelete" .. msg1 .. msg2)
        return 0
    end

    if dataArray[targetIndex] == 0 then
        return 0
    end

    return 1
end

--[[=====================================
||	坐标工具包
--======================================]]
-- 取目标点
function LF_GetEntityPos(context, uid, cid)
    local logInfo = "## TD_SOLD :"
    ScriptLib.PrintContextLog(context, logInfo .. "LF_GetEntityPos")
    local _eid = 0
    --转译entityId
    if uid ~= 0 then
        _eid = ScriptLib.GetAvatarEntityIdByUid(context, uid)
    elseif cid ~= 0 then
        _eid = ScriptLib.GetEntityIdByConfigId(context, cid)
    end
    --若无法取到Pos会给零点作为保底并报错
    local _array = ScriptLib.GetPosByEntityId(context, _eid)
    local _res = { x=0,y=0,z=0}
    if _array.x == 0 and _array.y == 0 and _array.z == 0 then
        ScriptLib.PrintContextLog(context, logInfo .. "LF_GetEntityPos : Get Pos Fail !!! | uid="..uid.." | cid="..cid)
        _res.error = 1
        return _res
    end
    _res.x = _array.x
    _res.y = _array.y
    _res.z = _array.z
    return _res
end

-- 向量方向
function LF_GetNormalizedDirection(fromVector,toVector)
    local dirX = toVector.x - fromVector.x
    local dirY = toVector.y - fromVector.y
    local dirZ = toVector.z - fromVector.z
    local direction = { x = dirX, y = dirY, z = dirZ}
    return LF_Normalize(direction)
end

-- 归一化
function LF_Normalize(vector3)
    local magnitude = math.sqrt(vector3.x * vector3.x + vector3.y * vector3.y + vector3.z * vector3.z)
    local newVector = { x = vector3.x/magnitude, y = vector3.y / magnitude, z = vector3.z / magnitude}
    return newVector
end

function LF_VectorAdd(vectorA,vectorB)
    local X = vectorA.x + vectorB.x
    local Y = vectorA.y + vectorB.y
    local Z = vectorA.z + vectorB.z
    local newVector = {x=X,y=Y,z=Z}
    return newVector
end
-- 数乘向量
function LF_VectorMultiply(vector3,floatNum)
    local X = vector3.x*floatNum
    local Y = vector3.y*floatNum
    local Z = vector3.z*floatNum
    local newVector = {x=X,y=Y,z=Z}
    return newVector
end

--[[=====================================
||	私有函数
--======================================]]
function LF_SetGadgetsToTargetSuite(suiteId)
    local floorArray= PhasePlay[suiteId].FloorArray
    for x = 1,#floorArray do
        for y = 1,#floorArray[x] do
            if floorArray[x][y] >= 2 and floorArray[x][y] <= 6 then
                table.insert(suites[suiteId].gadgets,LF_GetFloorCID(x,y))
            end
        end
    end
end

function LF_GetFloorCID(x,y)
    local stepNum = (x-1) * LevelInfo.MaxSize + (y-1)
    return LevelInfo.FloorCid + stepNum
end

function LF_GetFloorCidByIdx(Idx)
    return LevelInfo.FloorCid + Idx - 1
end

function LF_GetXY(cid)
    local stepNum = math.abs(cid - LevelInfo.FloorCid)
    local curX = math.floor(stepNum/ LevelInfo.MaxSize) + 1
    local curY = stepNum% LevelInfo.MaxSize + 1
    return {x = curX,y = curY}
end

-- 判定时用来查询是否为合法地板
function LF_IsNearbyFloor(lastCid,curCid)
    local nearFloor = LF_GetNearbyFloorConfigList(lastCid)
    for i = 1,#nearFloor do
        if curCid == nearFloor[i] then
            return true
        end
    end
    return false
end

-- 获取周边地板的一个List
function LF_GetNearbyFloorConfigList(cid)
    local tempPos = LF_GetXY(cid)
    local nearFloor = {}

    local tempX = tempPos.x
    local tempY = tempPos.y

    ScriptLib.PrintLog(cid .. "'s XY is" .. LF_ArrayToString({ tempX,tempY }))

    if(tempX > 1)  then table.insert(nearFloor,LF_GetFloorCID(tempX -1, tempY)) end
    if(tempY > 1)  then table.insert(nearFloor,LF_GetFloorCID(tempX, tempY - 1)) end
    if(tempX +1 <= LevelInfo.MaxSize)  then table.insert(nearFloor,LF_GetFloorCID(tempX + 1, tempY)) end
    if(tempY +1 <= LevelInfo.MaxSize)  then table.insert(nearFloor,LF_GetFloorCID(tempX, tempY + 1)) end

    ScriptLib.PrintLog(cid .. "'s nearFloor is" .. LF_ArrayToString(nearFloor))

    return nearFloor
end

--[[=====================================
||	常用工具包
--======================================]]
-- 标准的InsertTriggers方法
function LF_InsertTriggers(TempTrigger,TempRequireSuite)
    local hasRequireSuiteList = not (TempRequireSuite == nil or #TempRequireSuite <=0)
    if hasRequireSuiteList then
        if (init_config.io_type ~= 1) then
            --常规group注入。trigger注入白名单定义的suite list
            for i = 1, #TempRequireSuite do
                for _,v in pairs(TempTrigger) do
                    if (TempRequireSuite[i]<=#suites) then
                        table.insert(suites[TempRequireSuite[i]].triggers, v.name)
                    end
                end
            end
        else
            --flow group注入。trigger注入白名单定义的suite list
            for i = 1, #TempRequireSuite do
                for _,v in pairs(TempTrigger) do
                    if (TempRequireSuite[i]<=#suite_disk) then
                        table.insert(suite_disk[TempRequireSuite[i]].triggers, v.name)
                    end
                end
            end
        end
    else
        --不存在白名单设置，走常规的trigger注入流程
        if (init_config.io_type ~= 1) then
            for i = 1, #suites do
                for _,v in pairs(TempTrigger) do
                    table.insert(suites[i].triggers, v.name)
                end
            end
        else
            for i = 1, #suite_disk do
                for _,v in pairs(TempTrigger) do
                    table.insert(suite_disk[i].triggers, v.name)
                end
            end
        end
    end
end
-- 简单拆分一个数组
function LF_ArrayToString(array)
    local s = "{"
    for k,v in pairs(array) do
        if k < #array then
            s = s .. v ..","
        else
            s = s .. v
        end
    end
    s = s .."}"
    return s
end
-- 根据数组的长度修饰num
function Fix(value,array,error)
    if value < 1 then
        ScriptLib.PrintLog(error .. "value = " .. value)
        return 1
    end
    if value > #array then
        ScriptLib.PrintLog(error .. "value = " .. value)
        return #array
    end

    return value
end

-- 顺序0,1数组转十进制保存
function LF_BinToDec(binArray)
    local decValue = 0
    local bin = table.concat(binArray)
    decValue = tonumber(bin,2)
    return decValue
end
-- 十进制转成0,1数组，位数对应为1~12
function LF_DecToBin(decValue)
    local binArray = {}
    local value = decValue
    local bit = #LevelInfo.LevelSuite -1
    for i = bit,0,-1 do
        binArray[#binArray+1] = math.floor(value/2^i)
        value = value % 2^i
    end
    return binArray
end



LF_Initialize_SumeruOneLineDraw()
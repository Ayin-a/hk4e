-- 基础信息
local base_info = {
	group_id = 235815002
}

-- DEFS_MISCS
--ByTime配置内容

--fever进度升级节点
local fever_progress_table = {
    0,40,120,270,570,800
}
--各等级fever的下降速率
local fever_attenuation = {
    -1,-1,-2,-2,-3
}

local DungeonWeather = { 
    10116,10117,10118,10119
}

--怪物潮
local monster_tide = {
    [1] = {2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2035,2036,2107,2108,2109,2110,2111,2112,2113,2114},
    [2] = {2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2037,2068,2069,2070,2071,2080,2081,2082,2115,2116},
    [3] = {2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2083,2084,2085,2086,2087,2088,2089,2090,2091,2094},
    [4] = {2095,2096,2097,2098,2099,2100,2101,2102,2117,2118,2119,2120,2121,2122,2123,2124,2125,2126,2127,2128,2129,2130,2131,2132}
}

--每轮怪物潮刷怪数量
local tide_suite_config = {
        [1] = {min=5,max=5},
        [2] = {min=5,max=5},
        [3] = {min=5,max=5},
        [4] = {min=6,max=6}
}

--精英怪
local elite = {
    [1] = {2030},
    [2] = {2031},
    [3] = {2032},
    [4] = {2033}
}

--精英怪创生点
local elite_born_points = {
    2022,2023,2024,2025,2026,2027,2028,2029
}

local defs = {
        group_id = 235815002,
        worktop_id = 2021, --操作台对应的configID
        game_time = 240, --挑战时间
        minion_tide_interval = 60, --怪物潮轮替时间间隔
        elite_interval = 15, --精英怪刷新间隔
        environment_suite = 3, --环境灯光所在的Suite
        elite_tide_interval = 60, --精英怪物潮更换间隔
        gallery_id = 15009, --使用的Gallery
        noswitch_punishment_interval = 25, --换人惩罚时间
        switch_team_fever = 30, --换人增加热度值
        air_wall = 2093, --场内空气墙对应的ConfigID
        punish_inAdvance_reminder_time = 4 --提前弹预警reminder的时间
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[2001] = { config_id = 2001, monster_id = 25210501, pos = { x = 27.851, y = 3.150, z = 110.795 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2002] = { config_id = 2002, monster_id = 25210301, pos = { x = 29.988, y = 3.150, z = 110.795 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2003] = { config_id = 2003, monster_id = 25210401, pos = { x = 32.314, y = 3.150, z = 110.795 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2004] = { config_id = 2004, monster_id = 25210301, pos = { x = 34.648, y = 3.150, z = 110.795 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2005] = { config_id = 2005, monster_id = 25210501, pos = { x = 37.101, y = 3.150, z = 110.795 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2006] = { config_id = 2006, monster_id = 25210301, pos = { x = 40.201, y = 3.150, z = 97.895 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2007] = { config_id = 2007, monster_id = 25210501, pos = { x = 40.204, y = 3.150, z = 100.549 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2008] = { config_id = 2008, monster_id = 25210101, pos = { x = 40.204, y = 3.150, z = 103.037 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2009] = { config_id = 2009, monster_id = 25210501, pos = { x = 40.158, y = 3.150, z = 105.614 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2010] = { config_id = 2010, monster_id = 25210301, pos = { x = 40.211, y = 3.150, z = 107.863 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2011] = { config_id = 2011, monster_id = 25210201, pos = { x = 27.851, y = 3.150, z = 110.795 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2012] = { config_id = 2012, monster_id = 25210301, pos = { x = 29.988, y = 3.150, z = 110.795 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2013] = { config_id = 2013, monster_id = 25210401, pos = { x = 32.314, y = 3.150, z = 110.795 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2014] = { config_id = 2014, monster_id = 25210501, pos = { x = 34.648, y = 3.150, z = 110.795 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2015] = { config_id = 2015, monster_id = 25210201, pos = { x = 37.101, y = 3.150, z = 110.795 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2016] = { config_id = 2016, monster_id = 25210201, pos = { x = 40.201, y = 3.150, z = 97.895 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2017] = { config_id = 2017, monster_id = 25210401, pos = { x = 40.204, y = 3.150, z = 100.549 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2018] = { config_id = 2018, monster_id = 25210501, pos = { x = 40.204, y = 3.150, z = 103.037 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2019] = { config_id = 2019, monster_id = 25210401, pos = { x = 40.158, y = 3.150, z = 105.614 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2020] = { config_id = 2020, monster_id = 25210201, pos = { x = 40.211, y = 3.150, z = 107.863 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2030] = { config_id = 2030, monster_id = 25310201, pos = { x = 28.833, y = 3.180, z = 118.018 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, pose_id = 1, kill_score = 39 },
	[2031] = { config_id = 2031, monster_id = 25310101, pos = { x = 31.762, y = 3.180, z = 118.133 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, pose_id = 1, kill_score = 39 },
	[2032] = { config_id = 2032, monster_id = 25310301, pos = { x = 34.900, y = 3.180, z = 118.011 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 45 },
	[2033] = { config_id = 2033, monster_id = 23050101, pos = { x = 38.572, y = 3.180, z = 118.011 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 84 },
	[2035] = { config_id = 2035, monster_id = 25210501, pos = { x = 27.851, y = 3.150, z = 95.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2036] = { config_id = 2036, monster_id = 25210301, pos = { x = 29.989, y = 3.150, z = 95.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2037] = { config_id = 2037, monster_id = 25210201, pos = { x = 27.851, y = 3.150, z = 95.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2038] = { config_id = 2038, monster_id = 25210301, pos = { x = 27.851, y = 3.150, z = 110.795 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2039] = { config_id = 2039, monster_id = 25210401, pos = { x = 29.988, y = 3.150, z = 110.795 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2040] = { config_id = 2040, monster_id = 25210101, pos = { x = 32.314, y = 3.150, z = 110.795 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2041] = { config_id = 2041, monster_id = 25210401, pos = { x = 34.648, y = 3.150, z = 110.795 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2042] = { config_id = 2042, monster_id = 25210301, pos = { x = 37.101, y = 3.150, z = 110.795 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2043] = { config_id = 2043, monster_id = 25210201, pos = { x = 40.201, y = 3.150, z = 97.895 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2044] = { config_id = 2044, monster_id = 25210501, pos = { x = 40.204, y = 3.150, z = 100.549 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2045] = { config_id = 2045, monster_id = 25210101, pos = { x = 40.204, y = 3.150, z = 103.037 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2046] = { config_id = 2046, monster_id = 25210501, pos = { x = 40.158, y = 3.150, z = 105.614 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2047] = { config_id = 2047, monster_id = 25210201, pos = { x = 40.211, y = 3.150, z = 107.863 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2068] = { config_id = 2068, monster_id = 25210301, pos = { x = 29.989, y = 3.150, z = 95.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2069] = { config_id = 2069, monster_id = 25210401, pos = { x = 32.314, y = 3.150, z = 95.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2070] = { config_id = 2070, monster_id = 25210501, pos = { x = 34.648, y = 3.150, z = 95.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2071] = { config_id = 2071, monster_id = 25210201, pos = { x = 37.101, y = 3.150, z = 95.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2080] = { config_id = 2080, monster_id = 25210201, pos = { x = 24.378, y = 3.150, z = 97.829 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2081] = { config_id = 2081, monster_id = 25210401, pos = { x = 24.381, y = 3.150, z = 100.484 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2082] = { config_id = 2082, monster_id = 25210501, pos = { x = 24.381, y = 3.150, z = 102.972 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2083] = { config_id = 2083, monster_id = 25210301, pos = { x = 27.851, y = 3.150, z = 95.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2084] = { config_id = 2084, monster_id = 25210401, pos = { x = 29.989, y = 3.150, z = 95.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2085] = { config_id = 2085, monster_id = 25210101, pos = { x = 32.314, y = 3.150, z = 95.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2086] = { config_id = 2086, monster_id = 25210401, pos = { x = 34.648, y = 3.150, z = 95.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2087] = { config_id = 2087, monster_id = 25210301, pos = { x = 37.101, y = 3.150, z = 95.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2088] = { config_id = 2088, monster_id = 25210201, pos = { x = 24.378, y = 3.150, z = 97.829 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2089] = { config_id = 2089, monster_id = 25210501, pos = { x = 24.381, y = 3.150, z = 100.484 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2090] = { config_id = 2090, monster_id = 25210101, pos = { x = 24.381, y = 3.150, z = 102.972 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2091] = { config_id = 2091, monster_id = 25210501, pos = { x = 24.335, y = 3.150, z = 105.548 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2094] = { config_id = 2094, monster_id = 25210201, pos = { x = 24.388, y = 3.150, z = 107.798 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2095] = { config_id = 2095, monster_id = 25210201, pos = { x = 26.563, y = 3.150, z = 110.809 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2096] = { config_id = 2096, monster_id = 25010501, pos = { x = 28.700, y = 3.150, z = 110.809 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6, is_light_config = true },
	[2097] = { config_id = 2097, monster_id = 25030301, pos = { x = 31.026, y = 3.150, z = 110.809 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6, is_light_config = true },
	[2098] = { config_id = 2098, monster_id = 25010701, pos = { x = 33.360, y = 3.150, z = 110.809 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6, is_light_config = true },
	[2099] = { config_id = 2099, monster_id = 25010501, pos = { x = 35.812, y = 3.150, z = 110.809 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6, is_light_config = true },
	[2100] = { config_id = 2100, monster_id = 25210201, pos = { x = 37.947, y = 3.150, z = 110.809 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2101] = { config_id = 2101, monster_id = 25010401, pos = { x = 40.201, y = 3.150, z = 96.860 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6, is_light_config = true },
	[2102] = { config_id = 2102, monster_id = 25210401, pos = { x = 40.204, y = 3.150, z = 99.514 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2107] = { config_id = 2107, monster_id = 25210401, pos = { x = 32.314, y = 3.150, z = 95.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2108] = { config_id = 2108, monster_id = 25210301, pos = { x = 34.648, y = 3.150, z = 95.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2109] = { config_id = 2109, monster_id = 25210501, pos = { x = 37.101, y = 3.150, z = 95.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2110] = { config_id = 2110, monster_id = 25210301, pos = { x = 24.378, y = 3.150, z = 97.829 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2111] = { config_id = 2111, monster_id = 25210501, pos = { x = 24.381, y = 3.150, z = 100.484 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2112] = { config_id = 2112, monster_id = 25210101, pos = { x = 24.381, y = 3.150, z = 102.972 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2113] = { config_id = 2113, monster_id = 25210501, pos = { x = 24.335, y = 3.150, z = 105.548 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2114] = { config_id = 2114, monster_id = 25210301, pos = { x = 24.388, y = 3.150, z = 107.798 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2115] = { config_id = 2115, monster_id = 25210401, pos = { x = 24.335, y = 3.150, z = 105.548 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2116] = { config_id = 2116, monster_id = 25210201, pos = { x = 24.388, y = 3.150, z = 107.798 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2117] = { config_id = 2117, monster_id = 25210201, pos = { x = 40.204, y = 3.150, z = 102.002 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2118] = { config_id = 2118, monster_id = 25210201, pos = { x = 40.158, y = 3.150, z = 104.326 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2119] = { config_id = 2119, monster_id = 25210401, pos = { x = 40.211, y = 3.150, z = 106.828 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2120] = { config_id = 2120, monster_id = 25010401, pos = { x = 40.211, y = 3.150, z = 109.155 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6, is_light_config = true },
	[2121] = { config_id = 2121, monster_id = 25060101, pos = { x = 26.563, y = 3.150, z = 95.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6, is_light_config = true },
	[2122] = { config_id = 2122, monster_id = 25210501, pos = { x = 28.700, y = 3.150, z = 95.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2123] = { config_id = 2123, monster_id = 25210101, pos = { x = 31.026, y = 3.150, z = 95.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2124] = { config_id = 2124, monster_id = 25210301, pos = { x = 33.359, y = 3.150, z = 95.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2125] = { config_id = 2125, monster_id = 25210501, pos = { x = 35.812, y = 3.150, z = 95.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 9 },
	[2126] = { config_id = 2126, monster_id = 25060101, pos = { x = 37.947, y = 3.150, z = 95.243 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6, is_light_config = true },
	[2127] = { config_id = 2127, monster_id = 25010401, pos = { x = 24.559, y = 3.150, z = 96.860 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6, is_light_config = true },
	[2128] = { config_id = 2128, monster_id = 25070101, pos = { x = 24.562, y = 3.150, z = 99.514 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6, is_light_config = true },
	[2129] = { config_id = 2129, monster_id = 25210201, pos = { x = 24.562, y = 3.150, z = 102.002 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2130] = { config_id = 2130, monster_id = 25210201, pos = { x = 24.516, y = 3.150, z = 104.326 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6 },
	[2131] = { config_id = 2131, monster_id = 25070101, pos = { x = 24.569, y = 3.150, z = 106.828 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6, is_light_config = true },
	[2132] = { config_id = 2132, monster_id = 25010501, pos = { x = 24.569, y = 3.150, z = 109.155 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5196 }, kill_score = 6, is_light_config = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[2021] = { config_id = 2021, gadget_id = 70360010, pos = { x = 32.330, y = 2.738, z = 102.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2048] = { config_id = 2048, gadget_id = 70350306, pos = { x = 52.126, y = 5.575, z = 83.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2049] = { config_id = 2049, gadget_id = 70350306, pos = { x = 12.676, y = 5.526, z = 83.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2050] = { config_id = 2050, gadget_id = 70350306, pos = { x = 52.076, y = 5.471, z = 122.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2051] = { config_id = 2051, gadget_id = 70350306, pos = { x = 12.694, y = 5.606, z = 122.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2052] = { config_id = 2052, gadget_id = 70350307, pos = { x = 72.500, y = 3.880, z = 128.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2053] = { config_id = 2053, gadget_id = 70350307, pos = { x = 72.500, y = 3.880, z = 120.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2054] = { config_id = 2054, gadget_id = 70350307, pos = { x = 72.500, y = 3.880, z = 112.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2055] = { config_id = 2055, gadget_id = 70350307, pos = { x = 72.500, y = 3.880, z = 103.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2056] = { config_id = 2056, gadget_id = 70350307, pos = { x = 72.500, y = 3.880, z = 95.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2057] = { config_id = 2057, gadget_id = 70350307, pos = { x = 72.500, y = 3.880, z = 86.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2058] = { config_id = 2058, gadget_id = 70350307, pos = { x = -8.822, y = 3.880, z = 128.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2059] = { config_id = 2059, gadget_id = 70350307, pos = { x = -8.190, y = 3.880, z = 120.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2060] = { config_id = 2060, gadget_id = 70350307, pos = { x = -8.190, y = 3.880, z = 112.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2061] = { config_id = 2061, gadget_id = 70350307, pos = { x = -8.219, y = 3.880, z = 103.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2062] = { config_id = 2062, gadget_id = 70350307, pos = { x = -8.048, y = 3.880, z = 95.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2063] = { config_id = 2063, gadget_id = 70350307, pos = { x = -8.262, y = 3.880, z = 86.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2064] = { config_id = 2064, gadget_id = 70350306, pos = { x = 24.650, y = 10.805, z = 141.543 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2065] = { config_id = 2065, gadget_id = 70350306, pos = { x = 40.050, y = 10.799, z = 141.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2066] = { config_id = 2066, gadget_id = 70350306, pos = { x = 27.317, y = 8.059, z = 75.224 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2067] = { config_id = 2067, gadget_id = 70350306, pos = { x = 37.346, y = 8.064, z = 75.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2072] = { config_id = 2072, gadget_id = 70350308, pos = { x = 38.094, y = 18.788, z = 141.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2073] = { config_id = 2073, gadget_id = 70350308, pos = { x = 26.571, y = 18.756, z = 141.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2074] = { config_id = 2074, gadget_id = 70350308, pos = { x = -10.671, y = 26.712, z = 147.351 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2075] = { config_id = 2075, gadget_id = 70350308, pos = { x = 77.800, y = 26.831, z = 147.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2076] = { config_id = 2076, gadget_id = 70350308, pos = { x = 85.879, y = 26.886, z = 139.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2077] = { config_id = 2077, gadget_id = 70350308, pos = { x = -18.976, y = 26.894, z = 139.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2078] = { config_id = 2078, gadget_id = 70350309, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2079] = { config_id = 2079, gadget_id = 70350307, pos = { x = 72.500, y = 3.880, z = 77.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2092] = { config_id = 2092, gadget_id = 70350307, pos = { x = -8.250, y = 3.880, z = 77.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2093] = { config_id = 2093, gadget_id = 70950010, pos = { x = 32.433, y = 3.320, z = 83.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[2103] = { config_id = 2103, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = 32.375, y = 3.150, z = 102.944 } }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 2022, pos = { x = 32.214, y = 3.170, z = 112.867 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
	{ config_id = 2023, pos = { x = 42.474, y = 3.170, z = 112.825 }, rot = { x = 0.000, y = 221.574, z = 0.000 } },
	{ config_id = 2024, pos = { x = 42.336, y = 3.170, z = 92.945 }, rot = { x = 0.000, y = 322.164, z = 0.000 } },
	{ config_id = 2025, pos = { x = 32.430, y = 3.170, z = 92.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 2026, pos = { x = 22.289, y = 3.170, z = 92.987 }, rot = { x = 0.000, y = 32.833, z = 0.000 } },
	{ config_id = 2027, pos = { x = 22.420, y = 3.170, z = 113.032 }, rot = { x = 0.000, y = 138.894, z = 0.000 } },
	{ config_id = 2028, pos = { x = 22.313, y = 3.160, z = 102.844 }, rot = { x = 0.000, y = 90.000, z = 0.000 } },
	{ config_id = 2029, pos = { x = 42.306, y = 3.160, z = 103.014 }, rot = { x = 0.000, y = 270.000, z = 0.000 } }
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
		gadgets = { 2021 },
		regions = { 2103 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 放所有的精英怪和精英怪创生点,
		monsters = { 2030, 2031, 2032, 2033 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 放场景氛围物件,
		monsters = { },
		gadgets = { 2048, 2049, 2050, 2051, 2052, 2053, 2054, 2055, 2056, 2057, 2058, 2059, 2060, 2061, 2062, 2063, 2064, 2065, 2066, 2067, 2072, 2073, 2074, 2075, 2076, 2077, 2078, 2079, 2092 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 怪物潮第一波,
		monsters = { 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2035, 2036, 2107, 2108, 2109, 2110, 2111, 2112, 2113, 2114 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 怪物潮第二波,
		monsters = { 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2037, 2068, 2069, 2070, 2071, 2080, 2081, 2082, 2115, 2116 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 怪物潮第三波,
		monsters = { 2038, 2039, 2040, 2041, 2042, 2043, 2044, 2045, 2046, 2047, 2083, 2084, 2085, 2086, 2087, 2088, 2089, 2090, 2091, 2094 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 怪物潮第四波,
		monsters = { 2095, 2096, 2097, 2098, 2099, 2100, 2101, 2102, 2117, 2118, 2119, 2120, 2121, 2122, 2123, 2124, 2125, 2126, 2127, 2128, 2129, 2130, 2131, 2132 },
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

require "V3_1/FightingStage_ByTime"
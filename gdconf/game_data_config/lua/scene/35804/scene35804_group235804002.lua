-- 基础信息
local base_info = {
	group_id = 235804002
}

-- Trigger变量
local defs = {
	group_id = 235804002,
	worktop_id = 2021,
	game_time = 240,
	minion_tide_interval = 80,
	elite_interval = 20,
	minion_fever = 10,
	elite_fever = 50,
	min_monster_count = 7,
	max_monster_count = 7,
	environment_suite = 3,
	elite_tide_interval = 80,
	gallery_id = 10004,
	noswitch_punishment_interval = 25,
	switch_team_fever = 30,
	airwall = 2093
}

-- DEFS_MISCS
--fever进度升级节点
local fever_progress_table = {
    0,40,120,270,570,800
}
--各等级fever的下降速率
local fever_attenuation = {
    -1,-1,-2,-2,-3
}

--天气区域
local DungeonWeather = { 
    10047,10048,10049,10050
} 

--怪物潮
local monster_tide = {
    [1] = {2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2080,2081,2082,2083},
    [2] = {2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2084,2085,2086,2087},
    [3] = {2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2088,2089,2090,2091}
}

--精英怪
local elite = {
    2030,2031,2032
}

--精英怪创生点
local elite_born_points = {
    2022,2023,2024,2025,2026,2027,2028,2029
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 21030601, pos = { x = 28.820, y = 3.120, z = 111.782 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2002, monster_id = 21010201, pos = { x = 30.957, y = 3.120, z = 111.782 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2003, monster_id = 21010201, pos = { x = 33.283, y = 3.120, z = 111.782 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2004, monster_id = 21010201, pos = { x = 35.617, y = 3.120, z = 111.782 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2005, monster_id = 21010501, pos = { x = 38.025, y = 3.120, z = 111.782 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2006, monster_id = 21010201, pos = { x = 24.427, y = 3.120, z = 111.980 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2007, monster_id = 21010501, pos = { x = 26.317, y = 3.120, z = 111.980 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2008, monster_id = 21010201, pos = { x = 33.283, y = 3.120, z = 95.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2009, monster_id = 21010201, pos = { x = 35.617, y = 3.120, z = 95.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2010, monster_id = 21010201, pos = { x = 38.025, y = 3.120, z = 95.166 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2011, monster_id = 21030601, pos = { x = 21.309, y = 3.120, z = 100.441 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2012, monster_id = 21011001, pos = { x = 21.366, y = 3.114, z = 103.096 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2013, monster_id = 21010201, pos = { x = 21.201, y = 3.126, z = 105.827 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2014, monster_id = 21010201, pos = { x = 21.510, y = 3.150, z = 108.694 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2015, monster_id = 21010201, pos = { x = 22.083, y = 3.120, z = 111.364 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2016, monster_id = 21010201, pos = { x = 21.669, y = 3.120, z = 97.661 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2017, monster_id = 21011001, pos = { x = 22.258, y = 3.120, z = 95.248 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2018, monster_id = 21011001, pos = { x = 41.515, y = 3.120, z = 95.255 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2019, monster_id = 21010201, pos = { x = 42.235, y = 3.120, z = 97.805 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2020, monster_id = 21010201, pos = { x = 42.666, y = 3.083, z = 100.414 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2030, monster_id = 21020201, pos = { x = 28.604, y = 3.120, z = 112.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2031, monster_id = 21020701, pos = { x = 37.715, y = 3.120, z = 112.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2032, monster_id = 21020801, pos = { x = 32.103, y = 3.120, z = 112.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2038, monster_id = 21030601, pos = { x = 28.820, y = 3.120, z = 110.540 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2039, monster_id = 21011001, pos = { x = 30.957, y = 3.120, z = 110.540 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2040, monster_id = 21011001, pos = { x = 33.283, y = 3.120, z = 110.540 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2041, monster_id = 21010701, pos = { x = 35.617, y = 3.120, z = 110.540 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2042, monster_id = 21010701, pos = { x = 38.025, y = 3.120, z = 110.540 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2043, monster_id = 21010201, pos = { x = 28.820, y = 3.120, z = 96.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2044, monster_id = 21010201, pos = { x = 30.957, y = 3.120, z = 96.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2045, monster_id = 21011001, pos = { x = 33.283, y = 3.120, z = 96.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2046, monster_id = 21011001, pos = { x = 35.617, y = 3.120, z = 96.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2047, monster_id = 21010701, pos = { x = 38.025, y = 3.120, z = 96.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2080, monster_id = 21010501, pos = { x = 31.173, y = 3.150, z = 95.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2081, monster_id = 21010201, pos = { x = 29.248, y = 3.150, z = 94.954 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2082, monster_id = 21010501, pos = { x = 27.020, y = 3.150, z = 95.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2083, monster_id = 21030601, pos = { x = 24.627, y = 3.150, z = 95.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2084, monster_id = 21010201, pos = { x = 42.828, y = 3.150, z = 102.929 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2085, monster_id = 21010201, pos = { x = 42.670, y = 3.150, z = 105.433 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2086, monster_id = 21011001, pos = { x = 42.434, y = 3.150, z = 107.869 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2087, monster_id = 21030601, pos = { x = 41.943, y = 3.190, z = 110.131 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2088, monster_id = 21010701, pos = { x = 26.477, y = 3.150, z = 110.497 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2089, monster_id = 21010201, pos = { x = 24.443, y = 3.150, z = 110.442 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2090, monster_id = 21010201, pos = { x = 26.817, y = 3.150, z = 96.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2091, monster_id = 21030601, pos = { x = 24.669, y = 3.150, z = 96.319 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2021, gadget_id = 70360010, pos = { x = 32.330, y = 2.738, z = 102.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2048, gadget_id = 70350306, pos = { x = 52.126, y = 5.575, z = 83.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2049, gadget_id = 70350306, pos = { x = 12.676, y = 5.526, z = 83.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2050, gadget_id = 70350306, pos = { x = 52.076, y = 5.471, z = 122.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2051, gadget_id = 70350306, pos = { x = 12.694, y = 5.606, z = 122.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2052, gadget_id = 70350307, pos = { x = 72.500, y = 3.880, z = 128.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2053, gadget_id = 70350307, pos = { x = 72.500, y = 3.880, z = 120.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2054, gadget_id = 70350307, pos = { x = 72.500, y = 3.880, z = 112.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2055, gadget_id = 70350307, pos = { x = 72.500, y = 3.880, z = 103.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2056, gadget_id = 70350307, pos = { x = 72.500, y = 3.880, z = 95.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2057, gadget_id = 70350307, pos = { x = 72.500, y = 3.880, z = 86.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2058, gadget_id = 70350307, pos = { x = -8.822, y = 3.880, z = 128.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2059, gadget_id = 70350307, pos = { x = -8.190, y = 3.880, z = 120.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2060, gadget_id = 70350307, pos = { x = -8.190, y = 3.880, z = 112.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2061, gadget_id = 70350307, pos = { x = -8.219, y = 3.880, z = 103.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2062, gadget_id = 70350307, pos = { x = -8.048, y = 3.880, z = 95.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2063, gadget_id = 70350307, pos = { x = -8.262, y = 3.880, z = 86.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2064, gadget_id = 70350306, pos = { x = 24.650, y = 10.805, z = 141.543 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2065, gadget_id = 70350306, pos = { x = 40.050, y = 10.799, z = 141.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2066, gadget_id = 70350306, pos = { x = 27.317, y = 8.059, z = 75.224 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2067, gadget_id = 70350306, pos = { x = 37.346, y = 8.064, z = 75.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2072, gadget_id = 70350308, pos = { x = 38.094, y = 18.788, z = 141.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2073, gadget_id = 70350308, pos = { x = 26.571, y = 18.756, z = 141.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2074, gadget_id = 70350308, pos = { x = -10.671, y = 26.712, z = 147.351 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2075, gadget_id = 70350308, pos = { x = 77.800, y = 26.831, z = 147.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2076, gadget_id = 70350308, pos = { x = 85.879, y = 26.886, z = 139.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2077, gadget_id = 70350308, pos = { x = -18.976, y = 26.894, z = 139.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2078, gadget_id = 70350309, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2079, gadget_id = 70350307, pos = { x = 72.500, y = 3.880, z = 77.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2092, gadget_id = 70350307, pos = { x = -8.250, y = 3.880, z = 77.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2093, gadget_id = 70950010, pos = { x = 32.433, y = 3.320, z = 83.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 2022, pos = { x = 32.307, y = 3.120, z = 114.945 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
	{ config_id = 2023, pos = { x = 41.987, y = 3.120, z = 114.066 }, rot = { x = 0.000, y = 215.000, z = 0.000 } },
	{ config_id = 2024, pos = { x = 40.508, y = 3.120, z = 91.949 }, rot = { x = 0.000, y = 335.000, z = 0.000 } },
	{ config_id = 2025, pos = { x = 32.314, y = 3.120, z = 91.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 2026, pos = { x = 23.733, y = 3.144, z = 91.818 }, rot = { x = 0.000, y = 25.000, z = 0.000 } },
	{ config_id = 2027, pos = { x = 22.497, y = 3.120, z = 114.426 }, rot = { x = 0.000, y = 145.000, z = 0.000 } },
	{ config_id = 2028, pos = { x = 18.236, y = 3.120, z = 103.022 }, rot = { x = 0.000, y = 90.000, z = 0.000 } },
	{ config_id = 2029, pos = { x = 46.385, y = 3.120, z = 102.920 }, rot = { x = 0.000, y = 270.000, z = 0.000 } }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 2033, monster_id = 21020801, pos = { x = 36.742, y = 9.070, z = 141.210 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
		{ config_id = 2034, monster_id = 21020401, pos = { x = 28.974, y = 9.070, z = 149.120 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
		{ config_id = 2035, monster_id = 21020501, pos = { x = 37.172, y = 9.070, z = 148.631 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
		{ config_id = 2036, monster_id = 21020801, pos = { x = 27.817, y = 9.085, z = 141.295 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
		{ config_id = 2037, monster_id = 20010201, pos = { x = 32.891, y = 9.070, z = 142.741 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 201 }
	},
	gadgets = {
		{ config_id = 2068, gadget_id = 70350306, pos = { x = 27.249, y = 6.690, z = 65.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 2069, gadget_id = 70350306, pos = { x = 37.323, y = 6.598, z = 66.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 2070, gadget_id = 40000001, pos = { x = 37.727, y = 17.034, z = 48.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 2071, gadget_id = 40000001, pos = { x = 27.281, y = 17.034, z = 48.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 2021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 放所有的精英怪和精英怪创生点,
		monsters = { 2030, 2031, 2032 },
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
		monsters = { 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2080, 2081, 2082, 2083 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 怪物潮第二波,
		monsters = { 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2084, 2085, 2086, 2087 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 怪物潮第三波,
		monsters = { 2038, 2039, 2040, 2041, 2042, 2043, 2044, 2045, 2046, 2047, 2088, 2089, 2090, 2091 },
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

require "V2_1/FightingStage"
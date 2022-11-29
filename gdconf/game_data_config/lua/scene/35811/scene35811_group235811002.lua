-- 基础信息
local base_info = {
	group_id = 235811002
}

-- DEFS_MISCS
--ByNum配置内容

--fever进度升级节点
local fever_progress_table = {
    0,40,120,270,570,800
}
--各等级fever的下降速率
local fever_attenuation = {
    -1,-1,-2,-2,-3
}
--地城对应的天气配置
local DungeonWeather = { 
    11051,11052,11053,11054 
}

--怪物潮
local monster_tide = {
    [1] = {2001,2002,2003,2004,2005,2006,2007,2008},
    [2] = {2009,2010,2011,2012,2012,2013,2014,2015,2016,2017},
    [3] = {2018,2019,2020,2030,2031,2032},
    [4] = {2035,2036,2033,2034},
    [5] = {2037,2038,2040,2041,2043,2044,2046,2047}
}

--每轮怪物潮刷怪数量
local tide_suite_config = {
        [1] = {min=4,max=4},
        [2] = {min=1,max=3},
        [3] = {min=1,max=2},
        [4] = {min=1,max=2},
        [5] = {min=1,max=2}
}

local defs = {
    group_id = 235811002,
    worktop_id = 2021,   --操作台对应的configID
    game_time = 240,    --挑战时间
    environment_suite = 3, --环境灯光所在的Suite
    gallery_id = 15005, --对应的GalleryID
    noswitch_punishment_interval = 30, --不换人开始有惩罚的最小时间间隔
    switch_team_fever = 30, --换人增加热度值
    num_killed_per_tide = {8, 9, 6, 4, 0}, --每组怪物潮对应需要的杀怪数量
    air_wall = 2081    --场内空气墙对应的ConfigID
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[2001] = { config_id = 2001, monster_id = 22040201, pos = { x = 27.341, y = 3.170, z = 112.766 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, pose_id = 101, kill_score = 15 },
	[2002] = { config_id = 2002, monster_id = 22040201, pos = { x = 30.733, y = 3.170, z = 112.766 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, pose_id = 101, kill_score = 15 },
	[2003] = { config_id = 2003, monster_id = 22040201, pos = { x = 33.978, y = 3.170, z = 112.766 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, pose_id = 101, kill_score = 15 },
	[2004] = { config_id = 2004, monster_id = 22040201, pos = { x = 37.066, y = 3.170, z = 112.766 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, pose_id = 101, kill_score = 15 },
	[2005] = { config_id = 2005, monster_id = 22040201, pos = { x = 27.435, y = 3.170, z = 92.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, pose_id = 101, kill_score = 15 },
	[2006] = { config_id = 2006, monster_id = 22040201, pos = { x = 30.827, y = 3.170, z = 92.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, pose_id = 101, kill_score = 15 },
	[2007] = { config_id = 2007, monster_id = 22040201, pos = { x = 34.072, y = 3.170, z = 92.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, pose_id = 101, kill_score = 15 },
	[2008] = { config_id = 2008, monster_id = 22040201, pos = { x = 37.160, y = 3.170, z = 92.883 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, pose_id = 101, kill_score = 15 },
	[2009] = { config_id = 2009, monster_id = 26051101, pos = { x = 26.687, y = 3.170, z = 112.614 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, kill_score = 20 },
	[2010] = { config_id = 2010, monster_id = 26051101, pos = { x = 38.143, y = 3.170, z = 112.614 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, kill_score = 20 },
	[2011] = { config_id = 2011, monster_id = 26051001, pos = { x = 32.358, y = 3.170, z = 112.614 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, kill_score = 20 },
	[2012] = { config_id = 2012, monster_id = 26050901, pos = { x = 22.153, y = 3.160, z = 97.368 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, kill_score = 20 },
	[2013] = { config_id = 2013, monster_id = 26050901, pos = { x = 22.133, y = 3.160, z = 108.688 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, kill_score = 20 },
	[2014] = { config_id = 2014, monster_id = 26051101, pos = { x = 22.154, y = 3.160, z = 102.978 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, kill_score = 20 },
	[2015] = { config_id = 2015, monster_id = 26050901, pos = { x = 42.567, y = 3.160, z = 97.368 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, kill_score = 20 },
	[2016] = { config_id = 2016, monster_id = 26051001, pos = { x = 42.546, y = 3.160, z = 108.688 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, kill_score = 20 },
	[2017] = { config_id = 2017, monster_id = 26051101, pos = { x = 42.568, y = 3.160, z = 102.978 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, kill_score = 20 },
	[2018] = { config_id = 2018, monster_id = 26040101, pos = { x = 26.687, y = 3.170, z = 92.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, kill_score = 55 },
	[2019] = { config_id = 2019, monster_id = 26040104, pos = { x = 37.905, y = 3.170, z = 92.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, kill_score = 55 },
	[2020] = { config_id = 2020, monster_id = 26040102, pos = { x = 22.378, y = 3.160, z = 97.393 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, kill_score = 55 },
	[2030] = { config_id = 2030, monster_id = 26040103, pos = { x = 22.516, y = 3.160, z = 108.658 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, kill_score = 55 },
	[2031] = { config_id = 2031, monster_id = 26040102, pos = { x = 42.306, y = 3.160, z = 97.393 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, kill_score = 55 },
	[2032] = { config_id = 2032, monster_id = 26040103, pos = { x = 42.445, y = 3.160, z = 108.658 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, kill_score = 55 },
	[2033] = { config_id = 2033, monster_id = 22050201, pos = { x = 26.687, y = 3.170, z = 92.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, pose_id = 101, kill_score = 55 },
	[2034] = { config_id = 2034, monster_id = 22050201, pos = { x = 37.905, y = 3.170, z = 92.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, pose_id = 101, kill_score = 55 },
	[2035] = { config_id = 2035, monster_id = 22050201, pos = { x = 26.687, y = 3.170, z = 113.100 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, pose_id = 101, kill_score = 55 },
	[2036] = { config_id = 2036, monster_id = 22050201, pos = { x = 37.905, y = 3.170, z = 113.136 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, pose_id = 101, kill_score = 55 },
	[2037] = { config_id = 2037, monster_id = 22050201, pos = { x = 26.936, y = 3.170, z = 113.103 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, pose_id = 101, kill_score = 55 },
	[2038] = { config_id = 2038, monster_id = 22050201, pos = { x = 38.071, y = 3.170, z = 113.083 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, pose_id = 101, kill_score = 55 },
	[2040] = { config_id = 2040, monster_id = 26050601, pos = { x = 26.936, y = 3.170, z = 92.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, kill_score = 45 },
	[2041] = { config_id = 2041, monster_id = 26050601, pos = { x = 38.071, y = 3.170, z = 92.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, kill_score = 45 },
	[2043] = { config_id = 2043, monster_id = 22050101, pos = { x = 22.245, y = 3.160, z = 108.630 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, pose_id = 101, kill_score = 55 },
	[2044] = { config_id = 2044, monster_id = 22050101, pos = { x = 22.248, y = 3.160, z = 97.311 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, pose_id = 101, kill_score = 55 },
	[2046] = { config_id = 2046, monster_id = 26050601, pos = { x = 42.456, y = 3.160, z = 108.630 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, kill_score = 45 },
	[2047] = { config_id = 2047, monster_id = 26050601, pos = { x = 42.458, y = 3.160, z = 97.311 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5140 }, kill_score = 45 }
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
	[2080] = { config_id = 2080, gadget_id = 70350307, pos = { x = -8.250, y = 3.880, z = 77.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2081] = { config_id = 2081, gadget_id = 70950010, pos = { x = 32.433, y = 3.320, z = 83.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[2022] = { config_id = 2022, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = 32.393, y = 3.150, z = 102.880 } }
}

-- 触发器
triggers = {
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
		regions = { 2022 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 放所有的精英怪和精英怪创生点,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 放场景氛围物件,
		monsters = { },
		gadgets = { 2048, 2049, 2050, 2051, 2052, 2053, 2054, 2055, 2056, 2057, 2058, 2059, 2060, 2061, 2062, 2063, 2064, 2065, 2066, 2067, 2072, 2073, 2074, 2075, 2076, 2077, 2078, 2079, 2080 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 怪物潮第一波,
		monsters = { 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 怪物潮第二波,
		monsters = { 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 怪物潮第三波,
		monsters = { 2018, 2019, 2020, 2030, 2031, 2032 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 怪物潮第四波,
		monsters = { 2033, 2034, 2035, 2036 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = 怪物潮第五波,
		monsters = { 2037, 2038, 2040, 2041, 2043, 2044, 2046, 2047 },
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

require "V2_5/FightingStage_ByNum"
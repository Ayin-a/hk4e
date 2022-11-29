-- 基础信息
local base_info = {
	group_id = 235844002
}

-- Trigger变量
local defs = {
	play_round = 2,
	next_play_group = 0,
	worktop_id = 2049,
	minion_fever = 5,
	minion_tide_interval = 75,
	elite_interval = 30,
	elite_fever = 50,
	environment_suite = 4,
	gallery_id = 16010,
	elite_tide_interval = 75,
	elite_preview_reminder_time = 25,
	elite_preview_reminder = 358400001,
	buff_fever = 6,
	add_fever_upper_bound = 6,
	attenuation_interval = 8,
	add_fever_check_window = 8,
	monster_create_min_interval = 2
}

-- DEFS_MISCS
--fever进度升级节点
local fever_progress_table = {
    0,40,120,280,600,800
}
--各等级fever的下降速率
local fever_attenuation = {
    -2,-3,-4,-6,-6
}

--怪物潮定义
local monster_tide = {
    {2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022},
    {2023,2024,2025,2026,2027,2028,2029,2030,2033,2034,2036,2037,2038,2039,2040,2041,2042,2043,2044,2045},
}
--
--精英怪定义
local elite = {
    {2001},
    {2002}
}
--怪物潮最大最小数量定义
local monster_tide_count = 
{
    {min = 5,max = 5},
    {min = 5,max = 5}
}
--精英怪随机创生点列表，请按照每波精英怪最大可能数量填写
local elite_born_points = 
{
    {2031},
    {2032},
}

local ReactionGems = 
{
    {2046,2051},
    {2047,2052},
    {2048,2053},
    {2050,2054},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 23020101, pos = { x = -2.492, y = 512.069, z = 1.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4118 } },
	{ config_id = 2002, monster_id = 23010601, pos = { x = -2.492, y = 512.069, z = 1.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4118 } },
	{ config_id = 2003, monster_id = 25020201, pos = { x = 1.496, y = 512.075, z = -5.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2004, monster_id = 25020201, pos = { x = -2.426, y = 512.116, z = -5.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2005, monster_id = 25010201, pos = { x = 3.053, y = 512.069, z = -5.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2006, monster_id = 25010201, pos = { x = -4.444, y = 512.069, z = -5.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2007, monster_id = 25010701, pos = { x = -0.426, y = 512.069, z = -5.647 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2008, monster_id = 25010701, pos = { x = -0.596, y = 512.069, z = -7.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2009, monster_id = 25010201, pos = { x = 2.628, y = 512.039, z = -7.435 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2010, monster_id = 25010201, pos = { x = -3.709, y = 512.039, z = -7.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2011, monster_id = 25030301, pos = { x = 5.279, y = 512.113, z = -5.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2012, monster_id = 25030301, pos = { x = -6.512, y = 512.115, z = -4.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2013, monster_id = 25020201, pos = { x = -1.728, y = 512.206, z = -7.501 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2014, monster_id = 25020201, pos = { x = 0.602, y = 512.113, z = -7.466 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2015, monster_id = 25010701, pos = { x = 4.441, y = 512.114, z = -7.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2016, monster_id = 25010701, pos = { x = -5.633, y = 512.193, z = -7.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2017, monster_id = 25010201, pos = { x = 6.122, y = 512.039, z = -7.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2018, monster_id = 25010201, pos = { x = -7.254, y = 512.039, z = -6.924 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2019, monster_id = 25030201, pos = { x = 0.624, y = 512.039, z = -9.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2020, monster_id = 25030201, pos = { x = -1.842, y = 512.039, z = -9.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2021, monster_id = 25010201, pos = { x = 2.578, y = 512.039, z = -9.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2022, monster_id = 25010201, pos = { x = -3.762, y = 512.039, z = -9.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2023, monster_id = 25060101, pos = { x = 1.525, y = 512.113, z = 6.134 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2024, monster_id = 25060101, pos = { x = -2.059, y = 512.039, z = 6.174 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2025, monster_id = 25010201, pos = { x = -3.869, y = 512.039, z = 5.913 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2026, monster_id = 25010201, pos = { x = 3.254, y = 512.039, z = 5.917 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2027, monster_id = 25010301, pos = { x = -0.205, y = 512.000, z = 6.025 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2028, monster_id = 25010301, pos = { x = -5.121, y = 512.039, z = 5.725 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2029, monster_id = 25060101, pos = { x = -3.205, y = 512.076, z = 7.780 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2030, monster_id = 25060101, pos = { x = 2.715, y = 512.039, z = 7.799 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2033, monster_id = 25010201, pos = { x = -4.844, y = 512.075, z = 7.629 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2034, monster_id = 25010201, pos = { x = 4.352, y = 512.074, z = 7.626 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2036, monster_id = 25010401, pos = { x = 0.671, y = 512.074, z = 7.626 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2037, monster_id = 25010401, pos = { x = -1.453, y = 512.075, z = 7.629 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2038, monster_id = 25070101, pos = { x = -6.129, y = 512.074, z = 6.856 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2039, monster_id = 25070101, pos = { x = 5.614, y = 512.074, z = 6.893 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2040, monster_id = 25010201, pos = { x = -1.453, y = 512.075, z = 9.273 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2041, monster_id = 25010201, pos = { x = 0.671, y = 512.074, z = 9.270 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2042, monster_id = 25010601, pos = { x = 2.715, y = 512.074, z = 9.443 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2043, monster_id = 25010601, pos = { x = -3.205, y = 512.076, z = 9.390 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2044, monster_id = 25060101, pos = { x = -4.844, y = 512.075, z = 9.158 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2045, monster_id = 25060101, pos = { x = 4.352, y = 512.074, z = 9.155 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2035, gadget_id = 70950009, pos = { x = -0.158, y = 512.030, z = 0.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2046, gadget_id = 70290355, pos = { x = 18.530, y = 511.230, z = -15.611 }, rot = { x = 0.581, y = 216.444, z = 359.112 }, level = 1 },
	{ config_id = 2047, gadget_id = 70290355, pos = { x = 25.180, y = 511.850, z = 2.370 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2048, gadget_id = 70290355, pos = { x = 18.930, y = 509.430, z = 13.730 }, rot = { x = 356.460, y = 143.238, z = 359.343 }, level = 1 },
	{ config_id = 2049, gadget_id = 70360010, pos = { x = -0.231, y = 511.970, z = 0.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2050, gadget_id = 70290355, pos = { x = 8.888, y = 510.580, z = 23.753 }, rot = { x = 0.000, y = 118.043, z = 350.156 }, level = 1 },
	{ config_id = 2051, gadget_id = 70290354, pos = { x = -18.260, y = 510.600, z = 15.080 }, rot = { x = 357.672, y = 42.863, z = 352.016 }, level = 1 },
	{ config_id = 2052, gadget_id = 70290354, pos = { x = -24.719, y = 512.000, z = 3.657 }, rot = { x = 359.193, y = 10.647, z = 353.547 }, level = 1 },
	{ config_id = 2053, gadget_id = 70290354, pos = { x = -23.965, y = 510.550, z = -10.905 }, rot = { x = 0.000, y = 320.350, z = 351.552 }, level = 1 },
	{ config_id = 2054, gadget_id = 70290354, pos = { x = -17.150, y = 511.790, z = -17.700 }, rot = { x = 0.000, y = 314.665, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 2031, pos = { x = -6.571, y = 512.039, z = 0.080 }, rot = { x = 0.000, y = 90.000, z = 0.000 } },
	{ config_id = 2032, pos = { x = 5.871, y = 512.094, z = 0.294 }, rot = { x = 0.000, y = 270.000, z = 0.000 } }
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
		gadgets = { 2035 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 放小怪潮的suite,
		monsters = { 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030, 2033, 2034, 2036, 2037, 2038, 2039, 2040, 2041, 2042, 2043, 2044, 2045 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 放精英怪的suite,
		monsters = { 2001, 2002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 环境物件的suite,
		monsters = { },
		gadgets = { 2046, 2047, 2048, 2050, 2051, 2052, 2053, 2054 },
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

require "V2_6/CrystalLink"
require "MonsterQuickDeath"
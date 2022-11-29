-- 基础信息
local base_info = {
	group_id = 235841002
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
	gallery_id = 16004,
	elite_tide_interval = 75,
	elite_preview_reminder_time = 25,
	elite_preview_reminder = 358400001,
	buff_fever = 12,
	add_fever_upper_bound = 6,
	attenuation_interval = 8,
	add_fever_check_window = 8,
	monster_create_min_interval = 0
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
    {2003,2004,2005,2006,2007,2008},
    {2023,2024,2025,2026},
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
    {min = 1,max = 1},
    {min = 1,max = 1}
}
--精英怪随机创生点列表，请按照每波精英怪最大可能数量填写
local elite_born_points = 
{
    {2031},
    {2032},
}

local ReactionGems = 
{
    {2009,2013},
    {2010,2014},
    {2011,2015},
    {2012,2016},
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 26040102, pos = { x = -2.492, y = 512.069, z = 1.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4118 } },
	{ config_id = 2002, monster_id = 26040103, pos = { x = -2.492, y = 512.069, z = 1.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 4118 } },
	{ config_id = 2003, monster_id = 21020201, pos = { x = -0.517, y = 512.030, z = -5.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2004, monster_id = 21020201, pos = { x = 2.353, y = 512.030, z = -5.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2005, monster_id = 21020201, pos = { x = -3.499, y = 512.030, z = -5.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2006, monster_id = 21020201, pos = { x = -0.521, y = 512.069, z = -7.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2007, monster_id = 21020201, pos = { x = 2.331, y = 512.069, z = -7.536 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2008, monster_id = 21020201, pos = { x = -3.544, y = 512.069, z = -7.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 2023, monster_id = 24010101, pos = { x = 2.209, y = 512.003, z = 5.716 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 100 },
	{ config_id = 2024, monster_id = 24010101, pos = { x = -2.490, y = 512.000, z = 5.907 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 100 },
	{ config_id = 2025, monster_id = 24010101, pos = { x = 2.287, y = 512.075, z = 8.079 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 100 },
	{ config_id = 2026, monster_id = 24010101, pos = { x = -2.347, y = 512.075, z = 8.363 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, pose_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2009, gadget_id = 70290355, pos = { x = 18.530, y = 511.230, z = -15.611 }, rot = { x = 0.581, y = 216.444, z = 359.112 }, level = 1 },
	{ config_id = 2010, gadget_id = 70290355, pos = { x = 25.180, y = 511.850, z = 2.370 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 2011, gadget_id = 70290355, pos = { x = 18.930, y = 509.430, z = 13.730 }, rot = { x = 356.460, y = 143.238, z = 359.343 }, level = 1 },
	{ config_id = 2012, gadget_id = 70290355, pos = { x = 8.888, y = 510.580, z = 23.753 }, rot = { x = 0.000, y = 118.043, z = 350.156 }, level = 1 },
	{ config_id = 2013, gadget_id = 70290354, pos = { x = -18.260, y = 510.600, z = 15.080 }, rot = { x = 357.672, y = 42.863, z = 352.016 }, level = 1 },
	{ config_id = 2014, gadget_id = 70290354, pos = { x = -24.719, y = 512.000, z = 3.657 }, rot = { x = 359.193, y = 10.647, z = 353.547 }, level = 1 },
	{ config_id = 2015, gadget_id = 70290354, pos = { x = -23.965, y = 510.550, z = -10.905 }, rot = { x = 0.000, y = 320.350, z = 351.552 }, level = 1 },
	{ config_id = 2016, gadget_id = 70290354, pos = { x = -17.150, y = 511.790, z = -17.700 }, rot = { x = 0.000, y = 314.665, z = 0.000 }, level = 1 },
	{ config_id = 2035, gadget_id = 70950009, pos = { x = -0.159, y = 512.030, z = -0.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2049, gadget_id = 70360010, pos = { x = -0.269, y = 511.931, z = 0.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 2031, pos = { x = -7.064, y = 512.030, z = 0.080 }, rot = { x = 0.000, y = 90.000, z = 0.000 } },
	{ config_id = 2032, pos = { x = 6.699, y = 512.030, z = 0.294 }, rot = { x = 0.000, y = 270.000, z = 0.000 } }
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
		monsters = { 2003, 2004, 2005, 2006, 2007, 2008, 2023, 2024, 2025, 2026 },
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
		gadgets = { 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016 },
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
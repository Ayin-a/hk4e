-- 基础信息
local base_info = {
	group_id = 250061002
}

-- Trigger变量
local defs = {
	worktop_id = 2001,
	min = 5,
	max = 5
}

-- DEFS_MISCS
local monster_list = {
2002,2003,2004,2005,2006
}

local optimize_monster_list = {
2007,2008,2009,2010,2011
}

local light_monster_list = {
2012,2013,2014,2015,2016
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2002, monster_id = 21010101, pos = { x = -3.217, y = -0.102, z = -7.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2003, monster_id = 21010101, pos = { x = -1.538, y = -0.102, z = -7.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2004, monster_id = 21010101, pos = { x = 0.429, y = -0.102, z = -7.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2005, monster_id = 21010101, pos = { x = 2.454, y = -0.102, z = -7.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2006, monster_id = 21010101, pos = { x = 5.252, y = -0.102, z = -7.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2007, monster_id = 21010101, pos = { x = -2.340, y = -0.102, z = 7.462 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1046 } },
	{ config_id = 2008, monster_id = 21010101, pos = { x = -0.661, y = -0.102, z = 7.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2009, monster_id = 21010101, pos = { x = 1.306, y = -0.102, z = 7.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2010, monster_id = 21010101, pos = { x = 3.331, y = -0.102, z = 7.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2011, monster_id = 21010101, pos = { x = 6.129, y = -0.102, z = 7.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2012, monster_id = 21010101, pos = { x = 9.043, y = -0.102, z = 5.375 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_light_config = true },
	{ config_id = 2013, monster_id = 21010101, pos = { x = 9.283, y = -0.102, z = 2.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_light_config = true },
	{ config_id = 2014, monster_id = 21010101, pos = { x = 9.222, y = -0.102, z = 0.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_light_config = true },
	{ config_id = 2015, monster_id = 21010101, pos = { x = 9.268, y = -0.102, z = -2.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_light_config = true },
	{ config_id = 2016, monster_id = 21010101, pos = { x = 9.054, y = -0.102, z = -5.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_light_config = true },
	{ config_id = 2017, monster_id = 21020101, pos = { x = -5.107, y = -0.102, z = 4.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2018, monster_id = 21020101, pos = { x = -5.089, y = -0.102, z = 2.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2019, monster_id = 21020101, pos = { x = -5.347, y = -0.102, z = -0.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2020, monster_id = 26050601, pos = { x = -9.581, y = -0.102, z = 5.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 2021, monster_id = 26050601, pos = { x = -9.511, y = -0.102, z = -1.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2001, gadget_id = 70360010, pos = { x = 0.427, y = -0.102, z = 0.515 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
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

require "V2_8/MonsterTidePerformanceTest"
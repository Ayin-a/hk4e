-- 基础信息
local base_info = {
	group_id = 133001168
}

-- Trigger变量
local defs = {
	father_challenge_id = 2010034,
	worktop_id = 101001,
	elite_interval = 5,
	challenge_time = 180,
	change_stage_interval = 20,
	airwall = 168001,
	time_challenge_id = 2010036,
	kill_monster_challenge_id = 2010035
}

-- DEFS_MISCS
local monster_tide_config = 
{
    [1] = {pool_id = 21002,total_num = 70, min = 5,max = 5},
    [2] = {pool_id = 21002,total_num = 30, min = 2,max = 2},
}

local elite_list = 
{
    [1] = {168002,168004}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 168002, monster_id = 22010201, pos = { x = 1889.616, y = 196.411, z = -1554.224 }, rot = { x = 0.000, y = 308.204, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1045, 9009 }, area_id = 2 },
	{ config_id = 168004, monster_id = 21020601, pos = { x = 1889.145, y = 196.489, z = -1557.313 }, rot = { x = 0.000, y = 329.701, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1045, 9009 }, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 168001, gadget_id = 70380234, pos = { x = 1881.989, y = 195.890, z = -1550.839 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 168005, pos = { x = 1891.158, y = 196.581, z = -1548.867 }, rot = { x = 0.000, y = 300.946, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 168006, pos = { x = 1890.902, y = 196.548, z = -1552.557 }, rot = { x = 0.000, y = 300.946, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 168007, pos = { x = 1889.149, y = 196.406, z = -1555.632 }, rot = { x = 0.000, y = 300.946, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 168008, pos = { x = 1889.973, y = 196.426, z = -1550.688 }, rot = { x = 0.000, y = 300.946, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 168009, pos = { x = 1888.863, y = 196.325, z = -1553.432 }, rot = { x = 0.000, y = 300.946, z = 0.000 }, area_id = 2, tag = 1 },
	{ config_id = 168010, pos = { x = 1889.922, y = 196.463, z = -1554.517 }, rot = { x = 0.000, y = 284.587, z = 0.000 }, area_id = 2, tag = 1 }
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
		gadgets = { 168001 },
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

require "V2_8/V2_8ArenaChallenge_Quest"
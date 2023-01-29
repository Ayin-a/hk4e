-- 基础信息
local base_info = {
	group_id = 111101363
}

-- DEFS_MISCS
local fans = 
{
    363001,
}

local sandpiles = 
{
    363002,
    363003,
    363004,
}

local shutters = 
{
    363005,
}

local shutter_switches = 
{
    363006,
}

local FanToPointArray = 
{
	[fans[1]] = 110100060
}



local FanToSandpile = 
{
    [sandpiles[1]] = {fan = fans[1], dir_state = 204, pos = 1},
    [sandpiles[2]] = {fan = fans[1], dir_state = 202, pos = 2},
    [sandpiles[3]] = {fan = fans[1], dir_state = 203, pos = 2, shutter = shutters[1]},
}


local SwitchToShutter = 
{
    [shutter_switches[1]] = shutters[1],
}

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
	{ config_id = 363001, gadget_id = 70290697, pos = { x = 2118.362, y = 222.635, z = -1338.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, is_use_point_array = true },
	{ config_id = 363002, gadget_id = 70290703, pos = { x = 2109.031, y = 222.735, z = -1338.408 }, rot = { x = 0.000, y = 262.850, z = 0.000 }, level = 1 },
	{ config_id = 363003, gadget_id = 70290703, pos = { x = 2126.828, y = 225.083, z = -1353.324 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 363004, gadget_id = 70290703, pos = { x = 2116.976, y = 226.202, z = -1365.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 363005, gadget_id = 70290756, pos = { x = 2116.523, y = 225.088, z = -1358.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 363006, gadget_id = 70290757, pos = { x = 2111.104, y = 224.440, z = -1358.938 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 363001, 363002, 363003, 363004, 363005, 363006 },
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

require "V3_4/ScarletKingFan"
-- 基础信息
local base_info = {
	group_id = 133315305
}

-- Trigger变量
local defs = {
	play_region = 305004,
	gallery_id = 28024,
	exit_region = 305005
}

-- DEFS_MISCS
local mushroomBeastInfo = 
{
    [1]={configId=305001,maxProgress=300,normal=600,active=1200,dieOut=400,patrolRoute={1,2,3,4,5}},
    [2]={configId=305002,maxProgress=300,normal=600,active=1200,dieOut=400,patrolRoute={6,7,8,9,10,11}}
}

local groupInfo =
{
    pointArrayId = 331500008,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 305001, monster_id = 26090291, pos = { x = 266.804, y = 247.442, z = 2352.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 5212, 9009 }, pose_id = 101, area_id = 20 },
	{ config_id = 305002, monster_id = 26090791, pos = { x = 306.708, y = 239.797, z = 2368.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 5212, 9009 }, isElite = true, pose_id = 101, area_id = 20 },
	{ config_id = 305006, monster_id = 21010201, pos = { x = 308.710, y = 239.629, z = 2369.032 }, rot = { x = 0.000, y = 241.619, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, isOneoff = true, pose_id = 9010, area_id = 20 },
	{ config_id = 305007, monster_id = 21010201, pos = { x = 305.885, y = 240.389, z = 2370.137 }, rot = { x = 0.000, y = 165.621, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, isOneoff = true, pose_id = 9010, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 305003, gadget_id = 70290659, pos = { x = 276.935, y = 245.066, z = 2352.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 305008, gadget_id = 70220013, pos = { x = 303.192, y = 240.877, z = 2367.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 305009, gadget_id = 70300101, pos = { x = 316.924, y = 235.522, z = 2361.506 }, rot = { x = 357.579, y = 3.198, z = 350.247 }, level = 1, area_id = 20 },
	{ config_id = 305010, gadget_id = 70300086, pos = { x = 318.696, y = 240.130, z = 2373.419 }, rot = { x = 342.802, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 305012, gadget_id = 70300086, pos = { x = 311.112, y = 242.359, z = 2383.761 }, rot = { x = 9.188, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 305013, gadget_id = 70300089, pos = { x = 313.512, y = 239.686, z = 2371.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 305014, gadget_id = 70300089, pos = { x = 293.864, y = 241.384, z = 2374.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 305015, gadget_id = 70300089, pos = { x = 311.292, y = 240.747, z = 2375.471 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 20 },
	{ config_id = 305018, gadget_id = 70300101, pos = { x = 301.957, y = 239.819, z = 2351.551 }, rot = { x = 0.000, y = 0.000, z = 16.204 }, level = 1, area_id = 20 },
	{ config_id = 305019, gadget_id = 70300107, pos = { x = 308.615, y = 240.060, z = 2371.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 20 }
}

-- 区域
regions = {
	{ config_id = 305004, shape = RegionShape.SPHERE, radius = 55, pos = { x = 283.217, y = 221.038, z = 2358.034 }, area_id = 20 },
	-- exit
	{ config_id = 305005, shape = RegionShape.SPHERE, radius = 60, pos = { x = 283.217, y = 221.038, z = 2358.034 }, area_id = 20 }
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 305011, monster_id = 21020201, pos = { x = 334.067, y = 231.738, z = 2359.660 }, rot = { x = 0.000, y = 323.283, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒", isOneoff = true, area_id = 20 }
	},
	gadgets = {
		{ config_id = 305016, gadget_id = 70310001, pos = { x = 302.810, y = 240.544, z = 2357.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 20 },
		{ config_id = 305017, gadget_id = 70310001, pos = { x = 300.706, y = 241.485, z = 2380.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 20 }
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
		monsters = { 305006, 305007 },
		gadgets = { 305003, 305008, 305009, 305010, 305012, 305013, 305014, 305015, 305018, 305019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 305004, 305005 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V3_2/Activity_CatchMushroomMonster"
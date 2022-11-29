-- 基础信息
local base_info = {
	group_id = 133304506
}

-- Trigger变量
local defs = {
	play_region = 506001,
	gallery_id = 28023,
	exit_region = 506005
}

-- DEFS_MISCS
local mushroomBeastInfo = 
{
    [1]={configId=506002,maxProgress=300,normal=600,active=1200,dieOut=400,patrolRoute={1,2,3,4,5}},
    [2]={configId=506003,maxProgress=300,normal=600,active=1200,dieOut=400,patrolRoute={6,7,8,9,10,11,12}}
}

local groupInfo =
{
    pointArrayId = 330400001,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 506002, monster_id = 26090991, pos = { x = -692.255, y = 176.189, z = 2521.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5212, 9009 }, pose_id = 101, area_id = 24 },
	{ config_id = 506003, monster_id = 26090591, pos = { x = -694.742, y = 176.443, z = 2522.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5212, 9009 }, pose_id = 101, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 506004, gadget_id = 70290659, pos = { x = -687.123, y = 174.035, z = 2515.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 506006, gadget_id = 70290002, pos = { x = -697.419, y = 176.738, z = 2524.310 }, rot = { x = 353.947, y = 0.000, z = 358.162 }, level = 1, area_id = 24 },
	{ config_id = 506007, gadget_id = 70500000, pos = { x = -698.490, y = 178.356, z = 2525.024 }, rot = { x = 358.695, y = 264.831, z = 6.192 }, level = 1, point_type = 3001, owner = 506006, area_id = 24 },
	{ config_id = 506008, gadget_id = 70500000, pos = { x = -696.549, y = 179.366, z = 2523.299 }, rot = { x = 354.472, y = 313.753, z = 3.084 }, level = 1, point_type = 3001, owner = 506006, area_id = 24 },
	{ config_id = 506009, gadget_id = 70500000, pos = { x = -697.376, y = 179.646, z = 2525.691 }, rot = { x = 353.948, y = 0.000, z = 358.150 }, level = 1, point_type = 3001, owner = 506006, area_id = 24 },
	{ config_id = 506010, gadget_id = 70500000, pos = { x = -694.075, y = 176.607, z = 2523.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2006, area_id = 24 },
	{ config_id = 506011, gadget_id = 70500000, pos = { x = -692.788, y = 176.419, z = 2522.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2006, area_id = 24 },
	{ config_id = 506012, gadget_id = 70500000, pos = { x = -693.484, y = 176.611, z = 2523.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2006, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 506001, shape = RegionShape.SPHERE, radius = 40, pos = { x = -686.851, y = 174.033, z = 2515.127 }, area_id = 24 },
	-- exit
	{ config_id = 506005, shape = RegionShape.SPHERE, radius = 42, pos = { x = -686.851, y = 174.033, z = 2515.127 }, area_id = 24 }
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
		gadgets = { 506004, 506006, 506007, 506008, 506009, 506010, 506011, 506012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 506001, 506005 },
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
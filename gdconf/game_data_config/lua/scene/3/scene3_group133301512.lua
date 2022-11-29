-- 基础信息
local base_info = {
	group_id = 133301512
}

-- Trigger变量
local defs = {
	play_region = 512004,
	gallery_id = 28025,
	exit_region = 512010
}

-- DEFS_MISCS
local mushroomBeastInfo = 
{
    [1]={configId=512001,maxProgress=300,normal=600,active=1200,dieOut=400,patrolRoute={1,2,6,7,8,9,10}},
    [2]={configId=512002,maxProgress=300,normal=600,active=1200,dieOut=400,patrolRoute={11,13,14,16,17,18}}
}

local groupInfo =
{
    pointArrayId = 330100006,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 512001, monster_id = 26090491, pos = { x = -858.368, y = 234.991, z = 3896.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 5212, 9009 }, pose_id = 101, area_id = 23 },
	{ config_id = 512002, monster_id = 26090891, pos = { x = -865.229, y = 226.724, z = 3855.329 }, rot = { x = 0.000, y = 115.179, z = 0.000 }, level = 33, drop_id = 1000100, affix = { 5212, 9009 }, pose_id = 101, area_id = 23 },
	{ config_id = 512005, monster_id = 21020101, pos = { x = -870.245, y = 234.067, z = 3901.549 }, rot = { x = 0.000, y = 135.442, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", disableWander = true, isOneoff = true, pose_id = 401, area_id = 23 },
	{ config_id = 512007, monster_id = 21010201, pos = { x = -863.205, y = 226.321, z = 3853.361 }, rot = { x = 0.000, y = 303.795, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, isOneoff = true, pose_id = 9012, area_id = 23 },
	{ config_id = 512008, monster_id = 21010201, pos = { x = -866.606, y = 226.572, z = 3852.683 }, rot = { x = 0.000, y = 38.140, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, isOneoff = true, pose_id = 9012, area_id = 23 },
	{ config_id = 512046, monster_id = 21010201, pos = { x = -863.288, y = 226.820, z = 3857.321 }, rot = { x = 0.000, y = 221.806, z = 0.000 }, level = 27, drop_tag = "丘丘人", isOneoff = true, pose_id = 9012, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 512003, gadget_id = 70290659, pos = { x = -847.490, y = 233.072, z = 3880.453 }, rot = { x = 0.000, y = 75.715, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 512015, gadget_id = 70220109, pos = { x = -872.605, y = 226.216, z = 3845.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512017, gadget_id = 70220109, pos = { x = -861.509, y = 227.212, z = 3860.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512018, gadget_id = 70220109, pos = { x = -869.976, y = 226.579, z = 3849.710 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512019, gadget_id = 70220109, pos = { x = -876.432, y = 227.776, z = 3852.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512020, gadget_id = 70220109, pos = { x = -875.345, y = 227.889, z = 3858.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512021, gadget_id = 70220109, pos = { x = -867.903, y = 226.360, z = 3844.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512022, gadget_id = 70220109, pos = { x = -860.391, y = 226.187, z = 3851.174 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512023, gadget_id = 70220013, pos = { x = -861.531, y = 226.296, z = 3847.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512024, gadget_id = 70220013, pos = { x = -858.939, y = 226.233, z = 3847.061 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512025, gadget_id = 70300089, pos = { x = -867.516, y = 233.809, z = 3893.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512026, gadget_id = 70300089, pos = { x = -863.002, y = 234.073, z = 3896.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512027, gadget_id = 70300081, pos = { x = -868.262, y = 233.795, z = 3908.456 }, rot = { x = 0.000, y = 272.529, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512028, gadget_id = 70300081, pos = { x = -877.344, y = 233.196, z = 3898.175 }, rot = { x = 0.000, y = 157.744, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512031, gadget_id = 70220014, pos = { x = -877.190, y = 227.554, z = 3849.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512032, gadget_id = 70220014, pos = { x = -876.813, y = 227.227, z = 3847.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512033, gadget_id = 70220014, pos = { x = -876.092, y = 227.238, z = 3848.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512035, gadget_id = 70220005, pos = { x = -864.585, y = 233.363, z = 3911.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512036, gadget_id = 70300088, pos = { x = -880.630, y = 227.691, z = 3856.145 }, rot = { x = 0.000, y = 17.014, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512037, gadget_id = 70300088, pos = { x = -880.258, y = 227.684, z = 3857.899 }, rot = { x = 0.000, y = 42.841, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512038, gadget_id = 70220005, pos = { x = -858.026, y = 234.550, z = 3902.323 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512039, gadget_id = 70220005, pos = { x = -858.061, y = 234.563, z = 3901.287 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512040, gadget_id = 70300086, pos = { x = -875.148, y = 233.283, z = 3895.053 }, rot = { x = 346.842, y = 26.006, z = 347.778 }, level = 1, area_id = 23 },
	{ config_id = 512041, gadget_id = 70300086, pos = { x = -866.913, y = 233.708, z = 3890.639 }, rot = { x = 350.694, y = 9.035, z = 18.411 }, level = 1, area_id = 23 },
	{ config_id = 512042, gadget_id = 70300101, pos = { x = -874.173, y = 233.982, z = 3905.928 }, rot = { x = 8.627, y = 9.697, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512043, gadget_id = 70220013, pos = { x = -863.870, y = 233.161, z = 3886.900 }, rot = { x = 357.867, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512044, gadget_id = 70220013, pos = { x = -865.667, y = 233.240, z = 3886.300 }, rot = { x = 353.644, y = 350.918, z = 357.010 }, level = 1, area_id = 23 },
	{ config_id = 512045, gadget_id = 70300086, pos = { x = -863.830, y = 233.938, z = 3906.156 }, rot = { x = 0.000, y = 352.499, z = 346.845 }, level = 1, area_id = 23 },
	{ config_id = 512047, gadget_id = 70220005, pos = { x = -877.425, y = 233.890, z = 3910.397 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512048, gadget_id = 70220005, pos = { x = -876.495, y = 233.831, z = 3911.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512049, gadget_id = 70220005, pos = { x = -876.240, y = 233.834, z = 3910.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512050, gadget_id = 70220109, pos = { x = -857.989, y = 226.319, z = 3856.391 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 512051, gadget_id = 70220005, pos = { x = -876.165, y = 233.130, z = 3893.118 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 512004, shape = RegionShape.SPHERE, radius = 50, pos = { x = -860.544, y = 224.486, z = 3881.419 }, area_id = 23 },
	-- exit
	{ config_id = 512010, shape = RegionShape.SPHERE, radius = 55, pos = { x = -860.544, y = 224.486, z = 3881.419 }, area_id = 23 }
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
		{ config_id = 512014, monster_id = 21010201, pos = { x = -863.743, y = 234.308, z = 3901.597 }, rot = { x = 0.000, y = 241.054, z = 0.000 }, level = 1, drop_tag = "丘丘人", isOneoff = true, pose_id = 9002, area_id = 23 }
	},
	gadgets = {
		{ config_id = 512006, gadget_id = 70800236, pos = { x = -872.164, y = 225.570, z = 3840.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
		{ config_id = 512009, gadget_id = 70310001, pos = { x = -866.550, y = 234.145, z = 3898.160 }, rot = { x = 0.595, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 23 },
		{ config_id = 512011, gadget_id = 70800236, pos = { x = -855.537, y = 226.529, z = 3858.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
		{ config_id = 512012, gadget_id = 70800236, pos = { x = -854.205, y = 233.223, z = 3888.419 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
		{ config_id = 512013, gadget_id = 70800236, pos = { x = -870.384, y = 228.451, z = 3864.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
		{ config_id = 512016, gadget_id = 70220109, pos = { x = -883.641, y = 227.336, z = 3863.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
		{ config_id = 512029, gadget_id = 70300089, pos = { x = -852.344, y = 229.736, z = 3871.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
		{ config_id = 512030, gadget_id = 70300089, pos = { x = -849.084, y = 227.510, z = 3862.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
		{ config_id = 512034, gadget_id = 70310006, pos = { x = -870.513, y = 226.010, z = 3852.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 23 }
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
		monsters = { 512005, 512007, 512008, 512046 },
		gadgets = { 512003, 512015, 512017, 512018, 512019, 512020, 512021, 512022, 512023, 512024, 512025, 512026, 512027, 512028, 512031, 512032, 512033, 512035, 512036, 512037, 512038, 512039, 512040, 512041, 512042, 512043, 512044, 512045, 512047, 512048, 512049, 512050, 512051 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 512004, 512010 },
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
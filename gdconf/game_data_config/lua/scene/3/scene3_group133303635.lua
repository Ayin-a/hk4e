-- 基础信息
local base_info = {
	group_id = 133303635
}

-- Trigger变量
local defs = {
	play_region = 635004,
	gallery_id = 28026,
	exit_region = 635010
}

-- DEFS_MISCS
local mushroomBeastInfo = 
{
    [1]={configId=635001,maxProgress=300,normal=600,active=1200,dieOut=400,patrolRoute={1,2,3,4,5,6}},
    [2]={configId=635002,maxProgress=300,normal=600,active=1200,dieOut=400,patrolRoute={8,9,10,11,12,14}}
}

local groupInfo =
{
    pointArrayId = 330300004,
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 635001, monster_id = 26090391, pos = { x = -1385.909, y = 271.902, z = 3892.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5212, 9009 }, pose_id = 101, area_id = 23 },
	{ config_id = 635002, monster_id = 26090691, pos = { x = -1400.086, y = 271.975, z = 3933.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, affix = { 5212, 9009 }, pose_id = 101, area_id = 23 },
	{ config_id = 635005, monster_id = 25310301, pos = { x = -1415.862, y = 273.362, z = 3910.364 }, rot = { x = 0.000, y = 214.097, z = 0.000 }, level = 27, drop_tag = "中级镀金旅团", isOneoff = true, area_id = 23 },
	{ config_id = 635007, monster_id = 25210403, pos = { x = -1408.103, y = 270.780, z = 3934.688 }, rot = { x = 0.000, y = 237.298, z = 0.000 }, level = 27, drop_tag = "镀金旅团", disableWander = true, isOneoff = true, pose_id = 9001, area_id = 23 },
	{ config_id = 635008, monster_id = 25310101, pos = { x = -1414.235, y = 272.449, z = 3932.639 }, rot = { x = 0.000, y = 124.624, z = 0.000 }, level = 27, drop_tag = "中级镀金旅团", disableWander = true, isOneoff = true, pose_id = 9003, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 635003, gadget_id = 70290659, pos = { x = -1374.234, y = 273.888, z = 3909.710 }, rot = { x = 0.000, y = 336.949, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 635011, gadget_id = 70310001, pos = { x = -1405.986, y = 271.215, z = 3932.485 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 635016, gadget_id = 70300094, pos = { x = -1418.831, y = 273.805, z = 3932.248 }, rot = { x = 0.063, y = 26.751, z = 359.896 }, level = 1, area_id = 23 },
	{ config_id = 635018, gadget_id = 70300094, pos = { x = -1419.295, y = 273.999, z = 3931.116 }, rot = { x = 0.000, y = 349.501, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 635019, gadget_id = 70300094, pos = { x = -1399.894, y = 269.074, z = 3924.757 }, rot = { x = 0.000, y = 139.116, z = 0.000 }, level = 1, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 635004, shape = RegionShape.SPHERE, radius = 55, pos = { x = -1419.089, y = 270.047, z = 3906.604 }, area_id = 23 },
	-- exit
	{ config_id = 635010, shape = RegionShape.SPHERE, radius = 59, pos = { x = -1419.089, y = 270.047, z = 3906.604 }, area_id = 23 }
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
		{ config_id = 635006, monster_id = 25210203, pos = { x = -1413.501, y = 272.594, z = 3927.416 }, rot = { x = 0.000, y = 34.410, z = 0.000 }, level = 1, drop_tag = "镀金旅团", disableWander = true, isOneoff = true, pose_id = 9504, area_id = 23 }
	},
	gadgets = {
		{ config_id = 635009, gadget_id = 70310001, pos = { x = -1411.426, y = 271.829, z = 3930.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 23 },
		{ config_id = 635012, gadget_id = 70300105, pos = { x = -1396.981, y = 268.683, z = 3929.854 }, rot = { x = 7.525, y = 46.855, z = 344.713 }, level = 1, area_id = 23 },
		{ config_id = 635013, gadget_id = 70300093, pos = { x = -1395.573, y = 268.563, z = 3931.557 }, rot = { x = 0.000, y = 316.311, z = 30.863 }, level = 1, area_id = 23 },
		{ config_id = 635014, gadget_id = 70220048, pos = { x = -1411.763, y = 272.303, z = 3923.616 }, rot = { x = 1.930, y = 308.918, z = 359.872 }, level = 1, area_id = 23 },
		{ config_id = 635015, gadget_id = 70300092, pos = { x = -1408.563, y = 271.395, z = 3919.491 }, rot = { x = 0.028, y = 355.704, z = 0.545 }, level = 1, area_id = 23 },
		{ config_id = 635017, gadget_id = 70300094, pos = { x = -1400.668, y = 269.225, z = 3922.472 }, rot = { x = 0.000, y = 104.764, z = 0.000 }, level = 1, area_id = 23 },
		{ config_id = 635020, gadget_id = 70330197, pos = { x = -1395.792, y = 268.297, z = 3882.950 }, rot = { x = 351.297, y = 0.000, z = 0.000 }, level = 1, area_id = 23 }
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
		monsters = { 635005, 635007, 635008 },
		gadgets = { 635003, 635011, 635016, 635018, 635019 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 635004, 635010 },
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
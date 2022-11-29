-- 基础信息
local base_info = {
	group_id = 133001603
}

-- Trigger变量
local defs = {
	timer_region = 603011,
	challenge_region = 603003,
	monster_hilichurl = 603001,
	exist_hour = {0,6}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 603001, monster_id = 21011501, pos = { x = 1902.318, y = 196.045, z = -1310.170 }, rot = { x = 0.000, y = 186.019, z = 0.000 }, level = 15, drop_id = 200050001, affix = { 4117, 1035 }, pose_id = 9002, guest_ban_drop = 63, area_id = 2, guest_ban_drop = 63 },
	{ config_id = 603002, monster_id = 21010601, pos = { x = 1901.440, y = 196.262, z = -1305.732 }, rot = { x = 0.000, y = 167.834, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 2 },
	{ config_id = 603004, monster_id = 21010601, pos = { x = 1908.599, y = 196.256, z = -1312.256 }, rot = { x = 0.000, y = 270.260, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 2 },
	{ config_id = 603005, monster_id = 21011001, pos = { x = 1900.804, y = 195.321, z = -1322.879 }, rot = { x = 0.000, y = 343.550, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 2 },
	{ config_id = 603006, monster_id = 21020101, pos = { x = 1906.045, y = 196.011, z = -1314.044 }, rot = { x = 0.000, y = 332.817, z = 0.000 }, level = 15, drop_id = 1000100, area_id = 2 },
	{ config_id = 603007, monster_id = 21030101, pos = { x = 1907.601, y = 195.657, z = -1321.975 }, rot = { x = 1.546, y = 346.941, z = 6.636 }, level = 15, drop_id = 1000100, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 603008, gadget_id = 70360001, pos = { x = 1906.664, y = 195.647, z = -1321.352 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
}

-- 区域
regions = {
	{ config_id = 603003, shape = RegionShape.SPHERE, radius = 45, pos = { x = 1894.486, y = 195.653, z = -1312.033 }, area_id = 2 },
	{ config_id = 603011, shape = RegionShape.SPHERE, radius = 55, pos = { x = 1894.486, y = 195.653, z = -1312.033 }, area_id = 2 }
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
		gadgets = { 603008 },
		regions = { 603003, 603011 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 603002, 603004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 603005, 603006, 603007 },
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

require "V1_5/HilichurlLevel"
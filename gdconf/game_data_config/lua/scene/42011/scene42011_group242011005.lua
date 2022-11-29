-- 基础信息
local base_info = {
	group_id = 242011005
}

-- Trigger变量
local defs = {
	group_id = 242011005,
	gear_group_id = 242011002
}

-- DEFS_MISCS
package_tide_defs={
  [1]={{monster_package={12003},route=1,route_points={1,2,3,4,5,6,7,8},tags=2,count=10,max=2,min=2},{monster_package={12003},route=2,route_points={1,2,3,4,5,6,7,8},tags=2,count=10,max=2,min=2},{monster_package={12010,12011,12012},route=3,route_points={1,2,3,4,5,6,7,8},tags=4,count=15,max=5,min=5},{monster_package={12010,12011,12012},route=4,route_points={1,2,3,4,5,6,7,8},tags=8,count=15,max=5,min=5}},
        
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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 5025, pos = { x = 86.167, y = -6.240, z = 1.207 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 5026, pos = { x = 88.471, y = -6.241, z = 1.207 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 5027, pos = { x = 86.191, y = -6.240, z = 3.586 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 5028, pos = { x = 86.191, y = -6.243, z = 6.074 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 5029, pos = { x = 88.592, y = -6.242, z = 3.880 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 5030, pos = { x = 88.915, y = -6.250, z = 5.977 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 5031, pos = { x = 58.819, y = -2.377, z = -8.374 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 5032, pos = { x = 60.278, y = -2.371, z = -5.980 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 5033, pos = { x = 58.491, y = -2.379, z = -4.004 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 5034, pos = { x = 60.253, y = -2.379, z = -8.888 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 5035, pos = { x = 60.512, y = -2.375, z = -2.305 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 5036, pos = { x = 61.667, y = -2.383, z = -7.983 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 5037, pos = { x = 107.136, y = -2.363, z = -58.406 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 5038, pos = { x = 108.595, y = -2.362, z = -56.012 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 5039, pos = { x = 106.808, y = -2.363, z = -54.035 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 5040, pos = { x = 108.570, y = -2.362, z = -58.920 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 5041, pos = { x = 110.663, y = -2.361, z = -54.428 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 5042, pos = { x = 109.984, y = -2.360, z = -58.016 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 }
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
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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

require "TowerDefense_Monster02"
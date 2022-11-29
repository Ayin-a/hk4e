-- 基础信息
local base_info = {
	group_id = 242004005
}

-- Trigger变量
local defs = {
	group_id = 242004005,
	gear_group_id = 242004002
}

-- DEFS_MISCS
package_tide_defs={
  [1]={{monster_package={12030,12031,12032},route=1,route_points={1,2,3,4,5,6,7,8},tags=2,count=8,max=2,min=1},{monster_package={12030,12031,12032},route=2,route_points={1,2,3,4,5,6,7,8,9,10},tags=4,count=8,max=2,min=1},{monster_package={12041},route=4,route_points={1,2,3,4,5,6,7,8,9,10,11,12,13,14},tags=8,count=4,max=2,min=1,fill_time=8,fill_count=1}},
        
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
	{ config_id = 5001, pos = { x = 65.777, y = 2.240, z = -46.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 5002, pos = { x = 67.539, y = 2.240, z = -51.697 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 5003, pos = { x = 67.798, y = 2.233, z = -45.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 5004, pos = { x = 68.952, y = 2.242, z = -50.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 5005, pos = { x = 65.152, y = 2.240, z = -50.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 5006, pos = { x = 64.023, y = 2.240, z = -48.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 5029, pos = { x = 68.942, y = 2.237, z = 35.766 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 5030, pos = { x = 65.644, y = 2.240, z = 35.737 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 5031, pos = { x = 62.422, y = 2.244, z = 35.971 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 5032, pos = { x = 68.989, y = 2.236, z = 39.813 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 5033, pos = { x = 65.859, y = 2.248, z = 38.812 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 5034, pos = { x = 62.272, y = 2.244, z = 38.718 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 5035, pos = { x = 67.880, y = 2.244, z = 41.635 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 5036, pos = { x = 63.525, y = 2.243, z = 42.065 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 5037, pos = { x = -8.052, y = -13.923, z = -6.188 }, rot = { x = 0.000, y = 359.477, z = 0.000 }, tag = 8 },
	{ config_id = 5038, pos = { x = -6.593, y = -13.901, z = -3.795 }, rot = { x = 0.000, y = 359.477, z = 0.000 }, tag = 8 },
	{ config_id = 5039, pos = { x = -8.380, y = -13.936, z = -1.817 }, rot = { x = 0.000, y = 359.477, z = 0.000 }, tag = 8 },
	{ config_id = 5040, pos = { x = -6.618, y = -13.923, z = -6.702 }, rot = { x = 0.000, y = 359.477, z = 0.000 }, tag = 8 },
	{ config_id = 5041, pos = { x = -4.526, y = -13.900, z = -2.210 }, rot = { x = 0.000, y = 359.477, z = 0.000 }, tag = 8 },
	{ config_id = 5042, pos = { x = -5.204, y = -13.919, z = -5.798 }, rot = { x = 0.000, y = 359.477, z = 0.000 }, tag = 8 }
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
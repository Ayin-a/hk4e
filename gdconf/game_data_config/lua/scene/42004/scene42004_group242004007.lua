-- 基础信息
local base_info = {
	group_id = 242004007
}

-- Trigger变量
local defs = {
	group_id = 242004007,
	gear_group_id = 242004002
}

-- DEFS_MISCS
package_tide_defs={
  [1]={{monster_package={12050,12051,12052},route=1,route_points={1,2,3,4,5,6,7,8},tags=2,count=3,max=1,min=1,fill_time=8,fill_count=1},{monster_package={12050,12051,12052},route=2,route_points={1,2,3,4,5,6,7,8,9,10},tags=4,count=3,max=1,min=1,fill_time=8,fill_count=1,fill_time=8,fill_count=1},{monster_package={12053},route=4,route_points={1,2,3,4,5,6,7,8,9,10,11,12,13,14},tags=8,count=10,max=5,min=5}},
        
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
	{ config_id = 7001, pos = { x = 65.776, y = 2.240, z = -46.782 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 7002, pos = { x = 67.538, y = 2.240, z = -51.666 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 7003, pos = { x = 67.798, y = 2.232, z = -45.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 7004, pos = { x = 68.952, y = 2.242, z = -50.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 7005, pos = { x = 65.151, y = 2.240, z = -50.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 7006, pos = { x = 64.022, y = 2.240, z = -48.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 7009, pos = { x = 69.108, y = 2.244, z = 35.971 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 7010, pos = { x = 65.698, y = 2.244, z = 35.971 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 7011, pos = { x = 62.258, y = 2.244, z = 35.971 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 7012, pos = { x = 69.004, y = 2.236, z = 39.630 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 7013, pos = { x = 65.859, y = 2.248, z = 39.183 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 7014, pos = { x = 62.250, y = 2.244, z = 39.253 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 7015, pos = { x = 67.880, y = 2.244, z = 42.589 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 7016, pos = { x = 63.799, y = 2.243, z = 42.258 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 7017, pos = { x = -8.052, y = -13.923, z = -6.188 }, rot = { x = 0.000, y = 359.477, z = 0.000 }, tag = 8 },
	{ config_id = 7018, pos = { x = -6.593, y = -13.901, z = -3.795 }, rot = { x = 0.000, y = 359.477, z = 0.000 }, tag = 8 },
	{ config_id = 7019, pos = { x = -8.380, y = -13.936, z = -1.817 }, rot = { x = 0.000, y = 359.477, z = 0.000 }, tag = 8 },
	{ config_id = 7020, pos = { x = -6.618, y = -13.923, z = -6.702 }, rot = { x = 0.000, y = 359.477, z = 0.000 }, tag = 8 },
	{ config_id = 7021, pos = { x = -4.526, y = -13.900, z = -2.210 }, rot = { x = 0.000, y = 359.477, z = 0.000 }, tag = 8 },
	{ config_id = 7022, pos = { x = -5.204, y = -13.919, z = -5.798 }, rot = { x = 0.000, y = 359.477, z = 0.000 }, tag = 8 }
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
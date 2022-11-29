-- 基础信息
local base_info = {
	group_id = 242004008
}

-- Trigger变量
local defs = {
	group_id = 242004008,
	gear_group_id = 242004002
}

-- DEFS_MISCS
package_tide_defs={
  [1]={{monster_package={12050,12051,12052},route=1,route_points={1,2,3,4,5,6,7,8},tags=2,count=4,max=1,min=1,fill_time=8,fill_count=1},{monster_package={12050,12051,12052},route=2,route_points={1,2,3,4,5,6,7,8,9,10},tags=4,count=4,max=1,min=1,fill_time=8,fill_count=1},{monster_package={12050,12051,12052},route=4,route_points={1,2,3,4,5,6,7,8,9,10,11,12,13,14},tags=8,count=4,max=2,min=2,fill_time=8,fill_count=1}},
        
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
	{ config_id = 8001, pos = { x = 65.989, y = 2.240, z = -46.993 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 8002, pos = { x = 67.751, y = 2.240, z = -51.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 8003, pos = { x = 68.010, y = 2.233, z = -45.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 8004, pos = { x = 69.165, y = 2.242, z = -50.973 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 8005, pos = { x = 65.364, y = 2.240, z = -50.336 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 8006, pos = { x = 64.235, y = 2.240, z = -48.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 8009, pos = { x = 68.952, y = 2.244, z = 35.866 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 8010, pos = { x = 65.750, y = 2.240, z = 36.064 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 8011, pos = { x = 62.347, y = 2.244, z = 35.913 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 8012, pos = { x = 69.210, y = 2.244, z = 39.507 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 8013, pos = { x = 65.851, y = 2.197, z = 39.162 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 8014, pos = { x = 62.196, y = 2.244, z = 39.030 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 8015, pos = { x = 67.835, y = 2.244, z = 42.689 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 8016, pos = { x = 63.587, y = 2.241, z = 42.290 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 8017, pos = { x = -8.812, y = -13.915, z = -5.773 }, rot = { x = 0.000, y = 359.477, z = 0.000 }, tag = 8 },
	{ config_id = 8018, pos = { x = -7.353, y = -13.924, z = -3.379 }, rot = { x = 0.000, y = 359.477, z = 0.000 }, tag = 8 },
	{ config_id = 8019, pos = { x = -9.141, y = -13.936, z = -1.402 }, rot = { x = 0.000, y = 359.477, z = 0.000 }, tag = 8 },
	{ config_id = 8020, pos = { x = -7.379, y = -13.922, z = -6.287 }, rot = { x = 0.000, y = 359.477, z = 0.000 }, tag = 8 },
	{ config_id = 8021, pos = { x = -5.286, y = -13.910, z = -1.795 }, rot = { x = 0.000, y = 359.477, z = 0.000 }, tag = 8 },
	{ config_id = 8022, pos = { x = -4.468, y = -13.896, z = -5.369 }, rot = { x = 0.000, y = 359.477, z = 0.000 }, tag = 8 }
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
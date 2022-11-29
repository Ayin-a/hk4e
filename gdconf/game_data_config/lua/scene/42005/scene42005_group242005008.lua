-- 基础信息
local base_info = {
	group_id = 242005008
}

-- Trigger变量
local defs = {
	group_id = 242005008,
	gear_group_id = 242005002
}

-- DEFS_MISCS
package_tide_defs={
  [1]={{monster_package={12029},route=1,route_points={1,2,3,4,5,6,7,8},tags=2,count=10,max=2,min=2},{monster_package={12029},route=2,route_points={1,2,3,4,5,6,7,8},tags=2,count=10,max=2,min=2},{monster_package={12051},route=3,route_points={1,2,3,4,5,6,7,8},tags=4,count=3,max=1,min=1,fill_time=8,fill_count=1},{monster_package={12052},route=4,route_points={1,2,3,4,5,6,7,8},tags=8,count=3,max=1,min=1,fill_time=8,fill_count=1}},
        
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
	{ config_id = 8005, pos = { x = 88.406, y = -6.241, z = 1.207 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 8006, pos = { x = 86.191, y = -6.240, z = 3.562 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 8007, pos = { x = 86.191, y = -6.243, z = 5.816 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 8008, pos = { x = 88.479, y = -6.241, z = 3.632 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 8009, pos = { x = 88.558, y = -6.249, z = 5.981 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 8010, pos = { x = 86.191, y = -6.240, z = 1.207 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 8011, pos = { x = 61.056, y = -2.379, z = -9.272 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 8012, pos = { x = 62.515, y = -2.382, z = -6.878 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 8013, pos = { x = 60.727, y = -2.366, z = -4.901 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 8014, pos = { x = 62.489, y = -2.381, z = -9.786 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 8015, pos = { x = 62.749, y = -2.375, z = -3.203 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 8016, pos = { x = 63.903, y = -2.379, z = -8.882 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 8017, pos = { x = 107.294, y = -2.363, z = -58.673 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 8018, pos = { x = 108.752, y = -2.361, z = -56.279 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 8019, pos = { x = 106.965, y = -2.362, z = -54.302 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 8020, pos = { x = 108.728, y = -2.361, z = -59.187 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 8021, pos = { x = 110.820, y = -2.360, z = -54.695 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 8022, pos = { x = 110.142, y = -2.360, z = -58.283 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 }
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
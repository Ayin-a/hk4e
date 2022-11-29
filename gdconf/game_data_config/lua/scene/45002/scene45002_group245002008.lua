-- 基础信息
local base_info = {
	group_id = 245002008
}

-- Trigger变量
local defs = {
	group_id = 245002008,
	gear_group_id = 245002002
}

-- DEFS_MISCS
tide_defs = {
	[1] = { {sum = 20, min = 6, max = 6,suite=2},{sum = 20, min = 6, max = 6,suite=3},},
		
}
package_tide_defs={
        [1]={{monster_package={12001,12002,12003},route=1,route_points={1,2,3,4,5,6,7,8},tags=2,count=100,max=6,min=5},{monster_package={12001,12002,12003},route=2,route_points={1,2,3,4,5,6,7,8,9,10},tags=4,count=20,max=6,min=5}},
        
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
	{ config_id = 8005, pos = { x = 33.622, y = -7.681, z = -87.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 8006, pos = { x = 33.578, y = -7.694, z = -89.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 8007, pos = { x = 35.532, y = -7.699, z = -89.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 8008, pos = { x = 33.564, y = -7.698, z = -91.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 8009, pos = { x = 36.255, y = -7.700, z = -91.026 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 8010, pos = { x = 36.204, y = -7.699, z = -87.201 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 8011, pos = { x = 2.454, y = -7.698, z = -60.417 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 8012, pos = { x = 3.913, y = -7.700, z = -58.023 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 8013, pos = { x = 2.125, y = -7.700, z = -56.046 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 8014, pos = { x = 3.887, y = -7.697, z = -60.931 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 8015, pos = { x = 4.147, y = -7.699, z = -54.348 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 8016, pos = { x = 5.301, y = -7.695, z = -60.026 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 }
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
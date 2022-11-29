-- 基础信息
local base_info = {
	group_id = 245012006
}

-- Trigger变量
local defs = {
	group_id = 245012006,
	gear_group_id = 245012002
}

-- DEFS_MISCS
package_tide_defs={
  [1]={{monster_package={12019},route=1,route_points={1,2,3,4,5,6,7,8},tags=2,count=10,max=2,min=2},{monster_package={12019},route=2,route_points={1,2,3,4,5,6,7,8},tags=2,count=10,max=2,min=2},{monster_package={12020,12021,12022},route=3,route_points={1,2,3,4,5,6,7,8},tags=4,count=15,max=5,min=5},{monster_package={12020,12021,12022},route=4,route_points={1,2,3,4,5,6,7,8},tags=8,count=15,max=5,min=5}},
        
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
	{ config_id = 6015, pos = { x = 86.191, y = -6.240, z = 1.207 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 6016, pos = { x = 86.191, y = -6.240, z = 3.483 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 6017, pos = { x = 86.191, y = -6.243, z = 5.935 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 6018, pos = { x = 88.420, y = -6.241, z = 1.207 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 6021, pos = { x = 88.525, y = -6.241, z = 3.562 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 6022, pos = { x = 88.914, y = -6.250, z = 5.936 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 2 },
	{ config_id = 6023, pos = { x = 59.286, y = -2.377, z = -8.711 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 6024, pos = { x = 60.745, y = -2.374, z = -6.318 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 6025, pos = { x = 58.958, y = -2.389, z = -4.341 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 6026, pos = { x = 60.720, y = -2.378, z = -9.225 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 6027, pos = { x = 60.979, y = -2.375, z = -2.642 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 6028, pos = { x = 62.134, y = -2.385, z = -8.321 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 6029, pos = { x = 107.186, y = -2.363, z = -59.382 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 6030, pos = { x = 108.645, y = -2.362, z = -56.989 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 6031, pos = { x = 106.858, y = -2.364, z = -55.012 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 6032, pos = { x = 108.619, y = -2.362, z = -59.897 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 6033, pos = { x = 110.712, y = -2.360, z = -55.405 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 },
	{ config_id = 6034, pos = { x = 110.034, y = -2.360, z = -58.992 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 8 }
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
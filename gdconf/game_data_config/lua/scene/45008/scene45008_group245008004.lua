-- 基础信息
local base_info = {
	group_id = 245008004
}

-- Trigger变量
local defs = {
	group_id = 245008004,
	gear_group_id = 245008002
}

-- DEFS_MISCS
package_tide_defs={
        [1]={{monster_package={16010},route=1,route_points={1,2,3,4,5,6,7,8},tags=2,count=10,max=5,min=5},{monster_package={16010},route=2,route_points={1,2,3,4,5,6,7,8,9,10},tags=4,count=10,max=5,min=5}},
        
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
	{ config_id = 4025, pos = { x = 79.059, y = 4.630, z = -48.890 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 4026, pos = { x = 79.015, y = 4.628, z = -50.693 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 4027, pos = { x = 80.969, y = 4.625, z = -50.500 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 4028, pos = { x = 79.001, y = 4.634, z = -52.919 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 4029, pos = { x = 81.691, y = 4.616, z = -52.155 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 4030, pos = { x = 81.641, y = 4.622, z = -48.330 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 4031, pos = { x = 64.445, y = 0.548, z = -18.379 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 4032, pos = { x = 65.904, y = 0.546, z = -15.986 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 4033, pos = { x = 64.117, y = 0.565, z = -14.009 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 4034, pos = { x = 65.879, y = 0.548, z = -18.893 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 4035, pos = { x = 66.138, y = 0.558, z = -12.311 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 4036, pos = { x = 67.293, y = 0.554, z = -17.989 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 }
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
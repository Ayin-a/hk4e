-- 基础信息
local base_info = {
	group_id = 242010005
}

-- Trigger变量
local defs = {
	group_id = 242010005,
	gear_group_id = 242010002
}

-- DEFS_MISCS
package_tide_defs={
        [1]={{monster_package={12029},route=1,route_points={8,7,6,5,4,3,2,1},tags=2,count=15,max=5,min=5},{monster_package={12030,12031,12032},route=2,route_points={10,9,8,7,6,5,4,3,2,1},tags=4,count=10,max=4,min=4}},
        
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
	{ config_id = 5025, pos = { x = -41.291, y = 4.616, z = -47.307 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 5026, pos = { x = -41.335, y = 4.627, z = -49.110 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 5027, pos = { x = -39.381, y = 4.626, z = -48.917 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 5028, pos = { x = -41.348, y = 4.639, z = -51.336 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 5029, pos = { x = -38.658, y = 4.624, z = -50.571 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 5030, pos = { x = -38.709, y = 4.623, z = -46.747 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 5031, pos = { x = -41.968, y = 4.715, z = -20.504 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 5032, pos = { x = -40.509, y = 4.710, z = -18.110 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 5033, pos = { x = -42.296, y = 4.671, z = -16.133 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 5034, pos = { x = -40.533, y = 4.710, z = -21.018 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 5035, pos = { x = -40.275, y = 4.671, z = -14.435 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 5036, pos = { x = -39.120, y = 4.710, z = -20.112 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 }
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
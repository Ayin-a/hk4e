-- 基础信息
local base_info = {
	group_id = 245009004
}

-- Trigger变量
local defs = {
	group_id = 245009004,
	gear_group_id = 245009002
}

-- DEFS_MISCS
package_tide_defs={
        [1]={{monster_package={12010,12011,12012,12019},route=1,route_points={1,2,3,4,5,6,7,8},tags=2,count=20,max=4,min=4},{monster_package={12001,12002,12003},route=2,route_points={1,2,3,4,5,6,7,8,9,10},tags=4,count=20,max=3,min=3}},
        
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
	{ config_id = 4025, pos = { x = 33.393, y = -7.696, z = -89.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 4026, pos = { x = 33.349, y = -7.698, z = -91.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 4027, pos = { x = 35.303, y = -7.698, z = -91.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 4028, pos = { x = 33.336, y = -7.700, z = -93.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 4029, pos = { x = 36.026, y = -7.700, z = -92.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 4030, pos = { x = 35.975, y = -7.700, z = -89.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 4031, pos = { x = 2.317, y = -7.698, z = -61.022 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 4032, pos = { x = 3.776, y = -7.700, z = -58.628 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 4033, pos = { x = 1.989, y = -7.699, z = -56.651 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 4034, pos = { x = 3.751, y = -7.698, z = -61.536 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 4035, pos = { x = 4.010, y = -7.698, z = -54.953 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 4036, pos = { x = 5.165, y = -7.695, z = -60.631 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 }
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
-- 基础信息
local base_info = {
	group_id = 242002012
}

-- Trigger变量
local defs = {
	group_id = 242002012,
	gear_group_id = 242002002
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
	{ config_id = 12005, pos = { x = 33.755, y = -7.700, z = -87.578 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 12006, pos = { x = 33.711, y = -7.696, z = -89.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 12007, pos = { x = 35.665, y = -7.700, z = -89.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 12008, pos = { x = 33.698, y = -7.698, z = -91.607 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 12009, pos = { x = 36.388, y = -7.700, z = -90.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 12010, pos = { x = 36.337, y = -7.699, z = -87.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 12011, pos = { x = 2.741, y = -7.697, z = -60.714 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 12012, pos = { x = 4.200, y = -7.700, z = -58.321 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 12013, pos = { x = 2.413, y = -7.700, z = -56.344 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 12014, pos = { x = 4.175, y = -7.698, z = -61.228 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 12015, pos = { x = 4.434, y = -7.699, z = -54.646 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 12016, pos = { x = 5.589, y = -7.697, z = -60.324 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 }
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
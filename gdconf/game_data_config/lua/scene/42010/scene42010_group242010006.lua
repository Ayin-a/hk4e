-- 基础信息
local base_info = {
	group_id = 242010006
}

-- Trigger变量
local defs = {
	group_id = 242010006,
	gear_group_id = 242010002
}

-- DEFS_MISCS
package_tide_defs={
        [1]={{monster_package={12041},route=1,route_points={8,7,6,5,4,3,2,1},tags=2,count=4,max=1,min=1,fill_time=8,fill_count=1},{monster_package={12040},route=2,route_points={10,9,8,7,6,5,4,3,2,1},tags=4,count=8,max=2,min=1,fill_time=8,fill_count=1}},
        
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
	{ config_id = 6015, pos = { x = -40.503, y = 4.621, z = -47.082 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 6016, pos = { x = -40.547, y = 4.627, z = -48.885 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 6017, pos = { x = -38.593, y = 4.632, z = -48.692 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 6018, pos = { x = -40.561, y = 4.639, z = -51.111 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 6021, pos = { x = -37.871, y = 4.635, z = -50.346 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 6022, pos = { x = -37.921, y = 4.623, z = -46.522 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 6023, pos = { x = -42.345, y = 4.710, z = -20.208 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 6024, pos = { x = -40.886, y = 4.710, z = -18.172 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 6025, pos = { x = -42.672, y = 4.671, z = -16.196 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 6026, pos = { x = -40.911, y = 4.710, z = -21.079 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 6027, pos = { x = -40.651, y = 4.671, z = -14.498 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 6028, pos = { x = -39.496, y = 4.710, z = -20.172 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 }
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
-- 基础信息
local base_info = {
	group_id = 242010007
}

-- Trigger变量
local defs = {
	group_id = 242010007,
	gear_group_id = 242010002
}

-- DEFS_MISCS
package_tide_defs={
        [1]={{monster_package={12050,12051,12052},route=1,route_points={8,7,6,5,4,3,2,1},tags=2,count=4,max=1,min=1,fill_time=8,fill_count=1},{monster_package={12050,12051,12052},route=2,route_points={10,9,8,7,6,5,4,3,2,1},tags=4,count=4,max=2,min=1,fill_time=8,fill_count=1}},
        
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
	{ config_id = 7003, pos = { x = -40.437, y = 4.618, z = -47.023 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 7004, pos = { x = -40.480, y = 4.622, z = -48.825 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 7005, pos = { x = -38.526, y = 4.629, z = -48.633 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 7006, pos = { x = -40.494, y = 4.629, z = -51.052 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 7009, pos = { x = -37.804, y = 4.637, z = -50.287 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 7010, pos = { x = -37.854, y = 4.630, z = -46.462 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 7011, pos = { x = -42.157, y = 4.710, z = -20.358 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 7012, pos = { x = -40.698, y = 4.710, z = -17.964 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 7013, pos = { x = -42.485, y = 4.671, z = -15.987 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 7014, pos = { x = -40.724, y = 4.710, z = -20.872 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 7015, pos = { x = -40.465, y = 4.671, z = -14.290 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 },
	{ config_id = 7016, pos = { x = -39.310, y = 4.710, z = -19.967 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 4 }
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
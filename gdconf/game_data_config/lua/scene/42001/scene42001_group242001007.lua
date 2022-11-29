-- 基础信息
local base_info = {
	group_id = 242001007
}

-- Trigger变量
local defs = {
	group_id = 242001007,
	gear_group_id = 242001002
}

-- DEFS_MISCS
package_tide_defs={
        [1]={{monster_package={12030,12031,12032},route=1,route_points={1,2,3,4,5,6,7,8},tags=2,count=10,max=4,min=4},{monster_package={12050,12051,12052},route=2,route_points={1,2,3,4,5,6,7,8,9,10},tags=4,count=4,max=2,min=1,fill_time=8,fill_count=1}},
        
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
	{ config_id = 7003, pos = { x = 79.952, y = 4.618, z = -49.547 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 7004, pos = { x = 79.909, y = 4.622, z = -51.350 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 7005, pos = { x = 81.863, y = 4.629, z = -51.157 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 7006, pos = { x = 79.895, y = 4.629, z = -53.576 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 7009, pos = { x = 82.586, y = 4.637, z = -52.811 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 7010, pos = { x = 82.535, y = 4.630, z = -48.987 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 7011, pos = { x = 63.957, y = 0.553, z = -19.030 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 7012, pos = { x = 65.416, y = 0.548, z = -16.637 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 7013, pos = { x = 63.628, y = 0.582, z = -14.659 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 7014, pos = { x = 65.390, y = 0.559, z = -19.544 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 7015, pos = { x = 65.650, y = 0.555, z = -12.961 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 },
	{ config_id = 7016, pos = { x = 66.804, y = 0.542, z = -18.639 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 4 }
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
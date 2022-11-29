-- 基础信息
local base_info = {
	group_id = 245004019
}

-- Trigger变量
local defs = {
	group_id = 245004019,
	gear_group_id = 245004001
}

-- DEFS_MISCS
package_tide_defs={        [1]={{monster_package={12019},route=1,route_points={1,2,4,5,9,10,13,14,17,18,21},tags=2,count=12,max=5,min=5},{monster_package={12010,12011,12012},route=2,route_points={1,2,4,5,9,10,13,14,17,18,21,22,25,26,29,30,33,34,38,39,40,41,43,44},tags=4,count=12,max=5,min=5}},   
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
	-- StartPoint1
	{ config_id = 19013, pos = { x = 108.779, y = -9.669, z = -52.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 19020, pos = { x = 106.292, y = -9.668, z = -52.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 19021, pos = { x = 103.666, y = -9.654, z = -52.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 19022, pos = { x = 103.368, y = -9.667, z = -54.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 19023, pos = { x = 106.437, y = -9.628, z = -54.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 19024, pos = { x = 109.346, y = -9.668, z = -55.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 19025, pos = { x = 103.570, y = -9.664, z = -56.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 19026, pos = { x = 106.944, y = -9.666, z = -56.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 19027, pos = { x = 109.808, y = -9.668, z = -57.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	-- StartPoint2
	{ config_id = 19028, pos = { x = 104.435, y = -9.634, z = 14.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 19029, pos = { x = 106.749, y = -9.635, z = 15.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 19030, pos = { x = 109.347, y = -9.641, z = 14.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 19031, pos = { x = 109.249, y = -9.634, z = 17.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 19032, pos = { x = 106.880, y = -9.627, z = 17.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 19033, pos = { x = 104.140, y = -9.640, z = 17.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 19034, pos = { x = 104.150, y = -9.625, z = 20.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 19035, pos = { x = 106.526, y = -9.633, z = 19.967 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 19036, pos = { x = 109.326, y = -9.633, z = 19.850 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
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
		-- description = Option1-3-B,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = Option1-1-D,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = Option2-3-C,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = Option2-1-D,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = Option3-3-B,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = Option3-1-E,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = Option4-3-C,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = Option4-1-E,
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
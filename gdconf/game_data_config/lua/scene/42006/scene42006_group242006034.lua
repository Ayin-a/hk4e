-- 基础信息
local base_info = {
	group_id = 242006034
}

-- Trigger变量
local defs = {
	group_id = 242006034,
	gear_group_id = 242006037
}

-- DEFS_MISCS
package_tide_defs={
       [1]={{monster_package={12010,12011,12012},route=2,route_points={1,2,4,5,9,10,13,14,17,18,21,22,25,26,29,30,33,34,35,36},tags=4,count=10,max=4,min=4},{monster_package={12010,12011,12012},route=1,route_points={1,2,4,5,9,10,13,14,17,18,21,22,25,26,29,30,33,34,35,36},tags=2,count=10,max=4,min=4}},   
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
	{ config_id = 34001, pos = { x = -18.714, y = -0.352, z = -54.720 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 34002, pos = { x = -17.271, y = -0.355, z = -54.667 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 34003, pos = { x = -15.653, y = -0.359, z = -54.696 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 34004, pos = { x = -19.025, y = -0.350, z = -53.068 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 34005, pos = { x = -17.347, y = -0.348, z = -52.974 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 34006, pos = { x = -15.481, y = -0.355, z = -52.792 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 34007, pos = { x = -17.463, y = -0.347, z = -51.052 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	{ config_id = 34008, pos = { x = -14.721, y = -0.347, z = -82.318 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 34009, pos = { x = -16.384, y = -0.370, z = -82.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 34010, pos = { x = -18.056, y = -0.350, z = -82.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 34011, pos = { x = -14.623, y = -0.348, z = -84.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 34012, pos = { x = -16.646, y = -0.350, z = -84.411 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 34013, pos = { x = -18.596, y = -0.350, z = -84.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 34014, pos = { x = -14.697, y = -0.355, z = -86.663 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 34015, pos = { x = -16.957, y = -0.349, z = -86.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	-- StartPoint2
	{ config_id = 34016, pos = { x = -13.740, y = -0.347, z = -52.769 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 },
	-- StartPoint2
	{ config_id = 34017, pos = { x = -13.740, y = -0.347, z = -54.337 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, tag = 4 }
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
		-- description = Option1-1-C,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = Option1-2-C,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = Option2-1-D,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = Option2-2-D,
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
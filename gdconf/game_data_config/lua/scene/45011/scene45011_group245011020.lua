-- 基础信息
local base_info = {
	group_id = 245011020
}

-- Trigger变量
local defs = {
	group_id = 245011020,
	gear_group_id = 245011001
}

-- DEFS_MISCS
package_tide_defs={
        [1]={{monster_package={12020,12021,12022},route=1,route_points={1,2,4,5,9,10,13,14,17,18,21},tags=2,count=12,max=5,min=5},{monster_package={12029},route=2,route_points={1,2,4,5,9,10,13,14,17,18,21,22,25,26,29,30,33,34,38,39,40,41,43,44},tags=4,count=12,max=5,min=5},{monster_package={12023,12024,12026},route=3,route_points={1,2,4,5,9,10,13,14,17,18,21,22,25,26,29,30,33,34,37},tags=8,count=12,max=5,min=5}},   
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
	{ config_id = 20003, pos = { x = 108.779, y = -9.669, z = -52.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 20004, pos = { x = 106.292, y = -9.668, z = -52.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 20009, pos = { x = 103.666, y = -9.654, z = -52.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 20010, pos = { x = 103.368, y = -9.667, z = -54.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 20012, pos = { x = 106.437, y = -9.628, z = -54.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 20013, pos = { x = 109.346, y = -9.668, z = -55.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 20014, pos = { x = 103.570, y = -9.664, z = -56.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 20015, pos = { x = 106.944, y = -9.666, z = -56.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 20016, pos = { x = 109.808, y = -9.668, z = -57.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	-- StartPoint2
	{ config_id = 20017, pos = { x = 74.251, y = -13.376, z = -7.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 20018, pos = { x = 76.565, y = -13.377, z = -7.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 20043, pos = { x = 79.162, y = -13.382, z = -7.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 20044, pos = { x = 79.064, y = -13.376, z = -4.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 20045, pos = { x = 76.695, y = -13.369, z = -4.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 20046, pos = { x = 73.955, y = -13.382, z = -4.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 20047, pos = { x = 73.966, y = -13.367, z = -2.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 20048, pos = { x = 76.342, y = -13.375, z = -2.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 20049, pos = { x = 79.141, y = -13.374, z = -2.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	-- StartPoint3
	{ config_id = 20050, pos = { x = 138.113, y = -13.401, z = -21.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 20051, pos = { x = 136.151, y = -13.400, z = -21.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 20052, pos = { x = 134.271, y = -13.391, z = -21.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 20053, pos = { x = 134.306, y = -13.401, z = -23.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 20054, pos = { x = 136.013, y = -13.402, z = -23.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 20055, pos = { x = 138.411, y = -13.404, z = -23.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 20056, pos = { x = 138.686, y = -13.403, z = -25.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 20057, pos = { x = 136.124, y = -13.389, z = -25.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 20058, pos = { x = 134.146, y = -13.385, z = -25.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 }
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
		-- description = Option1-3-D,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = Option1-1-F,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = Option1-2-A,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = Option2-3-E,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = Option2-1-G,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = Option2-2-B,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = Option3-1-F,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = Option3-3-F,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = Option3-2-C,
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
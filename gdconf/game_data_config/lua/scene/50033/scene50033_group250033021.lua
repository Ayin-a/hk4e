-- 基础信息
local base_info = {
	group_id = 250033021
}

-- Trigger变量
local defs = {
	group_id = 250033021,
	gear_group_id = 250033001
}

-- DEFS_MISCS
tide_defs = {
	[1] = { {sum = 20, min = 1, max = 1,suite=2},{sum = 20, min = 1, max = 1,suite=3},{sum = 20, min = 1, max = 1,suite=4},},
	[2] = { {sum = 20, min = 1, max = 1,suite=5},{sum = 20, min = 1, max = 1,suite=6},{sum = 20, min = 1, max = 1,suite=7},},
	[3] = { {sum = 20, min = 1, max = 1,suite=8},{sum = 20, min = 1, max = 1,suite=9},{sum = 20, min = 1, max = 1,suite=10},},
}

package_tide_defs={
        [1]={{monster_package={12042,12043,12044},route=1,route_points={1,2,4,5,9,10,13,14,17,18,21},tags=2,count=18,max=5,min=5},{monster_package={12045,12046,12047},route=2,route_points={1,2,4,5,9,10,13,14,17,18,21,22,25,26,29,30,33,34,38,39,40,41,43,44},tags=4,count=12,max=5,min=5},{monster_package={12040},route=3,route_points={1,2,4,5,9,10,13,14,17,18,21,22,25,26,29,30,33,34,38,39,40,41,43,44},tags=8,count=5,max=1,min=1}},   
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 3-G
	[21001] = { config_id = 21001, monster_id = 21020203, pos = { x = 76.251, y = -13.372, z = -5.677 }, rot = { x = 0.000, y = 184.201, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 3-H
	[21002] = { config_id = 21002, monster_id = 21010702, pos = { x = 76.251, y = -13.372, z = -5.677 }, rot = { x = 0.000, y = 184.201, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-H
	[21003] = { config_id = 21003, monster_id = 24010102, pos = { x = 106.457, y = -9.669, z = -54.010 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100 },
	-- 1-I
	[21004] = { config_id = 21004, monster_id = 24010202, pos = { x = 106.970, y = -9.669, z = -53.927 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100 },
	-- 1-J
	[21005] = { config_id = 21005, monster_id = 21020203, pos = { x = 103.707, y = -9.668, z = -53.900 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 2-D
	[21008] = { config_id = 21008, monster_id = 21020203, pos = { x = 137.080, y = -13.393, z = -25.168 }, rot = { x = 0.000, y = 355.538, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 2-E
	[21009] = { config_id = 21009, monster_id = 22010105, pos = { x = 135.942, y = -13.399, z = -24.610 }, rot = { x = 0.000, y = 355.538, z = 0.000 }, level = 1, drop_id = 1000100 }
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
	{ config_id = 21006, pos = { x = 108.779, y = -9.669, z = -52.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 21007, pos = { x = 106.292, y = -9.668, z = -52.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 21010, pos = { x = 103.666, y = -9.654, z = -52.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 21011, pos = { x = 103.368, y = -9.667, z = -54.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 21012, pos = { x = 106.437, y = -9.628, z = -54.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 21013, pos = { x = 109.346, y = -9.668, z = -55.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 21014, pos = { x = 103.570, y = -9.664, z = -56.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 21015, pos = { x = 106.944, y = -9.666, z = -56.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 21016, pos = { x = 109.808, y = -9.668, z = -57.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	-- StartPoint2
	{ config_id = 21017, pos = { x = 74.251, y = -13.376, z = -7.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 21018, pos = { x = 76.565, y = -13.377, z = -7.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 21019, pos = { x = 79.162, y = -13.382, z = -7.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 21020, pos = { x = 79.064, y = -13.376, z = -4.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 21021, pos = { x = 76.695, y = -13.369, z = -4.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 21022, pos = { x = 73.955, y = -13.382, z = -4.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 21023, pos = { x = 73.966, y = -13.367, z = -2.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 21024, pos = { x = 76.342, y = -13.375, z = -2.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 21025, pos = { x = 79.141, y = -13.374, z = -2.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	-- StartPoint3
	{ config_id = 21026, pos = { x = 138.113, y = -13.401, z = -21.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 21027, pos = { x = 136.151, y = -13.400, z = -21.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 21028, pos = { x = 134.271, y = -13.391, z = -21.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 21029, pos = { x = 134.306, y = -13.401, z = -23.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 21030, pos = { x = 136.013, y = -13.402, z = -23.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 21031, pos = { x = 138.411, y = -13.404, z = -23.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 21032, pos = { x = 138.686, y = -13.403, z = -25.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 21033, pos = { x = 136.124, y = -13.389, z = -25.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 21034, pos = { x = 134.146, y = -13.385, z = -25.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 }
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
		-- description = Option1-3-G,
		monsters = { 21001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = Option1-1-H,
		monsters = { 21003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = Option1-2-D,
		monsters = { 21008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = Option2-3-H,
		monsters = { 21002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = Option2-1-I,
		monsters = { 21004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = Option2-2-E,
		monsters = { 21009 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = Option3-3-H,
		monsters = { 21002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = Option3-1-J,
		monsters = { 21005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = Option3-2-D,
		monsters = { 21008 },
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
-- 基础信息
local base_info = {
	group_id = 250033020
}

-- Trigger变量
local defs = {
	group_id = 250033020,
	gear_group_id = 250033001
}

-- DEFS_MISCS
tide_defs = {
	[1] = { {sum = 20, min = 1, max = 1,suite=2},{sum = 20, min = 5, max = 5,suite=3},{sum = 20, min = 7, max = 7,suite=4},},
	[2] = { {sum = 20, min = 1, max = 1,suite=5},{sum = 20, min = 5, max = 5,suite=6},{sum = 20, min = 5, max = 5,suite=7},},
	[3] = { {sum = 20, min = 1, max = 1,suite=9},{sum = 20, min = 5, max = 5,suite=8},{sum = 20, min = 6, max = 6,suite=9},},

}

package_tide_defs={
        [1]={{monster_package={12021,12022},route=1,route_points={1,2,4,5,9,10,13,14,17,18,21},tags=2,count=18,max=5,min=5},{monster_package={12025,12026},route=2,route_points={1,2,4,5,9,10,13,14,17,18,21,22,25,26,29,30,33,34,38,39,40,41,43,44},tags=4,count=18,max=5,min=5},{monster_package={12042,12043},route=3,route_points={1,2,4,5,9,10,13,14,17,18,21,22,25,26,29,30,33,34,38,39,40,41,43,44},tags=8,count=12,max=5,min=5}},   
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 3-D
	[20001] = { config_id = 20001, monster_id = 22010105, pos = { x = 77.905, y = -13.374, z = -5.911 }, rot = { x = 0.000, y = 184.201, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 3-E
	[20002] = { config_id = 20002, monster_id = 22010205, pos = { x = 77.905, y = -13.374, z = -5.911 }, rot = { x = 0.000, y = 184.201, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-F
	[20005] = { config_id = 20005, monster_id = 21010102, pos = { x = 106.455, y = -9.669, z = -54.162 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-F
	[20006] = { config_id = 20006, monster_id = 21010102, pos = { x = 106.968, y = -9.669, z = -54.079 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-F
	[20007] = { config_id = 20007, monster_id = 21010102, pos = { x = 103.705, y = -9.668, z = -54.052 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-F
	[20008] = { config_id = 20008, monster_id = 21020203, pos = { x = 104.965, y = -9.669, z = -54.171 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 3-F
	[20011] = { config_id = 20011, monster_id = 21010102, pos = { x = 77.905, y = -13.374, z = -5.911 }, rot = { x = 0.000, y = 184.201, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 2-A
	[20019] = { config_id = 20019, monster_id = 21010102, pos = { x = 134.477, y = -13.395, z = -25.304 }, rot = { x = 0.000, y = 355.538, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 2-A
	[20020] = { config_id = 20020, monster_id = 21010102, pos = { x = 136.015, y = -13.391, z = -25.550 }, rot = { x = 0.000, y = 355.538, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 2-A
	[20021] = { config_id = 20021, monster_id = 21010102, pos = { x = 138.318, y = -13.398, z = -25.552 }, rot = { x = 0.000, y = 3.095, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 2-A
	[20022] = { config_id = 20022, monster_id = 20010803, pos = { x = 138.318, y = -13.398, z = -25.552 }, rot = { x = 0.000, y = 359.795, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 2-A
	[20023] = { config_id = 20023, monster_id = 20010803, pos = { x = 138.318, y = -13.398, z = -25.552 }, rot = { x = 0.000, y = 359.795, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 2-A
	[20024] = { config_id = 20024, monster_id = 20010903, pos = { x = 138.318, y = -13.398, z = -25.552 }, rot = { x = 0.000, y = 359.795, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-F
	[20025] = { config_id = 20025, monster_id = 21020203, pos = { x = 104.965, y = -9.669, z = -54.171 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-G
	[20026] = { config_id = 20026, monster_id = 21010102, pos = { x = 106.455, y = -9.669, z = -54.162 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-G
	[20027] = { config_id = 20027, monster_id = 21010102, pos = { x = 106.968, y = -9.669, z = -54.079 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-G
	[20028] = { config_id = 20028, monster_id = 21010102, pos = { x = 103.705, y = -9.668, z = -54.052 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-G
	[20029] = { config_id = 20029, monster_id = 21020102, pos = { x = 104.965, y = -9.669, z = -54.171 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-G
	[20030] = { config_id = 20030, monster_id = 21020102, pos = { x = 104.965, y = -9.669, z = -54.171 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 2-B
	[20031] = { config_id = 20031, monster_id = 21010102, pos = { x = 134.477, y = -13.395, z = -25.304 }, rot = { x = 0.000, y = 355.538, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 2-B
	[20032] = { config_id = 20032, monster_id = 21010102, pos = { x = 136.015, y = -13.391, z = -25.550 }, rot = { x = 0.000, y = 355.538, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 2-B
	[20033] = { config_id = 20033, monster_id = 21010102, pos = { x = 138.318, y = -13.398, z = -25.552 }, rot = { x = 0.000, y = 3.095, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 2-B
	[20034] = { config_id = 20034, monster_id = 20011203, pos = { x = 138.318, y = -13.398, z = -25.552 }, rot = { x = 0.000, y = 359.795, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 2-B
	[20035] = { config_id = 20035, monster_id = 20011203, pos = { x = 138.318, y = -13.398, z = -25.552 }, rot = { x = 0.000, y = 359.795, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 2-A
	[20036] = { config_id = 20036, monster_id = 20011302, pos = { x = 138.318, y = -13.398, z = -25.552 }, rot = { x = 0.000, y = 359.795, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 2-C
	[20037] = { config_id = 20037, monster_id = 21010102, pos = { x = 134.477, y = -13.395, z = -25.304 }, rot = { x = 0.000, y = 355.538, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 2-C
	[20038] = { config_id = 20038, monster_id = 21010102, pos = { x = 136.015, y = -13.391, z = -25.550 }, rot = { x = 0.000, y = 355.538, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 2-C
	[20039] = { config_id = 20039, monster_id = 21010102, pos = { x = 138.318, y = -13.398, z = -25.552 }, rot = { x = 0.000, y = 3.095, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 2-C
	[20040] = { config_id = 20040, monster_id = 20011002, pos = { x = 138.318, y = -13.398, z = -25.552 }, rot = { x = 0.000, y = 359.795, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 2-C
	[20041] = { config_id = 20041, monster_id = 20011002, pos = { x = 138.318, y = -13.398, z = -25.552 }, rot = { x = 0.000, y = 359.795, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 2-C
	[20042] = { config_id = 20042, monster_id = 20011102, pos = { x = 138.318, y = -13.398, z = -25.552 }, rot = { x = 0.000, y = 359.795, z = 0.000 }, level = 1, drop_id = 1000100 }
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
		monsters = { 20001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = Option1-1-F,
		monsters = { 20005, 20006, 20007, 20008, 20025 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = Option1-2-A,
		monsters = { 20019, 20020, 20021, 20022, 20023, 20024, 20036 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = Option2-3-E,
		monsters = { 20002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = Option2-1-G,
		monsters = { 20026, 20027, 20028, 20029, 20030 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = Option2-2-B,
		monsters = { 20031, 20032, 20033, 20034, 20035 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 8,
		-- description = Option3-1-F,
		monsters = { 20005, 20006, 20007, 20008, 20025 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 9,
		-- description = Option3-3-F,
		monsters = { 20011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 10,
		-- description = Option3-2-C,
		monsters = { 20037, 20038, 20039, 20040, 20041, 20042 },
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
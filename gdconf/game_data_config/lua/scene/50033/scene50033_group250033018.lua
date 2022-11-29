-- 基础信息
local base_info = {
	group_id = 250033018
}

-- Trigger变量
local defs = {
	group_id = 250033018,
	gear_group_id = 250033001
}

-- DEFS_MISCS
tide_defs = {
	[1] = { {sum = 20, min = 4, max = 4,suite=2},{sum = 20, min = 5, max = 5,suite=5},},
	[2] = { {sum = 20, min = 4, max = 4,suite=3},{sum = 20, min = 5, max = 5,suite=5},},
	[3] = { {sum = 20, min = 4, max = 4,suite=4},{sum = 20, min = 5, max = 5,suite=5},},	
}

package_tide_defs={
        [1]={{monster_package={12001,12002,12003},route=1,route_points={1,2,4,5,9,10,13,14,17,18,21},tags=2,count=24,max=5,min=5},{monster_package={12005,12007},route=2,route_points={1,2,4,5,9,10,13,14,17,18,21,22,25,26,29,30,33,34,38,39,40,41,43,44},tags=4,count=24,max=5,min=5}},   

}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 3-A
	[18001] = { config_id = 18001, monster_id = 21030102, pos = { x = 77.327, y = -13.372, z = -5.934 }, rot = { x = 0.000, y = 184.201, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-B
	[18002] = { config_id = 18002, monster_id = 21010102, pos = { x = 106.443, y = -9.669, z = -55.076 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-B
	[18003] = { config_id = 18003, monster_id = 21010102, pos = { x = 106.956, y = -9.666, z = -54.993 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-B
	[18004] = { config_id = 18004, monster_id = 21010102, pos = { x = 103.693, y = -9.667, z = -54.966 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-A
	[18005] = { config_id = 18005, monster_id = 21010102, pos = { x = 106.443, y = -9.669, z = -55.076 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-A
	[18006] = { config_id = 18006, monster_id = 21010102, pos = { x = 106.956, y = -9.666, z = -54.993 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-A
	[18007] = { config_id = 18007, monster_id = 21010102, pos = { x = 103.693, y = -9.667, z = -54.966 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-A
	[18008] = { config_id = 18008, monster_id = 21020203, pos = { x = 104.953, y = -9.668, z = -55.085 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 3-A
	[18009] = { config_id = 18009, monster_id = 20011102, pos = { x = 77.327, y = -13.372, z = -5.934 }, rot = { x = 0.000, y = 184.201, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 3-A
	[18010] = { config_id = 18010, monster_id = 20011002, pos = { x = 75.211, y = -13.390, z = -4.612 }, rot = { x = 0.000, y = 184.201, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 3-A
	[18011] = { config_id = 18011, monster_id = 20011002, pos = { x = 75.165, y = -13.381, z = -4.095 }, rot = { x = 0.000, y = 184.201, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 3-A
	[18012] = { config_id = 18012, monster_id = 20011002, pos = { x = 75.744, y = -13.376, z = -6.200 }, rot = { x = 0.000, y = 184.201, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-B
	[18013] = { config_id = 18013, monster_id = 21020102, pos = { x = 104.953, y = -9.668, z = -55.085 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-C
	[18014] = { config_id = 18014, monster_id = 20010402, pos = { x = 104.953, y = -9.668, z = -55.085 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-C
	[18015] = { config_id = 18015, monster_id = 20010302, pos = { x = 103.693, y = -9.667, z = -54.966 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-C
	[18016] = { config_id = 18016, monster_id = 20010302, pos = { x = 106.956, y = -9.666, z = -54.993 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 },
	-- 1-C
	[18017] = { config_id = 18017, monster_id = 20010302, pos = { x = 106.443, y = -9.669, z = -55.076 }, rot = { x = 0.000, y = 0.766, z = 0.000 }, level = 1, drop_id = 1000100 }
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
	{ config_id = 18018, pos = { x = 108.779, y = -9.669, z = -52.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 18019, pos = { x = 106.292, y = -9.668, z = -52.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 18020, pos = { x = 103.666, y = -9.654, z = -52.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 18021, pos = { x = 103.368, y = -9.667, z = -54.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 18022, pos = { x = 106.437, y = -9.628, z = -54.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 18023, pos = { x = 109.346, y = -9.668, z = -55.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 18024, pos = { x = 103.570, y = -9.664, z = -56.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 18025, pos = { x = 106.944, y = -9.666, z = -56.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	{ config_id = 18026, pos = { x = 109.808, y = -9.668, z = -57.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 2 },
	-- StartPoint2
	{ config_id = 18027, pos = { x = 74.251, y = -13.376, z = -7.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 18028, pos = { x = 76.565, y = -13.377, z = -7.215 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 18029, pos = { x = 79.162, y = -13.382, z = -7.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 18030, pos = { x = 79.064, y = -13.376, z = -4.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 18031, pos = { x = 76.695, y = -13.369, z = -4.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 18032, pos = { x = 73.955, y = -13.382, z = -4.540 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 18033, pos = { x = 73.966, y = -13.367, z = -2.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 18034, pos = { x = 76.342, y = -13.375, z = -2.284 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	{ config_id = 18035, pos = { x = 79.141, y = -13.374, z = -2.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 4 },
	-- StartPoint3
	{ config_id = 18036, pos = { x = 138.113, y = -13.401, z = -21.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 18037, pos = { x = 136.151, y = -13.400, z = -21.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 18038, pos = { x = 134.271, y = -13.391, z = -21.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 18039, pos = { x = 134.306, y = -13.401, z = -23.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 18040, pos = { x = 136.013, y = -13.402, z = -23.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 18041, pos = { x = 138.411, y = -13.404, z = -23.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 18042, pos = { x = 138.686, y = -13.403, z = -25.758 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 18043, pos = { x = 136.124, y = -13.389, z = -25.822 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 },
	{ config_id = 18044, pos = { x = 134.146, y = -13.385, z = -25.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 8 }
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
		-- description = Option1-1-A,
		monsters = { 18005, 18006, 18007, 18008 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = Option1-1-B,
		monsters = { 18002, 18003, 18004, 18013 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = Option1-1-C,
		monsters = { 18014, 18015, 18016, 18017 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 3-A,
		monsters = { 18001, 18009, 18010, 18011, 18012 },
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
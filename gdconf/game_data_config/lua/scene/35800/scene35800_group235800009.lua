-- 基础信息
local base_info = {
	group_id = 235800009
}

-- DEFS_MISCS
local BulletTypeList = {
{{gadgetstate= 4, weight= 100}, },
{{gadgetstate= 5, weight= 100}, },
{{gadgetstate= 8, weight= 100}, },
{{gadgetstate= 0, weight= 100}, },
}

local BulletTypeList2 = {
{{gadgetstate= 3, weight= 100}, },
{{gadgetstate= 6, weight= 100}, },
{{gadgetstate= 8, weight= 100}, },
{{gadgetstate= 0, weight= 100}, },
}

local BulletTypeList3 = {
{{gadgetstate= 1, weight= 100}, },
{{gadgetstate= 7, weight= 100}, },
{{gadgetstate= 8, weight= 100}, },
{{gadgetstate= 0, weight= 100}, },
}

local BulletTypeList4 = {
{{gadgetstate= 3, weight= 30}, {gadgetstate= 4, weight= 40}, {gadgetstate= 7, weight= 30}},
{{gadgetstate= 2, weight= 35}, {gadgetstate= 5, weight= 35}, {gadgetstate= 6, weight= 30}},
{{gadgetstate= 8, weight= 100},},
{{gadgetstate= 0, weight= 100},},
}


BulletStep = {{list= BulletTypeList},{list = BulletTypeList2},{list = BulletTypeList3} ,{list = BulletTypeList4}}    

local regionIndex = 9003

local Times = 1

local TripTimes = 1

local GroupId = 235800009

local BulletConfigId = 9001

local TripConfigID = 1012

local TimeAxis = {1,25,45,55}

local random_flower_time_axis = {1,11,21,31,41}

local random_flower_sum = {min=5 , max=8}

local flower_life_time = 10

local flower_suite_index = 3

local Bullet_PerfectScore = 80

local Bullet_PerfectScore_count = 5

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
	[9001] = { config_id = 9001, gadget_id = 70350139, pos = { x = -542.458, y = 26.812, z = -30.148 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	[9002] = { config_id = 9002, gadget_id = 70310043, pos = { x = -542.472, y = 26.601, z = -30.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9009] = { config_id = 9009, gadget_id = 70350187, pos = { x = -541.969, y = 27.236, z = -17.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9010] = { config_id = 9010, gadget_id = 70350187, pos = { x = -536.393, y = 27.232, z = -19.410 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9011] = { config_id = 9011, gadget_id = 70350187, pos = { x = -545.832, y = 27.235, z = -18.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9012] = { config_id = 9012, gadget_id = 70350187, pos = { x = -550.556, y = 27.220, z = -20.146 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9013] = { config_id = 9013, gadget_id = 70350187, pos = { x = -532.722, y = 27.218, z = -22.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9014] = { config_id = 9014, gadget_id = 70350187, pos = { x = -541.969, y = 27.256, z = -24.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9015] = { config_id = 9015, gadget_id = 70350187, pos = { x = -537.537, y = 27.224, z = -26.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9016] = { config_id = 9016, gadget_id = 70350187, pos = { x = -546.153, y = 27.224, z = -26.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9017] = { config_id = 9017, gadget_id = 70350187, pos = { x = -553.942, y = 27.233, z = -25.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9018] = { config_id = 9018, gadget_id = 70350187, pos = { x = -530.355, y = 27.297, z = -28.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9019] = { config_id = 9019, gadget_id = 70350187, pos = { x = -541.969, y = 27.261, z = -36.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9020] = { config_id = 9020, gadget_id = 70350187, pos = { x = -537.537, y = 27.224, z = -33.714 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9021] = { config_id = 9021, gadget_id = 70350187, pos = { x = -546.153, y = 27.232, z = -33.714 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9022] = { config_id = 9022, gadget_id = 70350187, pos = { x = -553.763, y = 27.233, z = -32.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9023] = { config_id = 9023, gadget_id = 70350187, pos = { x = -530.483, y = 27.233, z = -33.714 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9024] = { config_id = 9024, gadget_id = 70350187, pos = { x = -541.969, y = 27.238, z = -43.674 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9025] = { config_id = 9025, gadget_id = 70350187, pos = { x = -537.537, y = 27.242, z = -40.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9026] = { config_id = 9026, gadget_id = 70350187, pos = { x = -547.909, y = 27.239, z = -42.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9027] = { config_id = 9027, gadget_id = 70350187, pos = { x = -552.086, y = 27.249, z = -38.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[9028] = { config_id = 9028, gadget_id = 70350187, pos = { x = -533.095, y = 27.251, z = -37.915 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[9003] = { config_id = 9003, shape = RegionShape.CUBIC, size = { x = 60.000, y = 60.000, z = 60.000 }, pos = { x = -542.453, y = 26.842, z = -30.157 } }
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "BulletNum", value = 1, no_refresh = false }
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
		gadgets = { 9002 },
		regions = { 9003 },
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
		gadgets = { 9009, 9010, 9011, 9012, 9013, 9014, 9015, 9016, 9017, 9018, 9019, 9020, 9021, 9022, 9023, 9024, 9025, 9026, 9027, 9028 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 9001 },
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

require "BulletGame"
require "WindFlora_ReTrans"
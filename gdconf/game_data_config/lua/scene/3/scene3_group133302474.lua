-- 基础信息
local base_info = {
	group_id = 133302474
}

-- Trigger变量
local defs = {
	regionId = 474008,
	targetScore = 6,
	maxTime = 90,
	gadget_mushroom01 = 474001,
	gadget_mushroom02 = 474002,
	gadget_mushroom03 = 474003,
	gadget_mushroom04 = 474004,
	gadget_mushroom05 = 474006,
	gadget_mushroom06 = 474007,
	startId = 474005
}

-- DEFS_MISCS
local RequireSuite = { 1,2}

local GopherArray = {
    [1] =
    {-- time里面有两个值，一个是指延时多久出现，一个是指延时多久消失。譬如{1,5}是指第1秒后出现，第5秒后消失。
        [1] = { array = { 0, 2, 0, 1, 0, 1}, time = {1,4}},
        [2] = { array = { 2, 0, 1, 1, 0, 0}, time = {1,4}},
        [3] = { array = { 0, 1, 0, 0, 1, 2}, time = {1,4}},
        [4] = { array = { 0, 2, 1, 2, 0, 0}, time = {1,4}},
    },
    [2] =
    {
        [1] = { array = { 0, 0, 0, 1, 2, 1}, time = {1,4}},
        [2] = { array = { 1, 2, 1, 0, 0, 0}, time = {1,4}},
        [3] = { array = { 0, 1, 0, 1, 1, 2}, time = {1,4}},
        [4] = { array = { 0, 2, 1, 2, 0, 0}, time = {1,4}},
    },
    [3] =
    {
        [1] = { array = { 0, 2, 0, 1, 1, 1}, time = {1,4}},
        [2] = { array = { 1, 0, 1, 2, 0, 0}, time = {1,4}},
        [3] = { array = { 0, 2, 0, 1, 1, 0}, time = {1,4}},
        [4] = { array = { 0, 1, 2, 0, 2, 0}, time = {1,4}},
    },
    [4] =
    {
        [1] = { array = { 2, 1, 0, 1, 0, 0}, time = {1,4}},
        [2] = { array = { 1, 2, 1, 0, 0, 0}, time = {1,4}},
        [3] = { array = { 0, 1, 2, 0, 1, 0}, time = {1,4}},
        [4] = { array = { 2, 1, 0, 1, 2, 0}, time = {1,4}},
    },
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
	{ config_id = 474001, gadget_id = 70310220, pos = { x = -263.896, y = 236.641, z = 2279.838 }, rot = { x = 20.360, y = 0.000, z = 7.188 }, level = 1, area_id = 24 },
	{ config_id = 474002, gadget_id = 70310220, pos = { x = -257.935, y = 237.317, z = 2280.923 }, rot = { x = 21.420, y = 2.733, z = 8.011 }, level = 1, area_id = 24 },
	{ config_id = 474003, gadget_id = 70310220, pos = { x = -251.708, y = 239.091, z = 2279.025 }, rot = { x = 16.939, y = 359.852, z = 7.147 }, level = 1, area_id = 24 },
	{ config_id = 474004, gadget_id = 70310220, pos = { x = -265.175, y = 239.539, z = 2272.311 }, rot = { x = 15.764, y = 0.532, z = 5.176 }, level = 1, area_id = 24 },
	{ config_id = 474005, gadget_id = 70350083, pos = { x = -262.865, y = 240.544, z = 2266.169 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 474006, gadget_id = 70310220, pos = { x = -258.569, y = 240.629, z = 2270.858 }, rot = { x = 10.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 474007, gadget_id = 70310220, pos = { x = -252.711, y = 240.589, z = 2272.454 }, rot = { x = 6.015, y = 359.233, z = 10.744 }, level = 1, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 474008, shape = RegionShape.SPHERE, radius = 15, pos = { x = -262.874, y = 241.423, z = 2261.438 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1474008, name = "ENTER_REGION_474008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 474005 },
		regions = { 474008 },
		triggers = { "ENTER_REGION_474008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 474001, 474002, 474003, 474004, 474006, 474007 },
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

require "V3_0/GopherPlay"
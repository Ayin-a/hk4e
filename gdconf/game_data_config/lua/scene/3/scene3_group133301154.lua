-- 基础信息
local base_info = {
	group_id = 133301154
}

-- Trigger变量
local defs = {
	regionId = 154008,
	targetScore = 6,
	maxTime = 90,
	gadget_mushroom01 = 154001,
	gadget_mushroom02 = 154002,
	gadget_mushroom03 = 154003,
	gadget_mushroom04 = 154004,
	gadget_mushroom05 = 154006,
	gadget_mushroom06 = 154007,
	startId = 154005
}

-- DEFS_MISCS
local RequireSuite = { 1,2}

local GopherArray = {
    [1] =
    {-- time里面有两个值，一个是指延时多久出现，一个是指延时多久消失。譬如{1,5}是指第1秒后出现，第5秒后消失。
        [1] = { array = { 0, 0, 0, 1, 2, 1}, time = {1,4}},
        [2] = { array = { 1, 2, 1, 0, 0, 0}, time = {1,4}},
        [3] = { array = { 0, 1, 0, 2, 1, 0}, time = {1,4}},
        [4] = { array = { 0, 2, 1, 2, 0, 0}, time = {1,4}},
    },
    [2] =
    {
        [1] = { array = { 0, 0, 0, 1, 2, 1}, time = {1,4}},
        [2] = { array = { 1, 2, 1, 0, 0, 0}, time = {1,4}},
        [3] = { array = { 0, 1, 0, 2, 1, 0}, time = {1,4}},
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
        [1] = { array = { 0, 1, 0, 1, 0, 2}, time = {1,4}},
        [2] = { array = { 1, 2, 1, 0, 0, 0}, time = {1,4}},
        [3] = { array = { 0, 1, 0, 2, 1, 0}, time = {1,4}},
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
	{ config_id = 154001, gadget_id = 70310220, pos = { x = -940.329, y = 207.939, z = 3759.593 }, rot = { x = 0.000, y = 0.000, z = 348.692 }, level = 1, area_id = 23 },
	{ config_id = 154002, gadget_id = 70310220, pos = { x = -934.702, y = 207.154, z = 3762.928 }, rot = { x = 0.000, y = 0.000, z = 345.973 }, level = 1, area_id = 23 },
	{ config_id = 154003, gadget_id = 70310220, pos = { x = -929.794, y = 205.167, z = 3758.391 }, rot = { x = 350.000, y = 0.000, z = 340.000 }, level = 1, area_id = 23 },
	{ config_id = 154004, gadget_id = 70310220, pos = { x = -940.185, y = 208.113, z = 3753.676 }, rot = { x = 0.000, y = 0.000, z = 345.000 }, level = 1, area_id = 23 },
	{ config_id = 154005, gadget_id = 70350083, pos = { x = -926.847, y = 203.971, z = 3756.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 154006, gadget_id = 70310220, pos = { x = -935.607, y = 206.810, z = 3750.740 }, rot = { x = 0.000, y = 0.000, z = 345.000 }, level = 1, area_id = 23 },
	{ config_id = 154007, gadget_id = 70310220, pos = { x = -929.845, y = 204.947, z = 3752.978 }, rot = { x = 0.000, y = 0.000, z = 340.000 }, level = 1, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 154008, shape = RegionShape.SPHERE, radius = 15, pos = { x = -928.423, y = 204.516, z = 3749.906 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1154008, name = "ENTER_REGION_154008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 154005 },
		regions = { 154008 },
		triggers = { "ENTER_REGION_154008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 154001, 154002, 154003, 154004, 154006, 154007 },
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
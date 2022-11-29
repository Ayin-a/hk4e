-- 基础信息
local base_info = {
	group_id = 133302421
}

-- Trigger变量
local defs = {
	regionId = 421008,
	targetScore = 6,
	maxTime = 90,
	gadget_mushroom01 = 421001,
	gadget_mushroom02 = 421002,
	gadget_mushroom03 = 421003,
	gadget_mushroom04 = 421004,
	gadget_mushroom05 = 421006,
	gadget_mushroom06 = 421007,
	startId = 421005
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
	{ config_id = 421001, gadget_id = 70310220, pos = { x = -593.221, y = 281.509, z = 2247.637 }, rot = { x = 30.431, y = 1.587, z = 14.170 }, level = 1, area_id = 24 },
	{ config_id = 421002, gadget_id = 70310220, pos = { x = -587.340, y = 281.388, z = 2250.368 }, rot = { x = 18.019, y = 359.614, z = 10.370 }, level = 1, area_id = 24 },
	{ config_id = 421003, gadget_id = 70310220, pos = { x = -581.937, y = 282.907, z = 2246.834 }, rot = { x = 20.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 421004, gadget_id = 70310220, pos = { x = -592.488, y = 284.316, z = 2241.720 }, rot = { x = 23.007, y = 0.754, z = 13.273 }, level = 1, area_id = 24 },
	{ config_id = 421005, gadget_id = 70350083, pos = { x = -586.730, y = 286.745, z = 2236.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 421006, gadget_id = 70310220, pos = { x = -586.438, y = 285.925, z = 2239.191 }, rot = { x = 20.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 421007, gadget_id = 70310220, pos = { x = -581.080, y = 284.639, z = 2241.459 }, rot = { x = 20.000, y = 0.000, z = 0.000 }, level = 1, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 421008, shape = RegionShape.SPHERE, radius = 15, pos = { x = -586.730, y = 285.799, z = 2239.947 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1421008, name = "ENTER_REGION_421008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 421005 },
		regions = { 421008 },
		triggers = { "ENTER_REGION_421008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 421001, 421002, 421003, 421004, 421006, 421007 },
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
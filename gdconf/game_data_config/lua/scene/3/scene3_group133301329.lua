-- 基础信息
local base_info = {
	group_id = 133301329
}

-- Trigger变量
local defs = {
	regionId = 329008,
	targetScore = 6,
	maxTime = 90,
	gadget_mushroom01 = 329001,
	gadget_mushroom02 = 329002,
	gadget_mushroom03 = 329003,
	gadget_mushroom04 = 329004,
	gadget_mushroom05 = 329006,
	gadget_mushroom06 = 329007,
	startId = 329005
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
	{ config_id = 329001, gadget_id = 70310220, pos = { x = -791.201, y = 239.190, z = 3563.919 }, rot = { x = 0.000, y = 0.000, z = 13.592 }, level = 1, area_id = 23 },
	{ config_id = 329002, gadget_id = 70310220, pos = { x = -786.557, y = 239.912, z = 3566.396 }, rot = { x = 357.799, y = 359.463, z = 13.701 }, level = 1, area_id = 23 },
	{ config_id = 329003, gadget_id = 70310220, pos = { x = -781.747, y = 240.731, z = 3563.780 }, rot = { x = 0.000, y = 0.000, z = 10.998 }, level = 1, area_id = 23 },
	{ config_id = 329004, gadget_id = 70310220, pos = { x = -791.414, y = 239.098, z = 3558.126 }, rot = { x = 358.875, y = 359.830, z = 8.584 }, level = 1, area_id = 23 },
	{ config_id = 329005, gadget_id = 70350083, pos = { x = -794.824, y = 238.678, z = 3560.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 329006, gadget_id = 70310220, pos = { x = -786.276, y = 239.779, z = 3555.813 }, rot = { x = 353.633, y = 359.664, z = 3.029 }, level = 1, area_id = 23 },
	{ config_id = 329007, gadget_id = 70310220, pos = { x = -781.816, y = 241.062, z = 3557.817 }, rot = { x = 0.000, y = 0.000, z = 13.265 }, level = 1, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 329008, shape = RegionShape.SPHERE, radius = 15, pos = { x = -789.201, y = 239.594, z = 3561.077 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1329008, name = "ENTER_REGION_329008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 329005 },
		regions = { 329008 },
		triggers = { "ENTER_REGION_329008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 329001, 329002, 329003, 329004, 329006, 329007 },
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
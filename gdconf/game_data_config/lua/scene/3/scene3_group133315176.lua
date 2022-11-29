-- 基础信息
local base_info = {
	group_id = 133315176
}

-- Trigger变量
local defs = {
	regionId = 176008,
	targetScore = 5,
	maxTime = 90,
	gadget_mushroom01 = 176001,
	gadget_mushroom02 = 176002,
	gadget_mushroom03 = 176003,
	gadget_mushroom04 = 176004,
	gadget_mushroom05 = 176006,
	gadget_mushroom06 = 176007,
	startId = 176005
}

-- DEFS_MISCS
local RequireSuite = { 1,2}

local GopherArray = {
    [1] =
    {-- time里面有两个值，一个是指延时多久出现，一个是指延时多久消失。譬如{1,5}是指第1秒后出现，第5秒后消失。
        [1] = { array = { 1, 0, 1, 0, 2}, time = {1,4}},
        [2] = { array = { 0, 2, 1, 0, 1}, time = {1,4}},
        [3] = { array = { 0, 1, 0, 2, 1}, time = {1,4}},
        [4] = { array = { 0, 1, 2, 0, 2}, time = {1,5}},
    },
    [2] =
    {
        [1] = { array = { 1, 2, 1, 0, 1}, time = {1,4}},
        [2] = { array = { 1, 0, 2, 0, 1}, time = {1,4}},
        [3] = { array = { 1, 0, 2, 1, 2}, time = {1,4}},
        [4] = { array = { 0, 2, 0, 2, 1}, time = {1,5}},
    },
        [3] =
    {
        [1] = { array = { 0, 1, 2, 1, 1}, time = {1,4}},
        [2] = { array = { 1, 0, 1, 2, 0}, time = {1,4}},
        [3] = { array = { 1, 1, 2, 0, 1}, time = {1,4}},
        [4] = { array = { 2, 1, 2, 0, 1}, time = {1,5}},
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
	{ config_id = 176001, gadget_id = 70310220, pos = { x = -1898.383, y = 363.497, z = 3502.386 }, rot = { x = 357.014, y = 0.000, z = 356.258 }, level = 1, area_id = 23 },
	{ config_id = 176002, gadget_id = 70310220, pos = { x = -1899.835, y = 363.404, z = 3496.947 }, rot = { x = 357.710, y = 359.199, z = 358.404 }, level = 1, area_id = 23 },
	{ config_id = 176003, gadget_id = 70310220, pos = { x = -1906.434, y = 363.553, z = 3493.933 }, rot = { x = 0.897, y = 359.650, z = 356.135 }, level = 1, area_id = 23 },
	{ config_id = 176004, gadget_id = 70310220, pos = { x = -1903.862, y = 364.740, z = 3505.291 }, rot = { x = 345.561, y = 343.618, z = 2.768 }, level = 1, area_id = 23 },
	{ config_id = 176005, gadget_id = 70350083, pos = { x = -1896.412, y = 363.371, z = 3496.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 176006, gadget_id = 70310220, pos = { x = -1907.534, y = 364.297, z = 3500.846 }, rot = { x = 349.404, y = 354.477, z = 353.959 }, level = 1, area_id = 23 },
	{ config_id = 176007, gadget_id = 70310220, pos = { x = -1913.399, y = 364.558, z = 3495.566 }, rot = { x = 353.660, y = 350.823, z = 348.153 }, level = 1, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 176008, shape = RegionShape.SPHERE, radius = 15, pos = { x = -1894.164, y = 362.642, z = 3490.237 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1176008, name = "ENTER_REGION_176008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 176005 },
		regions = { 176008 },
		triggers = { "ENTER_REGION_176008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 176001, 176002, 176003, 176004, 176006, 176007 },
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
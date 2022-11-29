-- 基础信息
local base_info = {
	group_id = 133304450
}

-- Trigger变量
local defs = {
	regionId = 450008,
	targetScore = 6,
	maxTime = 90,
	gadget_mushroom01 = 450001,
	gadget_mushroom02 = 450002,
	gadget_mushroom03 = 450003,
	gadget_mushroom04 = 450004,
	gadget_mushroom05 = 450006,
	gadget_mushroom06 = 450007,
	startId = 450005
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
	{ config_id = 450001, gadget_id = 70310220, pos = { x = -1863.203, y = 257.507, z = 2851.938 }, rot = { x = 7.355, y = 0.851, z = 8.683 }, level = 1, area_id = 21 },
	{ config_id = 450002, gadget_id = 70310220, pos = { x = -1859.245, y = 259.716, z = 2842.033 }, rot = { x = 2.171, y = 359.130, z = 3.084 }, level = 1, area_id = 21 },
	{ config_id = 450003, gadget_id = 70310220, pos = { x = -1857.979, y = 258.348, z = 2851.531 }, rot = { x = 6.785, y = 0.486, z = 7.480 }, level = 1, area_id = 21 },
	{ config_id = 450004, gadget_id = 70310220, pos = { x = -1867.498, y = 257.490, z = 2845.191 }, rot = { x = 8.741, y = 353.727, z = 14.544 }, level = 1, area_id = 21 },
	-- w
	{ config_id = 450005, gadget_id = 70350083, pos = { x = -1854.243, y = 258.984, z = 2847.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 450007, gadget_id = 70310220, pos = { x = -1864.967, y = 258.617, z = 2839.500 }, rot = { x = 3.263, y = 6.310, z = 10.298 }, level = 1, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 450008, shape = RegionShape.SPHERE, radius = 15, pos = { x = -1860.991, y = 259.590, z = 2847.945 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1450008, name = "ENTER_REGION_450008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 450006, gadget_id = 70310220, pos = { x = -1864.705, y = 257.935, z = 2846.425 }, rot = { x = 9.587, y = 12.205, z = 9.903 }, level = 1, area_id = 21 }
	}
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
		gadgets = { 450005 },
		regions = { 450008 },
		triggers = { "ENTER_REGION_450008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 450001, 450002, 450003, 450004, 450007 },
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
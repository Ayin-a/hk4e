-- 基础信息
local base_info = {
	group_id = 133315175
}

-- Trigger变量
local defs = {
	regionId = 175008,
	targetScore = 5,
	maxTime = 90,
	gadget_mushroom01 = 175001,
	gadget_mushroom02 = 175002,
	gadget_mushroom03 = 175003,
	gadget_mushroom04 = 175004,
	gadget_mushroom05 = 175006,
	gadget_mushroom06 = 175007,
	startId = 175005
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
	{ config_id = 175001, gadget_id = 70310220, pos = { x = -1555.700, y = 271.867, z = 3618.078 }, rot = { x = 352.707, y = 356.663, z = 357.358 }, level = 1, area_id = 23 },
	{ config_id = 175002, gadget_id = 70310220, pos = { x = -1557.175, y = 271.808, z = 3612.108 }, rot = { x = 3.930, y = 359.686, z = 355.424 }, level = 1, area_id = 23 },
	{ config_id = 175003, gadget_id = 70310220, pos = { x = -1561.669, y = 272.268, z = 3627.364 }, rot = { x = 349.614, y = 353.196, z = 355.129 }, level = 1, area_id = 23 },
	{ config_id = 175004, gadget_id = 70310220, pos = { x = -1569.695, y = 272.913, z = 3620.052 }, rot = { x = 346.965, y = 354.897, z = 348.150 }, level = 1, area_id = 23 },
	{ config_id = 175005, gadget_id = 70350083, pos = { x = -1566.120, y = 272.712, z = 3613.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 175006, gadget_id = 70310220, pos = { x = -1564.096, y = 272.122, z = 3621.723 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 23 },
	{ config_id = 175007, gadget_id = 70310220, pos = { x = -1561.440, y = 272.015, z = 3616.026 }, rot = { x = 0.000, y = 354.748, z = 350.073 }, level = 1, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 175008, shape = RegionShape.SPHERE, radius = 15, pos = { x = -1564.616, y = 271.680, z = 3618.582 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1175008, name = "ENTER_REGION_175008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 175005 },
		regions = { 175008 },
		triggers = { "ENTER_REGION_175008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 175001, 175002, 175003, 175004, 175006, 175007 },
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
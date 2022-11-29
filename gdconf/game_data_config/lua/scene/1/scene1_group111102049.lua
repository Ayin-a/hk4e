-- 基础信息
local base_info = {
	group_id = 111102049
}

-- Trigger变量
local defs = {
	regionId = 49008,
	targetScore = 6,
	maxTime = 90,
	gadget_mushroom01 = 49001,
	gadget_mushroom02 = 49002,
	gadget_mushroom03 = 49003,
	gadget_mushroom04 = 49004,
	gadget_mushroom05 = 49009,
	gadget_mushroom06 = 49010,
	startId = 49005
}

-- DEFS_MISCS
local RequireSuite = { 1,2}

local GopherArray = {
    [1] =
    {-- time里面有两个值，一个是指延时多久出现，一个是指延时多久消失。譬如{1,5}是指第1秒后出现，第5秒后消失。
        [1] = { array = { 0, 0, 0, 1, 2, 1}, time = {1,15}},
        [2] = { array = { 1, 2, 1, 0, 0, 0}, time = {1,15}},
        [3] = { array = { 0, 1, 0, 2, 1, 0}, time = {1,15}},
        [4] = { array = { 0, 2, 1, 2, 0, 0}, time = {1,15}},
    },
    [2] =
    {
        [1] = { array = { 0, 0, 0, 1, 2, 1}, time = {1,15}},
        [2] = { array = { 1, 2, 1, 0, 0, 0}, time = {1,15}},
        [3] = { array = { 0, 1, 0, 2, 1, 0}, time = {1,15}},
        [4] = { array = { 0, 2, 1, 2, 0, 0}, time = {1,15}},
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
	{ config_id = 49001, gadget_id = 70310220, pos = { x = 1166.186, y = 297.204, z = -1593.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 49002, gadget_id = 70310220, pos = { x = 1170.113, y = 296.834, z = -1593.404 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 49003, gadget_id = 70310220, pos = { x = 1176.829, y = 296.246, z = -1594.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 49004, gadget_id = 70310220, pos = { x = 1167.203, y = 297.054, z = -1597.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 49005, gadget_id = 70350083, pos = { x = 1172.523, y = 296.555, z = -1589.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 49009, gadget_id = 70310220, pos = { x = 1171.772, y = 296.695, z = -1598.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 49010, gadget_id = 70310220, pos = { x = 1177.262, y = 296.273, z = -1597.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 49008, shape = RegionShape.SPHERE, radius = 15, pos = { x = 1172.509, y = 296.586, z = -1594.187 } }
}

-- 触发器
triggers = {
	{ config_id = 1049008, name = "ENTER_REGION_49008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		gadgets = { 49005 },
		regions = { 49008 },
		triggers = { "ENTER_REGION_49008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 49001, 49002, 49003, 49004, 49009, 49010 },
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
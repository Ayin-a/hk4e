-- 基础信息
local base_info = {
	group_id = 144003010
}

-- DEFS_MISCS
local defs = {
        group_id = 144003010,
        tide_sum = 6,
        tide_max = 3,
        tide_min = 3
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10001, monster_id = 20010901, pos = { x = -691.795, y = 122.918, z = -73.013 }, rot = { x = 0.000, y = 46.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1014 }, area_id = 103 },
	{ config_id = 10002, monster_id = 20010901, pos = { x = -691.498, y = 123.086, z = -70.691 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1014 }, area_id = 103 },
	{ config_id = 10003, monster_id = 21030101, pos = { x = -695.767, y = 122.997, z = -71.500 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 103 },
	{ config_id = 10004, monster_id = 21011401, pos = { x = -692.185, y = 122.158, z = -75.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1014 }, area_id = 103 },
	{ config_id = 10005, monster_id = 21011401, pos = { x = -692.096, y = 123.133, z = -68.072 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1014 }, area_id = 103 },
	{ config_id = 10006, monster_id = 21020601, pos = { x = -688.103, y = 122.147, z = -71.332 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1014 }, area_id = 103 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 10007, gadget_id = 70300085, pos = { x = -692.215, y = 122.614, z = -71.852 }, rot = { x = 355.000, y = 0.000, z = 352.000 }, level = 1, persistent = true, area_id = 103 },
	{ config_id = 10008, gadget_id = 70310001, pos = { x = -692.036, y = 123.407, z = -66.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 103 },
	{ config_id = 10009, gadget_id = 70310001, pos = { x = -698.336, y = 123.330, z = -70.149 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 103 },
	{ config_id = 10010, gadget_id = 70310001, pos = { x = -684.254, y = 121.789, z = -72.068 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 103 },
	{ config_id = 10011, gadget_id = 70300100, pos = { x = -695.334, y = 122.558, z = -74.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 103 },
	{ config_id = 10012, gadget_id = 70300100, pos = { x = -695.334, y = 123.390, z = -68.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 103 },
	{ config_id = 10014, gadget_id = 70220066, pos = { x = -695.066, y = 122.353, z = -76.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 103 },
	{ config_id = 10015, gadget_id = 70220066, pos = { x = -694.685, y = 122.207, z = -77.041 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, persistent = true, area_id = 103 },
	{ config_id = 10028, gadget_id = 70300091, pos = { x = -686.906, y = 121.077, z = -78.854 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 103 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 10016, pos = { x = -692.118, y = 123.078, z = -71.728 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 103 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 10013, gadget_id = 70220035, pos = { x = -694.270, y = 122.288, z = -76.138 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 103 }
	},
	triggers = {
		{ config_id = 1010065, name = "GROUP_LOAD_10065", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_10065" },
		{ config_id = 1010066, name = "GADGET_CREATE_10066", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_10066", action = "action_EVENT_GADGET_CREATE_10066" },
		{ config_id = 1010067, name = "MONSTER_TIDE_DIE_10067", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3010", condition = "condition_EVENT_MONSTER_TIDE_DIE_10067", action = "action_EVENT_MONSTER_TIDE_DIE_10067" },
		{ config_id = 1010068, name = "GADGET_CREATE_10068", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE_10068" }
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
		gadgets = { 10007, 10008, 10009, 10010, 10011, 10012, 10014, 10015, 10028 },
		regions = { },
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 10001, 10002, 10003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 10004, 10005, 10006 },
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

require "V1_6/KeleeBombBattle"
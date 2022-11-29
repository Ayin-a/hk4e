-- 基础信息
local base_info = {
	group_id = 144003008
}

-- DEFS_MISCS
local defs = {
        group_id = 144003008,
        tide_sum = 25,
        tide_max = 8,
        tide_min = 8
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 8001, monster_id = 21010901, pos = { x = 387.385, y = 123.521, z = -508.050 }, rot = { x = 0.000, y = 46.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, pose_id = 9003, area_id = 101 },
	{ config_id = 8002, monster_id = 21010201, pos = { x = 385.558, y = 122.894, z = -510.786 }, rot = { x = 0.000, y = 46.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, pose_id = 9013, area_id = 101 },
	{ config_id = 8003, monster_id = 21030101, pos = { x = 391.095, y = 122.825, z = -515.613 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, pose_id = 9012, area_id = 101 },
	{ config_id = 8004, monster_id = 21010901, pos = { x = 387.383, y = 122.773, z = -513.258 }, rot = { x = 0.000, y = 46.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, pose_id = 9003, area_id = 101 },
	{ config_id = 8005, monster_id = 21010901, pos = { x = 385.047, y = 121.999, z = -518.634 }, rot = { x = 0.000, y = 46.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, pose_id = 9002, area_id = 101 },
	{ config_id = 8009, monster_id = 21010201, pos = { x = 379.577, y = 122.499, z = -510.428 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, pose_id = 9012, area_id = 101 },
	{ config_id = 8010, monster_id = 21010201, pos = { x = 381.088, y = 122.775, z = -507.496 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, pose_id = 9012, area_id = 101 },
	{ config_id = 8011, monster_id = 21010601, pos = { x = 385.368, y = 122.384, z = -515.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 101 },
	{ config_id = 8012, monster_id = 21010601, pos = { x = 383.258, y = 122.652, z = -511.072 }, rot = { x = 0.000, y = 50.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 101 },
	{ config_id = 8013, monster_id = 21030101, pos = { x = 391.334, y = 123.672, z = -511.122 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 101 },
	{ config_id = 8017, monster_id = 21010701, pos = { x = 383.534, y = 121.810, z = -519.308 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 101 },
	{ config_id = 8018, monster_id = 21010701, pos = { x = 389.532, y = 122.204, z = -519.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 101 },
	{ config_id = 8019, monster_id = 21010601, pos = { x = 382.916, y = 122.055, z = -516.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 101 },
	{ config_id = 8022, monster_id = 21010701, pos = { x = 388.641, y = 122.610, z = -515.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 101 },
	{ config_id = 8023, monster_id = 21010901, pos = { x = 387.549, y = 123.852, z = -506.013 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 8026, gadget_id = 70220066, pos = { x = 384.387, y = 123.491, z = -503.937 }, rot = { x = 4.000, y = 0.000, z = 5.000 }, level = 1, persistent = true, area_id = 101 },
	-- 测试发奖
	{ config_id = 8027, gadget_id = 70220066, pos = { x = 392.217, y = 125.110, z = -506.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 8028, gadget_id = 70220066, pos = { x = 391.118, y = 125.547, z = -504.950 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 8029, gadget_id = 70300088, pos = { x = 390.363, y = 123.129, z = -513.294 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 8034, gadget_id = 70300084, pos = { x = 375.505, y = 121.451, z = -510.218 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 8036, gadget_id = 70300088, pos = { x = 390.359, y = 123.657, z = -510.320 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 8037, gadget_id = 70300077, pos = { x = 385.189, y = 121.876, z = -518.209 }, rot = { x = 0.000, y = 330.790, z = 10.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 8038, gadget_id = 70300088, pos = { x = 390.365, y = 124.032, z = -507.745 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 8042, gadget_id = 70220065, pos = { x = 381.969, y = 122.982, z = -502.735 }, rot = { x = 350.000, y = 45.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 8043, gadget_id = 70300077, pos = { x = 387.651, y = 121.548, z = -521.902 }, rot = { x = 0.000, y = 330.790, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 8044, gadget_id = 70220065, pos = { x = 385.057, y = 121.313, z = -522.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 8045, gadget_id = 70220065, pos = { x = 383.681, y = 121.459, z = -521.305 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 8046, gadget_id = 70220065, pos = { x = 393.128, y = 122.030, z = -521.877 }, rot = { x = 0.000, y = 70.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 8047, gadget_id = 70300089, pos = { x = 396.159, y = 123.369, z = -515.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 8064, gadget_id = 70310006, pos = { x = 388.845, y = 122.352, z = -517.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 8069, gadget_id = 70300084, pos = { x = 393.029, y = 123.599, z = -510.215 }, rot = { x = 354.000, y = 0.000, z = 1.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 8070, gadget_id = 70300089, pos = { x = 380.015, y = 122.536, z = -502.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 8030, pos = { x = 386.262, y = 122.989, z = -510.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 101 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 8006, monster_id = 21010601, pos = { x = 385.286, y = 122.086, z = -517.897 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 9002, area_id = 101 },
		{ config_id = 8007, monster_id = 21010701, pos = { x = 387.678, y = 121.853, z = -521.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 9013, area_id = 101 },
		{ config_id = 8008, monster_id = 21010701, pos = { x = 388.901, y = 124.182, z = -505.652 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 101 },
		{ config_id = 8014, monster_id = 21010901, pos = { x = 380.719, y = 122.569, z = -512.082 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 101 },
		{ config_id = 8015, monster_id = 21030301, pos = { x = 380.396, y = 121.998, z = -514.031 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 101 },
		{ config_id = 8016, monster_id = 21010701, pos = { x = 383.834, y = 123.216, z = -507.104 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 101 },
		{ config_id = 8020, monster_id = 21010601, pos = { x = 386.943, y = 122.329, z = -516.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 101 },
		{ config_id = 8021, monster_id = 21010701, pos = { x = 384.004, y = 122.162, z = -516.301 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 101 },
		{ config_id = 8024, monster_id = 21010701, pos = { x = 381.257, y = 122.864, z = -510.061 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 101 },
		{ config_id = 8025, monster_id = 20011201, pos = { x = 391.915, y = 122.939, z = -518.054 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 101 }
	},
	gadgets = {
		{ config_id = 8040, gadget_id = 70300087, pos = { x = 391.912, y = 122.701, z = -518.070 }, rot = { x = 352.000, y = 90.000, z = 355.000 }, level = 1, area_id = 101 },
		{ config_id = 8041, gadget_id = 70300085, pos = { x = 392.524, y = 122.283, z = -518.244 }, rot = { x = 355.000, y = 90.000, z = 354.000 }, level = 1, area_id = 101 },
		{ config_id = 8039, gadget_id = 70220065, pos = { x = 379.179, y = 122.367, z = -505.080 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, area_id = 101 }
	},
	triggers = {
		{ config_id = 1008065, name = "GROUP_LOAD_8065", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_8065" },
		{ config_id = 1008066, name = "GADGET_CREATE_8066", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8066", action = "action_EVENT_GADGET_CREATE_8066" },
		{ config_id = 1008067, name = "MONSTER_TIDE_DIE_8067", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3008", condition = "condition_EVENT_MONSTER_TIDE_DIE_8067", action = "action_EVENT_MONSTER_TIDE_DIE_8067" },
		{ config_id = 1008068, name = "GADGET_CREATE_8068", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE_8068" }
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
		gadgets = { 8026, 8027, 8028, 8029, 8034, 8036, 8037, 8038, 8042, 8043, 8044, 8045, 8046, 8047, 8064, 8069, 8070 },
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
		monsters = { 8001, 8002, 8003, 8004, 8005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 8009, 8010, 8011, 8012, 8013 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 8017, 8018, 8019, 8022, 8023 },
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
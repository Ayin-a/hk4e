-- 基础信息
local base_info = {
	group_id = 144003012
}

-- DEFS_MISCS
local defs = {
        group_id = 144003012,
        tide_sum = 3,
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
	{ config_id = 12001, monster_id = 21020401, pos = { x = -502.841, y = 120.641, z = -763.769 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 401, area_id = 100 },
	{ config_id = 12002, monster_id = 21010901, pos = { x = -506.925, y = 120.501, z = -762.408 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 9013, area_id = 100 },
	{ config_id = 12003, monster_id = 21010901, pos = { x = -507.402, y = 120.303, z = -765.895 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 9013, area_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 12004, gadget_id = 70310001, pos = { x = -508.231, y = 120.203, z = -769.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 100 },
	{ config_id = 12005, gadget_id = 70310001, pos = { x = -502.940, y = 121.184, z = -755.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 100 },
	{ config_id = 12014, gadget_id = 70310009, pos = { x = -505.622, y = 120.660, z = -760.516 }, rot = { x = 350.000, y = 15.000, z = 1.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 12026, gadget_id = 70220065, pos = { x = -505.500, y = 120.841, z = -756.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	-- 测试发奖
	{ config_id = 12027, gadget_id = 70220035, pos = { x = -504.510, y = 120.847, z = -758.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 12028, gadget_id = 70300086, pos = { x = -502.750, y = 120.918, z = -760.499 }, rot = { x = 30.000, y = 85.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 12030, gadget_id = 70300088, pos = { x = -511.319, y = 120.239, z = -766.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 12031, gadget_id = 70300088, pos = { x = -511.319, y = 120.296, z = -764.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 12032, gadget_id = 70300088, pos = { x = -511.319, y = 120.339, z = -762.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 12034, gadget_id = 70300084, pos = { x = -513.779, y = 120.173, z = -764.293 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 12036, gadget_id = 70300086, pos = { x = -506.223, y = 120.226, z = -769.815 }, rot = { x = 10.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 12039, gadget_id = 70300090, pos = { x = -513.512, y = 119.845, z = -757.842 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
	{ config_id = 12042, gadget_id = 70220065, pos = { x = -507.353, y = 120.737, z = -758.112 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 12015, pos = { x = -501.829, y = 120.797, z = -763.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 100 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 12006, gadget_id = 70300122, pos = { x = -499.831, y = 120.787, z = -761.672 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
		{ config_id = 12007, gadget_id = 70300122, pos = { x = -499.830, y = 120.513, z = -763.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
		{ config_id = 12008, gadget_id = 70300122, pos = { x = -503.941, y = 120.108, z = -771.097 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
		{ config_id = 12009, gadget_id = 70300122, pos = { x = -502.579, y = 120.203, z = -769.423 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
		{ config_id = 12010, gadget_id = 70220025, pos = { x = -502.271, y = 120.638, z = -764.439 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
		{ config_id = 12011, gadget_id = 70220025, pos = { x = -502.270, y = 120.815, z = -762.672 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
		{ config_id = 12012, gadget_id = 70220025, pos = { x = -503.558, y = 120.603, z = -763.464 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 },
		{ config_id = 12013, gadget_id = 70220025, pos = { x = -503.839, y = 120.449, z = -764.942 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 100 }
	},
	triggers = {
		{ config_id = 1012065, name = "GROUP_LOAD_12065", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_12065" },
		{ config_id = 1012066, name = "GADGET_CREATE_12066", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_12066", action = "action_EVENT_GADGET_CREATE_12066" },
		{ config_id = 1012067, name = "ANY_MONSTER_DIE_12067", event = EventType.EVENT_ANY_MONSTER_DIE, source = "3012", condition = "condition_EVENT_ANY_MONSTER_DIE_12067", action = "action_EVENT_ANY_MONSTER_DIE_12067" },
		{ config_id = 1012068, name = "ANY_MONSTER_DIE_12068", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_12068" }
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
		gadgets = { 12004, 12005, 12014, 12026, 12027, 12028, 12030, 12031, 12032, 12034, 12036, 12039, 12042 },
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
		monsters = { 12001, 12002, 12003 },
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
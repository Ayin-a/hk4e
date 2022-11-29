-- 基础信息
local base_info = {
	group_id = 144003009
}

-- DEFS_MISCS
local defs = {
        group_id = 144003009,
        tide_sum = 8,
        tide_max = 5,
        tide_min = 5
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9001, monster_id = 21011401, pos = { x = 246.948, y = 120.582, z = 183.784 }, rot = { x = 0.000, y = 46.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1014 }, pose_id = 9002, area_id = 102 },
	{ config_id = 9002, monster_id = 21011401, pos = { x = 242.614, y = 120.750, z = 184.009 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1014 }, pose_id = 9012, area_id = 102 },
	{ config_id = 9003, monster_id = 20010901, pos = { x = 241.888, y = 120.924, z = 187.710 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1014 }, area_id = 102 },
	{ config_id = 9004, monster_id = 21011401, pos = { x = 240.264, y = 120.829, z = 185.328 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1014 }, pose_id = 9003, area_id = 102 },
	{ config_id = 9005, monster_id = 20010901, pos = { x = 243.904, y = 120.931, z = 187.481 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1014 }, area_id = 102 },
	{ config_id = 9006, monster_id = 21011401, pos = { x = 234.430, y = 121.150, z = 186.798 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1014 }, area_id = 102 },
	{ config_id = 9007, monster_id = 21020601, pos = { x = 234.430, y = 121.303, z = 185.112 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1014 }, area_id = 102 },
	{ config_id = 9008, monster_id = 21011401, pos = { x = 234.430, y = 121.506, z = 183.132 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1014 }, area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9009, gadget_id = 70300091, pos = { x = 238.062, y = 121.391, z = 178.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	{ config_id = 9010, gadget_id = 70310001, pos = { x = 241.873, y = 120.580, z = 192.400 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 102 },
	{ config_id = 9011, gadget_id = 70310001, pos = { x = 246.666, y = 120.955, z = 178.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 102 },
	{ config_id = 9012, gadget_id = 70310001, pos = { x = 233.897, y = 121.808, z = 180.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 102 },
	-- 测试发奖
	{ config_id = 9027, gadget_id = 70220066, pos = { x = 244.835, y = 120.818, z = 181.459 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	{ config_id = 9028, gadget_id = 70220066, pos = { x = 244.959, y = 120.914, z = 180.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	{ config_id = 9039, gadget_id = 70300083, pos = { x = 246.386, y = 120.476, z = 190.302 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	{ config_id = 9041, gadget_id = 70300085, pos = { x = 242.986, y = 120.468, z = 187.549 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	{ config_id = 9042, gadget_id = 70220065, pos = { x = 246.711, y = 120.637, z = 180.741 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	{ config_id = 9043, gadget_id = 70300077, pos = { x = 247.745, y = 120.545, z = 184.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
	{ config_id = 9064, gadget_id = 70310006, pos = { x = 244.721, y = 120.678, z = 183.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 9015, pos = { x = 241.495, y = 120.884, z = 183.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 102 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 9040, gadget_id = 70300087, pos = { x = 242.774, y = 120.670, z = 193.822 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
		{ config_id = 9013, gadget_id = 70220035, pos = { x = 241.852, y = 120.577, z = 190.805 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
		{ config_id = 9014, gadget_id = 70220035, pos = { x = 240.648, y = 120.633, z = 190.219 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, persistent = true, area_id = 102 }
	},
	triggers = {
		{ config_id = 1009065, name = "GROUP_LOAD_9065", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_9065" },
		{ config_id = 1009066, name = "GADGET_CREATE_9066", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_9066", action = "action_EVENT_GADGET_CREATE_9066" },
		{ config_id = 1009067, name = "MONSTER_TIDE_DIE_9067", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3009", condition = "condition_EVENT_MONSTER_TIDE_DIE_9067", action = "action_EVENT_MONSTER_TIDE_DIE_9067" },
		{ config_id = 1009068, name = "GADGET_CREATE_9068", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_EVENT_GADGET_CREATE_9068" }
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
		gadgets = { 9009, 9010, 9011, 9012, 9027, 9028, 9039, 9041, 9042, 9043, 9064 },
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
		monsters = { 9001, 9002, 9003, 9004, 9005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 9006, 9007, 9008 },
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
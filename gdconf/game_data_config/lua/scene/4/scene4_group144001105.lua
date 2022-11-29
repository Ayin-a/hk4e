-- 基础信息
local base_info = {
	group_id = 144001105
}

-- Trigger变量
local defs = {
	group_id = 144001105,
	monster_shaman = 0,
	gadget_barrier  = {},
	TowerBridges = {},
	point = {x=370,y=120,z=-156}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 105001, monster_id = 21010401, pos = { x = 385.989, y = 123.733, z = -183.402 }, rot = { x = 0.000, y = 106.606, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 402, area_id = 102 },
	{ config_id = 105002, monster_id = 21010502, pos = { x = 384.087, y = 123.720, z = -180.836 }, rot = { x = 0.000, y = 359.166, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 102 },
	{ config_id = 105003, monster_id = 21010301, pos = { x = 346.567, y = 126.027, z = -127.837 }, rot = { x = 0.000, y = 50.654, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 105004, monster_id = 21010401, pos = { x = 378.622, y = 123.737, z = -151.289 }, rot = { x = 0.000, y = 257.429, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 402, area_id = 102 },
	{ config_id = 105005, monster_id = 21010502, pos = { x = 380.606, y = 123.744, z = -153.732 }, rot = { x = 0.000, y = 212.270, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 102 },
	{ config_id = 105006, monster_id = 21010401, pos = { x = 351.352, y = 126.065, z = -127.408 }, rot = { x = 0.000, y = 81.557, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 105007, monster_id = 21010401, pos = { x = 349.343, y = 126.013, z = -123.469 }, rot = { x = 0.000, y = 63.303, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 105008, monster_id = 21011001, pos = { x = 347.407, y = 126.002, z = -129.357 }, rot = { x = 0.000, y = 22.653, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 105009, monster_id = 21010301, pos = { x = 350.466, y = 126.003, z = -128.386 }, rot = { x = 0.000, y = 322.146, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 105010, monster_id = 21010201, pos = { x = 347.104, y = 126.037, z = -124.117 }, rot = { x = 0.000, y = 145.226, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 105011, monster_id = 21010301, pos = { x = 345.776, y = 126.061, z = -125.563 }, rot = { x = 0.000, y = 109.463, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 105012, monster_id = 21010201, pos = { x = 351.120, y = 126.064, z = -127.072 }, rot = { x = 0.000, y = 274.475, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 105018, monster_id = 21010201, pos = { x = 349.146, y = 126.022, z = -123.614 }, rot = { x = 0.000, y = 197.865, z = 0.000 }, level = 1, disableWander = true, area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 可摧毁小哨塔A
	{ config_id = 105015, gadget_id = 70950092, pos = { x = 384.743, y = 120.000, z = -182.284 }, rot = { x = 0.000, y = 50.954, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 102 },
	-- 可摧毁小哨塔B
	{ config_id = 105016, gadget_id = 70950092, pos = { x = 380.261, y = 120.000, z = -152.100 }, rot = { x = 0.000, y = 48.132, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 102 },
	-- 不可摧毁大哨塔A
	{ config_id = 105017, gadget_id = 70290059, pos = { x = 349.194, y = 120.000, z = -127.048 }, rot = { x = 0.000, y = 96.806, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 102 },
	{ config_id = 105019, gadget_id = 70950087, pos = { x = 388.446, y = 120.000, z = -179.425 }, rot = { x = 0.000, y = 293.271, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 105020, gadget_id = 70290057, pos = { x = 382.914, y = 120.000, z = -146.012 }, rot = { x = 6.825, y = 359.806, z = 10.439 }, level = 1, area_id = 102 },
	{ config_id = 105024, gadget_id = 70290056, pos = { x = 360.161, y = 120.000, z = -162.970 }, rot = { x = 0.000, y = 96.806, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 105025, gadget_id = 70290057, pos = { x = 387.051, y = 120.000, z = -150.383 }, rot = { x = 0.000, y = 275.105, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 105026, gadget_id = 70290057, pos = { x = 381.747, y = 120.000, z = -188.540 }, rot = { x = 0.000, y = 15.905, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 105027, gadget_id = 70290057, pos = { x = 377.528, y = 120.000, z = -183.652 }, rot = { x = 0.000, y = 97.705, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 105028, gadget_id = 70290057, pos = { x = 344.973, y = 120.000, z = -133.895 }, rot = { x = 0.000, y = 15.905, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 105029, gadget_id = 70290057, pos = { x = 340.035, y = 120.000, z = -126.466 }, rot = { x = 0.000, y = 97.705, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 105030, gadget_id = 70950087, pos = { x = 377.429, y = 120.000, z = -154.939 }, rot = { x = 0.000, y = 145.838, z = 0.000 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 105013, gadget_id = 70360128, pos = { x = 346.588, y = 120.356, z = -127.499 }, rot = { x = 0.000, y = 96.806, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
		{ config_id = 105014, gadget_id = 70210113, pos = { x = 346.588, y = 120.356, z = -127.499 }, rot = { x = 0.000, y = 96.806, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 102 }
	},
	triggers = {
		{ config_id = 1105033, name = "ANY_MONSTER_DIE_105033", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_105033", trigger_count = 0 },
		{ config_id = 1105034, name = "CHALLENGE_FAIL_105034", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_105034", trigger_count = 0 },
		{ config_id = 1105035, name = "GADGET_CREATE_105035", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_105035", action = "action_EVENT_GADGET_CREATE_105035", trigger_count = 0 },
		{ config_id = 1105036, name = "GROUP_REFRESH_105036", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_105036" },
		{ config_id = 1105037, name = "BLOSSOM_CHEST_DIE_105037", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_105037", action = "action_EVENT_BLOSSOM_CHEST_DIE_105037", trigger_count = 0 },
		{ config_id = 1105038, name = "SELECT_OPTION_105038", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_105038", action = "action_EVENT_SELECT_OPTION_105038", trigger_count = 0 },
		{ config_id = 1105039, name = "BLOSSOM_PROGRESS_FINISH_105039", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_105039" },
		{ config_id = 1105040, name = "GROUP_LOAD_105040", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_105040" },
		{ config_id = 1105041, name = "ANY_MONSTER_DIE_105041", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_105041", action = "action_EVENT_ANY_MONSTER_DIE_105041" },
		{ config_id = 1105042, name = "ANY_MONSTER_DIE_105042", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_105042", action = "action_EVENT_ANY_MONSTER_DIE_105042" }
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
		gadgets = { 105015, 105016, 105017, 105019, 105020, 105024, 105025, 105026, 105027, 105028, 105029, 105030 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [默认在场的第一组魔物],
		monsters = { 105001, 105002, 105004, 105005, 105006, 105007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [第二波怪物],
		monsters = { 105003, 105009, 105010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [第三波怪物],
		monsters = { 105008, 105011, 105012, 105018 },
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

require "V1_6/VehicleBattle"
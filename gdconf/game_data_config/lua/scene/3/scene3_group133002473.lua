-- 基础信息
local base_info = {
	group_id = 133002473
}

-- Trigger变量
local defs = {
	operator = 473005,
	blossom_chest = 473006,
	platform = 473008,
	ice_storm = 473007,
	route_info = {{route_id = 300200277, point_id = 4, gadget = 473010},{route_id = 300200277, point_id = 10, gadget = 473011},{route_id = 300200277, point_id = 16, gadget = 473012}},
	final_info = {route_id = 300200276, point_id = 4},
	seelie_base = 473009,
	reminder_pos = {x=1256,y=284,z=-550},
	challenge = {{id = 58, weight = 25, temp_r = 5 },{id = 59, weight = 25, temp_r = 6 }, {id = 60, weight = 25, temp_r = 7 }, {id = 61, weight = 25, temp_r = 8}},
	timedOre = 473004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 473001, monster_id = 23010501, pos = { x = 1277.036, y = 278.966, z = -547.935 }, rot = { x = 0.000, y = 74.746, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 473002, monster_id = 23010401, pos = { x = 1257.902, y = 283.427, z = -548.725 }, rot = { x = 0.000, y = 116.969, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 473003, monster_id = 23010101, pos = { x = 1240.256, y = 285.318, z = -546.248 }, rot = { x = 0.000, y = 89.448, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 随位置龙血结晶创生器
	{ config_id = 473004, gadget_id = 70360127, pos = { x = 1249.793, y = 285.403, z = -547.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 雪山活动开关
	{ config_id = 473005, gadget_id = 70360128, pos = { x = 1297.018, y = 273.741, z = -550.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 领奖台
	{ config_id = 473006, gadget_id = 70210113, pos = { x = 1226.864, y = 288.728, z = -542.896 }, rot = { x = 0.000, y = 53.398, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 10 },
	{ config_id = 473007, gadget_id = 70360105, pos = { x = 1256.171, y = 284.754, z = -550.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 473008, gadget_id = 70720214, pos = { x = 1298.156, y = 273.983, z = -551.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 300200275, area_id = 10 },
	{ config_id = 473009, gadget_id = 70720215, pos = { x = 1229.501, y = 288.360, z = -546.258 }, rot = { x = 0.000, y = 41.475, z = 0.000 }, level = 1, area_id = 10 },
	-- 路点1龙血结晶创生器
	{ config_id = 473010, gadget_id = 70360127, pos = { x = 1283.908, y = 278.636, z = -548.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 路点2龙血结晶创生器
	{ config_id = 473011, gadget_id = 70360127, pos = { x = 1263.231, y = 280.571, z = -547.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 路点3龙血结晶创生器
	{ config_id = 473012, gadget_id = 70360127, pos = { x = 1249.793, y = 285.403, z = -547.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1473013, name = "CHALLENGE_SUCCESS_473013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_473013" },
		{ config_id = 1473014, name = "CHALLENGE_FAIL_473014", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_473014", trigger_count = 0 },
		{ config_id = 1473015, name = "ANY_MONSTER_DIE_473015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_473015", action = "action_EVENT_ANY_MONSTER_DIE_473015" },
		{ config_id = 1473016, name = "GADGET_CREATE_473016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_473016", action = "action_EVENT_GADGET_CREATE_473016", trigger_count = 0 },
		{ config_id = 1473017, name = "GROUP_REFRESH_473017", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_473017" },
		{ config_id = 1473018, name = "BLOSSOM_CHEST_DIE_473018", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_473018", action = "action_EVENT_BLOSSOM_CHEST_DIE_473018", trigger_count = 0 },
		{ config_id = 1473019, name = "SELECT_OPTION_473019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_473019", action = "action_EVENT_SELECT_OPTION_473019", trigger_count = 0 },
		{ config_id = 1473020, name = "PLATFORM_REACH_POINT_473020", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_473020", action = "action_EVENT_PLATFORM_REACH_POINT_473020" },
		{ config_id = 1473021, name = "BLOSSOM_PROGRESS_FINISH_473021", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_473021" },
		{ config_id = 1473022, name = "GROUP_LOAD_473022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_473022" },
		{ config_id = 1473023, name = "PLATFORM_REACH_POINT_473023", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_473023", action = "action_EVENT_PLATFORM_REACH_POINT_473023" },
		{ config_id = 1473024, name = "PLATFORM_REACH_POINT_473024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_473024", action = "action_EVENT_PLATFORM_REACH_POINT_473024", trigger_count = 0 },
		{ config_id = 1473025, name = "ANY_MONSTER_DIE_473025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_473025", action = "action_EVENT_ANY_MONSTER_DIE_473025" },
		{ config_id = 1473026, name = "ANY_MONSTER_DIE_473026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_473026", action = "action_EVENT_ANY_MONSTER_DIE_473026" },
		{ config_id = 1473027, name = "PLATFORM_REACH_POINT_473027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_473027", action = "action_EVENT_PLATFORM_REACH_POINT_473027" },
		{ config_id = 1473028, name = "GADGET_CREATE_473028", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_473028", action = "action_EVENT_GADGET_CREATE_473028" }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { 473005, 473008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪物,
		monsters = { 473001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = GadgetSuite,
		monsters = { },
		gadgets = { 473007, 473009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二波怪物,
		monsters = { 473002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波怪物,
		monsters = { 473003 },
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

require "DragonSpineBlossomB"
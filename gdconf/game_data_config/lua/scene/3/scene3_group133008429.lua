-- 基础信息
local base_info = {
	group_id = 133008429
}

-- Trigger变量
local defs = {
	operator = 429010,
	blossom_chest = 429011,
	platform = 429013,
	ice_storm = 429012,
	route_info = {{route_id = 300800108, point_id = 4, gadget = 429032},{route_id = 300800108, point_id = 18, gadget = 429033},{route_id = 300800108, point_id = 38, gadget = 429034}},
	final_info = {route_id = 300800109, point_id = 12},
	seelie_base = 429014,
	reminder_pos = {x=767,y=201,z=-1102},
	challenge = {{id = 58, weight = 25, temp_r = 5 },{id = 59, weight = 25, temp_r = 6 }, {id = 60, weight = 25, temp_r = 7 }, {id = 61, weight = 25, temp_r = 8}},
	timedOre = 429009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 429001, monster_id = 21011401, pos = { x = 772.257, y = 201.999, z = -1088.607 }, rot = { x = 0.000, y = 350.956, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 429002, monster_id = 21011401, pos = { x = 773.686, y = 202.213, z = -1088.002 }, rot = { x = 0.000, y = 330.681, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 429003, monster_id = 21011401, pos = { x = 774.240, y = 202.267, z = -1086.815 }, rot = { x = 0.000, y = 303.650, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 429004, monster_id = 20010801, pos = { x = 756.444, y = 200.972, z = -1100.521 }, rot = { x = 0.000, y = 53.514, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 429005, monster_id = 20010801, pos = { x = 755.638, y = 201.210, z = -1097.887 }, rot = { x = 0.000, y = 72.456, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 429006, monster_id = 20010901, pos = { x = 758.437, y = 200.772, z = -1101.243 }, rot = { x = 0.000, y = 47.563, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 429008, monster_id = 21020601, pos = { x = 767.283, y = 200.304, z = -1122.960 }, rot = { x = 0.000, y = 11.048, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 随位置龙血结晶创生器
	{ config_id = 429009, gadget_id = 70360127, pos = { x = 765.372, y = 200.576, z = -1112.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 雪山活动开关
	{ config_id = 429010, gadget_id = 70360128, pos = { x = 765.358, y = 200.723, z = -1063.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 领奖台
	{ config_id = 429011, gadget_id = 70210113, pos = { x = 764.005, y = 199.959, z = -1133.138 }, rot = { x = 0.000, y = 290.689, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 10 },
	{ config_id = 429012, gadget_id = 70360105, pos = { x = 767.904, y = 201.053, z = -1102.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 429013, gadget_id = 70720214, pos = { x = 767.642, y = 200.749, z = -1064.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 300800107, area_id = 10 },
	{ config_id = 429014, gadget_id = 70720215, pos = { x = 763.473, y = 200.078, z = -1130.601 }, rot = { x = 0.000, y = 38.161, z = 0.000 }, level = 1, area_id = 10 },
	-- 路点1龙血结晶创生器
	{ config_id = 429032, gadget_id = 70360127, pos = { x = 769.927, y = 202.107, z = -1075.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 路点2龙血结晶创生器
	{ config_id = 429033, gadget_id = 70360127, pos = { x = 765.745, y = 201.416, z = -1092.123 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 路点3龙血结晶创生器
	{ config_id = 429034, gadget_id = 70360127, pos = { x = 765.372, y = 200.576, z = -1112.664 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 }
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
		{ config_id = 1429007, name = "PLATFORM_REACH_POINT_429007", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_429007", action = "action_EVENT_PLATFORM_REACH_POINT_429007" },
		{ config_id = 1429015, name = "ANY_MONSTER_DIE_429015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_429015", action = "action_EVENT_ANY_MONSTER_DIE_429015" },
		{ config_id = 1429016, name = "GADGET_CREATE_429016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_429016", action = "action_EVENT_GADGET_CREATE_429016", trigger_count = 0 },
		{ config_id = 1429017, name = "GROUP_REFRESH_429017", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_429017" },
		{ config_id = 1429018, name = "BLOSSOM_CHEST_DIE_429018", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_429018", action = "action_EVENT_BLOSSOM_CHEST_DIE_429018", trigger_count = 0 },
		{ config_id = 1429019, name = "SELECT_OPTION_429019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_429019", action = "action_EVENT_SELECT_OPTION_429019", trigger_count = 0 },
		{ config_id = 1429021, name = "BLOSSOM_PROGRESS_FINISH_429021", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_429021" },
		{ config_id = 1429022, name = "GROUP_LOAD_429022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_429022" },
		{ config_id = 1429023, name = "ANY_MONSTER_DIE_429023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_429023", action = "action_EVENT_ANY_MONSTER_DIE_429023" },
		{ config_id = 1429024, name = "ANY_MONSTER_DIE_429024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_429024", action = "action_EVENT_ANY_MONSTER_DIE_429024" },
		{ config_id = 1429025, name = "PLATFORM_REACH_POINT_429025", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_429025", action = "action_EVENT_PLATFORM_REACH_POINT_429025" },
		{ config_id = 1429026, name = "GADGET_CREATE_429026", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_429026", action = "action_EVENT_GADGET_CREATE_429026" },
		{ config_id = 1429029, name = "PLATFORM_REACH_POINT_429029", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_429029", action = "action_EVENT_PLATFORM_REACH_POINT_429029" },
		{ config_id = 1429030, name = "PLATFORM_REACH_POINT_429030", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_429030", action = "action_EVENT_PLATFORM_REACH_POINT_429030", trigger_count = 0 },
		{ config_id = 1429031, name = "CHALLENGE_SUCCESS_429031", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_429031" },
		{ config_id = 1429035, name = "CHALLENGE_FAIL_429035", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_429035", trigger_count = 0 }
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
		gadgets = { 429010, 429013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪物,
		monsters = { 429001, 429002, 429003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = GadgetSuite,
		monsters = { },
		gadgets = { 429012, 429014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二波怪物,
		monsters = { 429004, 429005, 429006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波怪物,
		monsters = { 429008 },
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
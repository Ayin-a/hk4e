-- 基础信息
local base_info = {
	group_id = 133105337
}

-- Trigger变量
local defs = {
	operator = 337008,
	blossom_chest = 337009,
	platform = 337011,
	ice_storm = 337010,
	route_info = {{route_id = 310500111, point_id = 7, gadget = 426029},{route_id = 310500111, point_id = 17, gadget = 4226030},{route_id = 310500111, point_id = 27, gadget = 426031}},
	final_info = {route_id = 310500112, point_id = 6},
	seelie_base = 337012,
	reminder_pos = {x=840,y=294,z=-942},
	challenge = {{id = 58, weight = 25, temp_r = 5 },{id = 59, weight = 25, temp_r = 6 }, {id = 60, weight = 25, temp_r = 7 }, {id = 61, weight = 25, temp_r = 8}},
	timedOre = 337007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 337001, monster_id = 20010901, pos = { x = 823.002, y = 290.002, z = -931.908 }, rot = { x = 0.000, y = 309.202, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 337002, monster_id = 20010901, pos = { x = 821.687, y = 290.816, z = -934.777 }, rot = { x = 0.000, y = 309.202, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 337003, monster_id = 21010901, pos = { x = 840.731, y = 294.002, z = -948.359 }, rot = { x = 0.000, y = 310.711, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 337004, monster_id = 21020601, pos = { x = 836.419, y = 293.097, z = -948.097 }, rot = { x = 0.000, y = 336.358, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 337005, monster_id = 20010901, pos = { x = 848.527, y = 293.456, z = -967.568 }, rot = { x = 0.000, y = 307.846, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 337006, monster_id = 21030301, pos = { x = 849.916, y = 293.520, z = -970.166 }, rot = { x = 0.000, y = 313.388, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 随位置龙血结晶创生器
	{ config_id = 337007, gadget_id = 70360127, pos = { x = 842.530, y = 293.614, z = -960.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 雪山活动开关
	{ config_id = 337008, gadget_id = 70360128, pos = { x = 805.495, y = 287.322, z = -919.628 }, rot = { x = 0.000, y = 231.032, z = 0.000 }, level = 1, area_id = 10 },
	-- 领奖台
	{ config_id = 337009, gadget_id = 70210113, pos = { x = 844.190, y = 292.454, z = -975.564 }, rot = { x = 0.000, y = 303.293, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 10 },
	{ config_id = 337010, gadget_id = 70360105, pos = { x = 840.183, y = 294.113, z = -942.152 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 337011, gadget_id = 70720214, pos = { x = 807.721, y = 287.467, z = -919.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 310500110, area_id = 10 },
	{ config_id = 337012, gadget_id = 70720215, pos = { x = 846.371, y = 292.814, z = -971.679 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 路点1龙血结晶创生器
	{ config_id = 337013, gadget_id = 70360127, pos = { x = 818.792, y = 289.237, z = -928.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 路点2龙血结晶创生器
	{ config_id = 337014, gadget_id = 70360127, pos = { x = 834.831, y = 292.018, z = -940.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 路点3龙血结晶创生器
	{ config_id = 337015, gadget_id = 70360127, pos = { x = 842.530, y = 293.614, z = -960.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 }
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
		{ config_id = 1337016, name = "PLATFORM_REACH_POINT_337016", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_337016", action = "action_EVENT_PLATFORM_REACH_POINT_337016", trigger_count = 0 },
		{ config_id = 1337017, name = "PLATFORM_REACH_POINT_337017", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_337017", action = "action_EVENT_PLATFORM_REACH_POINT_337017" },
		{ config_id = 1337018, name = "ANY_MONSTER_DIE_337018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_337018", action = "action_EVENT_ANY_MONSTER_DIE_337018" },
		{ config_id = 1337019, name = "GADGET_CREATE_337019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_337019", action = "action_EVENT_GADGET_CREATE_337019", trigger_count = 0 },
		{ config_id = 1337020, name = "GROUP_REFRESH_337020", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_337020" },
		{ config_id = 1337021, name = "BLOSSOM_CHEST_DIE_337021", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_337021", action = "action_EVENT_BLOSSOM_CHEST_DIE_337021", trigger_count = 0 },
		{ config_id = 1337022, name = "SELECT_OPTION_337022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_337022", action = "action_EVENT_SELECT_OPTION_337022", trigger_count = 0 },
		{ config_id = 1337023, name = "BLOSSOM_PROGRESS_FINISH_337023", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_337023" },
		{ config_id = 1337024, name = "GROUP_LOAD_337024", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_337024" },
		{ config_id = 1337025, name = "ANY_MONSTER_DIE_337025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_337025", action = "action_EVENT_ANY_MONSTER_DIE_337025" },
		{ config_id = 1337026, name = "ANY_MONSTER_DIE_337026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_337026", action = "action_EVENT_ANY_MONSTER_DIE_337026" },
		{ config_id = 1337027, name = "PLATFORM_REACH_POINT_337027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_337027", action = "action_EVENT_PLATFORM_REACH_POINT_337027" },
		{ config_id = 1337028, name = "GADGET_CREATE_337028", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_337028", action = "action_EVENT_GADGET_CREATE_337028" },
		{ config_id = 1337029, name = "PLATFORM_REACH_POINT_337029", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_337029", action = "action_EVENT_PLATFORM_REACH_POINT_337029", trigger_count = 0 },
		{ config_id = 1337030, name = "CHALLENGE_SUCCESS_337030", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_337030" },
		{ config_id = 1337031, name = "CHALLENGE_FAIL_337031", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_337031", trigger_count = 0 }
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
		gadgets = { 337008, 337011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪物,
		monsters = { 337001, 337002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = GadgetSuite,
		monsters = { },
		gadgets = { 337010, 337012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二波怪物,
		monsters = { 337003, 337004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波怪物,
		monsters = { 337005, 337006 },
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
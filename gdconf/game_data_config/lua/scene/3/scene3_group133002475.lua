-- 基础信息
local base_info = {
	group_id = 133002475
}

-- Trigger变量
local defs = {
	operator = 475007,
	blossom_chest = 475008,
	platform = 475010,
	ice_storm = 475009,
	route_info = {{route_id = 300200282, point_id = 4, gadget = 475004},{route_id = 300200282, point_id = 19, gadget = 475005},{route_id = 300200282, point_id = 32, gadget = 475006}},
	final_info = {route_id = 300200283, point_id = 8},
	seelie_base = 475011,
	reminder_pos = {x=1203,y=389,z=-726},
	challenge = {{id = 58, weight = 25, temp_r = 5 },{id = 59, weight = 25, temp_r = 6 }, {id = 60, weight = 25, temp_r = 7 }, {id = 61, weight = 25, temp_r = 8}},
	timedOre = 475012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 475001, monster_id = 23010601, pos = { x = 1217.034, y = 388.258, z = -739.148 }, rot = { x = 0.000, y = 146.329, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 475002, monster_id = 23010101, pos = { x = 1205.808, y = 388.016, z = -719.529 }, rot = { x = 0.000, y = 129.265, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 475003, monster_id = 23010501, pos = { x = 1179.398, y = 392.980, z = -717.086 }, rot = { x = 0.000, y = 78.659, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 路点1龙血结晶创生器
	{ config_id = 475004, gadget_id = 70360127, pos = { x = 1222.064, y = 387.639, z = -747.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 路点2龙血结晶创生器
	{ config_id = 475005, gadget_id = 70360127, pos = { x = 1211.809, y = 387.328, z = -724.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 路点3龙血结晶创生器
	{ config_id = 475006, gadget_id = 70360127, pos = { x = 1192.986, y = 390.885, z = -716.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 雪山活动开关
	{ config_id = 475007, gadget_id = 70360128, pos = { x = 1227.057, y = 386.974, z = -752.446 }, rot = { x = 0.000, y = 333.661, z = 0.000 }, level = 1, area_id = 10 },
	-- 领奖台
	{ config_id = 475008, gadget_id = 70210113, pos = { x = 1164.511, y = 396.905, z = -717.310 }, rot = { x = 0.000, y = 84.516, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 10 },
	{ config_id = 475009, gadget_id = 70360105, pos = { x = 1203.712, y = 389.183, z = -726.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 475010, gadget_id = 70720214, pos = { x = 1227.864, y = 386.587, z = -753.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 300200281, area_id = 10 },
	{ config_id = 475011, gadget_id = 70720215, pos = { x = 1165.582, y = 396.726, z = -715.646 }, rot = { x = 0.000, y = 102.730, z = 0.000 }, level = 1, area_id = 10 },
	-- 随位置龙血结晶创生器
	{ config_id = 475012, gadget_id = 70360127, pos = { x = 1192.986, y = 390.885, z = -716.305 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 }
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
		{ config_id = 1475013, name = "PLATFORM_REACH_POINT_475013", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_475013", action = "action_EVENT_PLATFORM_REACH_POINT_475013" },
		{ config_id = 1475014, name = "PLATFORM_REACH_POINT_475014", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_475014", action = "action_EVENT_PLATFORM_REACH_POINT_475014" },
		{ config_id = 1475015, name = "PLATFORM_REACH_POINT_475015", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_475015", action = "action_EVENT_PLATFORM_REACH_POINT_475015", trigger_count = 0 },
		{ config_id = 1475016, name = "ANY_MONSTER_DIE_475016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_475016", action = "action_EVENT_ANY_MONSTER_DIE_475016" },
		{ config_id = 1475017, name = "GADGET_CREATE_475017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_475017", action = "action_EVENT_GADGET_CREATE_475017", trigger_count = 0 },
		{ config_id = 1475018, name = "GROUP_REFRESH_475018", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_475018" },
		{ config_id = 1475019, name = "BLOSSOM_CHEST_DIE_475019", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_475019", action = "action_EVENT_BLOSSOM_CHEST_DIE_475019", trigger_count = 0 },
		{ config_id = 1475020, name = "SELECT_OPTION_475020", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_475020", action = "action_EVENT_SELECT_OPTION_475020", trigger_count = 0 },
		{ config_id = 1475021, name = "CHALLENGE_SUCCESS_475021", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_475021", trigger_count = 0 },
		{ config_id = 1475022, name = "BLOSSOM_PROGRESS_FINISH_475022", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_475022" },
		{ config_id = 1475023, name = "GROUP_LOAD_475023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_475023" },
		{ config_id = 1475024, name = "ANY_MONSTER_DIE_475024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_475024", action = "action_EVENT_ANY_MONSTER_DIE_475024" },
		{ config_id = 1475025, name = "ANY_MONSTER_DIE_475025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_475025", action = "action_EVENT_ANY_MONSTER_DIE_475025" },
		{ config_id = 1475026, name = "PLATFORM_REACH_POINT_475026", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_475026", action = "action_EVENT_PLATFORM_REACH_POINT_475026" },
		{ config_id = 1475027, name = "GADGET_CREATE_475027", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_475027", action = "action_EVENT_GADGET_CREATE_475027" },
		{ config_id = 1475028, name = "CHALLENGE_FAIL_475028", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_475028", trigger_count = 0 }
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
		gadgets = { 475007, 475010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪物,
		monsters = { 475001 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = GadgetSuite,
		monsters = { },
		gadgets = { 475009, 475011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二波怪物,
		monsters = { 475002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波怪物,
		monsters = { 475003 },
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
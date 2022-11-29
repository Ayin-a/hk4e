-- 基础信息
local base_info = {
	group_id = 133002474
}

-- Trigger变量
local defs = {
	operator = 474008,
	blossom_chest = 474009,
	platform = 474011,
	ice_storm = 474010,
	route_info = {{route_id = 300200280, point_id = 7, gadget = 474013},{route_id = 300200280, point_id = 29, gadget = 474014},{route_id = 300200280, point_id = 40, gadget = 474015}},
	final_info = {route_id = 300200279, point_id = 6},
	seelie_base = 474012,
	reminder_pos = {x=1191,y=252,z=-427},
	challenge = {{id = 58, weight = 25, temp_r = 5 },{id = 59, weight = 25, temp_r = 6 }, {id = 60, weight = 25, temp_r = 7 }, {id = 61, weight = 25, temp_r = 8}},
	timedOre = 474016
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 474001, monster_id = 21011401, pos = { x = 1201.164, y = 260.934, z = -399.593 }, rot = { x = 0.000, y = 2.394, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 474002, monster_id = 21011301, pos = { x = 1203.322, y = 261.956, z = -404.411 }, rot = { x = 0.000, y = 343.865, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 474003, monster_id = 21011301, pos = { x = 1197.129, y = 262.252, z = -403.703 }, rot = { x = 0.000, y = 13.092, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 474004, monster_id = 20010901, pos = { x = 1196.641, y = 270.373, z = -426.851 }, rot = { x = 0.000, y = 31.837, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 474005, monster_id = 20010801, pos = { x = 1194.663, y = 269.418, z = -423.986 }, rot = { x = 0.000, y = 76.691, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 474006, monster_id = 26010101, pos = { x = 1190.623, y = 274.954, z = -437.702 }, rot = { x = 0.000, y = 68.196, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 474007, monster_id = 20010801, pos = { x = 1197.817, y = 270.019, z = -425.750 }, rot = { x = 0.000, y = 20.992, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 雪山活动开关
	{ config_id = 474008, gadget_id = 70360128, pos = { x = 1205.566, y = 256.442, z = -385.449 }, rot = { x = 0.000, y = 245.094, z = 0.000 }, level = 1, area_id = 10 },
	-- 领奖台
	{ config_id = 474009, gadget_id = 70210113, pos = { x = 1185.206, y = 277.819, z = -447.999 }, rot = { x = 0.000, y = 30.991, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 10 },
	{ config_id = 474010, gadget_id = 70360105, pos = { x = 1191.517, y = 252.572, z = -427.155 }, rot = { x = 0.000, y = 245.094, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 474011, gadget_id = 70720214, pos = { x = 1206.298, y = 255.889, z = -383.854 }, rot = { x = 0.000, y = 245.094, z = 0.000 }, level = 1, route_id = 300200278, area_id = 10 },
	{ config_id = 474012, gadget_id = 70720215, pos = { x = 1185.367, y = 276.917, z = -442.989 }, rot = { x = 0.000, y = 68.425, z = 0.000 }, level = 1, area_id = 10 },
	-- 路点1龙血结晶创生器
	{ config_id = 474013, gadget_id = 70360127, pos = { x = 1201.322, y = 258.967, z = -393.242 }, rot = { x = 0.000, y = 245.094, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 路点2龙血结晶创生器
	{ config_id = 474014, gadget_id = 70360127, pos = { x = 1199.210, y = 267.016, z = -418.627 }, rot = { x = 0.000, y = 245.094, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 路点3龙血结晶创生器
	{ config_id = 474015, gadget_id = 70360127, pos = { x = 1195.386, y = 272.499, z = -431.961 }, rot = { x = 0.000, y = 245.094, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 随位置龙血结晶创生器
	{ config_id = 474016, gadget_id = 70360127, pos = { x = 1195.386, y = 272.499, z = -431.961 }, rot = { x = 0.000, y = 245.094, z = 0.000 }, level = 1, persistent = true, area_id = 10 }
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
		{ config_id = 1474017, name = "CHALLENGE_SUCCESS_474017", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_474017" },
		{ config_id = 1474018, name = "CHALLENGE_FAIL_474018", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_474018", trigger_count = 0 },
		{ config_id = 1474019, name = "ANY_MONSTER_DIE_474019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_474019", action = "action_EVENT_ANY_MONSTER_DIE_474019" },
		{ config_id = 1474020, name = "GADGET_CREATE_474020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_474020", action = "action_EVENT_GADGET_CREATE_474020", trigger_count = 0 },
		{ config_id = 1474021, name = "GROUP_REFRESH_474021", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_474021" },
		{ config_id = 1474022, name = "BLOSSOM_CHEST_DIE_474022", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_474022", action = "action_EVENT_BLOSSOM_CHEST_DIE_474022", trigger_count = 0 },
		{ config_id = 1474023, name = "SELECT_OPTION_474023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_474023", action = "action_EVENT_SELECT_OPTION_474023", trigger_count = 0 },
		{ config_id = 1474024, name = "PLATFORM_REACH_POINT_474024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_474024", action = "action_EVENT_PLATFORM_REACH_POINT_474024" },
		{ config_id = 1474025, name = "BLOSSOM_PROGRESS_FINISH_474025", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_474025" },
		{ config_id = 1474026, name = "GROUP_LOAD_474026", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_474026" },
		{ config_id = 1474027, name = "PLATFORM_REACH_POINT_474027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_474027", action = "action_EVENT_PLATFORM_REACH_POINT_474027" },
		{ config_id = 1474028, name = "PLATFORM_REACH_POINT_474028", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_474028", action = "action_EVENT_PLATFORM_REACH_POINT_474028", trigger_count = 0 },
		{ config_id = 1474029, name = "ANY_MONSTER_DIE_474029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_474029", action = "action_EVENT_ANY_MONSTER_DIE_474029" },
		{ config_id = 1474030, name = "ANY_MONSTER_DIE_474030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_474030", action = "action_EVENT_ANY_MONSTER_DIE_474030" },
		{ config_id = 1474031, name = "PLATFORM_REACH_POINT_474031", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_474031", action = "action_EVENT_PLATFORM_REACH_POINT_474031" },
		{ config_id = 1474032, name = "GADGET_CREATE_474032", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_474032", action = "action_EVENT_GADGET_CREATE_474032" }
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
		gadgets = { 474008, 474011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪物,
		monsters = { 474001, 474002, 474003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = GadgetSuite,
		monsters = { },
		gadgets = { 474010, 474012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二波怪物,
		monsters = { 474004, 474005, 474007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波怪物,
		monsters = { 474006 },
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
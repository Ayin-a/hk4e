-- 基础信息
local base_info = {
	group_id = 133001573
}

-- Trigger变量
local defs = {
	operator = 573008,
	blossom_chest = 573009,
	platform = 573011,
	ice_storm = 573010,
	route_info = {{route_id = 300100281, point_id = 4, gadget = 573013},{route_id = 300100281, point_id = 10, gadget = 573014},{route_id = 300100281, point_id = 16, gadget = 573015}},
	final_info = {route_id = 300100280, point_id = 6},
	seelie_base = 573012,
	reminder_pos = {x=1208,y=300,z=-1078},
	challenge = {{id = 58, weight = 25, temp_r = 5 },{id = 59, weight = 25, temp_r = 6 }, {id = 60, weight = 25, temp_r = 7 }, {id = 61, weight = 25, temp_r = 8}},
	timedOre = 573016
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 573001, monster_id = 21011401, pos = { x = 1203.101, y = 303.408, z = -1104.471 }, rot = { x = 0.000, y = 217.130, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 573002, monster_id = 21011401, pos = { x = 1200.759, y = 303.268, z = -1102.821 }, rot = { x = 0.000, y = 217.130, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 573003, monster_id = 21011401, pos = { x = 1201.312, y = 303.102, z = -1104.054 }, rot = { x = 0.000, y = 217.130, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 573004, monster_id = 21010901, pos = { x = 1213.598, y = 308.043, z = -1095.005 }, rot = { x = 0.000, y = 239.642, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 573005, monster_id = 21011001, pos = { x = 1206.811, y = 309.744, z = -1091.159 }, rot = { x = 0.000, y = 185.641, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 573006, monster_id = 21030301, pos = { x = 1211.631, y = 306.872, z = -1090.159 }, rot = { x = 0.000, y = 210.407, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 573007, monster_id = 21020601, pos = { x = 1217.263, y = 308.668, z = -1077.398 }, rot = { x = 0.000, y = 211.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 雪山活动开关
	{ config_id = 573008, gadget_id = 70360128, pos = { x = 1192.359, y = 299.306, z = -1115.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 领奖台
	{ config_id = 573009, gadget_id = 70210113, pos = { x = 1226.020, y = 307.036, z = -1070.474 }, rot = { x = 0.000, y = 180.649, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 10 },
	{ config_id = 573010, gadget_id = 70360105, pos = { x = 1208.361, y = 300.813, z = -1078.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 573011, gadget_id = 70720214, pos = { x = 1193.927, y = 299.006, z = -1116.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 300100279, area_id = 10 },
	{ config_id = 573012, gadget_id = 70720215, pos = { x = 1223.492, y = 307.171, z = -1071.245 }, rot = { x = 0.000, y = 220.663, z = 0.000 }, level = 1, area_id = 10 },
	-- 路点1龙血结晶创生器
	{ config_id = 573013, gadget_id = 70360127, pos = { x = 1198.623, y = 302.202, z = -1107.792 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 路点2龙血结晶创生器
	{ config_id = 573014, gadget_id = 70360127, pos = { x = 1209.372, y = 305.696, z = -1095.092 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 路点3龙血结晶创生器
	{ config_id = 573015, gadget_id = 70360127, pos = { x = 1217.266, y = 307.671, z = -1084.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 随位置龙血结晶创生器
	{ config_id = 573016, gadget_id = 70360127, pos = { x = 1217.266, y = 307.671, z = -1084.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 }
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
		{ config_id = 1573017, name = "CHALLENGE_SUCCESS_573017", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_573017" },
		{ config_id = 1573018, name = "CHALLENGE_FAIL_573018", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_573018", trigger_count = 0 },
		{ config_id = 1573019, name = "ANY_MONSTER_DIE_573019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_573019", action = "action_EVENT_ANY_MONSTER_DIE_573019" },
		{ config_id = 1573020, name = "GADGET_CREATE_573020", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_573020", action = "action_EVENT_GADGET_CREATE_573020", trigger_count = 0 },
		{ config_id = 1573021, name = "GROUP_REFRESH_573021", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_573021" },
		{ config_id = 1573022, name = "BLOSSOM_CHEST_DIE_573022", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_573022", action = "action_EVENT_BLOSSOM_CHEST_DIE_573022", trigger_count = 0 },
		{ config_id = 1573023, name = "SELECT_OPTION_573023", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_573023", action = "action_EVENT_SELECT_OPTION_573023", trigger_count = 0 },
		{ config_id = 1573024, name = "PLATFORM_REACH_POINT_573024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_573024", action = "action_EVENT_PLATFORM_REACH_POINT_573024" },
		{ config_id = 1573025, name = "BLOSSOM_PROGRESS_FINISH_573025", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_573025" },
		{ config_id = 1573026, name = "GROUP_LOAD_573026", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_573026" },
		{ config_id = 1573027, name = "PLATFORM_REACH_POINT_573027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_573027", action = "action_EVENT_PLATFORM_REACH_POINT_573027" },
		{ config_id = 1573028, name = "PLATFORM_REACH_POINT_573028", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_573028", action = "action_EVENT_PLATFORM_REACH_POINT_573028", trigger_count = 0 },
		{ config_id = 1573029, name = "ANY_MONSTER_DIE_573029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_573029", action = "action_EVENT_ANY_MONSTER_DIE_573029" },
		{ config_id = 1573030, name = "ANY_MONSTER_DIE_573030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_573030", action = "action_EVENT_ANY_MONSTER_DIE_573030" },
		{ config_id = 1573031, name = "PLATFORM_REACH_POINT_573031", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_573031", action = "action_EVENT_PLATFORM_REACH_POINT_573031" },
		{ config_id = 1573032, name = "GADGET_CREATE_573032", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_573032", action = "action_EVENT_GADGET_CREATE_573032" }
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
		gadgets = { 573008, 573011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪物,
		monsters = { 573001, 573002, 573003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = GadgetSuite,
		monsters = { },
		gadgets = { 573010, 573012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二波怪物,
		monsters = { 573004, 573005, 573006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波怪物,
		monsters = { 573007 },
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
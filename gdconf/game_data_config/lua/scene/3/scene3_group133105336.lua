-- 基础信息
local base_info = {
	group_id = 133105336
}

-- Trigger变量
local defs = {
	operator = 336009,
	blossom_chest = 336010,
	platform = 336012,
	ice_storm = 336011,
	route_info = {{route_id = 310500109, point_id = 5, gadget = 336014},{route_id = 310500109, point_id = 20, gadget = 336015},{route_id = 310500109, point_id = 32, gadget = 336016}},
	final_info = {route_id = 310500108, point_id = 6},
	seelie_base = 336013,
	reminder_pos = {x=882,y=301,z=-467},
	challenge = {{id = 58, weight = 25, temp_r = 5 },{id = 59, weight = 25, temp_r = 6 }, {id = 60, weight = 25, temp_r = 7 }, {id = 61, weight = 25, temp_r = 8}},
	timedOre = 336008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 336001, monster_id = 25010501, pos = { x = 880.656, y = 315.106, z = -486.056 }, rot = { x = 0.000, y = 203.872, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 336002, monster_id = 25010601, pos = { x = 873.500, y = 316.776, z = -487.913 }, rot = { x = 0.000, y = 133.777, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 336003, monster_id = 25010201, pos = { x = 877.184, y = 316.142, z = -488.533 }, rot = { x = 0.000, y = 161.878, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 336004, monster_id = 25010201, pos = { x = 889.358, y = 310.664, z = -470.878 }, rot = { x = 0.000, y = 265.108, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 336005, monster_id = 25010201, pos = { x = 887.598, y = 311.006, z = -466.496 }, rot = { x = 0.000, y = 229.338, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 336006, monster_id = 25030301, pos = { x = 905.582, y = 306.225, z = -463.202 }, rot = { x = 0.000, y = 211.890, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 336007, monster_id = 25060101, pos = { x = 887.646, y = 310.565, z = -469.247 }, rot = { x = 0.000, y = 241.366, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 随位置龙血结晶创生器
	{ config_id = 336008, gadget_id = 70360127, pos = { x = 898.370, y = 308.387, z = -466.987 }, rot = { x = 0.000, y = 145.080, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 雪山活动开关
	{ config_id = 336009, gadget_id = 70360128, pos = { x = 876.386, y = 319.391, z = -507.244 }, rot = { x = 0.000, y = 145.080, z = 0.000 }, level = 1, area_id = 10 },
	-- 领奖台
	{ config_id = 336010, gadget_id = 70210113, pos = { x = 910.582, y = 305.315, z = -463.541 }, rot = { x = 0.000, y = 260.431, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 10 },
	{ config_id = 336011, gadget_id = 70360105, pos = { x = 882.292, y = 301.077, z = -467.499 }, rot = { x = 0.000, y = 145.080, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 336012, gadget_id = 70720214, pos = { x = 876.760, y = 319.269, z = -508.880 }, rot = { x = 0.000, y = 145.080, z = 0.000 }, level = 1, route_id = 310500107, area_id = 10 },
	{ config_id = 336013, gadget_id = 70720215, pos = { x = 908.534, y = 305.458, z = -462.924 }, rot = { x = 0.000, y = 239.350, z = 0.000 }, level = 1, area_id = 10 },
	-- 路点1龙血结晶创生器
	{ config_id = 336014, gadget_id = 70360127, pos = { x = 876.244, y = 317.937, z = -496.169 }, rot = { x = 0.000, y = 145.080, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 路点2龙血结晶创生器
	{ config_id = 336015, gadget_id = 70360127, pos = { x = 878.729, y = 312.263, z = -474.777 }, rot = { x = 0.000, y = 145.080, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 路点3龙血结晶创生器
	{ config_id = 336016, gadget_id = 70360127, pos = { x = 898.370, y = 308.387, z = -466.987 }, rot = { x = 0.000, y = 145.080, z = 0.000 }, level = 1, persistent = true, area_id = 10 }
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
		{ config_id = 1336017, name = "CHALLENGE_SUCCESS_336017", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_336017" },
		{ config_id = 1336018, name = "ANY_MONSTER_DIE_336018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_336018", action = "action_EVENT_ANY_MONSTER_DIE_336018" },
		{ config_id = 1336019, name = "GADGET_CREATE_336019", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_336019", action = "action_EVENT_GADGET_CREATE_336019", trigger_count = 0 },
		{ config_id = 1336020, name = "GROUP_REFRESH_336020", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_336020" },
		{ config_id = 1336021, name = "BLOSSOM_CHEST_DIE_336021", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_336021", action = "action_EVENT_BLOSSOM_CHEST_DIE_336021", trigger_count = 0 },
		{ config_id = 1336022, name = "SELECT_OPTION_336022", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_336022", action = "action_EVENT_SELECT_OPTION_336022", trigger_count = 0 },
		{ config_id = 1336023, name = "PLATFORM_REACH_POINT_336023", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_336023", action = "action_EVENT_PLATFORM_REACH_POINT_336023" },
		{ config_id = 1336024, name = "BLOSSOM_PROGRESS_FINISH_336024", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_336024" },
		{ config_id = 1336025, name = "GROUP_LOAD_336025", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_336025" },
		{ config_id = 1336026, name = "PLATFORM_REACH_POINT_336026", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_336026", action = "action_EVENT_PLATFORM_REACH_POINT_336026" },
		{ config_id = 1336027, name = "PLATFORM_REACH_POINT_336027", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_336027", action = "action_EVENT_PLATFORM_REACH_POINT_336027", trigger_count = 0 },
		{ config_id = 1336028, name = "ANY_MONSTER_DIE_336028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_336028", action = "action_EVENT_ANY_MONSTER_DIE_336028" },
		{ config_id = 1336029, name = "ANY_MONSTER_DIE_336029", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_336029", action = "action_EVENT_ANY_MONSTER_DIE_336029" },
		{ config_id = 1336030, name = "PLATFORM_REACH_POINT_336030", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_336030", action = "action_EVENT_PLATFORM_REACH_POINT_336030" },
		{ config_id = 1336031, name = "GADGET_CREATE_336031", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_336031", action = "action_EVENT_GADGET_CREATE_336031" }
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
		gadgets = { 336009, 336012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪物,
		monsters = { 336001, 336002, 336003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = GadgetSuite,
		monsters = { },
		gadgets = { 336011, 336013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二波怪物,
		monsters = { 336004, 336005, 336007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波怪物,
		monsters = { 336006 },
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
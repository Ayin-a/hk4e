-- 基础信息
local base_info = {
	group_id = 133008422
}

-- Trigger变量
local defs = {
	operator = 422010,
	blossom_chest = 422011,
	platform = 422013,
	ice_storm = 422012,
	route_info = {{route_id = 300800099, point_id = 6, gadget = 422007},{route_id = 300800099, point_id = 14, gadget = 422009},{route_id = 300800099, point_id = 24, gadget = 422033}},
	final_info = {route_id = 300800100, point_id = 2},
	seelie_base = 422014,
	reminder_pos = {x=1064,y=349,z=-1054},
	challenge = {{id = 58, weight = 25, temp_r = 5 },{id = 59, weight = 25, temp_r = 6 }, {id = 60, weight = 25, temp_r = 7 }, {id = 61, weight = 25, temp_r = 8}},
	timedOre = 422020
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 422001, monster_id = 25030201, pos = { x = 1058.718, y = 350.320, z = -1049.940 }, rot = { x = 0.000, y = 116.701, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 422002, monster_id = 25010201, pos = { x = 1083.748, y = 346.037, z = -1071.135 }, rot = { x = 0.000, y = 96.070, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 422003, monster_id = 25060101, pos = { x = 1083.149, y = 346.349, z = -1073.534 }, rot = { x = 0.000, y = 69.881, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 422004, monster_id = 25010601, pos = { x = 1075.773, y = 348.760, z = -1059.561 }, rot = { x = 0.000, y = 155.136, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 422005, monster_id = 25010501, pos = { x = 1072.394, y = 348.957, z = -1062.997 }, rot = { x = 0.000, y = 75.972, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 422008, monster_id = 25070101, pos = { x = 1057.427, y = 350.311, z = -1051.766 }, rot = { x = 0.000, y = 116.701, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 路点1龙血结晶创生器
	{ config_id = 422007, gadget_id = 70360127, pos = { x = 1089.253, y = 345.314, z = -1073.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 路点2龙血结晶创生器
	{ config_id = 422009, gadget_id = 70360127, pos = { x = 1078.911, y = 347.786, z = -1065.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 雪山活动开关
	{ config_id = 422010, gadget_id = 70360128, pos = { x = 1098.795, y = 345.404, z = -1067.554 }, rot = { x = 0.000, y = 249.910, z = 0.000 }, level = 1, area_id = 10 },
	-- 领奖台
	{ config_id = 422011, gadget_id = 70210113, pos = { x = 1043.186, y = 349.138, z = -1040.019 }, rot = { x = 0.000, y = 81.218, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 10 },
	{ config_id = 422012, gadget_id = 70360105, pos = { x = 1064.469, y = 349.698, z = -1054.883 }, rot = { x = 3.249, y = 359.836, z = 354.223 }, level = 1, area_id = 10 },
	{ config_id = 422013, gadget_id = 70720214, pos = { x = 1101.162, y = 344.656, z = -1067.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 300800098, area_id = 10 },
	{ config_id = 422014, gadget_id = 70720215, pos = { x = 1047.109, y = 349.264, z = -1040.031 }, rot = { x = 0.000, y = 134.474, z = 0.000 }, level = 1, area_id = 10 },
	-- 随位置龙血结晶创生器
	{ config_id = 422020, gadget_id = 70360127, pos = { x = 1063.781, y = 350.130, z = -1054.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 路点3龙血结晶创生器
	{ config_id = 422033, gadget_id = 70360127, pos = { x = 1063.781, y = 350.130, z = -1054.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 }
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
		{ config_id = 1422006, name = "PLATFORM_REACH_POINT_422006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_422006", action = "action_EVENT_PLATFORM_REACH_POINT_422006" },
		{ config_id = 1422015, name = "ANY_MONSTER_DIE_422015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_422015", action = "action_EVENT_ANY_MONSTER_DIE_422015" },
		{ config_id = 1422016, name = "GADGET_CREATE_422016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_422016", action = "action_EVENT_GADGET_CREATE_422016", trigger_count = 0 },
		{ config_id = 1422017, name = "GROUP_REFRESH_422017", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_422017" },
		{ config_id = 1422018, name = "BLOSSOM_CHEST_DIE_422018", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_422018", action = "action_EVENT_BLOSSOM_CHEST_DIE_422018", trigger_count = 0 },
		{ config_id = 1422019, name = "SELECT_OPTION_422019", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_422019", action = "action_EVENT_SELECT_OPTION_422019", trigger_count = 0 },
		{ config_id = 1422021, name = "BLOSSOM_PROGRESS_FINISH_422021", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_422021" },
		{ config_id = 1422022, name = "GROUP_LOAD_422022", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_422022" },
		{ config_id = 1422023, name = "ANY_MONSTER_DIE_422023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_422023", action = "action_EVENT_ANY_MONSTER_DIE_422023" },
		{ config_id = 1422024, name = "ANY_MONSTER_DIE_422024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_422024", action = "action_EVENT_ANY_MONSTER_DIE_422024" },
		{ config_id = 1422025, name = "PLATFORM_REACH_POINT_422025", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_422025", action = "action_EVENT_PLATFORM_REACH_POINT_422025" },
		{ config_id = 1422026, name = "GADGET_CREATE_422026", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_422026", action = "action_EVENT_GADGET_CREATE_422026" },
		{ config_id = 1422030, name = "PLATFORM_REACH_POINT_422030", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_422030", action = "action_EVENT_PLATFORM_REACH_POINT_422030" },
		{ config_id = 1422031, name = "PLATFORM_REACH_POINT_422031", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_422031", action = "action_EVENT_PLATFORM_REACH_POINT_422031", trigger_count = 0 },
		{ config_id = 1422032, name = "CHALLENGE_SUCCESS_422032", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_422032" },
		{ config_id = 1422034, name = "CHALLENGE_FAIL_422034", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_422034", trigger_count = 0 }
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
		gadgets = { 422010, 422013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪物,
		monsters = { 422002, 422003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = GadgetSuite,
		monsters = { },
		gadgets = { 422012, 422014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二波怪物,
		monsters = { 422004, 422005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波怪物,
		monsters = { 422001, 422008 },
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
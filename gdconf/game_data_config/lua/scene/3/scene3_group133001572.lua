-- 基础信息
local base_info = {
	group_id = 133001572
}

-- Trigger变量
local defs = {
	operator = 572009,
	blossom_chest = 572010,
	platform = 572012,
	ice_storm = 572011,
	route_info = {{route_id = 300100271, point_id = 6, gadget = 572007},{route_id = 300100271, point_id = 14, gadget = 572008},{route_id = 300100271, point_id = 24, gadget = 572015}},
	final_info = {route_id = 300100272, point_id = 6},
	seelie_base = 572013,
	reminder_pos = {x=1064,y=349,z=-1054},
	challenge = {{id = 58, weight = 25, temp_r = 5 },{id = 59, weight = 25, temp_r = 6 }, {id = 60, weight = 25, temp_r = 7 }, {id = 61, weight = 25, temp_r = 8}},
	timedOre = 572014
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 572001, monster_id = 25030201, pos = { x = 1058.718, y = 350.320, z = -1049.940 }, rot = { x = 0.000, y = 116.701, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 572002, monster_id = 25010201, pos = { x = 1083.748, y = 346.037, z = -1071.135 }, rot = { x = 0.000, y = 96.070, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 572003, monster_id = 25060101, pos = { x = 1083.149, y = 346.349, z = -1073.534 }, rot = { x = 0.000, y = 69.881, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 572004, monster_id = 25010601, pos = { x = 1075.773, y = 348.760, z = -1059.561 }, rot = { x = 0.000, y = 155.136, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 572005, monster_id = 25010501, pos = { x = 1072.394, y = 348.957, z = -1062.997 }, rot = { x = 0.000, y = 75.972, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 572006, monster_id = 25070101, pos = { x = 1057.427, y = 350.311, z = -1051.766 }, rot = { x = 0.000, y = 116.701, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 路点1龙血结晶创生器
	{ config_id = 572007, gadget_id = 70360127, pos = { x = 1089.253, y = 345.314, z = -1073.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 路点2龙血结晶创生器
	{ config_id = 572008, gadget_id = 70360127, pos = { x = 1078.911, y = 347.786, z = -1065.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 雪山活动开关
	{ config_id = 572009, gadget_id = 70360128, pos = { x = 1098.795, y = 345.404, z = -1067.554 }, rot = { x = 0.000, y = 249.910, z = 0.000 }, level = 1, area_id = 10 },
	-- 领奖台
	{ config_id = 572010, gadget_id = 70210113, pos = { x = 1043.186, y = 349.138, z = -1040.019 }, rot = { x = 0.000, y = 81.218, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 10 },
	{ config_id = 572011, gadget_id = 70360105, pos = { x = 1064.469, y = 349.698, z = -1054.883 }, rot = { x = 3.249, y = 359.836, z = 354.223 }, level = 1, area_id = 10 },
	{ config_id = 572012, gadget_id = 70720214, pos = { x = 1100.897, y = 344.572, z = -1067.905 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 300100270, area_id = 10 },
	{ config_id = 572013, gadget_id = 70720215, pos = { x = 1047.109, y = 349.264, z = -1040.031 }, rot = { x = 0.000, y = 134.474, z = 0.000 }, level = 1, area_id = 10 },
	-- 随位置龙血结晶创生器
	{ config_id = 572014, gadget_id = 70360127, pos = { x = 1063.781, y = 350.130, z = -1054.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 },
	-- 路点3龙血结晶创生器
	{ config_id = 572015, gadget_id = 70360127, pos = { x = 1063.781, y = 350.130, z = -1054.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 10 }
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
		{ config_id = 1572016, name = "PLATFORM_REACH_POINT_572016", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_572016", action = "action_EVENT_PLATFORM_REACH_POINT_572016" },
		{ config_id = 1572017, name = "ANY_MONSTER_DIE_572017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_572017", action = "action_EVENT_ANY_MONSTER_DIE_572017" },
		{ config_id = 1572018, name = "GADGET_CREATE_572018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_572018", action = "action_EVENT_GADGET_CREATE_572018", trigger_count = 0 },
		{ config_id = 1572019, name = "GROUP_REFRESH_572019", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_572019" },
		{ config_id = 1572020, name = "BLOSSOM_CHEST_DIE_572020", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_572020", action = "action_EVENT_BLOSSOM_CHEST_DIE_572020", trigger_count = 0 },
		{ config_id = 1572021, name = "SELECT_OPTION_572021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_572021", action = "action_EVENT_SELECT_OPTION_572021", trigger_count = 0 },
		{ config_id = 1572022, name = "BLOSSOM_PROGRESS_FINISH_572022", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_572022" },
		{ config_id = 1572023, name = "GROUP_LOAD_572023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_572023" },
		{ config_id = 1572024, name = "ANY_MONSTER_DIE_572024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_572024", action = "action_EVENT_ANY_MONSTER_DIE_572024" },
		{ config_id = 1572025, name = "ANY_MONSTER_DIE_572025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_572025", action = "action_EVENT_ANY_MONSTER_DIE_572025" },
		{ config_id = 1572026, name = "PLATFORM_REACH_POINT_572026", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_572026", action = "action_EVENT_PLATFORM_REACH_POINT_572026" },
		{ config_id = 1572027, name = "GADGET_CREATE_572027", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_572027", action = "action_EVENT_GADGET_CREATE_572027" },
		{ config_id = 1572028, name = "PLATFORM_REACH_POINT_572028", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_572028", action = "action_EVENT_PLATFORM_REACH_POINT_572028" },
		{ config_id = 1572029, name = "PLATFORM_REACH_POINT_572029", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_572029", action = "action_EVENT_PLATFORM_REACH_POINT_572029", trigger_count = 0 },
		{ config_id = 1572030, name = "CHALLENGE_SUCCESS_572030", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_572030" },
		{ config_id = 1572031, name = "CHALLENGE_FAIL_572031", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_572031", trigger_count = 0 }
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
		gadgets = { 572009, 572012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪物,
		monsters = { 572002, 572003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = GadgetSuite,
		monsters = { },
		gadgets = { 572011, 572013 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二波怪物,
		monsters = { 572004, 572005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波怪物,
		monsters = { 572001, 572006 },
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
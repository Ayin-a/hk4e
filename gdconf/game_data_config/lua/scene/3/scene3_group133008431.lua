-- 基础信息
local base_info = {
	group_id = 133008431
}

-- Trigger变量
local defs = {
	operator = 431009,
	blossom_chest = 431010,
	ice_storm = 431011,
	gadget_list = {{s = 431015, t = 431012},{s = 431016, t = 431013},{s = 431017, t = 431014}},
	reminder_pos = {x=1415,y=282,z=-1031},
	challenge = {{id = 58, weight = 25, temp_r = 5 },{id = 59, weight = 25, temp_r = 6 }, {id = 60, weight = 25, temp_r = 7 }, {id = 61, weight = 25, temp_r = 8}}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 431001, monster_id = 21010901, pos = { x = 1412.981, y = 282.926, z = -1028.594 }, rot = { x = 0.000, y = 59.047, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 431002, monster_id = 21011401, pos = { x = 1411.445, y = 283.548, z = -1027.900 }, rot = { x = 0.000, y = 86.255, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 431003, monster_id = 21011401, pos = { x = 1412.864, y = 283.680, z = -1025.248 }, rot = { x = 0.000, y = 109.945, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 431004, monster_id = 21011401, pos = { x = 1415.568, y = 283.402, z = -1035.946 }, rot = { x = 0.000, y = 298.840, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 431005, monster_id = 21011401, pos = { x = 1410.825, y = 283.370, z = -1032.627 }, rot = { x = 0.000, y = 128.233, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 431006, monster_id = 21030501, pos = { x = 1412.828, y = 283.775, z = -1036.516 }, rot = { x = 0.000, y = 7.536, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 431007, monster_id = 21011301, pos = { x = 1412.559, y = 283.349, z = -1026.856 }, rot = { x = 0.000, y = 88.246, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 431008, monster_id = 22010201, pos = { x = 1418.243, y = 282.415, z = -1032.336 }, rot = { x = 0.000, y = 71.147, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 431031, monster_id = 21011301, pos = { x = 1411.015, y = 283.729, z = -1035.620 }, rot = { x = 0.000, y = 43.589, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 雪山活动开启机关
	{ config_id = 431009, gadget_id = 70360128, pos = { x = 1415.846, y = 282.619, z = -1031.787 }, rot = { x = 0.000, y = 43.589, z = 0.000 }, level = 1, area_id = 10 },
	-- 领奖台
	{ config_id = 431010, gadget_id = 70210113, pos = { x = 1415.814, y = 282.474, z = -1031.709 }, rot = { x = 0.000, y = 52.790, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 10 },
	{ config_id = 431011, gadget_id = 70360105, pos = { x = 1415.846, y = 278.877, z = -1031.787 }, rot = { x = 0.000, y = 43.589, z = 0.000 }, level = 1, area_id = 10 },
	-- 热源A
	{ config_id = 431012, gadget_id = 70310017, pos = { x = 1412.847, y = 283.086, z = -1034.365 }, rot = { x = 0.000, y = 43.589, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源B
	{ config_id = 431013, gadget_id = 70310017, pos = { x = 1419.922, y = 282.099, z = -1032.135 }, rot = { x = 0.000, y = 43.589, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源C
	{ config_id = 431014, gadget_id = 70310017, pos = { x = 1415.068, y = 282.277, z = -1027.029 }, rot = { x = 0.000, y = 43.589, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源A嘲讽外壳
	{ config_id = 431015, gadget_id = 70310021, pos = { x = 1412.847, y = 283.086, z = -1034.365 }, rot = { x = 0.000, y = 43.589, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源B嘲讽外壳
	{ config_id = 431016, gadget_id = 70310021, pos = { x = 1412.847, y = 283.086, z = -1034.365 }, rot = { x = 0.000, y = 43.589, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源C嘲讽外壳
	{ config_id = 431017, gadget_id = 70310021, pos = { x = 1415.068, y = 282.277, z = -1027.029 }, rot = { x = 0.000, y = 43.589, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false },
	{ config_id = 2, name = "remainingHeat", value = 3, no_refresh = false }
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1431018, name = "GADGET_CREATE_431018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_431018", action = "action_EVENT_GADGET_CREATE_431018", trigger_count = 0 },
		{ config_id = 1431019, name = "GROUP_REFRESH_431019", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_431019" },
		{ config_id = 1431020, name = "BLOSSOM_CHEST_DIE_431020", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_431020", action = "action_EVENT_BLOSSOM_CHEST_DIE_431020", trigger_count = 0 },
		{ config_id = 1431021, name = "SELECT_OPTION_431021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_431021", action = "action_EVENT_SELECT_OPTION_431021", trigger_count = 0 },
		{ config_id = 1431022, name = "BLOSSOM_PROGRESS_FINISH_431022", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_431022" },
		{ config_id = 1431023, name = "GROUP_LOAD_431023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_431023" },
		{ config_id = 1431024, name = "ANY_GADGET_DIE_431024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_431024", action = "action_EVENT_ANY_GADGET_DIE_431024" },
		{ config_id = 1431025, name = "ANY_GADGET_DIE_431025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_431025", action = "action_EVENT_ANY_GADGET_DIE_431025" },
		{ config_id = 1431026, name = "ANY_GADGET_DIE_431026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_431026", action = "action_EVENT_ANY_GADGET_DIE_431026" },
		{ config_id = 1431027, name = "ANY_MONSTER_DIE_431027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_431027", action = "action_EVENT_ANY_MONSTER_DIE_431027" },
		{ config_id = 1431028, name = "ANY_MONSTER_DIE_431028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_431028", action = "action_EVENT_ANY_MONSTER_DIE_431028" },
		{ config_id = 1431029, name = "GADGET_CREATE_431029", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_431029", action = "action_EVENT_GADGET_CREATE_431029" },
		{ config_id = 1431030, name = "ANY_MONSTER_DIE_431030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_431030", action = "action_EVENT_ANY_MONSTER_DIE_431030" },
		{ config_id = 1431033, name = "CHALLENGE_SUCCESS_431033", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_431033" },
		{ config_id = 1431034, name = "CHALLENGE_FAIL_431034", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_431034", trigger_count = 0 }
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
		gadgets = { 431009, 431012, 431013, 431014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪物,
		monsters = { 431001, 431002, 431003, 431007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = GadgetSuite,
		monsters = { },
		gadgets = { 431011, 431015, 431016, 431017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二波怪物,
		monsters = { 431004, 431005, 431006, 431031 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波怪物,
		monsters = { 431008 },
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

require "DragonSpineBlossomA"
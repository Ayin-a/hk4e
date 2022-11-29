-- 基础信息
local base_info = {
	group_id = 133008432
}

-- Trigger变量
local defs = {
	operator = 432009,
	blossom_chest = 432010,
	ice_storm = 432011,
	gadget_list = {{s = 432015, t = 432012},{s = 432016, t = 432013},{s = 432017, t = 432014}},
	reminder_pos = {x=1328,y=289,z=-1013},
	challenge = {{id = 58, weight = 25, temp_r = 5 },{id = 59, weight = 25, temp_r = 6 }, {id = 60, weight = 25, temp_r = 7 }, {id = 61, weight = 25, temp_r = 8}}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 432001, monster_id = 20010801, pos = { x = 1363.094, y = 289.566, z = -1008.317 }, rot = { x = 0.000, y = 202.050, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 432002, monster_id = 20010801, pos = { x = 1364.052, y = 289.534, z = -1008.823 }, rot = { x = 0.000, y = 267.313, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 432003, monster_id = 20010801, pos = { x = 1363.938, y = 289.451, z = -1010.626 }, rot = { x = 0.000, y = 313.882, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 432004, monster_id = 20010901, pos = { x = 1352.778, y = 290.851, z = -1005.602 }, rot = { x = 0.000, y = 105.619, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 432005, monster_id = 20010501, pos = { x = 1353.944, y = 290.680, z = -1004.813 }, rot = { x = 0.000, y = 155.230, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 432006, monster_id = 20010601, pos = { x = 1355.530, y = 290.389, z = -1004.551 }, rot = { x = 0.000, y = 184.670, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 432007, monster_id = 20010801, pos = { x = 1362.152, y = 289.551, z = -1008.041 }, rot = { x = 0.000, y = 170.493, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 432008, monster_id = 26010101, pos = { x = 1360.024, y = 289.737, z = -1004.665 }, rot = { x = 0.000, y = 65.491, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 432031, monster_id = 20010801, pos = { x = 1357.337, y = 290.211, z = -1005.332 }, rot = { x = 0.000, y = 221.285, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 雪山活动开启机关
	{ config_id = 432009, gadget_id = 70360128, pos = { x = 1358.661, y = 289.946, z = -1007.899 }, rot = { x = 0.000, y = 3.357, z = 0.000 }, level = 1, area_id = 10 },
	-- 领奖台
	{ config_id = 432010, gadget_id = 70210113, pos = { x = 1358.661, y = 289.946, z = -1007.899 }, rot = { x = 0.000, y = 3.357, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 10 },
	{ config_id = 432011, gadget_id = 70360105, pos = { x = 1358.661, y = 289.946, z = -1007.899 }, rot = { x = 0.000, y = 3.357, z = 0.000 }, level = 1, area_id = 10 },
	-- 热源A
	{ config_id = 432012, gadget_id = 70310017, pos = { x = 1362.704, y = 289.498, z = -1009.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源B
	{ config_id = 432013, gadget_id = 70310017, pos = { x = 1354.654, y = 290.597, z = -1006.293 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源C
	{ config_id = 432014, gadget_id = 70310017, pos = { x = 1361.075, y = 289.862, z = -1002.890 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源A嘲讽外壳
	{ config_id = 432015, gadget_id = 70310021, pos = { x = 1362.709, y = 291.035, z = -1009.502 }, rot = { x = 0.000, y = 64.006, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源B嘲讽外壳
	{ config_id = 432016, gadget_id = 70310021, pos = { x = 1354.655, y = 292.119, z = -1006.291 }, rot = { x = 0.000, y = 75.664, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源C嘲讽外壳
	{ config_id = 432017, gadget_id = 70310021, pos = { x = 1361.075, y = 291.378, z = -1002.890 }, rot = { x = 0.000, y = 3.357, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
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
		{ config_id = 1432018, name = "GADGET_CREATE_432018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_432018", action = "action_EVENT_GADGET_CREATE_432018", trigger_count = 0 },
		{ config_id = 1432019, name = "GROUP_REFRESH_432019", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_432019" },
		{ config_id = 1432020, name = "BLOSSOM_CHEST_DIE_432020", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_432020", action = "action_EVENT_BLOSSOM_CHEST_DIE_432020", trigger_count = 0 },
		{ config_id = 1432021, name = "SELECT_OPTION_432021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_432021", action = "action_EVENT_SELECT_OPTION_432021", trigger_count = 0 },
		{ config_id = 1432022, name = "BLOSSOM_PROGRESS_FINISH_432022", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_432022" },
		{ config_id = 1432023, name = "GROUP_LOAD_432023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_432023" },
		{ config_id = 1432024, name = "ANY_GADGET_DIE_432024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_432024", action = "action_EVENT_ANY_GADGET_DIE_432024" },
		{ config_id = 1432025, name = "ANY_GADGET_DIE_432025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_432025", action = "action_EVENT_ANY_GADGET_DIE_432025" },
		{ config_id = 1432026, name = "ANY_GADGET_DIE_432026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_432026", action = "action_EVENT_ANY_GADGET_DIE_432026" },
		{ config_id = 1432027, name = "ANY_MONSTER_DIE_432027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_432027", action = "action_EVENT_ANY_MONSTER_DIE_432027" },
		{ config_id = 1432028, name = "ANY_MONSTER_DIE_432028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_432028", action = "action_EVENT_ANY_MONSTER_DIE_432028" },
		{ config_id = 1432029, name = "GADGET_CREATE_432029", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_432029", action = "action_EVENT_GADGET_CREATE_432029" },
		{ config_id = 1432030, name = "ANY_MONSTER_DIE_432030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_432030", action = "action_EVENT_ANY_MONSTER_DIE_432030" },
		{ config_id = 1432034, name = "CHALLENGE_SUCCESS_432034", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_432034" },
		{ config_id = 1432035, name = "CHALLENGE_FAIL_432035", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_432035", trigger_count = 0 }
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
		gadgets = { 432009, 432012, 432013, 432014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪物,
		monsters = { 432001, 432002, 432003, 432007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = GadgetSuite,
		monsters = { },
		gadgets = { 432011, 432015, 432016, 432017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二波怪物,
		monsters = { 432004, 432005, 432006, 432031 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波怪物,
		monsters = { 432008 },
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
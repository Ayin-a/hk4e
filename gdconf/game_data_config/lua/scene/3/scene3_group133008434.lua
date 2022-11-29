-- 基础信息
local base_info = {
	group_id = 133008434
}

-- Trigger变量
local defs = {
	operator = 434009,
	blossom_chest = 434010,
	ice_storm = 434011,
	gadget_list = {{s = 434015, t = 434012},{s = 434016, t = 434013},{s = 434017, t = 434014}},
	reminder_pos = {x=1508,y=266,z=-805},
	challenge = {{id = 58, weight = 25, temp_r = 5 },{id = 59, weight = 25, temp_r = 6 }, {id = 60, weight = 25, temp_r = 7 }, {id = 61, weight = 25, temp_r = 8}}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 434001, monster_id = 21011401, pos = { x = 1513.480, y = 267.514, z = -810.237 }, rot = { x = 0.000, y = 319.601, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 434002, monster_id = 21011401, pos = { x = 1514.031, y = 267.014, z = -808.414 }, rot = { x = 0.000, y = 279.408, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 434003, monster_id = 21030501, pos = { x = 1514.812, y = 267.394, z = -810.287 }, rot = { x = 0.000, y = 279.408, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 434004, monster_id = 20010901, pos = { x = 1503.702, y = 268.877, z = -810.190 }, rot = { x = 0.000, y = 40.455, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 434007, monster_id = 21011301, pos = { x = 1514.990, y = 266.942, z = -807.744 }, rot = { x = 0.000, y = 272.302, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 434008, monster_id = 23040101, pos = { x = 1510.867, y = 267.007, z = -802.935 }, rot = { x = 0.000, y = 7.280, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1021 }, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 雪山活动开启机关
	{ config_id = 434009, gadget_id = 70360128, pos = { x = 1508.931, y = 266.886, z = -805.616 }, rot = { x = 0.000, y = 253.245, z = 0.000 }, level = 1, area_id = 10 },
	-- 领奖台
	{ config_id = 434010, gadget_id = 70210113, pos = { x = 1508.931, y = 266.788, z = -805.616 }, rot = { x = 0.000, y = 253.245, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 10 },
	{ config_id = 434011, gadget_id = 70360105, pos = { x = 1508.931, y = 266.886, z = -805.616 }, rot = { x = 0.000, y = 253.245, z = 0.000 }, level = 1, area_id = 10 },
	-- 热源A
	{ config_id = 434012, gadget_id = 70310017, pos = { x = 1512.527, y = 267.233, z = -809.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源B
	{ config_id = 434013, gadget_id = 70310017, pos = { x = 1511.209, y = 266.924, z = -801.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源C
	{ config_id = 434014, gadget_id = 70310017, pos = { x = 1503.694, y = 267.617, z = -806.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源A嘲讽外壳
	{ config_id = 434015, gadget_id = 70310021, pos = { x = 1512.527, y = 267.233, z = -809.380 }, rot = { x = 0.000, y = 253.245, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源B嘲讽外壳
	{ config_id = 434016, gadget_id = 70310021, pos = { x = 1511.209, y = 266.924, z = -801.593 }, rot = { x = 0.000, y = 200.613, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源C嘲讽外壳
	{ config_id = 434017, gadget_id = 70310021, pos = { x = 1503.694, y = 267.604, z = -806.922 }, rot = { x = 0.000, y = 191.772, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
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
		{ config_id = 1434018, name = "GADGET_CREATE_434018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_434018", action = "action_EVENT_GADGET_CREATE_434018", trigger_count = 0 },
		{ config_id = 1434019, name = "GROUP_REFRESH_434019", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_434019" },
		{ config_id = 1434020, name = "BLOSSOM_CHEST_DIE_434020", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_434020", action = "action_EVENT_BLOSSOM_CHEST_DIE_434020", trigger_count = 0 },
		{ config_id = 1434021, name = "SELECT_OPTION_434021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_434021", action = "action_EVENT_SELECT_OPTION_434021", trigger_count = 0 },
		{ config_id = 1434022, name = "BLOSSOM_PROGRESS_FINISH_434022", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_434022" },
		{ config_id = 1434023, name = "GROUP_LOAD_434023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_434023" },
		{ config_id = 1434024, name = "ANY_GADGET_DIE_434024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_434024", action = "action_EVENT_ANY_GADGET_DIE_434024" },
		{ config_id = 1434025, name = "ANY_GADGET_DIE_434025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_434025", action = "action_EVENT_ANY_GADGET_DIE_434025" },
		{ config_id = 1434026, name = "ANY_GADGET_DIE_434026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_434026", action = "action_EVENT_ANY_GADGET_DIE_434026" },
		{ config_id = 1434027, name = "ANY_MONSTER_DIE_434027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_434027", action = "action_EVENT_ANY_MONSTER_DIE_434027" },
		{ config_id = 1434028, name = "ANY_MONSTER_DIE_434028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_434028", action = "action_EVENT_ANY_MONSTER_DIE_434028" },
		{ config_id = 1434029, name = "GADGET_CREATE_434029", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_434029", action = "action_EVENT_GADGET_CREATE_434029" },
		{ config_id = 1434030, name = "ANY_MONSTER_DIE_434030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_434030", action = "action_EVENT_ANY_MONSTER_DIE_434030" },
		{ config_id = 1434031, name = "CHALLENGE_SUCCESS_434031", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_434031" },
		{ config_id = 1434032, name = "CHALLENGE_FAIL_434032", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_434032", trigger_count = 0 }
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
		gadgets = { 434009, 434012, 434013, 434014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪物,
		monsters = { 434001, 434002, 434007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = GadgetSuite,
		monsters = { },
		gadgets = { 434011, 434015, 434016, 434017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二波怪物,
		monsters = { 434003, 434004 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波怪物,
		monsters = { 434008 },
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
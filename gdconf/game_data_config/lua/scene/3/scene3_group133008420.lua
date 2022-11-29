-- 基础信息
local base_info = {
	group_id = 133008420
}

-- Trigger变量
local defs = {
	operator = 420009,
	blossom_chest = 420010,
	ice_storm = 420011,
	gadget_list = {{s = 420015, t = 420012},{s = 420016, t = 420013},{s = 420017, t = 420014}},
	reminder_pos = {x=1442,y=277,z=-1027},
	challenge = {{id = 58, weight = 25, temp_r = 5 },{id = 59, weight = 25, temp_r = 6 }, {id = 60, weight = 25, temp_r = 7 }, {id = 61, weight = 25, temp_r = 8}}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 420001, monster_id = 25010601, pos = { x = 1450.082, y = 280.206, z = -1016.415 }, rot = { x = 0.000, y = 190.860, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 420002, monster_id = 25010201, pos = { x = 1450.012, y = 276.931, z = -1024.598 }, rot = { x = 0.000, y = 313.358, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 420003, monster_id = 25010501, pos = { x = 1452.399, y = 279.853, z = -1016.179 }, rot = { x = 0.000, y = 220.215, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 420004, monster_id = 25070101, pos = { x = 1425.981, y = 280.802, z = -1027.307 }, rot = { x = 0.000, y = 79.537, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 420005, monster_id = 25060101, pos = { x = 1427.736, y = 280.508, z = -1028.210 }, rot = { x = 0.000, y = 74.840, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 420006, monster_id = 25070101, pos = { x = 1440.648, y = 277.996, z = -1037.212 }, rot = { x = 0.000, y = 48.806, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 420007, monster_id = 25010201, pos = { x = 1451.977, y = 277.317, z = -1022.476 }, rot = { x = 0.000, y = 305.190, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 420008, monster_id = 25030201, pos = { x = 1444.574, y = 277.133, z = -1038.788 }, rot = { x = 0.000, y = 351.171, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 雪山活动开启机关
	{ config_id = 420009, gadget_id = 70360128, pos = { x = 1442.766, y = 277.823, z = -1027.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 领奖台
	{ config_id = 420010, gadget_id = 70210113, pos = { x = 1442.766, y = 277.626, z = -1027.606 }, rot = { x = 0.000, y = 123.227, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 10 },
	{ config_id = 420011, gadget_id = 70360105, pos = { x = 1442.766, y = 277.823, z = -1027.606 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 热源A
	{ config_id = 420012, gadget_id = 70310017, pos = { x = 1433.212, y = 279.286, z = -1027.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源B
	{ config_id = 420013, gadget_id = 70310017, pos = { x = 1445.233, y = 277.516, z = -1036.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源C
	{ config_id = 420014, gadget_id = 70310017, pos = { x = 1451.945, y = 278.424, z = -1018.298 }, rot = { x = 0.000, y = 323.898, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源A嘲讽外壳
	{ config_id = 420015, gadget_id = 70310021, pos = { x = 1433.212, y = 279.286, z = -1027.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源B嘲讽外壳
	{ config_id = 420016, gadget_id = 70310021, pos = { x = 1445.233, y = 277.516, z = -1036.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源C嘲讽外壳
	{ config_id = 420017, gadget_id = 70310021, pos = { x = 1451.945, y = 278.424, z = -1018.298 }, rot = { x = 0.000, y = 323.898, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
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
		{ config_id = 1420018, name = "GADGET_CREATE_420018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_420018", action = "action_EVENT_GADGET_CREATE_420018", trigger_count = 0 },
		{ config_id = 1420019, name = "GROUP_REFRESH_420019", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_420019" },
		{ config_id = 1420020, name = "BLOSSOM_CHEST_DIE_420020", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_420020", action = "action_EVENT_BLOSSOM_CHEST_DIE_420020", trigger_count = 0 },
		{ config_id = 1420021, name = "SELECT_OPTION_420021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_420021", action = "action_EVENT_SELECT_OPTION_420021", trigger_count = 0 },
		{ config_id = 1420022, name = "BLOSSOM_PROGRESS_FINISH_420022", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_420022" },
		{ config_id = 1420023, name = "GROUP_LOAD_420023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_420023" },
		{ config_id = 1420024, name = "ANY_GADGET_DIE_420024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_420024", action = "action_EVENT_ANY_GADGET_DIE_420024" },
		{ config_id = 1420025, name = "ANY_GADGET_DIE_420025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_420025", action = "action_EVENT_ANY_GADGET_DIE_420025" },
		{ config_id = 1420026, name = "ANY_GADGET_DIE_420026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_420026", action = "action_EVENT_ANY_GADGET_DIE_420026" },
		{ config_id = 1420027, name = "ANY_MONSTER_DIE_420027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_420027", action = "action_EVENT_ANY_MONSTER_DIE_420027" },
		{ config_id = 1420028, name = "ANY_MONSTER_DIE_420028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_420028", action = "action_EVENT_ANY_MONSTER_DIE_420028" },
		{ config_id = 1420029, name = "GADGET_CREATE_420029", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_420029", action = "action_EVENT_GADGET_CREATE_420029" },
		{ config_id = 1420030, name = "ANY_MONSTER_DIE_420030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_420030", action = "action_EVENT_ANY_MONSTER_DIE_420030" },
		{ config_id = 1420033, name = "CHALLENGE_SUCCESS_420033", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_420033" },
		{ config_id = 1420034, name = "CHALLENGE_FAIL_420034", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_420034", trigger_count = 0 }
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
		gadgets = { 420009, 420012, 420013, 420014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪物,
		monsters = { 420001, 420002, 420003, 420007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = GadgetSuite,
		monsters = { },
		gadgets = { 420011, 420015, 420016, 420017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二波怪物,
		monsters = { 420004, 420005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波怪物,
		monsters = { 420006, 420008 },
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
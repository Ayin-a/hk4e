-- 基础信息
local base_info = {
	group_id = 133008421
}

-- Trigger变量
local defs = {
	operator = 421009,
	blossom_chest = 421010,
	ice_storm = 421011,
	gadget_list = {{s = 421015, t = 421012},{s = 421016, t = 421013},{s = 421017, t = 421014}},
	reminder_pos = {x=1555,y=269,z=-912},
	challenge = {{id = 58, weight = 25, temp_r = 5 },{id = 59, weight = 25, temp_r = 6 }, {id = 60, weight = 25, temp_r = 7 }, {id = 61, weight = 25, temp_r = 8}}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 421001, monster_id = 20010801, pos = { x = 1560.054, y = 268.276, z = -904.838 }, rot = { x = 0.000, y = 84.009, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 421002, monster_id = 20010801, pos = { x = 1562.642, y = 268.259, z = -907.161 }, rot = { x = 0.000, y = 345.571, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 421003, monster_id = 21011401, pos = { x = 1566.301, y = 268.003, z = -903.926 }, rot = { x = 0.000, y = 252.745, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 421004, monster_id = 21010901, pos = { x = 1564.506, y = 271.792, z = -921.530 }, rot = { x = 0.000, y = 283.794, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 421005, monster_id = 21011001, pos = { x = 1562.429, y = 270.745, z = -921.274 }, rot = { x = 0.000, y = 304.311, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 421006, monster_id = 21010901, pos = { x = 1565.587, y = 271.855, z = -920.266 }, rot = { x = 0.000, y = 295.757, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 421007, monster_id = 21011401, pos = { x = 1565.322, y = 267.974, z = -901.795 }, rot = { x = 0.000, y = 222.972, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 421008, monster_id = 22010201, pos = { x = 1556.801, y = 268.754, z = -914.516 }, rot = { x = 0.000, y = 27.558, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 421031, monster_id = 21030301, pos = { x = 1548.495, y = 271.132, z = -916.363 }, rot = { x = 0.000, y = 75.229, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1031 }, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 雪山活动开启机关
	{ config_id = 421009, gadget_id = 70360128, pos = { x = 1555.784, y = 269.140, z = -912.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 领奖台
	{ config_id = 421010, gadget_id = 70210113, pos = { x = 1555.784, y = 269.015, z = -912.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 10 },
	{ config_id = 421011, gadget_id = 70360105, pos = { x = 1555.784, y = 269.140, z = -912.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 热源A
	{ config_id = 421012, gadget_id = 70310017, pos = { x = 1561.801, y = 268.231, z = -917.173 }, rot = { x = 0.000, y = 319.957, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源B
	{ config_id = 421013, gadget_id = 70310017, pos = { x = 1561.694, y = 268.302, z = -905.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源C
	{ config_id = 421014, gadget_id = 70310017, pos = { x = 1546.168, y = 271.548, z = -912.618 }, rot = { x = 0.000, y = 344.744, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源A嘲讽外壳
	{ config_id = 421015, gadget_id = 70310021, pos = { x = 1561.801, y = 268.231, z = -917.173 }, rot = { x = 0.000, y = 319.957, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源B嘲讽外壳
	{ config_id = 421016, gadget_id = 70310021, pos = { x = 1561.694, y = 268.302, z = -905.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源C嘲讽外壳
	{ config_id = 421017, gadget_id = 70310021, pos = { x = 1546.168, y = 271.548, z = -912.618 }, rot = { x = 0.000, y = 344.744, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
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
		{ config_id = 1421018, name = "GADGET_CREATE_421018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_421018", action = "action_EVENT_GADGET_CREATE_421018", trigger_count = 0 },
		{ config_id = 1421019, name = "GROUP_REFRESH_421019", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_421019" },
		{ config_id = 1421020, name = "BLOSSOM_CHEST_DIE_421020", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_421020", action = "action_EVENT_BLOSSOM_CHEST_DIE_421020", trigger_count = 0 },
		{ config_id = 1421021, name = "SELECT_OPTION_421021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_421021", action = "action_EVENT_SELECT_OPTION_421021", trigger_count = 0 },
		{ config_id = 1421022, name = "BLOSSOM_PROGRESS_FINISH_421022", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_421022" },
		{ config_id = 1421023, name = "GROUP_LOAD_421023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_421023" },
		{ config_id = 1421024, name = "ANY_GADGET_DIE_421024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_421024", action = "action_EVENT_ANY_GADGET_DIE_421024" },
		{ config_id = 1421025, name = "ANY_GADGET_DIE_421025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_421025", action = "action_EVENT_ANY_GADGET_DIE_421025" },
		{ config_id = 1421026, name = "ANY_GADGET_DIE_421026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_421026", action = "action_EVENT_ANY_GADGET_DIE_421026" },
		{ config_id = 1421027, name = "ANY_MONSTER_DIE_421027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_421027", action = "action_EVENT_ANY_MONSTER_DIE_421027" },
		{ config_id = 1421028, name = "ANY_MONSTER_DIE_421028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_421028", action = "action_EVENT_ANY_MONSTER_DIE_421028" },
		{ config_id = 1421029, name = "GADGET_CREATE_421029", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_421029", action = "action_EVENT_GADGET_CREATE_421029" },
		{ config_id = 1421030, name = "ANY_MONSTER_DIE_421030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_421030", action = "action_EVENT_ANY_MONSTER_DIE_421030" },
		{ config_id = 1421033, name = "CHALLENGE_SUCCESS_421033", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_421033" },
		{ config_id = 1421034, name = "CHALLENGE_FAIL_421034", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_421034", trigger_count = 0 }
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
		gadgets = { 421009, 421012, 421013, 421014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪物,
		monsters = { 421001, 421002, 421003, 421007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = GadgetSuite,
		monsters = { },
		gadgets = { 421011, 421015, 421016, 421017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二波怪物,
		monsters = { 421004, 421005, 421006, 421031 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波怪物,
		monsters = { 421008 },
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
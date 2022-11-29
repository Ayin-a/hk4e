-- 基础信息
local base_info = {
	group_id = 133008433
}

-- Trigger变量
local defs = {
	operator = 433009,
	blossom_chest = 433010,
	ice_storm = 433011,
	gadget_list = {{s = 433015, t = 433012},{s = 433016, t = 433013},{s = 433017, t = 433014}},
	reminder_pos = {x=1431,y=266,z=-1111},
	challenge = {{id = 58, weight = 25, temp_r = 5 },{id = 59, weight = 25, temp_r = 6 }, {id = 60, weight = 25, temp_r = 7 }, {id = 61, weight = 25, temp_r = 8}}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 433001, monster_id = 25010601, pos = { x = 1425.831, y = 266.862, z = -1115.799 }, rot = { x = 0.000, y = 277.528, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 433002, monster_id = 25010201, pos = { x = 1423.631, y = 267.085, z = -1113.454 }, rot = { x = 0.000, y = 173.285, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 433003, monster_id = 20011401, pos = { x = 1428.326, y = 266.693, z = -1114.302 }, rot = { x = 0.000, y = 42.364, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 433004, monster_id = 25030201, pos = { x = 1439.837, y = 266.780, z = -1119.508 }, rot = { x = 0.000, y = 323.584, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 433005, monster_id = 25010601, pos = { x = 1437.315, y = 266.562, z = -1115.628 }, rot = { x = 0.000, y = 149.369, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 433007, monster_id = 20011401, pos = { x = 1429.591, y = 266.702, z = -1115.493 }, rot = { x = 0.000, y = 12.022, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 433008, monster_id = 20011501, pos = { x = 1429.288, y = 266.630, z = -1114.202 }, rot = { x = 0.000, y = 30.495, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 433031, monster_id = 20011501, pos = { x = 1430.210, y = 266.613, z = -1114.527 }, rot = { x = 0.000, y = 5.185, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 雪山活动开启机关
	{ config_id = 433009, gadget_id = 70360128, pos = { x = 1431.763, y = 266.415, z = -1111.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 领奖台
	{ config_id = 433010, gadget_id = 70210113, pos = { x = 1431.763, y = 266.415, z = -1111.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 10 },
	{ config_id = 433011, gadget_id = 70360105, pos = { x = 1431.763, y = 266.415, z = -1111.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 热源A
	{ config_id = 433012, gadget_id = 70310017, pos = { x = 1423.780, y = 266.868, z = -1115.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源B
	{ config_id = 433013, gadget_id = 70310017, pos = { x = 1439.098, y = 266.547, z = -1116.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源C
	{ config_id = 433014, gadget_id = 70310017, pos = { x = 1434.424, y = 266.238, z = -1105.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源A嘲讽外壳
	{ config_id = 433015, gadget_id = 70310021, pos = { x = 1423.780, y = 266.868, z = -1115.356 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源B嘲讽外壳
	{ config_id = 433016, gadget_id = 70310021, pos = { x = 1439.098, y = 266.547, z = -1116.916 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源C嘲讽外壳
	{ config_id = 433017, gadget_id = 70310021, pos = { x = 1434.424, y = 266.238, z = -1105.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
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
		{ config_id = 1433018, name = "GADGET_CREATE_433018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_433018", action = "action_EVENT_GADGET_CREATE_433018", trigger_count = 0 },
		{ config_id = 1433019, name = "GROUP_REFRESH_433019", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_433019" },
		{ config_id = 1433020, name = "BLOSSOM_CHEST_DIE_433020", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_433020", action = "action_EVENT_BLOSSOM_CHEST_DIE_433020", trigger_count = 0 },
		{ config_id = 1433021, name = "SELECT_OPTION_433021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_433021", action = "action_EVENT_SELECT_OPTION_433021", trigger_count = 0 },
		{ config_id = 1433022, name = "BLOSSOM_PROGRESS_FINISH_433022", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_433022" },
		{ config_id = 1433023, name = "GROUP_LOAD_433023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_433023" },
		{ config_id = 1433024, name = "ANY_GADGET_DIE_433024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_433024", action = "action_EVENT_ANY_GADGET_DIE_433024" },
		{ config_id = 1433025, name = "ANY_GADGET_DIE_433025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_433025", action = "action_EVENT_ANY_GADGET_DIE_433025" },
		{ config_id = 1433026, name = "ANY_GADGET_DIE_433026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_433026", action = "action_EVENT_ANY_GADGET_DIE_433026" },
		{ config_id = 1433027, name = "ANY_MONSTER_DIE_433027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_433027", action = "action_EVENT_ANY_MONSTER_DIE_433027" },
		{ config_id = 1433028, name = "ANY_MONSTER_DIE_433028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_433028", action = "action_EVENT_ANY_MONSTER_DIE_433028" },
		{ config_id = 1433029, name = "GADGET_CREATE_433029", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_433029", action = "action_EVENT_GADGET_CREATE_433029" },
		{ config_id = 1433030, name = "ANY_MONSTER_DIE_433030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_433030", action = "action_EVENT_ANY_MONSTER_DIE_433030" },
		{ config_id = 1433033, name = "CHALLENGE_SUCCESS_433033", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_433033" },
		{ config_id = 1433034, name = "CHALLENGE_FAIL_433034", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_433034", trigger_count = 0 }
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
		gadgets = { 433009, 433012, 433013, 433014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪物,
		monsters = { 433001, 433002, 433003, 433007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = GadgetSuite,
		monsters = { },
		gadgets = { 433011, 433015, 433016, 433017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二波怪物,
		monsters = { 433004, 433005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波怪物,
		monsters = { 433008, 433031 },
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
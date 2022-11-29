-- 基础信息
local base_info = {
	group_id = 133008419
}

-- Trigger变量
local defs = {
	operator = 419009,
	blossom_chest = 419010,
	ice_storm = 419011,
	gadget_list = {{s = 419015, t = 419012},{s = 419016, t = 419013},{s = 419017, t = 419014}},
	reminder_pos = {x=1247,y=274,z=-1173},
	challenge = {{id = 58, weight = 25, temp_r = 5 },{id = 59, weight = 25, temp_r = 6 }, {id = 60, weight = 25, temp_r = 7 }, {id = 61, weight = 25, temp_r = 8}}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 419001, monster_id = 20010801, pos = { x = 1245.081, y = 274.998, z = -1166.607 }, rot = { x = 0.000, y = 154.108, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 419002, monster_id = 20010801, pos = { x = 1243.218, y = 275.156, z = -1167.786 }, rot = { x = 356.329, y = 136.226, z = 0.337 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 419003, monster_id = 21010201, pos = { x = 1242.718, y = 275.551, z = -1175.000 }, rot = { x = 0.000, y = 165.408, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 419004, monster_id = 20010901, pos = { x = 1254.789, y = 274.226, z = -1174.721 }, rot = { x = 0.000, y = 326.047, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 419005, monster_id = 20010601, pos = { x = 1253.217, y = 275.317, z = -1170.822 }, rot = { x = 0.000, y = 159.532, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 419006, monster_id = 21030301, pos = { x = 1256.019, y = 276.171, z = -1169.855 }, rot = { x = 0.000, y = 221.287, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1031 }, climate_area_id = 1, area_id = 10 },
	{ config_id = 419007, monster_id = 21010201, pos = { x = 1240.630, y = 276.519, z = -1177.734 }, rot = { x = 0.000, y = 111.163, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 419008, monster_id = 22010201, pos = { x = 1247.005, y = 274.386, z = -1173.644 }, rot = { x = 0.000, y = 83.851, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 雪山活动开启机关
	{ config_id = 419009, gadget_id = 70360128, pos = { x = 1247.340, y = 274.282, z = -1173.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	-- 领奖台
	{ config_id = 419010, gadget_id = 70210113, pos = { x = 1247.340, y = 274.129, z = -1173.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 10 },
	{ config_id = 419011, gadget_id = 70360105, pos = { x = 1247.297, y = 274.452, z = -1173.797 }, rot = { x = 0.000, y = 359.836, z = 0.000 }, level = 1, area_id = 10 },
	-- 热源A
	{ config_id = 419012, gadget_id = 70310017, pos = { x = 1243.381, y = 275.613, z = -1178.218 }, rot = { x = 0.000, y = 59.911, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源B
	{ config_id = 419013, gadget_id = 70310017, pos = { x = 1244.825, y = 274.727, z = -1168.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源C
	{ config_id = 419014, gadget_id = 70310017, pos = { x = 1254.871, y = 274.887, z = -1172.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源A嘲讽外壳
	{ config_id = 419015, gadget_id = 70310021, pos = { x = 1243.381, y = 275.613, z = -1178.218 }, rot = { x = 0.000, y = 59.911, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源B嘲讽外壳
	{ config_id = 419016, gadget_id = 70310021, pos = { x = 1244.825, y = 274.727, z = -1168.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	-- 热源C嘲讽外壳
	{ config_id = 419017, gadget_id = 70310021, pos = { x = 1254.871, y = 274.887, z = -1172.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
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
		{ config_id = 1419018, name = "GADGET_CREATE_419018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_419018", action = "action_EVENT_GADGET_CREATE_419018", trigger_count = 0 },
		{ config_id = 1419019, name = "GROUP_REFRESH_419019", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_419019" },
		{ config_id = 1419020, name = "BLOSSOM_CHEST_DIE_419020", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_419020", action = "action_EVENT_BLOSSOM_CHEST_DIE_419020", trigger_count = 0 },
		{ config_id = 1419021, name = "SELECT_OPTION_419021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_419021", action = "action_EVENT_SELECT_OPTION_419021", trigger_count = 0 },
		{ config_id = 1419022, name = "BLOSSOM_PROGRESS_FINISH_419022", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_419022" },
		{ config_id = 1419023, name = "GROUP_LOAD_419023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_419023" },
		{ config_id = 1419024, name = "ANY_GADGET_DIE_419024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_419024", action = "action_EVENT_ANY_GADGET_DIE_419024" },
		{ config_id = 1419025, name = "ANY_GADGET_DIE_419025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_419025", action = "action_EVENT_ANY_GADGET_DIE_419025" },
		{ config_id = 1419026, name = "ANY_GADGET_DIE_419026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_419026", action = "action_EVENT_ANY_GADGET_DIE_419026" },
		{ config_id = 1419027, name = "ANY_MONSTER_DIE_419027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_419027", action = "action_EVENT_ANY_MONSTER_DIE_419027" },
		{ config_id = 1419028, name = "ANY_MONSTER_DIE_419028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_419028", action = "action_EVENT_ANY_MONSTER_DIE_419028" },
		{ config_id = 1419029, name = "GADGET_CREATE_419029", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_419029", action = "action_EVENT_GADGET_CREATE_419029" },
		{ config_id = 1419033, name = "CHALLENGE_SUCCESS_419033", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_419033" },
		{ config_id = 1419034, name = "CHALLENGE_FAIL_419034", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_419034", trigger_count = 0 }
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
		gadgets = { 419009, 419012, 419013, 419014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪物,
		monsters = { 419001, 419002, 419003, 419007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = GadgetSuite,
		monsters = { },
		gadgets = { 419011, 419015, 419016, 419017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二波怪物,
		monsters = { 419004, 419005, 419006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波怪物,
		monsters = { 419008 },
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
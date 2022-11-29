-- 基础信息
local base_info = {
	group_id = 133008418
}

-- Trigger变量
local defs = {
	operator = 418009,
	blossom_chest = 418010,
	ice_storm = 418011,
	gadget_list = {{s = 418015, t = 418012},{s = 418016, t = 418013},{s = 418017, t = 418014}},
	reminder_pos = {x=1364,y=271,z=-656},
	challenge = {{id = 58, weight = 25, temp_r = 5 },{id = 59, weight = 25, temp_r = 6 }, {id = 60, weight = 25, temp_r = 7 }, {id = 61, weight = 25, temp_r = 8}}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 418001, monster_id = 21011401, pos = { x = 1355.339, y = 271.401, z = -649.362 }, rot = { x = 0.000, y = 83.144, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 418002, monster_id = 21011401, pos = { x = 1354.135, y = 271.155, z = -648.104 }, rot = { x = 0.000, y = 91.779, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 418003, monster_id = 21011301, pos = { x = 1357.480, y = 269.389, z = -644.104 }, rot = { x = 0.000, y = 164.348, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 418004, monster_id = 21010901, pos = { x = 1377.898, y = 274.345, z = -661.799 }, rot = { x = 0.000, y = 287.810, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 418005, monster_id = 21010901, pos = { x = 1372.734, y = 273.025, z = -662.241 }, rot = { x = 0.000, y = 296.862, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 418006, monster_id = 20010601, pos = { x = 1366.813, y = 271.965, z = -659.800 }, rot = { x = 0.000, y = 309.700, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 418007, monster_id = 21011301, pos = { x = 1359.203, y = 269.250, z = -644.520 }, rot = { x = 0.000, y = 192.393, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 418008, monster_id = 21020601, pos = { x = 1364.287, y = 274.102, z = -667.375 }, rot = { x = 0.000, y = 348.986, z = 0.000 }, level = 1, drop_id = 1000100, climate_area_id = 1, area_id = 10 },
	{ config_id = 418031, monster_id = 20010701, pos = { x = 1368.857, y = 271.457, z = -658.620 }, rot = { x = 0.000, y = 302.360, z = 0.000 }, level = 1, drop_id = 1000100, affix = { 1031 }, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 雪山活动开启机关
	{ config_id = 418009, gadget_id = 70360128, pos = { x = 1364.098, y = 271.431, z = -655.503 }, rot = { x = 0.000, y = 326.701, z = 0.000 }, level = 1, area_id = 10 },
	-- 领奖台
	{ config_id = 418010, gadget_id = 70210113, pos = { x = 1363.931, y = 271.348, z = -655.070 }, rot = { x = 0.000, y = 326.701, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 10 },
	{ config_id = 418011, gadget_id = 70360105, pos = { x = 1364.392, y = 271.537, z = -656.151 }, rot = { x = 3.249, y = 326.537, z = 354.223 }, level = 1, area_id = 10 },
	{ config_id = 418012, gadget_id = 70310017, pos = { x = 1359.912, y = 273.964, z = -664.384 }, rot = { x = 0.000, y = 326.701, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 418013, gadget_id = 70310017, pos = { x = 1373.157, y = 269.757, z = -653.115 }, rot = { x = 0.000, y = 326.701, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 418014, gadget_id = 70310017, pos = { x = 1357.892, y = 270.408, z = -648.804 }, rot = { x = 0.000, y = 326.701, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 418015, gadget_id = 70310021, pos = { x = 1359.912, y = 273.964, z = -664.384 }, rot = { x = 0.000, y = 326.701, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 418016, gadget_id = 70310021, pos = { x = 1373.157, y = 269.757, z = -653.115 }, rot = { x = 0.000, y = 326.701, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 418017, gadget_id = 70310021, pos = { x = 1357.892, y = 270.408, z = -648.804 }, rot = { x = 0.000, y = 326.701, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
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
		{ config_id = 1418018, name = "GADGET_CREATE_418018", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_418018", action = "action_EVENT_GADGET_CREATE_418018", trigger_count = 0 },
		{ config_id = 1418019, name = "GROUP_REFRESH_418019", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_418019" },
		{ config_id = 1418020, name = "BLOSSOM_CHEST_DIE_418020", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_418020", action = "action_EVENT_BLOSSOM_CHEST_DIE_418020", trigger_count = 0 },
		{ config_id = 1418021, name = "SELECT_OPTION_418021", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_418021", action = "action_EVENT_SELECT_OPTION_418021", trigger_count = 0 },
		{ config_id = 1418022, name = "BLOSSOM_PROGRESS_FINISH_418022", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_418022" },
		{ config_id = 1418023, name = "GROUP_LOAD_418023", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_418023" },
		{ config_id = 1418024, name = "ANY_GADGET_DIE_418024", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_418024", action = "action_EVENT_ANY_GADGET_DIE_418024" },
		{ config_id = 1418025, name = "ANY_GADGET_DIE_418025", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_418025", action = "action_EVENT_ANY_GADGET_DIE_418025" },
		{ config_id = 1418026, name = "ANY_GADGET_DIE_418026", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_418026", action = "action_EVENT_ANY_GADGET_DIE_418026" },
		{ config_id = 1418027, name = "ANY_MONSTER_DIE_418027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_418027", action = "action_EVENT_ANY_MONSTER_DIE_418027" },
		{ config_id = 1418028, name = "ANY_MONSTER_DIE_418028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_418028", action = "action_EVENT_ANY_MONSTER_DIE_418028" },
		{ config_id = 1418029, name = "GADGET_CREATE_418029", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_418029", action = "action_EVENT_GADGET_CREATE_418029" },
		{ config_id = 1418030, name = "ANY_MONSTER_DIE_418030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_418030", action = "action_EVENT_ANY_MONSTER_DIE_418030" },
		{ config_id = 1418033, name = "CHALLENGE_SUCCESS_418033", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_418033" },
		{ config_id = 1418034, name = "CHALLENGE_FAIL_418034", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_418034", trigger_count = 0 }
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
		gadgets = { 418009, 418012, 418013, 418014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 第一波怪物,
		monsters = { 418001, 418002, 418003, 418007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = GadgetSuite,
		monsters = { },
		gadgets = { 418011, 418015, 418016, 418017 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 第二波怪物,
		monsters = { 418004, 418005, 418006, 418031 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 第三波怪物,
		monsters = { 418008 },
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
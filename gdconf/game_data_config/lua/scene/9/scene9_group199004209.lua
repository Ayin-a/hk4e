-- 基础信息
local base_info = {
	group_id = 199004209
}

-- Trigger变量
local defs = {
	duration = 30,
	kill_sum = 5,
	group_id = 199004209,
	gadget_controller_id = 209004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 209001, monster_id = 21020201, pos = { x = -439.161, y = 120.070, z = -547.117 }, rot = { x = 0.000, y = 25.269, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 401, area_id = 400 },
	{ config_id = 209010, monster_id = 21030301, pos = { x = -427.821, y = 120.110, z = -543.143 }, rot = { x = 0.000, y = 272.344, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 9012, area_id = 400 },
	{ config_id = 209011, monster_id = 21030201, pos = { x = -431.854, y = 120.747, z = -547.677 }, rot = { x = 0.000, y = 329.647, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 9012, area_id = 400 },
	{ config_id = 209012, monster_id = 21020201, pos = { x = -430.663, y = 120.637, z = -536.243 }, rot = { x = 0.000, y = 235.332, z = 0.000 }, level = 20, drop_id = 1000100, pose_id = 401, area_id = 400 },
	{ config_id = 209013, monster_id = 22010101, pos = { x = -436.705, y = 120.284, z = -536.563 }, rot = { x = 0.000, y = 167.357, z = 0.000 }, level = 20, drop_id = 1000100, area_id = 400 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 209003, gadget_id = 70310006, pos = { x = -434.315, y = 120.073, z = -540.514 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
	{ config_id = 209014, gadget_id = 70220013, pos = { x = -443.338, y = 120.000, z = -548.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
	{ config_id = 209015, gadget_id = 70220013, pos = { x = -441.002, y = 119.912, z = -549.885 }, rot = { x = 358.882, y = 301.777, z = 359.308 }, level = 1, area_id = 400 },
	{ config_id = 209016, gadget_id = 70210101, pos = { x = -442.358, y = 120.029, z = -547.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜果蔬群岛", area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "isFinish", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 209002, gadget_id = 70350082, pos = { x = -435.826, y = 120.070, z = -538.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, persistent = true, area_id = 400 },
		{ config_id = 209004, gadget_id = 70360001, pos = { x = -435.836, y = 120.539, z = -538.588 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 }
	},
	triggers = {
		{ config_id = 1209005, name = "GROUP_LOAD_209005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_209005", action = "action_EVENT_GROUP_LOAD_209005", trigger_count = 0 },
		{ config_id = 1209006, name = "CHALLENGE_SUCCESS_209006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_209006", trigger_count = 0 },
		{ config_id = 1209007, name = "CHALLENGE_FAIL_209007", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_209007", trigger_count = 0 },
		{ config_id = 1209008, name = "GADGET_CREATE_209008", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_209008", action = "action_EVENT_GADGET_CREATE_209008", trigger_count = 0 },
		{ config_id = 1209009, name = "SELECT_OPTION_209009", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_209009", action = "action_EVENT_SELECT_OPTION_209009", trigger_count = 0 }
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
		monsters = { 209001, 209010, 209011, 209012, 209013 },
		gadgets = { 209003, 209014, 209015, 209016 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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
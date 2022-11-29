-- 基础信息
local base_info = {
	group_id = 144001131
}

-- Trigger变量
local defs = {
	group_id = 144001131,
	monster_shaman = 131003,
	gadget_barrier = {131025},
	TowerBridges = {},
	point = {x=332,y=200,z=64}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 131001, monster_id = 21010401, pos = { x = 310.817, y = 203.672, z = 72.414 }, rot = { x = 0.000, y = 289.275, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 402, area_id = 102 },
	{ config_id = 131002, monster_id = 21010301, pos = { x = 329.349, y = 206.159, z = 56.719 }, rot = { x = 0.000, y = 79.242, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	-- 绑定保护罩的风萨满
	{ config_id = 131003, monster_id = 21030301, pos = { x = 348.477, y = 203.773, z = 59.578 }, rot = { x = 0.000, y = 78.187, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 131004, monster_id = 21010201, pos = { x = 326.214, y = 206.044, z = 56.215 }, rot = { x = 0.000, y = 79.222, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 102 },
	{ config_id = 131005, monster_id = 21010502, pos = { x = 312.280, y = 203.743, z = 74.407 }, rot = { x = 0.000, y = 327.565, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 102 },
	{ config_id = 131006, monster_id = 21010401, pos = { x = 318.747, y = 203.651, z = 37.230 }, rot = { x = 0.000, y = 219.388, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 402, area_id = 102 },
	{ config_id = 131007, monster_id = 21010502, pos = { x = 321.221, y = 203.683, z = 36.385 }, rot = { x = 0.000, y = 189.159, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 102 },
	{ config_id = 131008, monster_id = 21010501, pos = { x = 326.746, y = 206.024, z = 53.731 }, rot = { x = 0.000, y = 46.100, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 131009, monster_id = 21010401, pos = { x = 325.907, y = 206.191, z = 58.652 }, rot = { x = 0.000, y = 122.122, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 131010, monster_id = 21011001, pos = { x = 330.595, y = 206.055, z = 54.499 }, rot = { x = 0.000, y = 270.257, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 131011, monster_id = 21010301, pos = { x = 329.545, y = 206.019, z = 58.956 }, rot = { x = 0.000, y = 243.637, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 131053, monster_id = 21010401, pos = { x = 328.805, y = 206.045, z = 53.394 }, rot = { x = 0.000, y = 165.575, z = 0.000 }, level = 1, disableWander = true, area_id = 102 },
	{ config_id = 131054, monster_id = 21010401, pos = { x = 327.252, y = 206.046, z = 59.406 }, rot = { x = 0.000, y = 345.601, z = 0.000 }, level = 1, disableWander = true, area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 可摧毁的哨塔B
	{ config_id = 131014, gadget_id = 70950092, pos = { x = 348.306, y = 200.000, z = 59.336 }, rot = { x = 0.000, y = 76.572, z = 0.000 }, level = 1, area_id = 102 },
	-- 可摧毁小哨塔A
	{ config_id = 131015, gadget_id = 70950092, pos = { x = 312.162, y = 200.000, z = 73.017 }, rot = { x = 0.000, y = 76.271, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 102 },
	{ config_id = 131016, gadget_id = 70950087, pos = { x = 354.439, y = 200.000, z = 53.689 }, rot = { x = 0.000, y = 171.155, z = 0.000 }, level = 1, area_id = 102 },
	-- 不可摧毁大哨塔A
	{ config_id = 131017, gadget_id = 70290059, pos = { x = 328.813, y = 200.000, z = 55.668 }, rot = { x = 0.000, y = 122.122, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 102 },
	{ config_id = 131018, gadget_id = 70950087, pos = { x = 352.059, y = 200.000, z = 66.768 }, rot = { x = 0.000, y = 171.155, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 131019, gadget_id = 70950087, pos = { x = 318.460, y = 200.000, z = 33.733 }, rot = { x = 0.000, y = 318.588, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 131020, gadget_id = 70690027, pos = { x = 336.770, y = 200.000, z = 58.084 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 131021, gadget_id = 70690027, pos = { x = 324.075, y = 200.000, z = 47.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 131022, gadget_id = 70290057, pos = { x = 318.904, y = 200.000, z = 55.187 }, rot = { x = 0.000, y = 80.622, z = 0.000 }, level = 1, area_id = 102 },
	-- 可摧毁的哨塔B
	{ config_id = 131023, gadget_id = 70950092, pos = { x = 320.195, y = 200.000, z = 37.640 }, rot = { x = 0.000, y = 76.572, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 131024, gadget_id = 70690027, pos = { x = 321.819, y = 200.000, z = 63.954 }, rot = { x = 0.000, y = 337.248, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 131025, gadget_id = 70290058, pos = { x = 348.306, y = 200.000, z = 59.336 }, rot = { x = 0.000, y = 76.572, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 131026, gadget_id = 70950087, pos = { x = 308.700, y = 200.000, z = 76.138 }, rot = { x = 0.000, y = 171.155, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 131027, gadget_id = 70350254, pos = { x = 312.940, y = 200.000, z = 33.103 }, rot = { x = 0.000, y = 129.391, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 131028, gadget_id = 70290057, pos = { x = 331.652, y = 200.000, z = 66.236 }, rot = { x = 0.000, y = 209.922, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 131029, gadget_id = 70290057, pos = { x = 336.075, y = 200.000, z = 48.451 }, rot = { x = 0.000, y = 317.522, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 131030, gadget_id = 70350254, pos = { x = 317.077, y = 200.000, z = 29.707 }, rot = { x = 0.000, y = 86.054, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 131031, gadget_id = 70350254, pos = { x = 322.514, y = 200.000, z = 30.082 }, rot = { x = 0.000, y = 86.054, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 131032, gadget_id = 70350254, pos = { x = 311.281, y = 200.000, z = 80.956 }, rot = { x = 0.000, y = 237.975, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 131033, gadget_id = 70350254, pos = { x = 306.430, y = 200.000, z = 77.922 }, rot = { x = 0.000, y = 192.426, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 131034, gadget_id = 70350254, pos = { x = 305.180, y = 200.000, z = 72.249 }, rot = { x = 0.000, y = 192.426, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 131035, gadget_id = 70350254, pos = { x = 357.707, y = 200.000, z = 52.123 }, rot = { x = 0.000, y = 10.967, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 131036, gadget_id = 70350254, pos = { x = 359.434, y = 200.000, z = 61.038 }, rot = { x = 0.000, y = 326.343, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 131037, gadget_id = 70350254, pos = { x = 354.557, y = 200.000, z = 68.362 }, rot = { x = 0.000, y = 326.343, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 131052, gadget_id = 70950087, pos = { x = 340.308, y = 200.000, z = 60.101 }, rot = { x = 0.000, y = 171.155, z = 0.000 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 131012, gadget_id = 70360128, pos = { x = 328.274, y = 206.204, z = 55.737 }, rot = { x = 0.000, y = 122.122, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
		{ config_id = 131013, gadget_id = 70210113, pos = { x = 328.274, y = 206.204, z = 55.737 }, rot = { x = 0.000, y = 122.122, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 102 }
	},
	triggers = {
		{ config_id = 1131038, name = "ANY_MONSTER_DIE_131038", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_131038", trigger_count = 0 },
		{ config_id = 1131039, name = "CHALLENGE_FAIL_131039", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_131039", trigger_count = 0 },
		{ config_id = 1131040, name = "GADGET_CREATE_131040", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_131040", action = "action_EVENT_GADGET_CREATE_131040", trigger_count = 0 },
		{ config_id = 1131041, name = "GROUP_REFRESH_131041", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_131041" },
		{ config_id = 1131042, name = "BLOSSOM_CHEST_DIE_131042", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_131042", action = "action_EVENT_BLOSSOM_CHEST_DIE_131042", trigger_count = 0 },
		{ config_id = 1131043, name = "SELECT_OPTION_131043", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_131043", action = "action_EVENT_SELECT_OPTION_131043", trigger_count = 0 },
		{ config_id = 1131044, name = "BLOSSOM_PROGRESS_FINISH_131044", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_131044" },
		{ config_id = 1131045, name = "GROUP_LOAD_131045", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_131045" },
		{ config_id = 1131046, name = "ANY_GADGET_DIE_131046", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_131046", action = "action_EVENT_ANY_GADGET_DIE_131046" },
		{ config_id = 1131047, name = "ANY_GADGET_DIE_131047", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_131047", action = "action_EVENT_ANY_GADGET_DIE_131047" },
		{ config_id = 1131048, name = "ANY_MONSTER_DIE_131048", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_131048", action = "action_EVENT_ANY_MONSTER_DIE_131048" },
		{ config_id = 1131049, name = "ANY_MONSTER_DIE_131049", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_131049", action = "action_EVENT_ANY_MONSTER_DIE_131049" },
		{ config_id = 1131050, name = "ANY_MONSTER_DIE_131050", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_131050", action = "action_EVENT_ANY_MONSTER_DIE_131050" },
		{ config_id = 1131051, name = "ANY_GADGET_DIE_131051", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_131051", action = "action_EVENT_ANY_GADGET_DIE_131051" }
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
		gadgets = { 131014, 131015, 131016, 131017, 131018, 131019, 131020, 131021, 131022, 131023, 131024, 131025, 131026, 131027, 131028, 131029, 131030, 131031, 131032, 131033, 131034, 131035, 131036, 131037, 131052 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [默认在场的第一组魔物],
		monsters = { 131001, 131003, 131005, 131006, 131007, 131053, 131054 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [第二波怪物],
		monsters = { 131002, 131008, 131009 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [第三波怪物],
		monsters = { 131004, 131010, 131011 },
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

require "V1_6/VehicleBattle"
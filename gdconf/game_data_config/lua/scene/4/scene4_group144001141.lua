-- 基础信息
local base_info = {
	group_id = 144001141
}

-- Trigger变量
local defs = {
	group_id = 144001141,
	monster_shaman = 141002,
	gadget_barrier = {141030},
	TowerBridges = {{141013,141012},{141013,141014},{141019,141028},{141019,141029}},
	point = {x=51,y=200,z=217}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 141001, monster_id = 21010401, pos = { x = 42.641, y = 206.100, z = 209.710 }, rot = { x = 0.000, y = 267.168, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 402, area_id = 102 },
	-- 绑定保护罩的风萨满
	{ config_id = 141002, monster_id = 21030301, pos = { x = 43.096, y = 203.885, z = 224.312 }, rot = { x = 0.000, y = 299.264, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 102 },
	{ config_id = 141003, monster_id = 21010301, pos = { x = 55.635, y = 206.018, z = 227.693 }, rot = { x = 0.000, y = 137.129, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 141004, monster_id = 21010401, pos = { x = 62.672, y = 203.717, z = 211.381 }, rot = { x = 0.000, y = 87.057, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 141005, monster_id = 21010401, pos = { x = 61.170, y = 203.711, z = 208.994 }, rot = { x = 0.000, y = 192.175, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 141006, monster_id = 21010301, pos = { x = 59.975, y = 206.015, z = 223.448 }, rot = { x = 0.000, y = 313.152, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 141007, monster_id = 21010501, pos = { x = 46.073, y = 206.030, z = 206.431 }, rot = { x = 0.000, y = 179.469, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 141008, monster_id = 21010401, pos = { x = 58.384, y = 206.035, z = 228.688 }, rot = { x = 0.000, y = 355.327, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 141009, monster_id = 21010501, pos = { x = 60.107, y = 206.066, z = 227.985 }, rot = { x = 0.000, y = 216.339, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 141016, monster_id = 21010501, pos = { x = 61.299, y = 206.066, z = 226.145 }, rot = { x = 0.000, y = 75.200, z = 0.000 }, level = 1, disableWander = true, area_id = 102 },
	{ config_id = 141017, monster_id = 21010501, pos = { x = 42.416, y = 206.062, z = 211.125 }, rot = { x = 0.000, y = 125.000, z = 0.000 }, level = 1, disableWander = true, area_id = 102 },
	{ config_id = 141036, monster_id = 21010301, pos = { x = 48.035, y = 206.018, z = 207.354 }, rot = { x = 0.000, y = 312.970, z = 0.000 }, level = 1, disableWander = true, area_id = 102 },
	{ config_id = 141037, monster_id = 21010401, pos = { x = 43.618, y = 206.055, z = 206.943 }, rot = { x = 0.000, y = 28.657, z = 0.000 }, level = 1, disableWander = true, area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- A2
	{ config_id = 141012, gadget_id = 70290060, pos = { x = 50.120, y = 203.974, z = 225.146 }, rot = { x = 0.000, y = 351.490, z = 0.000 }, level = 1, area_id = 102 },
	-- 可摧毁小哨塔A
	{ config_id = 141013, gadget_id = 70950092, pos = { x = 43.320, y = 200.000, z = 224.165 }, rot = { x = 0.000, y = 355.670, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 102 },
	-- A1
	{ config_id = 141014, gadget_id = 70290060, pos = { x = 43.992, y = 204.133, z = 217.358 }, rot = { x = 0.000, y = 81.400, z = 0.000 }, level = 1, area_id = 102 },
	-- 不可摧毁大哨塔A
	{ config_id = 141015, gadget_id = 70290059, pos = { x = 59.245, y = 200.000, z = 226.376 }, rot = { x = 0.000, y = 35.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 102 },
	{ config_id = 141018, gadget_id = 70290057, pos = { x = 67.025, y = 200.000, z = 236.512 }, rot = { x = 0.000, y = 224.535, z = 0.000 }, level = 1, area_id = 102 },
	-- 可摧毁的哨塔B
	{ config_id = 141019, gadget_id = 70950092, pos = { x = 61.166, y = 200.000, z = 210.575 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 141020, gadget_id = 70290056, pos = { x = 52.005, y = 200.000, z = 238.993 }, rot = { x = 0.000, y = 229.783, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 141022, gadget_id = 70950087, pos = { x = 61.876, y = 200.000, z = 201.736 }, rot = { x = 0.000, y = 278.815, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 141023, gadget_id = 70950087, pos = { x = 69.749, y = 200.000, z = 210.645 }, rot = { x = 0.000, y = 66.249, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 141024, gadget_id = 70290057, pos = { x = 37.467, y = 200.000, z = 198.567 }, rot = { x = 0.000, y = 32.500, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 141025, gadget_id = 70290056, pos = { x = 51.642, y = 200.000, z = 194.221 }, rot = { x = 0.000, y = 229.783, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 141026, gadget_id = 70690027, pos = { x = 51.250, y = 200.000, z = 217.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 141027, gadget_id = 70350254, pos = { x = 63.420, y = 200.000, z = 198.641 }, rot = { x = 0.000, y = 53.710, z = 0.000 }, level = 1, area_id = 102 },
	-- b1
	{ config_id = 141028, gadget_id = 70290060, pos = { x = 53.442, y = 204.133, z = 209.870 }, rot = { x = 0.000, y = 171.400, z = 0.000 }, level = 1, area_id = 102 },
	-- b2
	{ config_id = 141029, gadget_id = 70290060, pos = { x = 59.433, y = 204.133, z = 217.877 }, rot = { x = 0.000, y = 261.400, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 141030, gadget_id = 70290058, pos = { x = 61.166, y = 200.000, z = 210.575 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 141031, gadget_id = 70350254, pos = { x = 69.252, y = 200.000, z = 202.924 }, rot = { x = 0.000, y = 26.641, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 141032, gadget_id = 70350254, pos = { x = 72.493, y = 200.000, z = 209.384 }, rot = { x = 0.000, y = 26.641, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 141033, gadget_id = 70350254, pos = { x = 42.898, y = 200.000, z = 233.892 }, rot = { x = 0.000, y = 236.855, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 141034, gadget_id = 70350254, pos = { x = 36.353, y = 200.000, z = 229.618 }, rot = { x = 0.000, y = 201.488, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 141035, gadget_id = 70350254, pos = { x = 33.437, y = 200.000, z = 222.209 }, rot = { x = 0.000, y = 201.488, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 141055, gadget_id = 70290059, pos = { x = 44.603, y = 200.000, z = 208.848 }, rot = { x = 0.000, y = 216.830, z = 0.000 }, level = 1, area_id = 102 }
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
		{ config_id = 141010, gadget_id = 70360128, pos = { x = 60.623, y = 202.239, z = 228.938 }, rot = { x = 0.000, y = 229.783, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
		{ config_id = 141011, gadget_id = 70210113, pos = { x = 60.623, y = 202.239, z = 228.938 }, rot = { x = 0.000, y = 229.783, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 102 },
		{ config_id = 141021, gadget_id = 70290056, pos = { x = 51.557, y = 200.000, z = 217.312 }, rot = { x = 0.000, y = 229.783, z = 0.000 }, level = 1, area_id = 102 }
	},
	triggers = {
		{ config_id = 1141041, name = "ANY_MONSTER_DIE_141041", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_141041", trigger_count = 0 },
		{ config_id = 1141042, name = "CHALLENGE_FAIL_141042", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_141042", trigger_count = 0 },
		{ config_id = 1141043, name = "GADGET_CREATE_141043", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_141043", action = "action_EVENT_GADGET_CREATE_141043", trigger_count = 0 },
		{ config_id = 1141044, name = "GROUP_REFRESH_141044", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_141044" },
		{ config_id = 1141045, name = "BLOSSOM_CHEST_DIE_141045", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_141045", action = "action_EVENT_BLOSSOM_CHEST_DIE_141045", trigger_count = 0 },
		{ config_id = 1141046, name = "SELECT_OPTION_141046", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_141046", action = "action_EVENT_SELECT_OPTION_141046", trigger_count = 0 },
		{ config_id = 1141047, name = "BLOSSOM_PROGRESS_FINISH_141047", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_141047" },
		{ config_id = 1141048, name = "GROUP_LOAD_141048", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_141048" },
		{ config_id = 1141049, name = "ANY_GADGET_DIE_141049", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_141049", action = "action_EVENT_ANY_GADGET_DIE_141049" },
		{ config_id = 1141050, name = "ANY_GADGET_DIE_141050", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_141050", action = "action_EVENT_ANY_GADGET_DIE_141050" },
		{ config_id = 1141051, name = "ANY_MONSTER_DIE_141051", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_141051", action = "action_EVENT_ANY_MONSTER_DIE_141051" },
		{ config_id = 1141052, name = "ANY_MONSTER_DIE_141052", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_141052", action = "action_EVENT_ANY_MONSTER_DIE_141052" },
		{ config_id = 1141053, name = "ANY_GADGET_DIE_141053", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_141053", action = "action_EVENT_ANY_GADGET_DIE_141053" },
		{ config_id = 1141054, name = "MONSTER_BATTLE_141054", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_141054" }
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
		gadgets = { 141012, 141013, 141014, 141015, 141018, 141019, 141020, 141022, 141023, 141024, 141025, 141026, 141027, 141028, 141029, 141030, 141031, 141032, 141033, 141034, 141035, 141055 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [默认在场的第一组魔物],
		monsters = { 141001, 141002, 141004, 141005, 141007, 141008, 141016 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [第二波怪物],
		monsters = { 141003, 141006, 141009, 141017, 141036, 141037 },
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
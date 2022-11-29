-- 基础信息
local base_info = {
	group_id = 144004078
}

-- Trigger变量
local defs = {
	group_id = 144004078,
	monster_shaman = 78003,
	gadget_barrier = {78021,78024},
	 TowerBridges = {{78015,78047},{78049,78048}},
	point = {x=-406,y=200,z=-128}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 78001, monster_id = 21010401, pos = { x = -398.473, y = 203.741, z = -117.256 }, rot = { x = 0.000, y = 70.660, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 78002, monster_id = 21010201, pos = { x = -391.807, y = 206.021, z = -132.753 }, rot = { x = 0.000, y = 279.500, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	-- 绑定保护罩的风萨满
	{ config_id = 78003, monster_id = 21030301, pos = { x = -394.414, y = 206.081, z = -134.494 }, rot = { x = 0.000, y = 188.027, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 78004, monster_id = 21010401, pos = { x = -400.882, y = 203.692, z = -115.883 }, rot = { x = 0.000, y = 356.391, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 78005, monster_id = 21010401, pos = { x = -394.532, y = 206.078, z = -130.161 }, rot = { x = 0.000, y = 188.134, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 78006, monster_id = 21010501, pos = { x = -418.444, y = 206.057, z = -124.830 }, rot = { x = 0.000, y = 78.257, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 78007, monster_id = 21010401, pos = { x = -411.513, y = 203.712, z = -140.961 }, rot = { x = 0.000, y = 225.440, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 78008, monster_id = 21010401, pos = { x = -409.337, y = 203.665, z = -141.952 }, rot = { x = 0.000, y = 165.641, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 78009, monster_id = 21010301, pos = { x = -415.107, y = 206.050, z = -122.989 }, rot = { x = 0.000, y = 196.683, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 78010, monster_id = 21010301, pos = { x = -417.069, y = 206.066, z = -127.732 }, rot = { x = 0.000, y = 23.866, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 78011, monster_id = 21010501, pos = { x = -395.776, y = 206.056, z = -134.802 }, rot = { x = 0.000, y = 346.745, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 78035, monster_id = 21010501, pos = { x = -391.721, y = 206.013, z = -133.882 }, rot = { x = 0.000, y = 123.292, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 78051, monster_id = 21010502, pos = { x = -418.905, y = 206.017, z = -124.237 }, rot = { x = 0.000, y = 310.552, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 78014, gadget_id = 70350254, pos = { x = -423.916, y = 200.000, z = -144.708 }, rot = { x = 0.000, y = 139.640, z = 0.000 }, level = 1, area_id = 103 },
	-- 可摧毁小哨塔A
	{ config_id = 78015, gadget_id = 70950092, pos = { x = -400.282, y = 200.000, z = -117.463 }, rot = { x = 0.000, y = 337.610, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 103 },
	-- 不可摧毁大哨塔B
	{ config_id = 78016, gadget_id = 70290059, pos = { x = -415.399, y = 200.000, z = -125.096 }, rot = { x = 0.000, y = 23.461, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 103 },
	{ config_id = 78017, gadget_id = 70950087, pos = { x = -419.095, y = 200.000, z = -144.469 }, rot = { x = 0.000, y = 297.494, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 78018, gadget_id = 70290057, pos = { x = -386.020, y = 200.000, z = -129.523 }, rot = { x = 0.000, y = 249.600, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 78019, gadget_id = 70290056, pos = { x = -417.591, y = 200.000, z = -112.380 }, rot = { x = 0.000, y = 248.461, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 78020, gadget_id = 70950087, pos = { x = -400.540, y = 200.000, z = -107.353 }, rot = { x = 0.000, y = 297.494, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 78021, gadget_id = 70290058, pos = { x = -409.988, y = 200.000, z = -140.737 }, rot = { x = 0.000, y = 341.700, z = 0.000 }, level = 1, area_id = 103 },
	-- 不可摧毁大哨塔B
	{ config_id = 78022, gadget_id = 70290059, pos = { x = -395.084, y = 200.000, z = -132.691 }, rot = { x = 0.000, y = 203.461, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 103 },
	{ config_id = 78023, gadget_id = 70290057, pos = { x = -424.669, y = 200.000, z = -127.882 }, rot = { x = 0.000, y = 77.300, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 78024, gadget_id = 70290058, pos = { x = -400.282, y = 200.000, z = -117.463 }, rot = { x = 0.000, y = 337.610, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 78025, gadget_id = 70950087, pos = { x = -408.209, y = 200.000, z = -150.126 }, rot = { x = 0.000, y = 297.494, z = 0.000 }, level = 1, area_id = 103 },
	-- 8米风场
	{ config_id = 78026, gadget_id = 70690027, pos = { x = -405.804, y = 200.000, z = -129.595 }, rot = { x = 0.000, y = 248.461, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 78027, gadget_id = 70290056, pos = { x = -388.342, y = 200.000, z = -144.790 }, rot = { x = 0.000, y = 248.461, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 78028, gadget_id = 70350254, pos = { x = -417.132, y = 200.000, z = -152.692 }, rot = { x = 0.000, y = 100.360, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 78029, gadget_id = 70350254, pos = { x = -406.943, y = 200.000, z = -154.554 }, rot = { x = 0.000, y = 100.360, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 78030, gadget_id = 70350254, pos = { x = -386.272, y = 200.000, z = -115.195 }, rot = { x = 0.000, y = 329.645, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 78031, gadget_id = 70350254, pos = { x = -391.758, y = 200.000, z = -105.827 }, rot = { x = 0.000, y = 285.261, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 78032, gadget_id = 70350254, pos = { x = -402.079, y = 200.000, z = -103.011 }, rot = { x = 0.000, y = 285.261, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 78033, gadget_id = 70950087, pos = { x = -410.690, y = 200.000, z = -144.549 }, rot = { x = 0.000, y = 297.494, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 78034, gadget_id = 70950087, pos = { x = -397.851, y = 200.000, z = -114.125 }, rot = { x = 0.000, y = 297.494, z = 0.000 }, level = 1, area_id = 103 },
	-- a
	{ config_id = 78047, gadget_id = 70290060, pos = { x = -397.523, y = 204.101, z = -124.020 }, rot = { x = 0.000, y = 68.100, z = 0.000 }, level = 1, area_id = 103 },
	-- b
	{ config_id = 78048, gadget_id = 70290060, pos = { x = -412.917, y = 203.956, z = -133.750 }, rot = { x = 0.000, y = 248.100, z = 0.000 }, level = 1, area_id = 103 },
	-- 可摧毁小哨塔B
	{ config_id = 78049, gadget_id = 70950092, pos = { x = -409.988, y = 200.000, z = -140.737 }, rot = { x = 0.000, y = 341.700, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 103 },
	{ config_id = 78050, gadget_id = 70950087, pos = { x = -390.571, y = 200.000, z = -114.975 }, rot = { x = 0.000, y = 297.494, z = 0.000 }, level = 1, area_id = 103 }
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
		{ config_id = 78012, gadget_id = 70360128, pos = { x = -416.537, y = 206.163, z = -125.056 }, rot = { x = 0.000, y = 248.461, z = 0.000 }, level = 1, persistent = true, area_id = 103 },
		{ config_id = 78013, gadget_id = 70210113, pos = { x = -416.537, y = 206.163, z = -125.056 }, rot = { x = 0.000, y = 248.461, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 103 }
	},
	triggers = {
		{ config_id = 1078036, name = "ANY_MONSTER_DIE_78036", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_78036", trigger_count = 0 },
		{ config_id = 1078037, name = "CHALLENGE_FAIL_78037", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_78037", trigger_count = 0 },
		{ config_id = 1078038, name = "GADGET_CREATE_78038", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_78038", action = "action_EVENT_GADGET_CREATE_78038", trigger_count = 0 },
		{ config_id = 1078039, name = "GROUP_REFRESH_78039", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_78039" },
		{ config_id = 1078040, name = "BLOSSOM_CHEST_DIE_78040", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_78040", action = "action_EVENT_BLOSSOM_CHEST_DIE_78040", trigger_count = 0 },
		{ config_id = 1078041, name = "SELECT_OPTION_78041", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_78041", action = "action_EVENT_SELECT_OPTION_78041", trigger_count = 0 },
		{ config_id = 1078042, name = "BLOSSOM_PROGRESS_FINISH_78042", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_78042" },
		{ config_id = 1078043, name = "GROUP_LOAD_78043", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_78043" },
		{ config_id = 1078044, name = "ANY_MONSTER_DIE_78044", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_78044", action = "action_EVENT_ANY_MONSTER_DIE_78044" },
		{ config_id = 1078045, name = "ANY_MONSTER_DIE_78045", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_78045", action = "action_EVENT_ANY_MONSTER_DIE_78045" },
		{ config_id = 1078046, name = "ANY_GADGET_DIE_78046", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_78046", action = "action_EVENT_ANY_GADGET_DIE_78046" }
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
		gadgets = { 78014, 78015, 78016, 78017, 78018, 78019, 78020, 78021, 78022, 78023, 78024, 78025, 78026, 78027, 78028, 78029, 78030, 78031, 78032, 78033, 78034, 78047, 78048, 78049, 78050 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [默认在场的第一组魔物],
		monsters = { 78001, 78003, 78004, 78007, 78008, 78035, 78051 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [第二波怪物],
		monsters = { 78002, 78005, 78006, 78009, 78010, 78011 },
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
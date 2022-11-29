-- 基础信息
local base_info = {
	group_id = 144001103
}

-- Trigger变量
local defs = {
	group_id = 144001103,
	monster_shaman = 103002,
	gadget_barrier = {103012,103014},
	TowerBridges = {},
	point = {x=-352,y=120,z=-184}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 103001, monster_id = 21010502, pos = { x = -343.858, y = 126.012, z = -195.070 }, rot = { x = 0.000, y = 288.722, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 103 },
	-- 绑定保护罩的风萨满
	{ config_id = 103002, monster_id = 21030301, pos = { x = -360.095, y = 123.747, z = -157.275 }, rot = { x = 0.000, y = 299.264, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 103003, monster_id = 21010301, pos = { x = -337.957, y = 126.157, z = -193.756 }, rot = { x = 0.000, y = 246.451, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 103004, monster_id = 21010401, pos = { x = -372.892, y = 123.686, z = -186.145 }, rot = { x = 0.000, y = 284.420, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 103005, monster_id = 21010401, pos = { x = -371.547, y = 123.694, z = -187.932 }, rot = { x = 0.000, y = 190.700, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 103006, monster_id = 21010301, pos = { x = -342.726, y = 126.047, z = -193.442 }, rot = { x = 0.000, y = 115.478, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 103007, monster_id = 21010701, pos = { x = -342.552, y = 126.067, z = -193.591 }, rot = { x = 0.000, y = 134.668, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 103008, monster_id = 21010301, pos = { x = -340.639, y = 126.072, z = -198.560 }, rot = { x = 0.000, y = 11.980, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 103009, monster_id = 21010501, pos = { x = -337.832, y = 126.016, z = -195.606 }, rot = { x = 0.000, y = 313.383, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 103048, monster_id = 21010401, pos = { x = -358.436, y = 123.706, z = -156.567 }, rot = { x = 0.000, y = 17.400, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 103049, monster_id = 21010401, pos = { x = -358.777, y = 123.757, z = -159.120 }, rot = { x = 0.000, y = 192.755, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 103050, monster_id = 21010401, pos = { x = -371.358, y = 123.695, z = -185.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 103051, monster_id = 21010501, pos = { x = -339.244, y = 125.999, z = -197.715 }, rot = { x = 0.000, y = 299.307, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 哨塔保护罩A
	{ config_id = 103012, gadget_id = 70290058, pos = { x = -358.835, y = 120.000, z = -157.962 }, rot = { x = 0.000, y = 220.670, z = 0.000 }, level = 1, area_id = 103 },
	-- 可摧毁小哨塔A
	{ config_id = 103013, gadget_id = 70950092, pos = { x = -358.835, y = 120.000, z = -157.962 }, rot = { x = 0.000, y = 220.670, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 103 },
	-- 哨塔保护罩B
	{ config_id = 103014, gadget_id = 70290058, pos = { x = -371.348, y = 120.000, z = -186.566 }, rot = { x = 0.000, y = 184.233, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 103 },
	-- 不可摧毁大哨塔A
	{ config_id = 103015, gadget_id = 70290059, pos = { x = -340.290, y = 120.000, z = -194.183 }, rot = { x = 0.000, y = 350.700, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 103 },
	{ config_id = 103016, gadget_id = 70950087, pos = { x = -378.749, y = 120.000, z = -190.485 }, rot = { x = 0.000, y = 278.815, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 103017, gadget_id = 70950087, pos = { x = -374.208, y = 120.000, z = -178.251 }, rot = { x = 0.000, y = 66.249, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 103018, gadget_id = 70350254, pos = { x = -355.503, y = 120.000, z = -143.435 }, rot = { x = 0.000, y = 255.480, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 103019, gadget_id = 70350254, pos = { x = -369.498, y = 120.000, z = -147.060 }, rot = { x = 0.000, y = 202.528, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 103020, gadget_id = 70290057, pos = { x = -334.397, y = 120.000, z = -188.011 }, rot = { x = 0.000, y = 228.600, z = 0.000 }, level = 1, area_id = 103 },
	-- 可摧毁的哨塔B
	{ config_id = 103021, gadget_id = 70950092, pos = { x = -371.348, y = 120.000, z = -186.566 }, rot = { x = 0.000, y = 184.233, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 103022, gadget_id = 70290056, pos = { x = -344.089, y = 120.000, z = -179.696 }, rot = { x = 0.000, y = 229.783, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 103023, gadget_id = 70290056, pos = { x = -337.837, y = 120.000, z = -211.078 }, rot = { x = 0.000, y = 229.783, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 103024, gadget_id = 70950087, pos = { x = -366.390, y = 120.000, z = -163.736 }, rot = { x = 0.000, y = 278.815, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 103025, gadget_id = 70950087, pos = { x = -360.405, y = 120.000, z = -148.492 }, rot = { x = 0.000, y = 66.249, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 103026, gadget_id = 70350254, pos = { x = -375.068, y = 120.000, z = -160.487 }, rot = { x = 0.000, y = 202.528, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 103027, gadget_id = 70290057, pos = { x = -347.171, y = 120.000, z = -202.295 }, rot = { x = 0.000, y = 32.500, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 103028, gadget_id = 70290056, pos = { x = -319.796, y = 120.000, z = -198.310 }, rot = { x = 0.000, y = 229.783, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 103029, gadget_id = 70290057, pos = { x = -369.840, y = 120.000, z = -199.982 }, rot = { x = 0.000, y = 183.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 103030, gadget_id = 70290057, pos = { x = -342.580, y = 120.000, z = -166.965 }, rot = { x = 0.000, y = 266.183, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 103044, gadget_id = 70350254, pos = { x = -369.100, y = 120.000, z = -174.531 }, rot = { x = 0.000, y = 262.368, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 103045, gadget_id = 70350254, pos = { x = -382.901, y = 120.000, z = -176.381 }, rot = { x = 0.000, y = 188.327, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 103046, gadget_id = 70350254, pos = { x = -385.004, y = 120.000, z = -190.744 }, rot = { x = 0.000, y = 188.327, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 103047, gadget_id = 70950087, pos = { x = -348.692, y = 120.000, z = -157.121 }, rot = { x = 0.000, y = 66.249, z = 0.000 }, level = 1, area_id = 103 }
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
		{ config_id = 103010, gadget_id = 70360128, pos = { x = -339.289, y = 122.239, z = -192.828 }, rot = { x = 0.000, y = 229.783, z = 0.000 }, level = 1, persistent = true, area_id = 103 },
		{ config_id = 103011, gadget_id = 70210113, pos = { x = -339.289, y = 122.239, z = -192.828 }, rot = { x = 0.000, y = 229.783, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 103 }
	},
	triggers = {
		{ config_id = 1103031, name = "ANY_MONSTER_DIE_103031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_103031", trigger_count = 0 },
		{ config_id = 1103032, name = "CHALLENGE_FAIL_103032", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_103032", trigger_count = 0 },
		{ config_id = 1103033, name = "GADGET_CREATE_103033", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_103033", action = "action_EVENT_GADGET_CREATE_103033", trigger_count = 0 },
		{ config_id = 1103034, name = "GROUP_REFRESH_103034", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_103034" },
		{ config_id = 1103035, name = "BLOSSOM_CHEST_DIE_103035", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_103035", action = "action_EVENT_BLOSSOM_CHEST_DIE_103035", trigger_count = 0 },
		{ config_id = 1103036, name = "SELECT_OPTION_103036", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_103036", action = "action_EVENT_SELECT_OPTION_103036", trigger_count = 0 },
		{ config_id = 1103037, name = "BLOSSOM_PROGRESS_FINISH_103037", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_103037" },
		{ config_id = 1103038, name = "GROUP_LOAD_103038", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_103038" },
		{ config_id = 1103039, name = "ANY_GADGET_DIE_103039", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_103039", action = "action_EVENT_ANY_GADGET_DIE_103039" },
		{ config_id = 1103040, name = "ANY_GADGET_DIE_103040", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_103040", action = "action_EVENT_ANY_GADGET_DIE_103040" },
		{ config_id = 1103041, name = "ANY_MONSTER_DIE_103041", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_103041", action = "action_EVENT_ANY_MONSTER_DIE_103041" },
		{ config_id = 1103042, name = "ANY_MONSTER_DIE_103042", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_103042", action = "action_EVENT_ANY_MONSTER_DIE_103042" },
		{ config_id = 1103043, name = "ANY_GADGET_DIE_103043", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_103043", action = "action_EVENT_ANY_GADGET_DIE_103043" },
		{ config_id = 1103054, name = "MONSTER_BATTLE_103054", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_103054" }
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
		gadgets = { 103012, 103013, 103014, 103015, 103016, 103017, 103018, 103019, 103020, 103021, 103022, 103023, 103024, 103025, 103026, 103027, 103028, 103029, 103030, 103044, 103045, 103046, 103047 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [默认在场的第一组魔物],
		monsters = { 103001, 103002, 103004, 103005, 103048, 103049, 103050 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [第二波怪物],
		monsters = { 103006, 103009, 103051 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 103003, 103007, 103008 },
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
-- 基础信息
local base_info = {
	group_id = 144003006
}

-- DEFS_MISCS
local defs = {
        group_id = 144003006,
        tide_sum = 25,
        tide_max = 8,
        tide_min = 8
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6003, monster_id = 21010201, pos = { x = 569.631, y = 125.892, z = -566.183 }, rot = { x = 0.000, y = 46.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, pose_id = 9012, area_id = 101 },
	{ config_id = 6004, monster_id = 21010201, pos = { x = 568.461, y = 126.258, z = -564.196 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, pose_id = 9012, area_id = 101 },
	{ config_id = 6005, monster_id = 21010201, pos = { x = 569.976, y = 126.864, z = -561.264 }, rot = { x = 0.000, y = 135.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, pose_id = 9012, area_id = 101 },
	{ config_id = 6006, monster_id = 21010501, pos = { x = 574.925, y = 126.516, z = -563.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, pose_id = 9003, area_id = 101 },
	{ config_id = 6007, monster_id = 21010501, pos = { x = 571.813, y = 127.098, z = -560.017 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, pose_id = 9003, area_id = 101 },
	{ config_id = 6010, monster_id = 21030201, pos = { x = 558.896, y = 126.817, z = -559.280 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, pose_id = 9012, area_id = 101 },
	{ config_id = 6011, monster_id = 21011001, pos = { x = 559.517, y = 126.835, z = -558.441 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 101 },
	{ config_id = 6012, monster_id = 21010701, pos = { x = 559.210, y = 126.104, z = -570.645 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 101 },
	{ config_id = 6013, monster_id = 21010701, pos = { x = 565.206, y = 125.565, z = -570.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 101 },
	{ config_id = 6014, monster_id = 21010601, pos = { x = 558.593, y = 126.515, z = -567.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 101 },
	{ config_id = 6018, monster_id = 21030301, pos = { x = 563.222, y = 127.034, z = -557.350 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, pose_id = 9012, area_id = 101 },
	{ config_id = 6020, monster_id = 21010701, pos = { x = 568.525, y = 127.352, z = -557.790 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 101 },
	{ config_id = 6024, monster_id = 21010601, pos = { x = 562.395, y = 127.063, z = -555.436 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 101 },
	{ config_id = 6025, monster_id = 21010701, pos = { x = 563.020, y = 127.270, z = -552.741 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 101 },
	{ config_id = 6026, monster_id = 21010701, pos = { x = 570.887, y = 127.116, z = -559.896 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1033 }, area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6028, gadget_id = 70220066, pos = { x = 560.059, y = 126.815, z = -555.274 }, rot = { x = 1.000, y = 0.000, z = 10.000 }, level = 1, persistent = true, area_id = 101 },
	-- 测试发奖
	{ config_id = 6030, gadget_id = 70220066, pos = { x = 571.427, y = 127.573, z = -555.063 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 6031, gadget_id = 70220066, pos = { x = 566.790, y = 127.387, z = -556.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 6033, gadget_id = 70300088, pos = { x = 554.244, y = 126.916, z = -565.825 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 6034, gadget_id = 70300088, pos = { x = 554.244, y = 126.836, z = -562.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 6036, gadget_id = 70300088, pos = { x = 554.158, y = 126.572, z = -559.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 6040, gadget_id = 70300077, pos = { x = 575.489, y = 127.142, z = -558.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 6042, gadget_id = 70300083, pos = { x = 568.683, y = 127.307, z = -555.022 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 6043, gadget_id = 70300087, pos = { x = 571.231, y = 127.013, z = -563.219 }, rot = { x = 0.000, y = 90.000, z = 350.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 6044, gadget_id = 70300085, pos = { x = 571.849, y = 126.442, z = -563.376 }, rot = { x = 0.000, y = 90.000, z = 346.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 6045, gadget_id = 70220065, pos = { x = 558.207, y = 126.708, z = -556.899 }, rot = { x = 0.000, y = 45.000, z = 10.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 6046, gadget_id = 70300077, pos = { x = 577.942, y = 126.309, z = -561.849 }, rot = { x = 0.000, y = 330.790, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 6047, gadget_id = 70220065, pos = { x = 575.426, y = 125.601, z = -566.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 6068, gadget_id = 70310006, pos = { x = 574.088, y = 126.949, z = -561.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 6070, gadget_id = 70220066, pos = { x = 562.338, y = 125.769, z = -571.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 6071, gadget_id = 70220066, pos = { x = 561.265, y = 125.898, z = -571.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
	{ config_id = 6072, gadget_id = 70310001, pos = { x = 564.598, y = 127.676, z = -551.109 }, rot = { x = 0.000, y = 0.000, z = 10.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 101 },
	{ config_id = 6073, gadget_id = 70310001, pos = { x = 562.117, y = 127.033, z = -550.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 101 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 6032, pos = { x = 563.740, y = 128.384, z = -561.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 101 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 6021, monster_id = 21030301, pos = { x = 561.213, y = 126.929, z = -557.351 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 9012, area_id = 101 },
		{ config_id = 6022, monster_id = 21010701, pos = { x = 565.298, y = 127.199, z = -557.040 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 101 },
		{ config_id = 6023, monster_id = 21010701, pos = { x = 564.132, y = 127.218, z = -555.436 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 101 },
		{ config_id = 6008, monster_id = 21011001, pos = { x = 557.956, y = 126.788, z = -560.752 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 101 },
		{ config_id = 6009, monster_id = 21010501, pos = { x = 557.944, y = 126.791, z = -563.420 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, pose_id = 9013, area_id = 101 },
		{ config_id = 6015, monster_id = 21010601, pos = { x = 566.297, y = 125.651, z = -568.761 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 101 },
		{ config_id = 6016, monster_id = 21010701, pos = { x = 561.913, y = 126.022, z = -569.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 101 },
		{ config_id = 6017, monster_id = 21010701, pos = { x = 564.024, y = 126.041, z = -567.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 101 },
		{ config_id = 6019, monster_id = 21011001, pos = { x = 557.614, y = 126.789, z = -562.118 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 101 },
		{ config_id = 6067, monster_id = 20011201, pos = { x = 571.237, y = 127.052, z = -563.187 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008 }, area_id = 101 }
	},
	gadgets = {
		{ config_id = 6037, gadget_id = 70300084, pos = { x = 551.785, y = 126.816, z = -562.989 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, area_id = 101 },
		{ config_id = 6052, gadget_id = 70300122, pos = { x = 563.053, y = 125.679, z = -572.733 }, rot = { x = 351.750, y = 44.398, z = 9.337 }, level = 1, area_id = 101 },
		{ config_id = 6069, gadget_id = 70300122, pos = { x = 560.867, y = 125.797, z = -572.956 }, rot = { x = 355.456, y = 150.914, z = 355.442 }, level = 1, area_id = 101 }
	},
	regions = {
		{ config_id = 6076, shape = RegionShape.SPHERE, radius = 25, pos = { x = 562.508, y = 128.202, z = -563.726 }, area_id = 101 }
	},
	triggers = {
		{ config_id = 1006001, name = "GROUP_LOAD_6001", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_6001" },
		{ config_id = 1006002, name = "GROUP_REFRESH_6002", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_6002" },
		{ config_id = 1006027, name = "ANY_MONSTER_DIE_6027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_6027", trigger_count = 0 },
		{ config_id = 1006029, name = "BLOSSOM_PROGRESS_FINISH_6029", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_6029" },
		{ config_id = 1006074, name = "CHALLENGE_FAIL_6074", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_6074" },
		{ config_id = 1006075, name = "CHALLENGE_SUCCESS_6075", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "" },
		{ config_id = 1006076, name = "ENTER_REGION_6076", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6076", action = "action_EVENT_ENTER_REGION_6076", trigger_count = 0 }
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
		gadgets = { 6028, 6030, 6031, 6033, 6034, 6036, 6040, 6042, 6043, 6044, 6045, 6046, 6047, 6068, 6070, 6071, 6072, 6073 },
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
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 装饰,
		monsters = { 6003, 6004, 6005, 6006, 6007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 6010, 6011, 6012, 6013, 6014 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = ,
		monsters = { 6018, 6020, 6024, 6025, 6026 },
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

require "V1_6/KeleeBombBattle"
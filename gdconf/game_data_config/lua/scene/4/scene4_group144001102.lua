-- 基础信息
local base_info = {
	group_id = 144001102
}

-- Trigger变量
local defs = {
	group_id = 144001102,
	monster_shaman = 102003,
	gadget_barrier = {102014,102016},
	TowerBridges = {{102015,102020},{102023,102021}},
	point = {x=-15,y=120,z=89}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 102001, monster_id = 21010501, pos = { x = -8.877, y = 123.734, z = 75.395 }, rot = { x = 0.000, y = 157.643, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 102002, monster_id = 21010501, pos = { x = -12.979, y = 126.013, z = 91.980 }, rot = { x = 0.000, y = 255.716, z = 0.000 }, level = 1, disableWander = true, area_id = 102 },
	-- 绑定保护罩的风萨满
	{ config_id = 102003, monster_id = 21030301, pos = { x = -17.819, y = 126.038, z = 90.448 }, rot = { x = 0.000, y = 249.534, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9012, area_id = 102 },
	{ config_id = 102005, monster_id = 21010401, pos = { x = -10.832, y = 123.701, z = 75.903 }, rot = { x = 0.000, y = 253.462, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 102006, monster_id = 21010401, pos = { x = -21.475, y = 123.629, z = 102.379 }, rot = { x = 0.000, y = 246.769, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 102007, monster_id = 21010501, pos = { x = -20.860, y = 123.755, z = 105.857 }, rot = { x = 0.000, y = 341.518, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 102008, monster_id = 21010301, pos = { x = -17.205, y = 126.092, z = 90.405 }, rot = { x = 0.000, y = 71.200, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 102009, monster_id = 21010701, pos = { x = -13.104, y = 126.058, z = 89.549 }, rot = { x = 0.000, y = 293.469, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 102010, monster_id = 21010201, pos = { x = -15.909, y = 126.052, z = 93.864 }, rot = { x = 0.000, y = 165.737, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 102011, monster_id = 21010201, pos = { x = -14.870, y = 126.024, z = 88.861 }, rot = { x = 0.000, y = 342.579, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 102 },
	{ config_id = 102048, monster_id = 21010401, pos = { x = -7.635, y = 123.648, z = 77.440 }, rot = { x = 0.000, y = 54.741, z = 0.000 }, level = 1, disableWander = true, area_id = 102 },
	{ config_id = 102049, monster_id = 21010401, pos = { x = -18.520, y = 123.608, z = 104.237 }, rot = { x = 0.000, y = 71.364, z = 0.000 }, level = 1, disableWander = true, area_id = 102 },
	{ config_id = 102050, monster_id = 21010701, pos = { x = -14.471, y = 126.052, z = 93.909 }, rot = { x = 0.000, y = 210.635, z = 0.000 }, level = 1, disableWander = true, area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 哨塔保护罩A
	{ config_id = 102014, gadget_id = 70290058, pos = { x = -9.292, y = 120.000, z = 76.738 }, rot = { x = 0.000, y = 293.469, z = 0.000 }, level = 1, area_id = 102 },
	-- 可摧毁小哨塔A
	{ config_id = 102015, gadget_id = 70950092, pos = { x = -9.292, y = 120.000, z = 76.738 }, rot = { x = 0.000, y = 247.618, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 102 },
	-- 哨塔保护罩B
	{ config_id = 102016, gadget_id = 70290058, pos = { x = -20.370, y = 120.000, z = 104.457 }, rot = { x = 0.000, y = 293.469, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 102 },
	-- 不可摧毁大哨塔A
	{ config_id = 102017, gadget_id = 70290059, pos = { x = -15.765, y = 120.000, z = 91.838 }, rot = { x = 0.000, y = 293.469, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 102 },
	{ config_id = 102018, gadget_id = 70950087, pos = { x = -18.125, y = 120.000, z = 74.753 }, rot = { x = 0.000, y = 342.501, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 102019, gadget_id = 70950087, pos = { x = -29.631, y = 120.000, z = 102.552 }, rot = { x = 0.000, y = 129.935, z = 0.000 }, level = 1, area_id = 102 },
	-- 小哨塔A连接梯子A
	{ config_id = 102020, gadget_id = 70290060, pos = { x = -12.245, y = 124.311, z = 83.055 }, rot = { x = 0.000, y = 247.203, z = 0.000 }, level = 1, area_id = 102 },
	-- 小哨塔B连接梯子B
	{ config_id = 102021, gadget_id = 70290060, pos = { x = -18.069, y = 124.199, z = 98.514 }, rot = { x = 0.000, y = 68.240, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 102022, gadget_id = 70290057, pos = { x = -8.870, y = 120.000, z = 93.828 }, rot = { x = 0.000, y = 251.969, z = 0.000 }, level = 1, area_id = 102 },
	-- 可摧毁的哨塔B
	{ config_id = 102023, gadget_id = 70950092, pos = { x = -20.370, y = 120.000, z = 104.457 }, rot = { x = 0.000, y = 247.919, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 102024, gadget_id = 70350254, pos = { x = -33.973, y = 120.000, z = 107.559 }, rot = { x = 0.000, y = 184.180, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 102025, gadget_id = 70290056, pos = { x = -10.906, y = 120.000, z = 106.133 }, rot = { x = 0.000, y = 293.469, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 102026, gadget_id = 70290056, pos = { x = -0.484, y = 120.000, z = 81.672 }, rot = { x = 0.000, y = 293.469, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 102027, gadget_id = 70950087, pos = { x = -6.677, y = 120.000, z = 67.400 }, rot = { x = 0.000, y = 342.501, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 102028, gadget_id = 70950087, pos = { x = -25.237, y = 120.000, z = 113.184 }, rot = { x = 0.000, y = 129.935, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 102029, gadget_id = 70290057, pos = { x = -16.310, y = 120.000, z = 83.464 }, rot = { x = 0.000, y = 21.269, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 102030, gadget_id = 70290057, pos = { x = -20.670, y = 120.000, z = 95.721 }, rot = { x = 0.000, y = 128.869, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 102045, gadget_id = 70350254, pos = { x = -35.033, y = 120.000, z = 93.055 }, rot = { x = 0.000, y = 158.782, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 102046, gadget_id = 70350254, pos = { x = -29.616, y = 120.000, z = 79.103 }, rot = { x = 0.000, y = 139.830, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 102047, gadget_id = 70350254, pos = { x = -20.033, y = 120.000, z = 67.751 }, rot = { x = 0.000, y = 139.830, z = 0.000 }, level = 1, area_id = 102 }
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
		{ config_id = 102012, gadget_id = 70360128, pos = { x = -15.222, y = 126.204, z = 91.851 }, rot = { x = 0.000, y = 293.469, z = 0.000 }, level = 1, persistent = true, area_id = 102 },
		{ config_id = 102013, gadget_id = 70210113, pos = { x = -15.222, y = 126.204, z = 91.851 }, rot = { x = 0.000, y = 293.469, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 102 }
	},
	triggers = {
		{ config_id = 1102031, name = "ANY_MONSTER_DIE_102031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_102031", trigger_count = 0 },
		{ config_id = 1102032, name = "CHALLENGE_FAIL_102032", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_102032", trigger_count = 0 },
		{ config_id = 1102033, name = "GADGET_CREATE_102033", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_102033", action = "action_EVENT_GADGET_CREATE_102033", trigger_count = 0 },
		{ config_id = 1102034, name = "GROUP_REFRESH_102034", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_102034" },
		{ config_id = 1102035, name = "BLOSSOM_CHEST_DIE_102035", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_102035", action = "action_EVENT_BLOSSOM_CHEST_DIE_102035", trigger_count = 0 },
		{ config_id = 1102036, name = "SELECT_OPTION_102036", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_102036", action = "action_EVENT_SELECT_OPTION_102036", trigger_count = 0 },
		{ config_id = 1102037, name = "BLOSSOM_PROGRESS_FINISH_102037", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_102037" },
		{ config_id = 1102038, name = "GROUP_LOAD_102038", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_102038" },
		{ config_id = 1102039, name = "ANY_GADGET_DIE_102039", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_102039", action = "action_EVENT_ANY_GADGET_DIE_102039" },
		{ config_id = 1102040, name = "ANY_GADGET_DIE_102040", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_102040", action = "action_EVENT_ANY_GADGET_DIE_102040" },
		{ config_id = 1102041, name = "ANY_MONSTER_DIE_102041", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_102041", action = "action_EVENT_ANY_MONSTER_DIE_102041" },
		{ config_id = 1102042, name = "ANY_MONSTER_DIE_102042", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_102042", action = "action_EVENT_ANY_MONSTER_DIE_102042" },
		{ config_id = 1102043, name = "ANY_MONSTER_DIE_102043", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_102043", action = "action_EVENT_ANY_MONSTER_DIE_102043" },
		{ config_id = 1102044, name = "ANY_GADGET_DIE_102044", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_102044", action = "action_EVENT_ANY_GADGET_DIE_102044" }
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
		gadgets = { 102014, 102015, 102016, 102017, 102018, 102019, 102020, 102021, 102022, 102023, 102024, 102025, 102026, 102027, 102028, 102029, 102030, 102045, 102046, 102047 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [默认在场的第一组魔物],
		monsters = { 102001, 102003, 102005, 102006, 102007, 102048, 102049 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [第二波怪物],
		monsters = { 102002, 102008, 102010, 102011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [第三波怪物],
		monsters = { 102009, 102050 },
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
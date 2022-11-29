-- 基础信息
local base_info = {
	group_id = 144001104
}

-- Trigger变量
local defs = {
	group_id = 144001104,
	monster_shaman = 104003,
	gadget_barrier = {104014},
	 TowerBridges = {},
	point = {x=-411,y=120,z=180}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 104001, monster_id = 21010501, pos = { x = -417.813, y = 125.962, z = 173.674 }, rot = { x = 0.000, y = 47.500, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 104002, monster_id = 21010301, pos = { x = -422.684, y = 126.064, z = 173.435 }, rot = { x = 0.000, y = 118.260, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	-- 绑定保护罩的风萨满
	{ config_id = 104003, monster_id = 21030301, pos = { x = -405.761, y = 123.865, z = 186.531 }, rot = { x = 0.000, y = 20.501, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 104004, monster_id = 21010501, pos = { x = -406.094, y = 126.078, z = 168.176 }, rot = { x = 0.000, y = 359.347, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 104005, monster_id = 21010501, pos = { x = -421.979, y = 126.082, z = 170.577 }, rot = { x = 0.000, y = 75.800, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 104006, monster_id = 21010301, pos = { x = -403.926, y = 126.085, z = 164.324 }, rot = { x = 0.000, y = 291.100, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 104007, monster_id = 21010402, pos = { x = -403.122, y = 126.052, z = 166.762 }, rot = { x = 0.000, y = 60.917, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 104008, monster_id = 21010402, pos = { x = -421.595, y = 126.024, z = 175.278 }, rot = { x = 0.000, y = 343.200, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 104009, monster_id = 21010201, pos = { x = -419.948, y = 126.045, z = 174.202 }, rot = { x = 0.000, y = 146.700, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 104010, monster_id = 21010501, pos = { x = -406.912, y = 126.017, z = 163.614 }, rot = { x = 0.000, y = 324.500, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 104011, monster_id = 21010201, pos = { x = -404.777, y = 126.060, z = 167.950 }, rot = { x = 0.000, y = 275.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 103 },
	{ config_id = 104023, monster_id = 21010401, pos = { x = -423.533, y = 126.044, z = 171.075 }, rot = { x = 0.000, y = 241.930, z = 0.000 }, level = 1, disableWander = true, area_id = 103 },
	{ config_id = 104026, monster_id = 21010401, pos = { x = -404.957, y = 126.023, z = 162.568 }, rot = { x = 0.000, y = 161.200, z = 0.000 }, level = 1, disableWander = true, area_id = 103 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 哨塔保护罩A
	{ config_id = 104014, gadget_id = 70290058, pos = { x = -405.569, y = 120.000, z = 186.326 }, rot = { x = 0.000, y = 202.610, z = 0.000 }, level = 1, area_id = 103 },
	-- 可摧毁小哨塔A
	{ config_id = 104015, gadget_id = 70950092, pos = { x = -405.569, y = 120.000, z = 186.326 }, rot = { x = 0.000, y = 202.610, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 103 },
	-- 不可摧毁大哨塔A
	{ config_id = 104016, gadget_id = 70290059, pos = { x = -421.224, y = 120.000, z = 172.284 }, rot = { x = 0.000, y = 248.461, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 103 },
	{ config_id = 104017, gadget_id = 70950087, pos = { x = -397.517, y = 120.000, z = 189.107 }, rot = { x = 0.000, y = 297.494, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 104018, gadget_id = 70290057, pos = { x = -425.733, y = 120.000, z = 184.359 }, rot = { x = 0.000, y = 206.961, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 104019, gadget_id = 70290056, pos = { x = -392.359, y = 120.000, z = 164.240 }, rot = { x = 0.000, y = 248.461, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 104020, gadget_id = 70950087, pos = { x = -409.833, y = 120.000, z = 193.240 }, rot = { x = 0.000, y = 297.494, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 104021, gadget_id = 70290057, pos = { x = -388.994, y = 120.000, z = 187.135 }, rot = { x = 0.000, y = 23.401, z = 0.000 }, level = 1, area_id = 103 },
	-- 不可摧毁大哨塔B
	{ config_id = 104022, gadget_id = 70290059, pos = { x = -405.191, y = 120.000, z = 165.667 }, rot = { x = 0.000, y = 68.461, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 103 },
	{ config_id = 104024, gadget_id = 70290057, pos = { x = -413.492, y = 120.000, z = 158.011 }, rot = { x = 0.000, y = 23.401, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 104025, gadget_id = 70290057, pos = { x = -411.732, y = 120.000, z = 205.877 }, rot = { x = 0.000, y = 23.401, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 104039, gadget_id = 70950087, pos = { x = -409.512, y = 120.000, z = 178.650 }, rot = { x = 0.000, y = 297.494, z = 0.000 }, level = 1, area_id = 103 },
	-- 8米风场
	{ config_id = 104040, gadget_id = 70690027, pos = { x = -413.134, y = 120.000, z = 169.684 }, rot = { x = 0.000, y = 248.461, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 104044, gadget_id = 70350254, pos = { x = -399.838, y = 120.000, z = 198.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 104045, gadget_id = 70350254, pos = { x = -391.775, y = 120.000, z = 180.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 104046, gadget_id = 70350254, pos = { x = -418.787, y = 120.000, z = 194.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 }
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
		{ config_id = 104012, gadget_id = 70360128, pos = { x = -420.863, y = 126.163, z = 172.640 }, rot = { x = 0.000, y = 248.461, z = 0.000 }, level = 1, persistent = true, area_id = 103 },
		{ config_id = 104013, gadget_id = 70210113, pos = { x = -420.863, y = 126.163, z = 172.640 }, rot = { x = 0.000, y = 248.461, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 103 }
	},
	triggers = {
		{ config_id = 1104028, name = "ANY_MONSTER_DIE_104028", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_104028", trigger_count = 0 },
		{ config_id = 1104029, name = "CHALLENGE_FAIL_104029", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_104029", trigger_count = 0 },
		{ config_id = 1104030, name = "GADGET_CREATE_104030", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_104030", action = "action_EVENT_GADGET_CREATE_104030", trigger_count = 0 },
		{ config_id = 1104031, name = "GROUP_REFRESH_104031", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_104031" },
		{ config_id = 1104032, name = "BLOSSOM_CHEST_DIE_104032", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_104032", action = "action_EVENT_BLOSSOM_CHEST_DIE_104032", trigger_count = 0 },
		{ config_id = 1104033, name = "SELECT_OPTION_104033", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_104033", action = "action_EVENT_SELECT_OPTION_104033", trigger_count = 0 },
		{ config_id = 1104034, name = "BLOSSOM_PROGRESS_FINISH_104034", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_104034" },
		{ config_id = 1104035, name = "GROUP_LOAD_104035", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_104035" },
		{ config_id = 1104036, name = "ANY_MONSTER_DIE_104036", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_104036", action = "action_EVENT_ANY_MONSTER_DIE_104036" },
		{ config_id = 1104037, name = "ANY_MONSTER_DIE_104037", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_104037", action = "action_EVENT_ANY_MONSTER_DIE_104037" },
		{ config_id = 1104038, name = "ANY_GADGET_DIE_104038", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_104038", action = "action_EVENT_ANY_GADGET_DIE_104038" }
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
		gadgets = { 104014, 104015, 104016, 104017, 104018, 104019, 104020, 104021, 104022, 104024, 104025, 104039, 104040, 104044, 104045, 104046 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [默认在场的第一组魔物],
		monsters = { 104001, 104003, 104004, 104007, 104008, 104023, 104026 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [第二波怪物],
		monsters = { 104002, 104005, 104006, 104009, 104010, 104011 },
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
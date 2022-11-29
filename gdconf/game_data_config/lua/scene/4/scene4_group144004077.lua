-- 基础信息
local base_info = {
	group_id = 144004077
}

-- Trigger变量
local defs = {
	group_id = 144004077,
	monster_shaman = 0,
	gadget_barrier = {},
	TowerBridges = {{77044,77015},{77011,77016}},
	point = {x=-120.4855,y=199.8474,z=-503.2}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 77001, monster_id = 21010502, pos = { x = -101.625, y = 203.789, z = -520.098 }, rot = { x = 0.000, y = 101.990, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 77002, monster_id = 21010502, pos = { x = -118.478, y = 203.764, z = -476.656 }, rot = { x = 0.000, y = 15.732, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 77003, monster_id = 21010401, pos = { x = -118.552, y = 206.018, z = -515.169 }, rot = { x = 0.000, y = 202.918, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 77004, monster_id = 21010501, pos = { x = -127.386, y = 206.064, z = -492.470 }, rot = { x = 0.000, y = 297.911, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 77005, monster_id = 21010401, pos = { x = -123.187, y = 206.049, z = -489.998 }, rot = { x = 0.000, y = 10.881, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 77006, monster_id = 21010401, pos = { x = -113.063, y = 206.023, z = -513.445 }, rot = { x = 0.000, y = 46.427, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 77007, monster_id = 21010501, pos = { x = -114.931, y = 206.063, z = -516.065 }, rot = { x = 0.000, y = 187.534, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 77008, monster_id = 21010201, pos = { x = -115.039, y = 206.163, z = -516.250 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 77014, monster_id = 21010201, pos = { x = -125.677, y = 206.037, z = -489.186 }, rot = { x = 0.000, y = 142.130, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 77020, monster_id = 21010501, pos = { x = -113.046, y = 206.026, z = -512.775 }, rot = { x = 0.000, y = 252.451, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 77030, monster_id = 21010301, pos = { x = -118.843, y = 206.012, z = -514.912 }, rot = { x = 0.000, y = 65.771, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 77031, monster_id = 21010501, pos = { x = -127.272, y = 206.059, z = -492.650 }, rot = { x = 0.000, y = 71.993, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 77045, monster_id = 21010301, pos = { x = -121.776, y = 206.202, z = -490.658 }, rot = { x = 0.000, y = 242.239, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 可摧毁小哨塔A
	{ config_id = 77011, gadget_id = 70950092, pos = { x = -119.172, y = 200.000, z = -477.530 }, rot = { x = 0.000, y = 22.529, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 101 },
	-- 不可摧毁大哨塔A
	{ config_id = 77012, gadget_id = 70290059, pos = { x = -115.565, y = 200.000, z = -513.046 }, rot = { x = 0.000, y = 337.529, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 101 },
	{ config_id = 77013, gadget_id = 70950087, pos = { x = -131.652, y = 200.000, z = -508.202 }, rot = { x = 0.000, y = 251.561, z = 0.000 }, level = 1, area_id = 101 },
	-- 连接梯子A
	{ config_id = 77015, gadget_id = 70290060, pos = { x = -108.146, y = 204.146, z = -517.277 }, rot = { x = 0.000, y = 205.800, z = 0.000 }, level = 1, area_id = 101 },
	-- 连接梯子B
	{ config_id = 77016, gadget_id = 70290060, pos = { x = -121.611, y = 203.993, z = -484.012 }, rot = { x = 0.000, y = 110.310, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 77017, gadget_id = 70290057, pos = { x = -115.555, y = 200.000, z = -487.330 }, rot = { x = 0.000, y = 213.546, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 77018, gadget_id = 70290056, pos = { x = -131.203, y = 200.000, z = -477.579 }, rot = { x = 0.000, y = 202.529, z = 0.000 }, level = 1, area_id = 101 },
	-- 不可摧毁大哨塔B
	{ config_id = 77019, gadget_id = 70290059, pos = { x = -125.596, y = 200.000, z = -491.574 }, rot = { x = 0.000, y = 247.529, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 101 },
	{ config_id = 77021, gadget_id = 70290056, pos = { x = -109.983, y = 200.000, z = -527.632 }, rot = { x = 0.000, y = 202.529, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 77022, gadget_id = 70290056, pos = { x = -112.937, y = 200.000, z = -499.859 }, rot = { x = 0.000, y = 202.529, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 77023, gadget_id = 70290057, pos = { x = -127.723, y = 200.000, z = -506.111 }, rot = { x = 0.000, y = 251.877, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 77024, gadget_id = 70290057, pos = { x = -106.228, y = 200.000, z = -507.584 }, rot = { x = 0.000, y = 103.000, z = 0.000 }, level = 1, area_id = 101 },
	-- 8米风场
	{ config_id = 77025, gadget_id = 70690027, pos = { x = -119.516, y = 199.397, z = -502.156 }, rot = { x = 0.000, y = 202.529, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 77026, gadget_id = 70350254, pos = { x = -97.688, y = 200.000, z = -529.702 }, rot = { x = 0.000, y = 24.030, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 77027, gadget_id = 70350254, pos = { x = -94.075, y = 200.000, z = -521.599 }, rot = { x = 0.000, y = 349.130, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 77028, gadget_id = 70350254, pos = { x = -95.751, y = 200.000, z = -512.872 }, rot = { x = 0.000, y = 349.130, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 77029, gadget_id = 70350254, pos = { x = -110.094, y = 200.000, z = -482.955 }, rot = { x = 0.000, y = 346.880, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 77032, gadget_id = 70350254, pos = { x = -111.860, y = 200.000, z = -475.379 }, rot = { x = 0.000, y = 311.060, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 77033, gadget_id = 70350254, pos = { x = -117.669, y = 200.000, z = -470.318 }, rot = { x = 0.000, y = 311.060, z = 0.000 }, level = 1, area_id = 101 },
	-- 可摧毁小哨塔A
	{ config_id = 77044, gadget_id = 70950092, pos = { x = -102.509, y = 200.000, z = -520.103 }, rot = { x = 0.000, y = 22.529, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 101 }
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
		{ config_id = 77009, gadget_id = 70360128, pos = { x = -113.573, y = 200.469, z = -512.253 }, rot = { x = 0.000, y = 202.529, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
		{ config_id = 77010, gadget_id = 70210113, pos = { x = -113.573, y = 200.469, z = -512.253 }, rot = { x = 0.000, y = 202.529, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 101 }
	},
	triggers = {
		{ config_id = 1077034, name = "ANY_MONSTER_DIE_77034", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_77034", trigger_count = 0 },
		{ config_id = 1077035, name = "CHALLENGE_FAIL_77035", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_77035", trigger_count = 0 },
		{ config_id = 1077036, name = "GADGET_CREATE_77036", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_77036", action = "action_EVENT_GADGET_CREATE_77036", trigger_count = 0 },
		{ config_id = 1077037, name = "GROUP_REFRESH_77037", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_77037" },
		{ config_id = 1077038, name = "BLOSSOM_CHEST_DIE_77038", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_77038", action = "action_EVENT_BLOSSOM_CHEST_DIE_77038", trigger_count = 0 },
		{ config_id = 1077039, name = "SELECT_OPTION_77039", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_77039", action = "action_EVENT_SELECT_OPTION_77039", trigger_count = 0 },
		{ config_id = 1077040, name = "BLOSSOM_PROGRESS_FINISH_77040", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_77040" },
		{ config_id = 1077041, name = "GROUP_LOAD_77041", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_77041" },
		{ config_id = 1077042, name = "ANY_GADGET_DIE_77042", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_77042", action = "action_EVENT_ANY_GADGET_DIE_77042" },
		{ config_id = 1077043, name = "ANY_MONSTER_DIE_77043", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_77043", action = "action_EVENT_ANY_MONSTER_DIE_77043" }
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
		gadgets = { 77011, 77012, 77013, 77015, 77016, 77017, 77018, 77019, 77021, 77022, 77023, 77024, 77025, 77026, 77027, 77028, 77029, 77032, 77033, 77044 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [默认在场的第一组魔物],
		monsters = { 77001, 77002, 77003, 77004, 77005, 77006, 77007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [第二波怪物],
		monsters = { 77008, 77014, 77020, 77030, 77031, 77045 },
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
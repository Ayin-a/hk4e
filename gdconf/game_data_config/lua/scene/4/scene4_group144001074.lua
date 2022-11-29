-- 基础信息
local base_info = {
	group_id = 144001074
}

-- Trigger变量
local defs = {
	group_id = 144001074,
	monster_shaman = 0,
	gadget_barrier = {},
	TowerBridges = {{74011,74015},{74011,74016}},
	point = {x=-12,y=120,z=-481}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 74001, monster_id = 21010501, pos = { x = -15.279, y = 125.962, z = -498.210 }, rot = { x = 0.000, y = 159.830, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 101 },
	{ config_id = 74002, monster_id = 21010301, pos = { x = -15.882, y = 126.223, z = -498.146 }, rot = { x = 0.000, y = 338.038, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 74003, monster_id = 21010501, pos = { x = -25.234, y = 126.049, z = -472.610 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 101 },
	{ config_id = 74004, monster_id = 21010401, pos = { x = -20.362, y = 125.972, z = -496.764 }, rot = { x = 0.000, y = 238.110, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 402, area_id = 101 },
	{ config_id = 74005, monster_id = 21010201, pos = { x = -22.538, y = 126.110, z = -474.406 }, rot = { x = 0.000, y = 265.250, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 74006, monster_id = 21010201, pos = { x = -19.504, y = 126.035, z = -496.679 }, rot = { x = 0.000, y = 71.100, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 74007, monster_id = 21010301, pos = { x = -26.434, y = 126.026, z = -471.993 }, rot = { x = 0.000, y = 157.288, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 74008, monster_id = 21010401, pos = { x = -27.309, y = 126.078, z = -475.761 }, rot = { x = 0.000, y = 251.930, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 402, area_id = 101 },
	{ config_id = 74025, monster_id = 21010502, pos = { x = -9.606, y = 123.773, z = -480.477 }, rot = { x = 0.000, y = 58.477, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 74037, monster_id = 21011001, pos = { x = -14.119, y = 126.019, z = -494.957 }, rot = { x = 0.000, y = 249.707, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 74038, monster_id = 21010401, pos = { x = -10.100, y = 123.781, z = -482.174 }, rot = { x = 0.000, y = 126.063, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 74039, monster_id = 21010401, pos = { x = -11.102, y = 123.739, z = -479.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 74044, monster_id = 21010401, pos = { x = -27.532, y = 126.063, z = -475.653 }, rot = { x = 0.000, y = 77.300, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 可摧毁小哨塔A
	{ config_id = 74011, gadget_id = 70950092, pos = { x = -10.973, y = 120.000, z = -481.159 }, rot = { x = 0.000, y = 22.529, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 101 },
	-- 不可摧毁大哨塔A
	{ config_id = 74012, gadget_id = 70290059, pos = { x = -16.659, y = 120.000, z = -494.814 }, rot = { x = 0.000, y = 337.529, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 101 },
	{ config_id = 74013, gadget_id = 70950087, pos = { x = -7.343, y = 120.000, z = -480.282 }, rot = { x = 0.000, y = 251.561, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 74014, gadget_id = 70950087, pos = { x = -11.671, y = 120.000, z = -478.774 }, rot = { x = 0.000, y = 38.994, z = 0.000 }, level = 1, area_id = 101 },
	-- 连接梯子A
	{ config_id = 74015, gadget_id = 70290060, pos = { x = -13.653, y = 124.180, z = -487.661 }, rot = { x = 0.000, y = 111.281, z = 0.000 }, level = 1, area_id = 101 },
	-- 连接梯子B
	{ config_id = 74016, gadget_id = 70290060, pos = { x = -17.173, y = 124.028, z = -478.278 }, rot = { x = 0.000, y = 202.529, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 74017, gadget_id = 70290057, pos = { x = -28.392, y = 120.000, z = -466.896 }, rot = { x = 0.000, y = 162.983, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 74018, gadget_id = 70290056, pos = { x = -12.674, y = 120.000, z = -468.966 }, rot = { x = 0.000, y = 202.529, z = 0.000 }, level = 1, area_id = 101 },
	-- 不可摧毁大哨塔B
	{ config_id = 74019, gadget_id = 70290059, pos = { x = -25.788, y = 120.000, z = -474.727 }, rot = { x = 0.000, y = 247.529, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 101 },
	{ config_id = 74020, gadget_id = 70950087, pos = { x = -1.415, y = 120.000, z = -478.348 }, rot = { x = 0.000, y = 251.561, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 74021, gadget_id = 70290056, pos = { x = -2.553, y = 120.000, z = -491.773 }, rot = { x = 0.000, y = 202.529, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 74022, gadget_id = 70290056, pos = { x = -25.422, y = 120.000, z = -487.160 }, rot = { x = 0.000, y = 202.529, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 74023, gadget_id = 70290057, pos = { x = -12.051, y = 120.000, z = -506.348 }, rot = { x = 0.000, y = 340.588, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 74024, gadget_id = 70290057, pos = { x = -3.663, y = 120.000, z = -479.380 }, rot = { x = 0.000, y = 72.358, z = 0.000 }, level = 1, area_id = 101 },
	-- 8米风场
	{ config_id = 74036, gadget_id = 70690027, pos = { x = -20.304, y = 120.000, z = -484.768 }, rot = { x = 0.000, y = 202.529, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 74040, gadget_id = 70350254, pos = { x = 11.360, y = 120.000, z = -487.858 }, rot = { x = 0.000, y = 6.957, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 74041, gadget_id = 70350254, pos = { x = 12.536, y = 120.000, z = -478.217 }, rot = { x = 0.000, y = 335.353, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 74042, gadget_id = 70350254, pos = { x = 8.395, y = 120.000, z = -469.190 }, rot = { x = 0.000, y = 314.858, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 74043, gadget_id = 70350254, pos = { x = 1.409, y = 120.000, z = -462.239 }, rot = { x = 0.000, y = 314.858, z = 0.000 }, level = 1, area_id = 101 }
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
		{ config_id = 74009, gadget_id = 70360128, pos = { x = -14.361, y = 121.072, z = -494.865 }, rot = { x = 0.000, y = 202.529, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
		{ config_id = 74010, gadget_id = 70210113, pos = { x = -14.361, y = 121.072, z = -494.865 }, rot = { x = 0.000, y = 202.529, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 101 }
	},
	triggers = {
		{ config_id = 1074026, name = "ANY_MONSTER_DIE_74026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_74026", trigger_count = 0 },
		{ config_id = 1074027, name = "CHALLENGE_FAIL_74027", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_74027", trigger_count = 0 },
		{ config_id = 1074028, name = "GADGET_CREATE_74028", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_74028", action = "action_EVENT_GADGET_CREATE_74028", trigger_count = 0 },
		{ config_id = 1074029, name = "GROUP_REFRESH_74029", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_74029" },
		{ config_id = 1074030, name = "BLOSSOM_CHEST_DIE_74030", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_74030", action = "action_EVENT_BLOSSOM_CHEST_DIE_74030", trigger_count = 0 },
		{ config_id = 1074031, name = "SELECT_OPTION_74031", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_74031", action = "action_EVENT_SELECT_OPTION_74031", trigger_count = 0 },
		{ config_id = 1074032, name = "BLOSSOM_PROGRESS_FINISH_74032", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_74032" },
		{ config_id = 1074033, name = "GROUP_LOAD_74033", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_74033" },
		{ config_id = 1074034, name = "ANY_GADGET_DIE_74034", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_74034", action = "action_EVENT_ANY_GADGET_DIE_74034" },
		{ config_id = 1074035, name = "ANY_MONSTER_DIE_74035", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_74035", action = "action_EVENT_ANY_MONSTER_DIE_74035" }
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
		gadgets = { 74011, 74012, 74013, 74014, 74015, 74016, 74017, 74018, 74019, 74020, 74021, 74022, 74023, 74024, 74036, 74040, 74041, 74042, 74043 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [默认在场的第一组魔物],
		monsters = { 74001, 74003, 74004, 74008, 74025, 74038, 74039 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [第二波怪物],
		monsters = { 74002, 74005, 74006, 74007, 74037, 74044 },
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
-- 基础信息
local base_info = {
	group_id = 144002047
}

-- Trigger变量
local defs = {
	group_id = 144002047,
	monster_shaman = 0,
	gadget_barrier  = {},
	TowerBridges = {},
	point = {x=285,y=200,z=-276}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 47001, monster_id = 21010401, pos = { x = 310.510, y = 203.761, z = -298.966 }, rot = { x = 0.000, y = 52.372, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 47002, monster_id = 21010502, pos = { x = 308.604, y = 203.645, z = -296.871 }, rot = { x = 0.000, y = 47.626, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 101 },
	{ config_id = 47003, monster_id = 21011001, pos = { x = 273.145, y = 205.990, z = -240.164 }, rot = { x = 0.000, y = 160.499, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 32, area_id = 101 },
	{ config_id = 47004, monster_id = 21010401, pos = { x = 284.222, y = 203.641, z = -279.685 }, rot = { x = 0.000, y = 58.916, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 47005, monster_id = 21010502, pos = { x = 282.718, y = 203.737, z = -277.043 }, rot = { x = 0.000, y = 58.890, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 47006, monster_id = 21010401, pos = { x = 271.792, y = 206.066, z = -246.100 }, rot = { x = 0.000, y = 161.772, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 47007, monster_id = 21010401, pos = { x = 277.360, y = 206.018, z = -244.797 }, rot = { x = 0.000, y = 163.327, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 47008, monster_id = 21010501, pos = { x = 270.936, y = 206.025, z = -241.675 }, rot = { x = 0.000, y = 128.881, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 47009, monster_id = 21010301, pos = { x = 271.479, y = 206.056, z = -243.782 }, rot = { x = 0.000, y = 58.495, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 47010, monster_id = 21010401, pos = { x = 276.479, y = 206.020, z = -243.393 }, rot = { x = 0.000, y = 252.382, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 47011, monster_id = 21010201, pos = { x = 275.776, y = 206.189, z = -240.530 }, rot = { x = 0.000, y = 199.349, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 47012, monster_id = 21010301, pos = { x = 274.091, y = 206.183, z = -242.801 }, rot = { x = 0.000, y = 162.587, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 101 },
	{ config_id = 47018, monster_id = 21010501, pos = { x = 277.086, y = 205.968, z = -244.812 }, rot = { x = 0.000, y = 309.394, z = 0.000 }, level = 1, disableWander = true, area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	-- 可摧毁小哨塔A
	{ config_id = 47015, gadget_id = 70950092, pos = { x = 308.615, y = 200.000, z = -298.665 }, rot = { x = 0.000, y = 50.954, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 101 },
	-- 可摧毁小哨塔B
	{ config_id = 47016, gadget_id = 70950092, pos = { x = 282.564, y = 200.000, z = -278.784 }, rot = { x = 0.000, y = 238.373, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 101 },
	-- 不可摧毁大哨塔A
	{ config_id = 47017, gadget_id = 70290059, pos = { x = 273.049, y = 200.000, z = -243.457 }, rot = { x = 0.000, y = 207.800, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 101 },
	{ config_id = 47020, gadget_id = 70290057, pos = { x = 281.969, y = 199.407, z = -284.913 }, rot = { x = 6.825, y = 190.046, z = 10.439 }, level = 1, area_id = 101 },
	{ config_id = 47021, gadget_id = 70290056, pos = { x = 293.343, y = 200.000, z = -270.876 }, rot = { x = 0.000, y = 96.806, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 47022, gadget_id = 70290057, pos = { x = 277.229, y = 200.000, z = -276.924 }, rot = { x = 0.000, y = 105.346, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 47023, gadget_id = 70290057, pos = { x = 308.403, y = 200.000, z = -303.726 }, rot = { x = 0.000, y = 15.905, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 47024, gadget_id = 70290057, pos = { x = 302.885, y = 200.000, z = -297.193 }, rot = { x = 0.000, y = 97.705, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 47025, gadget_id = 70290061, pos = { x = 265.004, y = 200.000, z = -244.388 }, rot = { x = 0.000, y = 88.100, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 47026, gadget_id = 70290057, pos = { x = 272.619, y = 200.000, z = -233.664 }, rot = { x = 0.000, y = 169.600, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 47048, gadget_id = 70290056, pos = { x = 288.060, y = 200.000, z = -296.969 }, rot = { x = 0.000, y = 96.806, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 47049, gadget_id = 70290056, pos = { x = 265.052, y = 200.000, z = -265.565 }, rot = { x = 0.000, y = 96.806, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 47050, gadget_id = 70290061, pos = { x = 281.486, y = 200.000, z = -239.836 }, rot = { x = 0.000, y = 71.741, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 47051, gadget_id = 70350254, pos = { x = 318.422, y = 200.000, z = -300.996 }, rot = { x = 0.000, y = 348.977, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 47052, gadget_id = 70350254, pos = { x = 316.664, y = 200.000, z = -291.970 }, rot = { x = 0.000, y = 290.193, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 47053, gadget_id = 70350254, pos = { x = 308.019, y = 200.000, z = -288.790 }, rot = { x = 0.000, y = 290.193, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 47054, gadget_id = 70350254, pos = { x = 292.207, y = 200.000, z = -282.434 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 47055, gadget_id = 70350254, pos = { x = 281.619, y = 200.000, z = -266.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 }
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
		{ config_id = 47013, gadget_id = 70360128, pos = { x = 271.578, y = 200.356, z = -244.160 }, rot = { x = 0.000, y = 96.806, z = 0.000 }, level = 1, persistent = true, area_id = 101 },
		{ config_id = 47014, gadget_id = 70210113, pos = { x = 271.578, y = 200.356, z = -244.160 }, rot = { x = 0.000, y = 96.806, z = 0.000 }, level = 16, chest_drop_id = 1000100, drop_count = 1, showcutscene = true, persistent = true, is_blossom_chest = true, area_id = 101 }
	},
	triggers = {
		{ config_id = 1047038, name = "ANY_MONSTER_DIE_47038", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_47038", trigger_count = 0 },
		{ config_id = 1047039, name = "CHALLENGE_FAIL_47039", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_47039", trigger_count = 0 },
		{ config_id = 1047040, name = "GADGET_CREATE_47040", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_47040", action = "action_EVENT_GADGET_CREATE_47040", trigger_count = 0 },
		{ config_id = 1047041, name = "GROUP_REFRESH_47041", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_47041" },
		{ config_id = 1047042, name = "BLOSSOM_CHEST_DIE_47042", event = EventType.EVENT_BLOSSOM_CHEST_DIE, source = "", condition = "condition_EVENT_BLOSSOM_CHEST_DIE_47042", action = "action_EVENT_BLOSSOM_CHEST_DIE_47042", trigger_count = 0 },
		{ config_id = 1047043, name = "SELECT_OPTION_47043", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_47043", action = "action_EVENT_SELECT_OPTION_47043", trigger_count = 0 },
		{ config_id = 1047044, name = "BLOSSOM_PROGRESS_FINISH_47044", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_47044" },
		{ config_id = 1047045, name = "GROUP_LOAD_47045", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_47045" },
		{ config_id = 1047046, name = "ANY_MONSTER_DIE_47046", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_47046", action = "action_EVENT_ANY_MONSTER_DIE_47046" },
		{ config_id = 1047047, name = "ANY_MONSTER_DIE_47047", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_47047", action = "action_EVENT_ANY_MONSTER_DIE_47047" }
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
		gadgets = { 47015, 47016, 47017, 47020, 47021, 47022, 47023, 47024, 47025, 47026, 47048, 47049, 47050, 47051, 47052, 47053, 47054, 47055 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = [默认在场的第一组魔物],
		monsters = { 47001, 47002, 47004, 47005, 47006, 47007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = [第二波怪物],
		monsters = { 47003, 47009, 47010 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = [第三波怪物],
		monsters = { 47008, 47011, 47012, 47018 },
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
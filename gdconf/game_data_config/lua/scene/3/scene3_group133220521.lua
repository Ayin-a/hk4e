-- 基础信息
local base_info = {
	group_id = 133220521
}

-- Trigger变量
local defs = {
	FatherQuest = 72193,
	group_id = 133220521,
	temari_gadget_id = 521005,
	chest_1 = 521001,
	chest_2 = 521002,
	chest_3 = 521003,
	temari_1 = 521007,
	temari_2 = 521008,
	temari_3 = 521009,
	temari_online = 521006
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
	{ config_id = 521010, npc_id = 20389, pos = { x = -3256.546, y = 242.226, z = -4710.461 }, rot = { x = 0.000, y = 30.030, z = 0.000 }, area_id = 11 }
}

-- 装置
gadgets = {
	-- 单机挑战关卡3宝箱
	{ config_id = 521003, gadget_id = 70211121, pos = { x = -3259.381, y = 242.975, z = -4708.401 }, rot = { x = 11.929, y = 115.434, z = 353.443 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
	{ config_id = 521004, gadget_id = 70900380, pos = { x = -3274.576, y = 250.064, z = -4683.193 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	-- 奥博伦球机关操作台
	{ config_id = 521005, gadget_id = 70290113, pos = { x = -3256.769, y = 243.487, z = -4708.739 }, rot = { x = 14.523, y = 114.806, z = 356.917 }, level = 2, persistent = true, is_guest_can_operate = true, area_id = 11 },
	-- 真正用来藏的球
	{ config_id = 521006, gadget_id = 70290072, pos = { x = -3257.225, y = 243.377, z = -4709.552 }, rot = { x = 14.523, y = 114.806, z = 356.917 }, level = 2, persistent = true, area_id = 11 },
	-- 手鞠球group，suite3、4、5分别用于布设三个单机关卡（如果希望增加或减少同步TD），suite6为联机挑战用的关卡
	{ config_id = 521007, gadget_id = 70290072, pos = { x = -3279.357, y = 254.424, z = -4641.878 }, rot = { x = 14.523, y = 137.298, z = 356.917 }, level = 2, area_id = 11 },
	{ config_id = 521008, gadget_id = 70290072, pos = { x = -3276.258, y = 282.249, z = -4636.279 }, rot = { x = 14.523, y = 137.298, z = 356.917 }, level = 2, area_id = 11 },
	{ config_id = 521009, gadget_id = 70290072, pos = { x = -3274.532, y = 305.770, z = -4593.724 }, rot = { x = 14.523, y = 137.298, z = 356.917 }, level = 2, area_id = 11 },
	{ config_id = 521011, gadget_id = 70900380, pos = { x = -3277.676, y = 254.552, z = -4669.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 521012, gadget_id = 70900380, pos = { x = -3279.783, y = 261.669, z = -4643.343 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 521013, gadget_id = 70900380, pos = { x = -3279.584, y = 271.082, z = -4643.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 521014, gadget_id = 70330064, pos = { x = -3274.806, y = 281.104, z = -4635.534 }, rot = { x = 350.964, y = 0.497, z = 353.713 }, level = 27, interact_id = 35, area_id = 11 },
	{ config_id = 521015, gadget_id = 70900380, pos = { x = -3279.584, y = 280.534, z = -4643.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 521016, gadget_id = 70900380, pos = { x = -3276.330, y = 283.675, z = -4621.556 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 521017, gadget_id = 70900380, pos = { x = -3275.943, y = 290.614, z = -4613.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 521018, gadget_id = 70900380, pos = { x = -3275.693, y = 299.959, z = -4610.176 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 521019, gadget_id = 70900380, pos = { x = -3291.841, y = 249.253, z = -4699.750 }, rot = { x = 0.000, y = 267.008, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 521020, gadget_id = 70900380, pos = { x = -3303.830, y = 254.422, z = -4691.575 }, rot = { x = 0.000, y = 267.008, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 521021, gadget_id = 70900380, pos = { x = -3241.616, y = 245.794, z = -4694.886 }, rot = { x = 0.000, y = 57.590, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 521022, gadget_id = 70900380, pos = { x = -3227.159, y = 250.962, z = -4696.118 }, rot = { x = 0.000, y = 57.590, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "ChallengeState", value = 0, no_refresh = true },
	{ config_id = 2, name = "ChallengeLevel", value = 1, no_refresh = true },
	{ config_id = 3, name = "pos_x", value = 0, no_refresh = true },
	{ config_id = 4, name = "pos_y", value = 0, no_refresh = true },
	{ config_id = 5, name = "pos_z", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 521001, gadget_id = 70211101, pos = { x = -3255.563, y = 242.001, z = -4711.076 }, rot = { x = 14.523, y = 137.298, z = 356.917 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 },
		{ config_id = 521002, gadget_id = 70211111, pos = { x = -3256.650, y = 241.932, z = -4712.117 }, rot = { x = 14.523, y = 137.298, z = 356.917 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 11 }
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
	end_suite = 2,
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
		gadgets = { },
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
		npcs = { 521010 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 单机挑战关卡1,
		monsters = { },
		gadgets = { 521004, 521007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 单机挑战关卡2,
		monsters = { },
		gadgets = { 521004, 521008, 521011, 521012 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 单机挑战关卡3,
		monsters = { },
		gadgets = { 521004, 521009, 521011, 521012, 521013, 521014, 521015, 521016, 521017, 521018 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 联机挑战关卡,
		monsters = { },
		gadgets = { 521004, 521011, 521012, 521013, 521014, 521015, 521016, 521017, 521018, 521019, 521020, 521021, 521022 },
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

require "V2_0/TemariChallenge"
require "V2_0/ElectricCore"
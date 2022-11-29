-- 基础信息
local base_info = {
	group_id = 111101122
}

-- Trigger变量
local defs = {
	FatherQuest = 72160,
	group_id = 111101122,
	temari_gadget_id = 122007,
	chest_1 = 122001,
	chest_2 = 122002,
	chest_3 = 122003,
	chest_online = 122006,
	temari_1 = 122031,
	temari_2 = 122032,
	temari_3 = 122033,
	temari_online = 122030
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
	{ config_id = 122036, npc_id = 20284, pos = { x = 2561.348, y = 228.772, z = -1150.656 }, rot = { x = 0.000, y = 155.521, z = 0.000 } }
}

-- 装置
gadgets = {
	-- 单机挑战关卡1宝箱
	{ config_id = 122001, gadget_id = 70211101, pos = { x = 2558.025, y = 228.705, z = -1153.870 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	-- 单机挑战关卡2宝箱
	{ config_id = 122002, gadget_id = 70211111, pos = { x = 2559.534, y = 228.693, z = -1153.808 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true },
	-- 单机挑战关卡3宝箱
	{ config_id = 122003, gadget_id = 70211121, pos = { x = 2561.166, y = 228.830, z = -1153.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "解谜高级蒙德", isOneoff = true, persistent = true },
	{ config_id = 122005, gadget_id = 70220005, pos = { x = 2570.390, y = 238.036, z = -1182.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 联机挑战宝箱
	{ config_id = 122006, gadget_id = 70211121, pos = { x = 2562.836, y = 228.830, z = -1153.863 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "解谜高级蒙德", isOneoff = true, persistent = true },
	-- 奥博伦球机关操作台
	{ config_id = 122007, gadget_id = 70290113, pos = { x = 2566.555, y = 229.560, z = -1151.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, is_guest_can_operate = true },
	{ config_id = 122014, gadget_id = 70360046, pos = { x = 2570.721, y = 232.696, z = -1174.775 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 122015, gadget_id = 70360046, pos = { x = 2570.294, y = 237.316, z = -1183.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 122017, gadget_id = 70220005, pos = { x = 2577.867, y = 238.031, z = -1182.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 122020, gadget_id = 70360046, pos = { x = 2578.198, y = 232.690, z = -1174.715 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 122021, gadget_id = 70360046, pos = { x = 2577.771, y = 237.310, z = -1183.015 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 122023, gadget_id = 70220005, pos = { x = 2564.379, y = 237.807, z = -1185.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 122026, gadget_id = 70360046, pos = { x = 2564.710, y = 232.466, z = -1177.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 122027, gadget_id = 70360046, pos = { x = 2564.283, y = 237.086, z = -1185.661 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 122028, gadget_id = 70360046, pos = { x = 2554.406, y = 228.986, z = -1164.261 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 122029, gadget_id = 70360046, pos = { x = 2553.979, y = 233.606, z = -1172.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 真正用来藏的球
	{ config_id = 122030, gadget_id = 70290072, pos = { x = 2563.781, y = 228.907, z = -1151.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 122031, gadget_id = 70290072, pos = { x = 2570.073, y = 229.935, z = -1158.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 122032, gadget_id = 70290072, pos = { x = 2568.390, y = 229.964, z = -1158.797 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 122033, gadget_id = 70290072, pos = { x = 2566.590, y = 229.778, z = -1158.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		npcs = { 122036 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 单机挑战关卡1,
		monsters = { },
		gadgets = { 122005, 122014, 122015, 122031 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 单机挑战关卡2,
		monsters = { },
		gadgets = { 122017, 122020, 122021, 122032 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 单机挑战关卡3,
		monsters = { },
		gadgets = { 122023, 122026, 122027, 122033 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 联机挑战关卡,
		monsters = { },
		gadgets = { 122028, 122029 },
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
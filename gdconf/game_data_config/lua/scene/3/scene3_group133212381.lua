-- 基础信息
local base_info = {
	group_id = 133212381
}

-- Trigger变量
local defs = {
	FatherQuest = 72189,
	group_id = 133212381,
	temari_gadget_id = 381005,
	chest_1 = 381001,
	chest_2 = 381002,
	chest_3 = 381003,
	temari_1 = 381007,
	temari_2 = 381008,
	temari_3 = 381009,
	temari_online = 381006
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
	{ config_id = 381010, npc_id = 20394, pos = { x = -3891.304, y = 267.195, z = -2261.074 }, rot = { x = 0.000, y = 272.460, z = 0.000 }, area_id = 13 }
}

-- 装置
gadgets = {
	-- 单机挑战关卡3宝箱
	{ config_id = 381003, gadget_id = 70211121, pos = { x = -3894.104, y = 266.549, z = -2256.594 }, rot = { x = 0.000, y = 313.644, z = 0.000 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	-- 奥博伦球机关操作台
	{ config_id = 381005, gadget_id = 70290113, pos = { x = -3892.237, y = 268.217, z = -2262.416 }, rot = { x = 0.000, y = 165.291, z = 0.000 }, level = 2, persistent = true, is_guest_can_operate = true, area_id = 13 },
	-- 真正用来藏的球
	{ config_id = 381006, gadget_id = 70290072, pos = { x = -3894.463, y = 267.257, z = -2260.936 }, rot = { x = 0.000, y = 165.291, z = 0.000 }, level = 2, persistent = true, area_id = 13 },
	-- 手鞠球group，suite3、4、5分别用于布设三个单机关卡（如果希望增加或减少同步TD），suite6为联机挑战用的关卡
	{ config_id = 381007, gadget_id = 70290072, pos = { x = -3894.692, y = 248.139, z = -2281.026 }, rot = { x = 0.000, y = 165.291, z = 0.000 }, level = 2, area_id = 13 },
	{ config_id = 381008, gadget_id = 70290072, pos = { x = -3897.423, y = 232.092, z = -2292.685 }, rot = { x = 0.000, y = 165.291, z = 0.000 }, level = 2, area_id = 13 },
	{ config_id = 381009, gadget_id = 70290072, pos = { x = -3897.612, y = 297.967, z = -2256.236 }, rot = { x = 0.000, y = 165.291, z = 0.000 }, level = 2, area_id = 13 }
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
		{ config_id = 381001, gadget_id = 70211101, pos = { x = -3892.165, y = 266.964, z = -2258.667 }, rot = { x = 0.000, y = 287.580, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
		{ config_id = 381002, gadget_id = 70211111, pos = { x = -3893.282, y = 266.815, z = -2257.995 }, rot = { x = 0.000, y = 292.538, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
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
		npcs = { 381010 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 单机挑战关卡1,
		monsters = { },
		gadgets = { 381007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 单机挑战关卡2,
		monsters = { },
		gadgets = { 381008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 单机挑战关卡3,
		monsters = { },
		gadgets = { 381009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 联机挑战关卡,
		monsters = { },
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

require "V2_0/TemariChallenge"
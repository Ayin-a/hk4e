-- 基础信息
local base_info = {
	group_id = 133212354
}

-- Trigger变量
local defs = {
	FatherQuest = 72186,
	group_id = 133212354,
	temari_gadget_id = 354005,
	chest_1 = 354001,
	chest_2 = 354002,
	chest_3 = 354003,
	temari_1 = 354007,
	temari_2 = 354008,
	temari_3 = 354009,
	temari_online = 354006
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
	{ config_id = 354010, npc_id = 20391, pos = { x = -3629.836, y = 206.102, z = -2958.447 }, rot = { x = 0.000, y = 98.497, z = 0.000 }, area_id = 12 }
}

-- 装置
gadgets = {
	-- 单机挑战关卡3宝箱
	{ config_id = 354003, gadget_id = 70211121, pos = { x = -3629.358, y = 205.539, z = -2956.091 }, rot = { x = 0.000, y = 91.436, z = 0.000 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	-- 奥博伦球机关操作台
	{ config_id = 354005, gadget_id = 70290113, pos = { x = -3627.533, y = 206.082, z = -2957.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, is_guest_can_operate = true, area_id = 12 },
	-- 真正用来藏的球
	{ config_id = 354006, gadget_id = 70290072, pos = { x = -3627.182, y = 205.831, z = -2959.306 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 12 },
	-- 手鞠球group，suite3、4、5分别用于布设三个单机关卡（如果希望增加或减少同步TD），suite6为联机挑战用的关卡
	{ config_id = 354007, gadget_id = 70290072, pos = { x = -3645.892, y = 217.553, z = -2970.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 12 },
	{ config_id = 354008, gadget_id = 70290072, pos = { x = -3651.109, y = 202.274, z = -2992.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 12 },
	{ config_id = 354009, gadget_id = 70290072, pos = { x = -3648.745, y = 233.999, z = -2998.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 12 }
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
		{ config_id = 354001, gadget_id = 70211101, pos = { x = -3630.793, y = 205.979, z = -2956.122 }, rot = { x = 0.000, y = 93.650, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
		{ config_id = 354002, gadget_id = 70211111, pos = { x = -3630.843, y = 205.701, z = -2954.496 }, rot = { x = 0.000, y = 86.360, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
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
		npcs = { 354010 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 单机挑战关卡1,
		monsters = { },
		gadgets = { 354007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 单机挑战关卡2,
		monsters = { },
		gadgets = { 354008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 单机挑战关卡3,
		monsters = { },
		gadgets = { 354009 },
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
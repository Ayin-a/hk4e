-- 基础信息
local base_info = {
	group_id = 133213472
}

-- Trigger变量
local defs = {
	FatherQuest = 72187,
	group_id = 133213472,
	temari_gadget_id = 472005,
	chest_1 = 472001,
	chest_2 = 472002,
	chest_3 = 472003,
	temari_1 = 472007,
	temari_2 = 472008,
	temari_3 = 472009,
	temari_online = 472006
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
	{ config_id = 472010, npc_id = 20392, pos = { x = -3950.414, y = 263.290, z = -3184.889 }, rot = { x = 0.000, y = 69.323, z = 0.000 }, area_id = 12 }
}

-- 装置
gadgets = {
	-- 单机挑战关卡3宝箱
	{ config_id = 472003, gadget_id = 70211121, pos = { x = -3948.737, y = 263.047, z = -3180.419 }, rot = { x = 0.000, y = 173.886, z = 0.000 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	-- 奥博伦球机关操作台
	{ config_id = 472005, gadget_id = 70290113, pos = { x = -3950.639, y = 264.230, z = -3183.848 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, is_guest_can_operate = true, area_id = 12 },
	-- 真正用来藏的球
	{ config_id = 472006, gadget_id = 70290072, pos = { x = -3947.378, y = 263.297, z = -3185.738 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 12 },
	-- 手鞠球group，suite3、4、5分别用于布设三个单机关卡（如果希望增加或减少同步TD），suite6为联机挑战用的关卡
	{ config_id = 472007, gadget_id = 70290072, pos = { x = -3956.017, y = 246.303, z = -3135.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 12 },
	{ config_id = 472008, gadget_id = 70290072, pos = { x = -3976.463, y = 235.332, z = -3168.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 12 },
	{ config_id = 472009, gadget_id = 70290072, pos = { x = -3929.840, y = 291.915, z = -3127.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 12 }
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
		{ config_id = 472001, gadget_id = 70211101, pos = { x = -3951.026, y = 263.543, z = -3181.815 }, rot = { x = 0.000, y = 141.221, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
		{ config_id = 472002, gadget_id = 70211111, pos = { x = -3949.986, y = 263.326, z = -3181.028 }, rot = { x = 0.000, y = 152.141, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 }
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
		npcs = { 472010 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 单机挑战关卡1,
		monsters = { },
		gadgets = { 472007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 单机挑战关卡2,
		monsters = { },
		gadgets = { 472008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 单机挑战关卡3,
		monsters = { },
		gadgets = { 472009 },
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
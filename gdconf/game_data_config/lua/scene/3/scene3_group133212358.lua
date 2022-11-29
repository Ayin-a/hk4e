-- 基础信息
local base_info = {
	group_id = 133212358
}

-- Trigger变量
local defs = {
	FatherQuest = 72188,
	group_id = 133212358,
	temari_gadget_id = 358005,
	chest_1 = 358001,
	chest_2 = 358002,
	chest_3 = 358003,
	temari_1 = 358007,
	temari_2 = 358008,
	temari_3 = 358009,
	temari_online = 358006
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
	{ config_id = 358010, npc_id = 20393, pos = { x = -3974.828, y = 201.806, z = -2282.473 }, rot = { x = 0.000, y = 298.705, z = 0.000 }, area_id = 13 }
}

-- 装置
gadgets = {
	-- 单机挑战关卡3宝箱
	{ config_id = 358003, gadget_id = 70211121, pos = { x = -3972.677, y = 201.768, z = -2282.380 }, rot = { x = 0.000, y = 300.683, z = 0.000 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	-- 奥博伦球机关操作台
	{ config_id = 358005, gadget_id = 70290113, pos = { x = -3975.059, y = 202.713, z = -2283.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, is_guest_can_operate = true, area_id = 13 },
	-- 真正用来藏的球
	{ config_id = 358006, gadget_id = 70290072, pos = { x = -3971.920, y = 202.004, z = -2283.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 13 },
	-- 手鞠球group，suite3、4、5分别用于布设三个单机关卡（如果希望增加或减少同步TD），suite6为联机挑战用的关卡
	{ config_id = 358007, gadget_id = 70290072, pos = { x = -3986.275, y = 249.661, z = -2257.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 13 },
	{ config_id = 358008, gadget_id = 70290072, pos = { x = -3944.613, y = 240.653, z = -2265.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 13 },
	{ config_id = 358009, gadget_id = 70290072, pos = { x = -4024.391, y = 238.857, z = -2275.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 13 }
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
		{ config_id = 358001, gadget_id = 70211101, pos = { x = -3971.000, y = 201.320, z = -2279.797 }, rot = { x = 0.000, y = 299.309, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
		{ config_id = 358002, gadget_id = 70211111, pos = { x = -3971.855, y = 201.572, z = -2281.035 }, rot = { x = 0.000, y = 299.264, z = 0.000 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
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
		npcs = { 358010 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 单机挑战关卡1,
		monsters = { },
		gadgets = { 358007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 单机挑战关卡2,
		monsters = { },
		gadgets = { 358008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 单机挑战关卡3,
		monsters = { },
		gadgets = { 358009 },
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
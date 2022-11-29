-- 基础信息
local base_info = {
	group_id = 133217249
}

-- Trigger变量
local defs = {
	FatherQuest = 72220,
	group_id = 133217249,
	temari_gadget_id = 249004,
	chest_1 = 0,
	chest_2 = 0,
	chest_3 = 249003,
	temari_1 = 249006,
	temari_2 = 249007,
	temari_3 = 249008,
	temari_online = 249005
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
	{ config_id = 249001, npc_id = 20433, pos = { x = -4337.325, y = 215.223, z = -3832.110 }, rot = { x = 0.000, y = 216.925, z = 0.000 }, area_id = 14 }
}

-- 装置
gadgets = {
	-- 单机挑战关卡3宝箱
	{ config_id = 249003, gadget_id = 70211121, pos = { x = -4336.142, y = 214.950, z = -3833.321 }, rot = { x = 352.224, y = 237.987, z = 7.734 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	-- 奥博伦球机关操作台
	{ config_id = 249004, gadget_id = 70290113, pos = { x = -4338.398, y = 216.269, z = -3831.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, is_guest_can_operate = true, area_id = 14 },
	-- 真正用来藏的球
	{ config_id = 249005, gadget_id = 70290072, pos = { x = -4338.417, y = 216.159, z = -3831.768 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	-- 手鞠球group，suite3、4、5分别用于布设三个单机关卡（如果希望增加或减少同步TD），suite6为联机挑战用的关卡
	{ config_id = 249006, gadget_id = 70290072, pos = { x = -4373.692, y = 197.650, z = -3852.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 14 },
	{ config_id = 249007, gadget_id = 70290072, pos = { x = -4385.435, y = 187.833, z = -3779.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 14 },
	{ config_id = 249008, gadget_id = 70290072, pos = { x = -4384.335, y = 160.917, z = -3823.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 14 }
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
	npcs = {
		{ config_id = 249009, npc_id = 20433, pos = { x = -4337.325, y = 215.223, z = -3832.110 }, rot = { x = 0.000, y = 216.925, z = 0.000 }, area_id = 14 }
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
		npcs = { 249001 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 单机挑战关卡1,
		monsters = { },
		gadgets = { 249006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 单机挑战关卡2,
		monsters = { },
		gadgets = { 249007 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 单机挑战关卡3,
		monsters = { },
		gadgets = { 249008 },
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
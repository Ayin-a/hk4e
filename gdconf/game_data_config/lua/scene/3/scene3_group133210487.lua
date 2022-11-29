-- 基础信息
local base_info = {
	group_id = 133210487
}

-- Trigger变量
local defs = {
	FatherQuest = 72219,
	group_id = 133210487,
	temari_gadget_id = 487004,
	chest_1 = 0,
	chest_2 = 0,
	chest_3 = 487002,
	temari_1 = 487006,
	temari_2 = 487007,
	temari_3 = 487008,
	temari_online = 487005
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
	{ config_id = 487001, npc_id = 20432, pos = { x = -3708.022, y = 150.316, z = -679.040 }, rot = { x = 0.000, y = 132.723, z = 0.000 }, area_id = 17 }
}

-- 装置
gadgets = {
	-- 单机挑战关卡2宝箱
	{ config_id = 487002, gadget_id = 70211121, pos = { x = -3708.676, y = 149.800, z = -682.146 }, rot = { x = 349.485, y = 0.392, z = 355.744 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 487003, gadget_id = 70900380, pos = { x = -3634.441, y = 180.128, z = -663.944 }, rot = { x = 0.000, y = 7.377, z = 0.000 }, level = 30, area_id = 17 },
	-- 奥博伦球机关操作台
	{ config_id = 487004, gadget_id = 70290113, pos = { x = -3708.874, y = 151.067, z = -680.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, is_guest_can_operate = true, area_id = 17 },
	-- 真正用来藏的球
	{ config_id = 487005, gadget_id = 70290072, pos = { x = -3704.909, y = 151.067, z = -679.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 17 },
	-- 手鞠球group，suite3、4、5分别用于布设三个单机关卡（如果希望增加或减少同步TD），suite6为联机挑战用的关卡
	{ config_id = 487006, gadget_id = 70290072, pos = { x = -3671.492, y = 153.277, z = -624.307 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 17 },
	{ config_id = 487007, gadget_id = 70290072, pos = { x = -3596.176, y = 180.523, z = -739.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 17 },
	{ config_id = 487008, gadget_id = 70290072, pos = { x = -3748.835, y = 165.536, z = -600.435 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 17 },
	{ config_id = 487009, gadget_id = 70900380, pos = { x = -3627.188, y = 182.181, z = -675.743 }, rot = { x = 0.000, y = 105.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 487010, gadget_id = 70900380, pos = { x = -3619.822, y = 184.112, z = -688.482 }, rot = { x = 0.000, y = 28.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 487011, gadget_id = 70900380, pos = { x = -3612.696, y = 184.928, z = -702.912 }, rot = { x = 0.000, y = 97.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 487012, gadget_id = 70900380, pos = { x = -3606.051, y = 184.928, z = -718.653 }, rot = { x = 0.000, y = 273.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 487013, gadget_id = 70900380, pos = { x = -3714.165, y = 150.618, z = -693.049 }, rot = { x = 0.000, y = 352.295, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 487014, gadget_id = 70900380, pos = { x = -3729.338, y = 159.317, z = -697.011 }, rot = { x = 0.000, y = 352.295, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 487015, gadget_id = 70900380, pos = { x = -3743.255, y = 168.832, z = -698.857 }, rot = { x = 0.000, y = 352.295, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 487016, gadget_id = 70900380, pos = { x = -3704.050, y = 153.144, z = -663.757 }, rot = { x = 0.000, y = 277.938, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 487017, gadget_id = 70900380, pos = { x = -3704.449, y = 157.656, z = -649.731 }, rot = { x = 0.000, y = 277.938, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 487018, gadget_id = 70900380, pos = { x = -3704.628, y = 164.557, z = -635.004 }, rot = { x = 0.000, y = 277.938, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 487019, gadget_id = 70900380, pos = { x = -3704.594, y = 173.177, z = -620.232 }, rot = { x = 0.000, y = 277.938, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 487020, gadget_id = 70330064, pos = { x = -3713.757, y = 150.277, z = -681.625 }, rot = { x = 9.796, y = 128.322, z = 354.579 }, level = 30, interact_id = 35, area_id = 17 },
	{ config_id = 487021, gadget_id = 70330064, pos = { x = -3636.256, y = 178.858, z = -651.554 }, rot = { x = 0.481, y = 129.052, z = 356.486 }, level = 30, interact_id = 35, area_id = 17 }
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
		npcs = { 487001 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 单机挑战关卡1,
		monsters = { },
		gadgets = { 487006 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 单机挑战关卡2,
		monsters = { },
		gadgets = { 487003, 487007, 487009, 487010, 487011, 487012, 487021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 单机挑战关卡3,
		monsters = { },
		gadgets = { 487008 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 联机挑战关卡,
		monsters = { },
		gadgets = { 487013, 487014, 487015, 487016, 487017, 487018, 487019, 487020 },
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
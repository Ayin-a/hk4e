-- 基础信息
local base_info = {
	group_id = 111101242
}

-- DEFS_MISCS
local regionID = 242002

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
}

-- 装置
gadgets = {
	{ config_id = 242001, gadget_id = 70330138, pos = { x = 2505.858, y = 207.304, z = -1264.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop, persistent = true, worktop_config = { is_persistent = true, init_options = { 47 } } },
	{ config_id = 242003, gadget_id = 70350082, pos = { x = 2497.418, y = 209.598, z = -1268.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, worktop_config = { is_persistent = true, init_options = { 187 } } },
	{ config_id = 242004, gadget_id = 70211152, pos = { x = 2498.792, y = 208.661, z = -1265.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 242002, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2505.509, y = 207.632, z = -1266.095 }, team_ability_group_list = { "DynamicAbility_MichiaeMatsuri_Pressure" } }
}

-- 触发器
triggers = {
}

-- 变量
variables = {
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
		gadgets = { 242001, 242003, 242004 },
		regions = { 242002 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_5/DarkPressure"
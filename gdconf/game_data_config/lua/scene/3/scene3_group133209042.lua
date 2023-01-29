-- 基础信息
local base_info = {
	group_id = 133209042
}

-- Trigger变量
local defs = {
	gallery_id = 32001
}

-- DEFS_MISCS
PlayerElectrohercules = 42001
EnemyElectrohercules = {42002,42003,42004}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 42001, monster_id = 38050590, pos = { x = -2189.534, y = 201.601, z = -3478.527 }, rot = { x = 0.000, y = 33.049, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, area_id = 11, isPartner = true },
	{ config_id = 42002, monster_id = 28050501, pos = { x = -2188.631, y = 201.601, z = -3477.135 }, rot = { x = 0.000, y = 213.049, z = 0.000 }, level = 1, drop_tag = "魔法生物", pose_id = 1, area_id = 11 },
	{ config_id = 42003, monster_id = 28050502, pos = { x = -2188.631, y = 201.601, z = -3477.135 }, rot = { x = 0.000, y = 213.049, z = 0.000 }, level = 1, drop_tag = "魔法生物", pose_id = 1, area_id = 11 },
	{ config_id = 42004, monster_id = 28050503, pos = { x = -2188.631, y = 201.601, z = -3477.135 }, rot = { x = 0.000, y = 213.049, z = 0.000 }, level = 1, drop_tag = "魔法生物", pose_id = 1, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 42005, gadget_id = 70290772, pos = { x = -2190.992, y = 199.943, z = -3480.798 }, rot = { x = 0.000, y = 33.049, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 42006, gadget_id = 70290772, pos = { x = -2187.729, y = 199.943, z = -3475.782 }, rot = { x = 0.000, y = 33.049, z = 0.000 }, level = 1, area_id = 11 }
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
		gadgets = { 42005, 42006 },
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

require "V3_4/ElectroherculesBattle"
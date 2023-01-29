-- 基础信息
local base_info = {
	group_id = 111101375
}

-- DEFS_MISCS
local PlayerElectrohercules = 375001
local EnemyElectrohercules = {375002,375003,375004}
local weather_id = 3500
local Battlefield = {
	group_id = 111101374,
	config_id = 374001
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 375001, monster_id = 38050590, pos = { x = 2773.922, y = 263.814, z = -1210.863 }, rot = { x = 0.000, y = 163.551, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 1, isPartner = true },
	{ config_id = 375002, monster_id = 28050501, pos = { x = 2774.524, y = 263.835, z = -1212.931 }, rot = { x = 0.000, y = 343.551, z = 0.000 }, level = 1, drop_tag = "魔法生物", pose_id = 1 },
	{ config_id = 375003, monster_id = 28050502, pos = { x = 2774.524, y = 263.835, z = -1212.931 }, rot = { x = 0.000, y = 343.551, z = 0.000 }, level = 1, drop_tag = "魔法生物", pose_id = 1 },
	{ config_id = 375004, monster_id = 28050503, pos = { x = 2774.524, y = 263.835, z = -1212.931 }, rot = { x = 0.000, y = 343.551, z = 0.000 }, level = 1, drop_tag = "魔法生物", pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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

require "V3_4/ElectroherculesBattle"
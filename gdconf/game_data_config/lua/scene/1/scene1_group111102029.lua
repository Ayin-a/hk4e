-- 基础信息
local base_info = {
	group_id = 111102029
}

-- Trigger变量
local defs = {
	group_ID = 111102029,
	trigger_playRegion = 29006,
	gadget_1 = 29002
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
}

-- 装置
gadgets = {
	{ config_id = 29001, gadget_id = 70950068, pos = { x = 1953.391, y = 196.402, z = -1323.706 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 29002, gadget_id = 70950070, pos = { x = 1934.105, y = 194.951, z = -1335.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 29003, gadget_id = 70950069, pos = { x = 1947.854, y = 196.355, z = -1335.898 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 29004, gadget_id = 70950069, pos = { x = 1936.948, y = 193.745, z = -1323.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 29005, gadget_id = 70211111, pos = { x = 1941.329, y = 194.131, z = -1329.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 29006, shape = RegionShape.SPHERE, radius = 30, pos = { x = 1945.229, y = 194.876, z = -1328.633 }, team_ability_group_list = { "Move_Electric_Stake_Play" } }
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
		gadgets = { 29001, 29002, 29003, 29004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 29006 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 29005 },
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

require "BlackBoxPlay/ChargingPort"
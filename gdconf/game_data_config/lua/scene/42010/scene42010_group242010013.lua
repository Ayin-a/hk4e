-- 基础信息
local base_info = {
	group_id = 242010013
}

-- Trigger变量
local defs = {
	timer = 60,
	group_id = 242010013,
	challange_group_id = 242010001
}

-- DEFS_MISCS
local light_bridge={

}
local wind_field={
	{operator_id=13001,effect_id=13002,gadget_id={13003}}
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
	{ config_id = 13001, gadget_id = 70360145, pos = { x = -2.027, y = 4.730, z = -31.111 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 13002, gadget_id = 70360140, pos = { x = -2.027, y = 4.730, z = -31.054 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 13003, gadget_id = 70690025, pos = { x = 13.708, y = -6.293, z = -32.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
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
		gadgets = { 13001, 13002 },
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

require "TowerDefense_Trap"
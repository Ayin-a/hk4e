-- 基础信息
local base_info = {
	group_id = 242014038
}

-- Trigger变量
local defs = {
	timer = 60,
	group_id = 242014038,
	challange_group_id = 242014031
}

-- DEFS_MISCS
local light_bridge={

}
local wind_field={
	{operator_id=38001,effect_id=38002,gadget_id={38003}}
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
	{ config_id = 38001, gadget_id = 70360145, pos = { x = 36.018, y = -4.153, z = -68.185 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
	{ config_id = 38002, gadget_id = 70360140, pos = { x = 36.018, y = -4.153, z = -68.185 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 38003, gadget_id = 70690025, pos = { x = 27.000, y = -9.572, z = -68.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
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
		gadgets = { 38001, 38002 },
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
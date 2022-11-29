-- 基础信息
local base_info = {
	group_id = 250033023
}

-- Trigger变量
local defs = {
	timer = 30,
	group_id = 250033023,
	challange_group_id = 250033001
}

-- DEFS_MISCS
local light_bridge={

}
local wind_field={
	{operator_id=23001,effect_id=23002,gadget_id={23003,23004}}
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
	{ config_id = 23001, gadget_id = 70360145, pos = { x = 130.981, y = -13.409, z = -15.070 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 23002, gadget_id = 70360140, pos = { x = 130.981, y = -13.409, z = -15.013 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 23003, gadget_id = 70690011, pos = { x = 121.143, y = -16.941, z = -10.177 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 23004, gadget_id = 70690011, pos = { x = 121.143, y = -16.941, z = -23.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
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
		gadgets = { 23001, 23002 },
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
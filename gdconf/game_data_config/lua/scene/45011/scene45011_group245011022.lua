-- 基础信息
local base_info = {
	group_id = 245011022
}

-- Trigger变量
local defs = {
	timer = 60,
	group_id = 245011022,
	challange_group_id = 245011017
}

-- DEFS_MISCS
local light_bridge={

}
local wind_field={
	{operator_id=22001,effect_id=22002,gadget_id={22003,22004,22005}}
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
	{ config_id = 22003, gadget_id = 70690025, pos = { x = 92.063, y = -25.000, z = -9.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 22004, gadget_id = 70690025, pos = { x = 92.063, y = -25.000, z = -22.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 22005, gadget_id = 70690025, pos = { x = 92.063, y = -25.000, z = -17.036 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 22001, gadget_id = 70360145, pos = { x = 82.841, y = -13.376, z = -14.219 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
		{ config_id = 22002, gadget_id = 70360140, pos = { x = 82.841, y = -13.376, z = -14.219 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
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

require "TowerDefense_Trap"
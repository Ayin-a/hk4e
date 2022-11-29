-- 基础信息
local base_info = {
	group_id = 133212212
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133212212,
	gadget_1 = 212001,
	gadget_2 = 212002,
	gadget_3 = 212003,
	gadget_4 = 212004,
	gadget_5 = 0
}

-- DEFS_MISCS


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
		{ config_id = 212001, gadget_id = 70330074, pos = { x = -3834.934, y = 325.737, z = -2605.774 }, rot = { x = 4.462, y = 314.000, z = 5.392 }, level = 30, state = GadgetState.Action01, area_id = 13 },
		{ config_id = 212002, gadget_id = 70330075, pos = { x = -3830.855, y = 326.277, z = -2603.500 }, rot = { x = 5.794, y = 297.994, z = 4.811 }, level = 30, state = GadgetState.Action02, area_id = 13 },
		{ config_id = 212003, gadget_id = 70330073, pos = { x = -3833.207, y = 325.055, z = -2598.337 }, rot = { x = 0.000, y = 254.252, z = 0.000 }, level = 30, state = GadgetState.Action03, area_id = 13 },
		{ config_id = 212004, gadget_id = 70330075, pos = { x = -3834.038, y = 326.260, z = -2590.920 }, rot = { x = 15.782, y = 206.279, z = 349.988 }, level = 30, state = GadgetState.Action01, area_id = 13 },
		{ config_id = 212006, gadget_id = 70211111, pos = { x = -3837.015, y = 323.907, z = -2595.937 }, rot = { x = 355.544, y = 229.102, z = 0.314 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
	},
	triggers = {
		{ config_id = 1212007, name = "VARIABLE_CHANGE_212007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_212007", action = "" }
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
	},
	{
		-- suite_id = 2,
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

require "BlackBoxPlay/LightResonanceStone"
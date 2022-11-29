-- 基础信息
local base_info = {
	group_id = 133212282
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133212282,
	gadget_1 = 282001,
	gadget_2 = 282002,
	gadget_3 = 282003,
	gadget_4 = 0,
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
		{ config_id = 282001, gadget_id = 70330075, pos = { x = -4024.738, y = 199.019, z = -2705.510 }, rot = { x = 5.322, y = 359.267, z = 358.871 }, level = 30, state = GadgetState.Action01, area_id = 13 },
		{ config_id = 282002, gadget_id = 70330075, pos = { x = -4029.531, y = 199.406, z = -2711.804 }, rot = { x = 0.000, y = 57.318, z = 0.000 }, level = 30, state = GadgetState.Action02, area_id = 13 },
		{ config_id = 282003, gadget_id = 70330075, pos = { x = -4021.067, y = 199.592, z = -2710.946 }, rot = { x = 1.885, y = 103.628, z = 5.153 }, level = 30, state = GadgetState.Action03, area_id = 13 },
		{ config_id = 282006, gadget_id = 70211111, pos = { x = -4023.737, y = 199.321, z = -2708.311 }, rot = { x = 353.335, y = 223.400, z = 353.966 }, level = 26, drop_tag = "解谜中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
	},
	triggers = {
		{ config_id = 1282007, name = "VARIABLE_CHANGE_282007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_282007", action = "" }
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
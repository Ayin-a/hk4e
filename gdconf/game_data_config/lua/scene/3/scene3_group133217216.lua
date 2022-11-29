-- 基础信息
local base_info = {
	group_id = 133217216
}

-- Trigger变量
local defs = {
	loop_mode = 1,
	group_ID = 133217216,
	gadget_1 = 216001,
	gadget_2 = 216002,
	gadget_3 = 216003,
	gadget_4 = 216004
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
		{ config_id = 216001, gadget_id = 70330073, pos = { x = -5040.758, y = 199.765, z = -3792.326 }, rot = { x = 0.000, y = 235.421, z = 0.000 }, level = 30, state = GadgetState.Action01, area_id = 14 },
		{ config_id = 216002, gadget_id = 70330073, pos = { x = -5037.006, y = 200.407, z = -3800.466 }, rot = { x = 0.000, y = 77.635, z = 0.000 }, level = 30, state = GadgetState.Action02, area_id = 14 },
		{ config_id = 216003, gadget_id = 70330073, pos = { x = -5042.880, y = 199.456, z = -3804.833 }, rot = { x = 0.000, y = 72.902, z = 0.000 }, level = 30, state = GadgetState.Action03, area_id = 14 },
		{ config_id = 216004, gadget_id = 70330073, pos = { x = -5047.339, y = 199.309, z = -3795.892 }, rot = { x = 0.000, y = 51.658, z = 0.000 }, level = 30, state = GadgetState.Action01, area_id = 14 },
		{ config_id = 216005, gadget_id = 70330064, pos = { x = -4983.496, y = 203.880, z = -3807.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, interact_id = 35, area_id = 14 },
		{ config_id = 216006, gadget_id = 70211101, pos = { x = -5048.237, y = 199.075, z = -3801.552 }, rot = { x = 354.128, y = 52.285, z = 1.155 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
		{ config_id = 216008, gadget_id = 70330105, pos = { x = -5036.606, y = 200.264, z = -3807.260 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 14 }
	},
	triggers = {
		{ config_id = 1216007, name = "VARIABLE_CHANGE_216007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_216007", action = "" }
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
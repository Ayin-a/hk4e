-- 基础信息
local base_info = {
	group_id = 133222168
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 133222168,
	gadget_1 = 168001,
	gadget_2 = 168002,
	gadget_3 = 168003,
	gadget_4 = 168004,
	gadget_5 = 168005
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
		{ config_id = 168001, gadget_id = 70330075, pos = { x = -5211.614, y = 199.874, z = -4309.363 }, rot = { x = 0.000, y = 149.346, z = 0.000 }, level = 30, state = GadgetState.Action03, area_id = 14 },
		{ config_id = 168002, gadget_id = 70330075, pos = { x = -5208.624, y = 200.620, z = -4308.436 }, rot = { x = 0.000, y = 158.656, z = 0.000 }, level = 30, state = GadgetState.Action01, area_id = 14 },
		{ config_id = 168003, gadget_id = 70330075, pos = { x = -5202.611, y = 200.453, z = -4305.477 }, rot = { x = 7.210, y = 219.646, z = 9.336 }, level = 30, state = GadgetState.Action01, area_id = 14 },
		{ config_id = 168004, gadget_id = 70330075, pos = { x = -5200.729, y = 198.968, z = -4311.613 }, rot = { x = 0.000, y = 83.052, z = 0.000 }, level = 30, state = GadgetState.Action01, area_id = 14 },
		{ config_id = 168005, gadget_id = 70330075, pos = { x = -5201.728, y = 198.158, z = -4315.245 }, rot = { x = 0.000, y = 105.543, z = 0.000 }, level = 2, state = GadgetState.Action03, area_id = 14 },
		{ config_id = 168006, gadget_id = 70211101, pos = { x = -5205.017, y = 197.105, z = -4313.949 }, rot = { x = 344.609, y = 34.982, z = 344.483 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
		{ config_id = 168008, gadget_id = 70900387, pos = { x = -5202.246, y = 199.896, z = -4305.605 }, rot = { x = 5.567, y = 281.213, z = 351.027 }, level = 30, area_id = 14 }
	},
	triggers = {
		{ config_id = 1168007, name = "VARIABLE_CHANGE_168007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_168007", action = "action_EVENT_VARIABLE_CHANGE_168007" }
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
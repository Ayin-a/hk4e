-- 基础信息
local base_info = {
	group_id = 133217171
}

-- Trigger变量
local defs = {
	group_ID = 133217171,
	gadget_fundation01 = 171001,
	gadget_hand01 = 171003,
	gadget_fundation02 = 171002,
	gadget_hand02 = 171004,
	gadget_fundation03 = 171007,
	gadget_hand03 = 171008,
	gadget_fundation04 = 171009,
	gadget_hand04 = 171010,
	gadget_fundation05 = 0,
	gadget_hand05 = 0,
	minDiscrapancy = 15
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
		{ config_id = 171001, gadget_id = 70950084, pos = { x = -5037.885, y = 201.098, z = -3789.845 }, rot = { x = 0.000, y = 53.714, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 171002, gadget_id = 70950084, pos = { x = -5063.869, y = 185.832, z = -3774.283 }, rot = { x = 0.000, y = 257.474, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 171003, gadget_id = 70950085, pos = { x = -5037.885, y = 201.098, z = -3789.845 }, rot = { x = 0.000, y = 284.109, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 14 },
		{ config_id = 171004, gadget_id = 70950085, pos = { x = -5063.869, y = 185.832, z = -3774.283 }, rot = { x = 0.000, y = 340.385, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 14 },
		{ config_id = 171005, gadget_id = 70211121, pos = { x = -5063.954, y = 166.949, z = -3753.837 }, rot = { x = 10.912, y = 157.156, z = 9.082 }, level = 26, drop_tag = "解谜高级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
		{ config_id = 171007, gadget_id = 70950084, pos = { x = -5063.248, y = 166.815, z = -3756.855 }, rot = { x = 0.000, y = 339.638, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 171008, gadget_id = 70950085, pos = { x = -5063.248, y = 166.815, z = -3756.855 }, rot = { x = 0.000, y = 188.414, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 171009, gadget_id = 70950084, pos = { x = -5064.606, y = 169.202, z = -3770.194 }, rot = { x = 0.000, y = 24.375, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 171010, gadget_id = 70950085, pos = { x = -5064.606, y = 169.202, z = -3770.194 }, rot = { x = 0.000, y = 188.414, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 14 }
	},
	triggers = {
		{ config_id = 1171006, name = "VARIABLE_CHANGE_171006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_171006", action = "" }
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
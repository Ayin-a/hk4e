-- 基础信息
local base_info = {
	group_id = 199004077
}

-- Trigger变量
local defs = {
	loop_mode = 0,
	group_ID = 199004077,
	gadget_1 = 77001,
	gadget_2 = 77002,
	gadget_3 = 77003,
	gadget_4 = 77004,
	gadget_5 = 77005
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
		{ config_id = 77001, gadget_id = 70950055, pos = { x = -375.057, y = 133.559, z = -591.211 }, rot = { x = 0.000, y = 203.830, z = 0.000 }, level = 20, state = GadgetState.Action01, area_id = 400 },
		{ config_id = 77002, gadget_id = 70950055, pos = { x = -388.421, y = 132.678, z = -582.268 }, rot = { x = 0.000, y = 87.739, z = 0.000 }, level = 20, state = GadgetState.Action02, area_id = 400 },
		{ config_id = 77003, gadget_id = 70950055, pos = { x = -386.250, y = 132.850, z = -594.619 }, rot = { x = 0.000, y = 178.966, z = 0.000 }, level = 20, state = GadgetState.Action03, area_id = 400 },
		{ config_id = 77004, gadget_id = 70950055, pos = { x = -396.235, y = 132.551, z = -592.143 }, rot = { x = 0.000, y = 115.875, z = 0.000 }, level = 20, state = GadgetState.Action01, area_id = 400 },
		{ config_id = 77005, gadget_id = 70950055, pos = { x = -391.697, y = 132.859, z = -604.920 }, rot = { x = 3.002, y = 317.339, z = 3.253 }, level = 20, state = GadgetState.Action02, area_id = 400 }
	},
	triggers = {
		{ config_id = 1077007, name = "VARIABLE_CHANGE_77007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_77007", action = "" }
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
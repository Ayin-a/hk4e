-- 基础信息
local base_info = {
	group_id = 155008011
}

-- Trigger变量
local defs = {
	group_id = 155008011,
	gadget_trigger_1 = 11001,
	gadget_gate_1 = 11006,
	pointarray_1 = 500800001,
	gadget_trigger_2 = 11002,
	gadget_gate_2 = 11007,
	pointarray_2 = 500800002,
	gadget_trigger_3 = 11003,
	gadget_gate_3 = 11008,
	pointarray_3 = 500800003,
	gadget_trigger_4 = 11004,
	gadget_gate_4 = 11009,
	pointarray_4 = 500800004,
	gadget_trigger_5 = 11005,
	gadget_gate_5 = 11010,
	pointarray_5 = 500800005
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
	{ config_id = 1, name = "currentChamber", value = 0, no_refresh = true },
	{ config_id = 2, name = "altarState", value = 0, no_refresh = true },
	{ config_id = 3, name = "CurIndex", value = 1, no_refresh = false },
	{ config_id = 4, name = "CurSequence", value = 0, no_refresh = false },
	{ config_id = 5, name = "Chamber_1_State", value = 0, no_refresh = true },
	{ config_id = 6, name = "Chamber_1_Valid", value = 1, no_refresh = false },
	{ config_id = 7, name = "Chamber_2_State", value = 0, no_refresh = true },
	{ config_id = 8, name = "Chamber_2_Valid", value = 1, no_refresh = false },
	{ config_id = 9, name = "Chamber_3_State", value = 0, no_refresh = true },
	{ config_id = 10, name = "Chamber_3_Valid", value = 1, no_refresh = false }
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
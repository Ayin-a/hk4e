-- 基础信息
local base_info = {
	group_id = 133213253
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 253001,
	gadget_Teleport_2 = 253002,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 321300040,
	pointarray_2 = 0,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 253005,
	gadget_TeleportOperator_2 = 253006,
	gadget_TeleportOperator_3 = 0,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133213253,
	pointarray_Rotate = 321300043
}

-- DEFS_MISCS
connectInfo = 
{
	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1,10}

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
		{ config_id = 253001, gadget_id = 70950095, pos = { x = -4082.570, y = 205.004, z = -3483.193 }, rot = { x = 0.000, y = 36.646, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 12 },
		{ config_id = 253002, gadget_id = 70950095, pos = { x = -3963.710, y = 200.117, z = -3303.879 }, rot = { x = 5.482, y = 126.363, z = 354.090 }, level = 2, persistent = true, is_use_point_array = true, area_id = 12 },
		{ config_id = 253005, gadget_id = 70360001, pos = { x = -4082.563, y = 205.007, z = -3483.156 }, rot = { x = 353.657, y = 0.769, z = 346.192 }, level = 2, persistent = true, area_id = 12 },
		{ config_id = 253006, gadget_id = 70360001, pos = { x = -3963.701, y = 200.068, z = -3304.523 }, rot = { x = 354.696, y = 359.629, z = 8.005 }, level = 2, persistent = true, area_id = 12 }
	},
	regions = {
		{ config_id = 253009, shape = RegionShape.SPHERE, radius = 2, pos = { x = -4082.516, y = 204.962, z = -3483.444 }, area_id = 12 },
		{ config_id = 253010, shape = RegionShape.SPHERE, radius = 2, pos = { x = -3963.665, y = 200.123, z = -3303.898 }, area_id = 12 }
	},
	triggers = {
		{ config_id = 1253009, name = "ENTER_REGION_253009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_253009", action = "action_EVENT_ENTER_REGION_253009", trigger_count = 0 },
		{ config_id = 1253010, name = "ENTER_REGION_253010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_253010", action = "action_EVENT_ENTER_REGION_253010", trigger_count = 0 }
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

require "BlackBoxPlay/TeleportHighway"
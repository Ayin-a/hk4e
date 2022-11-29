-- 基础信息
local base_info = {
	group_id = 133216001
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 1001,
	gadget_Teleport_2 = 1002,
	gadget_Teleport_3 = 1003,
	gadget_Teleport_4 = 1004,
	pointarray_1 = 321600001,
	pointarray_2 = 321600002,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 1005,
	gadget_TeleportOperator_2 = 1006,
	gadget_TeleportOperator_3 = 1007,
	gadget_TeleportOperator_4 = 1008,
	group_ID = 133216001,
	pointarray_Rotate = 321600004,
	rotStep = 180
}

-- DEFS_MISCS
connectInfo = 
{
	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_2,10},
	{defs.gadget_Teleport_3,defs.gadget_Teleport_4,defs.pointarray_1,10}
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
	-- Teleport #1
	{ config_id = 1001, gadget_id = 70950095, pos = { x = -4969.266, y = 200.200, z = -2523.370 }, rot = { x = 0.000, y = 341.667, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 18 },
	-- Teleport #2
	{ config_id = 1002, gadget_id = 70950095, pos = { x = -5005.453, y = 199.932, z = -2448.906 }, rot = { x = 0.000, y = 152.824, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 18 },
	-- Teleport #3
	{ config_id = 1003, gadget_id = 70950095, pos = { x = -4986.569, y = 199.913, z = -2569.613 }, rot = { x = 0.000, y = 186.322, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 18 },
	-- Teleport #4
	{ config_id = 1004, gadget_id = 70950095, pos = { x = -5008.808, y = 200.714, z = -2652.972 }, rot = { x = 0.000, y = 22.769, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 18 },
	-- Operator #1
	{ config_id = 1005, gadget_id = 70950145, pos = { x = -4969.272, y = 194.685, z = -2523.332 }, rot = { x = 0.000, y = 341.667, z = 0.000 }, level = 2, persistent = true, area_id = 18 },
	-- Operator #2
	{ config_id = 1006, gadget_id = 70950145, pos = { x = -5005.863, y = 195.967, z = -2448.124 }, rot = { x = 0.000, y = 153.065, z = 0.000 }, level = 2, persistent = true, area_id = 18 },
	-- Operator #3
	{ config_id = 1007, gadget_id = 70950145, pos = { x = -4986.362, y = 196.344, z = -2569.823 }, rot = { x = 0.000, y = 10.856, z = 0.000 }, level = 2, persistent = true, area_id = 18 },
	-- Operator #4
	{ config_id = 1008, gadget_id = 70950145, pos = { x = -5004.837, y = 193.943, z = -2654.759 }, rot = { x = 0.000, y = 13.487, z = 0.000 }, level = 2, persistent = true, area_id = 18 },
	{ config_id = 1009, gadget_id = 70330114, pos = { x = -4987.458, y = 192.435, z = -2571.001 }, rot = { x = 0.000, y = 180.727, z = 0.000 }, level = 2, area_id = 18 },
	{ config_id = 1010, gadget_id = 70330114, pos = { x = -5008.398, y = 200.338, z = -2651.418 }, rot = { x = 352.866, y = 15.996, z = 6.778 }, level = 2, area_id = 18 },
	{ config_id = 1011, gadget_id = 70330114, pos = { x = -4970.383, y = 200.000, z = -2522.115 }, rot = { x = 0.000, y = 341.470, z = 0.000 }, level = 2, area_id = 18 },
	{ config_id = 1012, gadget_id = 70330114, pos = { x = -5005.393, y = 200.000, z = -2450.262 }, rot = { x = 0.000, y = 167.379, z = 0.000 }, level = 2, area_id = 18 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 1015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4969.179, y = 200.987, z = -2523.478 }, area_id = 18 },
	-- Trigger #2
	{ config_id = 1016, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -5005.361, y = 200.916, z = -2449.059 }, area_id = 18 },
	-- Trigger #3
	{ config_id = 1017, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4986.437, y = 200.000, z = -2570.046 }, area_id = 18 },
	-- Trigger #4
	{ config_id = 1018, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -5008.551, y = 201.450, z = -2652.742 }, area_id = 18 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1001015, name = "ENTER_REGION_1015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1015", action = "action_EVENT_ENTER_REGION_1015", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1001016, name = "ENTER_REGION_1016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1016", action = "action_EVENT_ENTER_REGION_1016", trigger_count = 0, forbid_guest = false },
	-- Trigger #3
	{ config_id = 1001017, name = "ENTER_REGION_1017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1017", action = "action_EVENT_ENTER_REGION_1017", trigger_count = 0, forbid_guest = false },
	-- Trigger #4
	{ config_id = 1001018, name = "ENTER_REGION_1018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_1018", action = "action_EVENT_ENTER_REGION_1018", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012 },
		regions = { 1015, 1016, 1017, 1018 },
		triggers = { "ENTER_REGION_1015", "ENTER_REGION_1016", "ENTER_REGION_1017", "ENTER_REGION_1018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_1015(context, evt)
	if evt.param1 ~= 1015 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1015(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1016(context, evt)
	if evt.param1 ~= 1016 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1016(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1017(context, evt)
	if evt.param1 ~= 1017 then return false end
	
	-- 判断变量"gadget_Teleport_3_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_3_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1017(context, evt)
			--gadget_Teleport_3 trigger
			local teleportid = defs["gadget_Teleport_3"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_1018(context, evt)
	if evt.param1 ~= 1018 then return false end
	
	-- 判断变量"gadget_Teleport_4_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_4_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_1018(context, evt)
			--gadget_Teleport_4 trigger
			local teleportid = defs["gadget_Teleport_4"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
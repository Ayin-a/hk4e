-- 基础信息
local base_info = {
	group_id = 133216004
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 4001,
	gadget_Teleport_2 = 4002,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 321600005,
	pointarray_2 = 0,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 4005,
	gadget_TeleportOperator_2 = 4006,
	gadget_TeleportOperator_3 = 0,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133216004,
	pointarray_Rotate = 321600008,
	rotStep = 180
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
	-- Teleport #1
	{ config_id = 4001, gadget_id = 70950095, pos = { x = -4935.375, y = 200.178, z = -2533.683 }, rot = { x = 0.000, y = 70.314, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 18 },
	-- Teleport #2
	{ config_id = 4002, gadget_id = 70950095, pos = { x = -4827.000, y = 200.000, z = -2492.083 }, rot = { x = 0.000, y = 256.720, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 18 },
	-- Operator #1
	{ config_id = 4005, gadget_id = 70950145, pos = { x = -4936.932, y = 192.764, z = -2533.861 }, rot = { x = 0.000, y = 64.774, z = 0.000 }, level = 2, persistent = true, area_id = 18 },
	-- Operator #2
	{ config_id = 4006, gadget_id = 70950145, pos = { x = -4828.971, y = 195.666, z = -2492.840 }, rot = { x = 0.000, y = 76.812, z = 0.000 }, level = 2, persistent = true, area_id = 18 },
	{ config_id = 4009, gadget_id = 70330114, pos = { x = -4936.540, y = 200.207, z = -2532.700 }, rot = { x = 0.000, y = 65.287, z = 0.000 }, level = 2, area_id = 18 },
	{ config_id = 4010, gadget_id = 70330114, pos = { x = -4829.763, y = 200.000, z = -2492.730 }, rot = { x = 0.000, y = 258.196, z = 0.000 }, level = 2, area_id = 18 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 4015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4935.368, y = 201.103, z = -2533.532 }, area_id = 18 },
	-- Trigger #2
	{ config_id = 4016, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4826.935, y = 200.974, z = -2492.143 }, area_id = 18 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1004015, name = "ENTER_REGION_4015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4015", action = "action_EVENT_ENTER_REGION_4015", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1004016, name = "ENTER_REGION_4016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_4016", action = "action_EVENT_ENTER_REGION_4016", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 4001, 4002, 4005, 4006, 4009, 4010 },
		regions = { 4015, 4016 },
		triggers = { "ENTER_REGION_4015", "ENTER_REGION_4016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_4015(context, evt)
	if evt.param1 ~= 4015 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4015(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_4016(context, evt)
	if evt.param1 ~= 4016 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_4016(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
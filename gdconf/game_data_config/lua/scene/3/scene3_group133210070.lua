-- 基础信息
local base_info = {
	group_id = 133210070
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 70001,
	gadget_Teleport_2 = 70002,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 321000051,
	pointarray_2 = 0,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 70005,
	gadget_TeleportOperator_2 = 70006,
	gadget_TeleportOperator_3 = 0,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133210070,
	pointarray_Rotate = 321000054,
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
	{ config_id = 70001, gadget_id = 70950095, pos = { x = -3946.599, y = 134.281, z = -942.327 }, rot = { x = 0.000, y = 106.756, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	-- Teleport #2
	{ config_id = 70002, gadget_id = 70950095, pos = { x = -3840.340, y = 136.735, z = -992.211 }, rot = { x = 0.000, y = 297.123, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	{ config_id = 70003, gadget_id = 70330114, pos = { x = -3946.970, y = 135.740, z = -942.104 }, rot = { x = 0.000, y = 104.326, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 70004, gadget_id = 70330114, pos = { x = -3840.197, y = 137.963, z = -992.703 }, rot = { x = 0.000, y = 293.276, z = 0.000 }, level = 30, area_id = 17 },
	-- Operator #1
	{ config_id = 70005, gadget_id = 70950145, pos = { x = -3946.599, y = 134.281, z = -942.327 }, rot = { x = 356.481, y = 286.756, z = 350.724 }, level = 2, persistent = true, area_id = 17 },
	-- Operator #2
	{ config_id = 70006, gadget_id = 70950145, pos = { x = -3840.340, y = 136.735, z = -992.211 }, rot = { x = 2.099, y = 297.125, z = 1.746 }, level = 2, persistent = true, area_id = 17 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 70009, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3946.599, y = 135.013, z = -942.327 }, area_id = 17 },
	-- Trigger #2
	{ config_id = 70010, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3840.340, y = 137.590, z = -992.211 }, area_id = 17 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1070009, name = "ENTER_REGION_70009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_70009", action = "action_EVENT_ENTER_REGION_70009", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1070010, name = "ENTER_REGION_70010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_70010", action = "action_EVENT_ENTER_REGION_70010", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 70001, 70002, 70003, 70004, 70005, 70006 },
		regions = { 70009, 70010 },
		triggers = { "ENTER_REGION_70009", "ENTER_REGION_70010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_70009(context, evt)
	if evt.param1 ~= 70009 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_70009(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_70010(context, evt)
	if evt.param1 ~= 70010 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_70010(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
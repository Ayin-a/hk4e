-- 基础信息
local base_info = {
	group_id = 133210135
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 135001,
	gadget_Teleport_2 = 135002,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 321000031,
	pointarray_2 = 0,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 135005,
	gadget_TeleportOperator_2 = 135006,
	gadget_TeleportOperator_3 = 0,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133210135,
	pointarray_Rotate = 321000034,
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
	{ config_id = 135001, gadget_id = 70950095, pos = { x = -3562.262, y = 206.950, z = -834.327 }, rot = { x = 0.000, y = 208.312, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	-- Teleport #2
	{ config_id = 135002, gadget_id = 70950095, pos = { x = -3632.505, y = 211.959, z = -943.332 }, rot = { x = 0.000, y = 28.179, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	{ config_id = 135003, gadget_id = 70330114, pos = { x = -3562.475, y = 207.903, z = -834.821 }, rot = { x = 358.632, y = 214.010, z = 16.200 }, level = 30, area_id = 17 },
	{ config_id = 135004, gadget_id = 70330114, pos = { x = -3632.544, y = 213.545, z = -943.357 }, rot = { x = 0.000, y = 30.727, z = 0.000 }, level = 30, area_id = 17 },
	-- Operator #1
	{ config_id = 135005, gadget_id = 70950145, pos = { x = -3562.262, y = 206.950, z = -834.327 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 17 },
	-- Operator #2
	{ config_id = 135006, gadget_id = 70950145, pos = { x = -3632.505, y = 211.959, z = -943.332 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 17 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 135009, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3562.262, y = 207.643, z = -834.327 }, area_id = 17 },
	-- Trigger #2
	{ config_id = 135010, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3632.505, y = 212.472, z = -943.332 }, area_id = 17 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1135009, name = "ENTER_REGION_135009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_135009", action = "action_EVENT_ENTER_REGION_135009", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1135010, name = "ENTER_REGION_135010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_135010", action = "action_EVENT_ENTER_REGION_135010", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 135001, 135002, 135003, 135004, 135005, 135006 },
		regions = { 135009, 135010 },
		triggers = { "ENTER_REGION_135009", "ENTER_REGION_135010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_135009(context, evt)
	if evt.param1 ~= 135009 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_135009(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_135010(context, evt)
	if evt.param1 ~= 135010 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_135010(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
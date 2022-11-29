-- 基础信息
local base_info = {
	group_id = 133210262
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 262001,
	gadget_Teleport_2 = 262002,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 321000036,
	pointarray_2 = 0,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 262005,
	gadget_TeleportOperator_2 = 262006,
	gadget_TeleportOperator_3 = 0,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133210262,
	pointarray_Rotate = 321000039,
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
	{ config_id = 262001, gadget_id = 70950095, pos = { x = -3609.494, y = 217.429, z = -626.627 }, rot = { x = 0.000, y = 285.434, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	-- Teleport #2
	{ config_id = 262002, gadget_id = 70950095, pos = { x = -3762.679, y = 223.109, z = -597.892 }, rot = { x = 0.000, y = 102.591, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	{ config_id = 262003, gadget_id = 70330114, pos = { x = -3609.340, y = 219.126, z = -626.508 }, rot = { x = 0.000, y = 275.105, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 262004, gadget_id = 70330114, pos = { x = -3762.835, y = 224.683, z = -597.796 }, rot = { x = 0.000, y = 102.053, z = 0.000 }, level = 30, area_id = 17 },
	-- Operator #1
	{ config_id = 262005, gadget_id = 70950145, pos = { x = -3609.494, y = 217.429, z = -626.627 }, rot = { x = 347.778, y = 358.655, z = 12.515 }, level = 2, persistent = true, area_id = 17 },
	-- Operator #2
	{ config_id = 262006, gadget_id = 70950145, pos = { x = -3762.679, y = 223.109, z = -597.892 }, rot = { x = 0.000, y = 1.270, z = 0.000 }, level = 2, persistent = true, area_id = 17 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 262009, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3609.494, y = 218.166, z = -626.627 }, area_id = 17 },
	-- Trigger #2
	{ config_id = 262010, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3762.679, y = 223.835, z = -597.892 }, area_id = 17 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1262009, name = "ENTER_REGION_262009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_262009", action = "action_EVENT_ENTER_REGION_262009", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1262010, name = "ENTER_REGION_262010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_262010", action = "action_EVENT_ENTER_REGION_262010", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 262001, 262002, 262003, 262004, 262005, 262006 },
		regions = { 262009, 262010 },
		triggers = { "ENTER_REGION_262009", "ENTER_REGION_262010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_262009(context, evt)
	if evt.param1 ~= 262009 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_262009(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_262010(context, evt)
	if evt.param1 ~= 262010 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_262010(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
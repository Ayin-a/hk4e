-- 基础信息
local base_info = {
	group_id = 133210103
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 103001,
	gadget_Teleport_2 = 103002,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 321000023,
	pointarray_2 = 0,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 103005,
	gadget_TeleportOperator_2 = 103006,
	gadget_TeleportOperator_3 = 0,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133210103,
	pointarray_Rotate = 321000026,
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
	{ config_id = 103001, gadget_id = 70950095, pos = { x = -3655.424, y = 214.124, z = -1602.427 }, rot = { x = 0.000, y = 353.997, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 13 },
	-- Teleport #2
	{ config_id = 103002, gadget_id = 70950095, pos = { x = -3676.065, y = 201.293, z = -1379.803 }, rot = { x = 0.000, y = 169.318, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	{ config_id = 103003, gadget_id = 70330114, pos = { x = -3655.334, y = 215.351, z = -1602.416 }, rot = { x = 0.000, y = 356.579, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 103004, gadget_id = 70330114, pos = { x = -3676.117, y = 202.488, z = -1379.904 }, rot = { x = 0.000, y = 168.520, z = 0.000 }, level = 30, area_id = 17 },
	-- Operator #1
	{ config_id = 103005, gadget_id = 70950145, pos = { x = -3655.424, y = 214.124, z = -1602.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 13 },
	-- Operator #2
	{ config_id = 103006, gadget_id = 70950145, pos = { x = -3676.065, y = 201.293, z = -1379.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 17 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 103009, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3655.424, y = 214.967, z = -1602.427 }, area_id = 13 },
	-- Trigger #2
	{ config_id = 103010, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3676.065, y = 202.375, z = -1379.803 }, area_id = 17 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1103009, name = "ENTER_REGION_103009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_103009", action = "action_EVENT_ENTER_REGION_103009", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1103010, name = "ENTER_REGION_103010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_103010", action = "action_EVENT_ENTER_REGION_103010", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 103001, 103002, 103003, 103004, 103005, 103006 },
		regions = { 103009, 103010 },
		triggers = { "ENTER_REGION_103009", "ENTER_REGION_103010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_103009(context, evt)
	if evt.param1 ~= 103009 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_103009(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_103010(context, evt)
	if evt.param1 ~= 103010 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_103010(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
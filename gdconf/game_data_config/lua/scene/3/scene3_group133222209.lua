-- 基础信息
local base_info = {
	group_id = 133222209
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 209001,
	gadget_Teleport_2 = 209002,
	gadget_Teleport_3 = 209003,
	gadget_Teleport_4 = 0,
	pointarray_1 = 322200018,
	pointarray_2 = 322200019,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 209005,
	gadget_TeleportOperator_2 = 209006,
	gadget_TeleportOperator_3 = 209007,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133222209,
	pointarray_Rotate = 322200021,
	rotStep = 90
}

-- DEFS_MISCS
connectInfo = 
{
	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1,10},
	{defs.gadget_Teleport_1,defs.gadget_Teleport_3,defs.pointarray_2,10},
	
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
	{ config_id = 209001, gadget_id = 70950095, pos = { x = -4430.929, y = 216.635, z = -4547.888 }, rot = { x = 0.000, y = 318.977, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Teleport #2
	{ config_id = 209002, gadget_id = 70950095, pos = { x = -4580.668, y = 205.313, z = -4452.651 }, rot = { x = 0.000, y = 127.084, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Teleport #3
	{ config_id = 209003, gadget_id = 70950095, pos = { x = -4535.431, y = 214.957, z = -4696.746 }, rot = { x = 0.000, y = 28.483, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	{ config_id = 209004, gadget_id = 70330114, pos = { x = -4430.929, y = 218.626, z = -4547.888 }, rot = { x = 1.563, y = 321.136, z = 1.227 }, level = 30, area_id = 14 },
	-- Operator #1
	{ config_id = 209005, gadget_id = 70950145, pos = { x = -4431.023, y = 217.268, z = -4547.657 }, rot = { x = 1.563, y = 318.977, z = 1.227 }, level = 2, persistent = true, area_id = 14 },
	-- Operator #2
	{ config_id = 209006, gadget_id = 70950145, pos = { x = -4581.349, y = 90.000, z = -4452.126 }, rot = { x = 2.085, y = 127.084, z = 1.721 }, level = 2, persistent = true, area_id = 14 },
	-- Operator #3
	{ config_id = 209007, gadget_id = 70950145, pos = { x = -4535.405, y = 214.195, z = -4697.039 }, rot = { x = 0.000, y = 28.483, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	{ config_id = 209008, gadget_id = 70330114, pos = { x = -4430.929, y = 218.310, z = -4547.888 }, rot = { x = 1.563, y = 222.322, z = 1.227 }, level = 30, area_id = 14 },
	{ config_id = 209012, gadget_id = 70330114, pos = { x = -4535.431, y = 217.043, z = -4696.746 }, rot = { x = 0.000, y = 42.899, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 209013, gadget_id = 70330114, pos = { x = -4580.668, y = 207.300, z = -4452.651 }, rot = { x = 2.085, y = 126.773, z = 1.721 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 209009, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4430.729, y = 216.960, z = -4548.038 }, area_id = 14 },
	-- Trigger #2
	{ config_id = 209010, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4580.870, y = 205.937, z = -4452.530 }, area_id = 14 },
	-- Trigger #3
	{ config_id = 209011, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4535.381, y = 214.650, z = -4696.961 }, area_id = 14 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1209009, name = "ENTER_REGION_209009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_209009", action = "action_EVENT_ENTER_REGION_209009", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1209010, name = "ENTER_REGION_209010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_209010", action = "action_EVENT_ENTER_REGION_209010", trigger_count = 0, forbid_guest = false },
	-- Trigger #3
	{ config_id = 1209011, name = "ENTER_REGION_209011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_209011", action = "action_EVENT_ENTER_REGION_209011", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 209001, 209002, 209003, 209004, 209005, 209006, 209007, 209008, 209012, 209013 },
		regions = { 209009, 209010, 209011 },
		triggers = { "ENTER_REGION_209009", "ENTER_REGION_209010", "ENTER_REGION_209011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_209009(context, evt)
	if evt.param1 ~= 209009 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_209009(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_209010(context, evt)
	if evt.param1 ~= 209010 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_209010(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_209011(context, evt)
	if evt.param1 ~= 209011 then return false end
	
	-- 判断变量"gadget_Teleport_3_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_3_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_209011(context, evt)
			--gadget_Teleport_3 trigger
			local teleportid = defs["gadget_Teleport_3"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
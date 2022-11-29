-- 基础信息
local base_info = {
	group_id = 133217337
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 337001,
	gadget_Teleport_2 = 337002,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 321700055,
	pointarray_2 = 0,
	gadget_TeleportOperator_1 = 337003,
	gadget_TeleportOperator_2 = 337004,
	gadget_TeleportOperator_3 = 0,
	group_ID = 133217337,
	pointarray_Rotate = 321700044,
	rotStep = 180,
	gadget_TeleportOperator_4 = 0
}

-- DEFS_MISCS
connectInfo = 
{
	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1,10},
	
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
	{ config_id = 337001, gadget_id = 70950095, pos = { x = -4082.025, y = 205.819, z = -3480.254 }, rot = { x = 0.000, y = 47.951, z = 0.000 }, level = 30, persistent = true, is_use_point_array = true, area_id = 12 },
	-- Teleport #2
	{ config_id = 337002, gadget_id = 70950095, pos = { x = -4259.375, y = 200.504, z = -3644.813 }, rot = { x = 0.000, y = 48.922, z = 0.000 }, level = 30, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Operator #1
	{ config_id = 337003, gadget_id = 70950145, pos = { x = -4081.996, y = 205.333, z = -3480.237 }, rot = { x = 0.000, y = 47.951, z = 0.000 }, level = 30, persistent = true, area_id = 12 },
	-- Operator #2
	{ config_id = 337004, gadget_id = 70950145, pos = { x = -4260.080, y = 141.639, z = -3645.353 }, rot = { x = 0.000, y = 52.995, z = 0.000 }, level = 30, persistent = true, area_id = 14 },
	{ config_id = 337005, gadget_id = 70330114, pos = { x = -4082.685, y = 206.279, z = -3480.446 }, rot = { x = 0.066, y = 227.354, z = 1.360 }, level = 30, area_id = 12 },
	{ config_id = 337006, gadget_id = 70330114, pos = { x = -4259.928, y = 200.504, z = -3645.341 }, rot = { x = 0.000, y = 43.747, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 337007, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4083.300, y = 205.812, z = -3481.171 }, area_id = 12 },
	-- Trigger #2
	{ config_id = 337008, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4259.558, y = 201.118, z = -3645.007 }, area_id = 14 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1337007, name = "ENTER_REGION_337007", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_337007", action = "action_EVENT_ENTER_REGION_337007", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1337008, name = "ENTER_REGION_337008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_337008", action = "action_EVENT_ENTER_REGION_337008", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 337001, 337002, 337003, 337004, 337005, 337006 },
		regions = { 337007, 337008 },
		triggers = { "ENTER_REGION_337007", "ENTER_REGION_337008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_337007(context, evt)
	if evt.param1 ~= 337007 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_337007(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_337008(context, evt)
	if evt.param1 ~= 337008 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_337008(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
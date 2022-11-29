-- 基础信息
local base_info = {
	group_id = 133210351
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 351001,
	gadget_Teleport_2 = 351002,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 321000060,
	pointarray_2 = 0,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 351005,
	gadget_TeleportOperator_2 = 351006,
	gadget_TeleportOperator_3 = 0,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133210351,
	pointarray_Rotate = 321000063,
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
	{ config_id = 351001, gadget_id = 70950095, pos = { x = -3541.743, y = 176.130, z = -1147.699 }, rot = { x = 0.000, y = 13.354, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	-- Teleport #2
	{ config_id = 351002, gadget_id = 70950095, pos = { x = -3549.626, y = 187.377, z = -1167.511 }, rot = { x = 0.000, y = 13.354, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	{ config_id = 351003, gadget_id = 70330114, pos = { x = -3541.684, y = 177.754, z = -1147.741 }, rot = { x = 347.594, y = 193.690, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 351004, gadget_id = 70330114, pos = { x = -3549.685, y = 188.863, z = -1167.595 }, rot = { x = 16.185, y = 12.309, z = 0.000 }, level = 30, area_id = 17 },
	-- Operator #1
	{ config_id = 351005, gadget_id = 70950145, pos = { x = -3541.743, y = 176.130, z = -1147.699 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 17 },
	-- Operator #2
	{ config_id = 351006, gadget_id = 70950145, pos = { x = -3549.626, y = 187.377, z = -1167.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 17 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 351009, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3541.743, y = 176.623, z = -1147.699 }, area_id = 17 },
	-- Trigger #2
	{ config_id = 351010, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3549.626, y = 188.171, z = -1167.511 }, area_id = 17 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1351009, name = "ENTER_REGION_351009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_351009", action = "action_EVENT_ENTER_REGION_351009", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1351010, name = "ENTER_REGION_351010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_351010", action = "action_EVENT_ENTER_REGION_351010", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 351001, 351002, 351003, 351004, 351005, 351006 },
		regions = { 351009, 351010 },
		triggers = { "ENTER_REGION_351009", "ENTER_REGION_351010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_351009(context, evt)
	if evt.param1 ~= 351009 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_351009(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_351010(context, evt)
	if evt.param1 ~= 351010 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_351010(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
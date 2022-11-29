-- 基础信息
local base_info = {
	group_id = 133217295
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 295001,
	gadget_Teleport_2 = 295002,
	gadget_Teleport_3 = 295003,
	gadget_Teleport_4 = 0,
	pointarray_1 = 321700031,
	pointarray_2 = 321700032,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 295005,
	gadget_TeleportOperator_2 = 295006,
	gadget_TeleportOperator_3 = 295007,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133217295,
	pointarray_Rotate = 321700034,
	rotStep = 90
}

-- DEFS_MISCS
connectInfo = 
{
	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1,10},
	{defs.gadget_Teleport_2,defs.gadget_Teleport_3,defs.pointarray_2,10}
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
	{ config_id = 295001, gadget_id = 70950095, pos = { x = -4319.019, y = 206.974, z = -4016.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Teleport #2
	{ config_id = 295002, gadget_id = 70950095, pos = { x = -4317.353, y = 224.234, z = -3915.615 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Teleport #3
	{ config_id = 295003, gadget_id = 70950095, pos = { x = -4209.498, y = 207.809, z = -3884.067 }, rot = { x = 0.000, y = 254.622, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Operator #1
	{ config_id = 295005, gadget_id = 70950145, pos = { x = -4319.019, y = 206.974, z = -4016.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	-- Operator #2
	{ config_id = 295006, gadget_id = 70950145, pos = { x = -4317.353, y = 224.234, z = -3915.615 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	-- Operator #3
	{ config_id = 295007, gadget_id = 70950145, pos = { x = -4209.498, y = 207.809, z = -3884.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	{ config_id = 295009, gadget_id = 70330114, pos = { x = -4319.019, y = 208.264, z = -4013.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 14 },
	{ config_id = 295010, gadget_id = 70330114, pos = { x = -4317.353, y = 225.769, z = -3918.760 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 2, area_id = 14 },
	{ config_id = 295011, gadget_id = 70330114, pos = { x = -4314.380, y = 225.192, z = -3915.189 }, rot = { x = 0.000, y = 73.781, z = 0.000 }, level = 2, area_id = 14 },
	{ config_id = 295012, gadget_id = 70330114, pos = { x = -4211.761, y = 209.581, z = -3884.690 }, rot = { x = 0.000, y = 254.622, z = 0.000 }, level = 2, area_id = 14 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 295015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4319.019, y = 207.373, z = -4016.369 }, area_id = 14 },
	-- Trigger #2
	{ config_id = 295016, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4317.353, y = 224.764, z = -3915.615 }, area_id = 14 },
	-- Trigger #3
	{ config_id = 295017, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4209.498, y = 207.992, z = -3884.067 }, area_id = 14 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1295015, name = "ENTER_REGION_295015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_295015", action = "action_EVENT_ENTER_REGION_295015", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1295016, name = "ENTER_REGION_295016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_295016", action = "action_EVENT_ENTER_REGION_295016", trigger_count = 0, forbid_guest = false },
	-- Trigger #3
	{ config_id = 1295017, name = "ENTER_REGION_295017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_295017", action = "action_EVENT_ENTER_REGION_295017", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 295001, 295002, 295003, 295005, 295006, 295007, 295009, 295010, 295011, 295012 },
		regions = { 295015, 295016, 295017 },
		triggers = { "ENTER_REGION_295015", "ENTER_REGION_295016", "ENTER_REGION_295017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_295015(context, evt)
	if evt.param1 ~= 295015 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_295015(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_295016(context, evt)
	if evt.param1 ~= 295016 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_295016(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_295017(context, evt)
	if evt.param1 ~= 295017 then return false end
	
	-- 判断变量"gadget_Teleport_3_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_3_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_295017(context, evt)
			--gadget_Teleport_3 trigger
			local teleportid = defs["gadget_Teleport_3"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
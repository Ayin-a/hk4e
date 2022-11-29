-- 基础信息
local base_info = {
	group_id = 133217343
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 343001,
	gadget_Teleport_2 = 343002,
	gadget_Teleport_3 = 343003,
	gadget_Teleport_4 = 343004,
	pointarray_1 = 321700045,
	pointarray_2 = 321700046,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 343005,
	gadget_TeleportOperator_2 = 343006,
	gadget_TeleportOperator_3 = 343007,
	gadget_TeleportOperator_4 = 343008,
	group_ID = 133217343,
	pointarray_Rotate = 321700048,
	rotStep = 180
}

-- DEFS_MISCS
connectInfo = 
{
	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1,10},
	{defs.gadget_Teleport_3,defs.gadget_Teleport_4,defs.pointarray_2,10}

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
	{ config_id = 343001, gadget_id = 70950095, pos = { x = -4654.121, y = 209.459, z = -4179.949 }, rot = { x = 0.000, y = 202.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Teleport #2
	{ config_id = 343002, gadget_id = 70950095, pos = { x = -4723.206, y = 202.687, z = -4301.120 }, rot = { x = 0.000, y = 22.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Teleport #3
	{ config_id = 343003, gadget_id = 70950095, pos = { x = -4617.779, y = 210.366, z = -4278.000 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Teleport #4
	{ config_id = 343004, gadget_id = 70950095, pos = { x = -4746.909, y = 201.345, z = -4234.113 }, rot = { x = 0.000, y = 100.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Operator #1
	{ config_id = 343005, gadget_id = 70950145, pos = { x = -4653.047, y = 90.000, z = -4180.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	-- Operator #2
	{ config_id = 343006, gadget_id = 70950145, pos = { x = -4653.047, y = 90.000, z = -4180.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	-- Operator #3
	{ config_id = 343007, gadget_id = 70950145, pos = { x = -4653.047, y = 90.000, z = -4180.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	-- Operator #4
	{ config_id = 343008, gadget_id = 70950145, pos = { x = -4653.047, y = 90.000, z = -4180.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	{ config_id = 343009, gadget_id = 70330114, pos = { x = -4654.486, y = 208.871, z = -4180.736 }, rot = { x = 0.000, y = 197.582, z = 0.000 }, level = 2, area_id = 14 },
	{ config_id = 343010, gadget_id = 70330114, pos = { x = -4722.762, y = 202.930, z = -4300.285 }, rot = { x = 0.000, y = 23.437, z = 0.000 }, level = 2, area_id = 14 },
	{ config_id = 343011, gadget_id = 70330114, pos = { x = -4619.042, y = 211.324, z = -4277.827 }, rot = { x = 0.000, y = 278.921, z = 0.000 }, level = 2, area_id = 14 },
	{ config_id = 343012, gadget_id = 70330114, pos = { x = -4746.599, y = 201.283, z = -4233.859 }, rot = { x = 0.000, y = 102.633, z = 0.000 }, level = 2, area_id = 14 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 343015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4654.115, y = 209.776, z = -4179.692 }, area_id = 14 },
	-- Trigger #2
	{ config_id = 343016, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4723.290, y = 203.301, z = -4301.368 }, area_id = 14 },
	-- Trigger #3
	{ config_id = 343017, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4617.580, y = 210.327, z = -4277.904 }, area_id = 14 },
	-- Trigger #4
	{ config_id = 343018, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4747.043, y = 201.420, z = -4234.173 }, area_id = 14 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1343015, name = "ENTER_REGION_343015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_343015", action = "action_EVENT_ENTER_REGION_343015", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1343016, name = "ENTER_REGION_343016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_343016", action = "action_EVENT_ENTER_REGION_343016", trigger_count = 0, forbid_guest = false },
	-- Trigger #3
	{ config_id = 1343017, name = "ENTER_REGION_343017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_343017", action = "action_EVENT_ENTER_REGION_343017", trigger_count = 0, forbid_guest = false },
	-- Trigger #4
	{ config_id = 1343018, name = "ENTER_REGION_343018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_343018", action = "action_EVENT_ENTER_REGION_343018", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 343001, 343002, 343003, 343004, 343005, 343006, 343007, 343008, 343009, 343010, 343011, 343012 },
		regions = { 343015, 343016, 343017, 343018 },
		triggers = { "ENTER_REGION_343015", "ENTER_REGION_343016", "ENTER_REGION_343017", "ENTER_REGION_343018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_343015(context, evt)
	if evt.param1 ~= 343015 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_343015(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_343016(context, evt)
	if evt.param1 ~= 343016 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_343016(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_343017(context, evt)
	if evt.param1 ~= 343017 then return false end
	
	-- 判断变量"gadget_Teleport_3_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_3_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_343017(context, evt)
			--gadget_Teleport_3 trigger
			local teleportid = defs["gadget_Teleport_3"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_343018(context, evt)
	if evt.param1 ~= 343018 then return false end
	
	-- 判断变量"gadget_Teleport_4_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_4_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_343018(context, evt)
			--gadget_Teleport_4 trigger
			local teleportid = defs["gadget_Teleport_4"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
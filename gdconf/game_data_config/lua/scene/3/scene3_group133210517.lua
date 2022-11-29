-- 基础信息
local base_info = {
	group_id = 133210517
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 517001,
	gadget_Teleport_2 = 517002,
	gadget_Teleport_3 = 517003,
	gadget_Teleport_4 = 517004,
	pointarray_1 = 321000015,
	pointarray_2 = 321000016,
	pointarray_3 = 321000075,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 517005,
	gadget_TeleportOperator_2 = 517006,
	gadget_TeleportOperator_3 = 517007,
	gadget_TeleportOperator_4 = 517008,
	group_ID = 133210517,
	pointarray_Rotate = 321000076,
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
	{ config_id = 517001, gadget_id = 70950095, pos = { x = -3893.201, y = 244.956, z = -475.869 }, rot = { x = 0.000, y = 299.475, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	-- Teleport #2
	{ config_id = 517002, gadget_id = 70950095, pos = { x = -3964.952, y = 229.921, z = -434.349 }, rot = { x = 0.000, y = 117.044, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	-- Teleport #3
	{ config_id = 517003, gadget_id = 70950095, pos = { x = -3970.528, y = 227.110, z = -425.599 }, rot = { x = 0.000, y = 49.715, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	-- Teleport #4
	{ config_id = 517004, gadget_id = 70950095, pos = { x = -3888.444, y = 200.400, z = -366.144 }, rot = { x = 0.000, y = 235.674, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	-- Operator #1
	{ config_id = 517005, gadget_id = 70950145, pos = { x = -3893.201, y = 244.956, z = -475.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 17 },
	-- Operator #2
	{ config_id = 517006, gadget_id = 70950145, pos = { x = -3964.952, y = 229.921, z = -434.349 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 17 },
	-- Operator #3
	{ config_id = 517007, gadget_id = 70950145, pos = { x = -3970.528, y = 227.110, z = -425.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 17 },
	-- Operator #4
	{ config_id = 517008, gadget_id = 70950145, pos = { x = -3888.444, y = 200.400, z = -366.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 17 },
	{ config_id = 517009, gadget_id = 70330114, pos = { x = -3894.333, y = 246.027, z = -475.247 }, rot = { x = 0.000, y = 298.815, z = 0.000 }, level = 2, area_id = 17 },
	{ config_id = 517010, gadget_id = 70330114, pos = { x = -3964.373, y = 231.699, z = -434.610 }, rot = { x = 0.000, y = 114.237, z = 0.000 }, level = 2, area_id = 17 },
	{ config_id = 517011, gadget_id = 70330114, pos = { x = -3969.830, y = 228.181, z = -424.976 }, rot = { x = 0.000, y = 48.253, z = 0.000 }, level = 2, area_id = 17 },
	{ config_id = 517012, gadget_id = 70330114, pos = { x = -3889.518, y = 201.989, z = -366.738 }, rot = { x = 0.000, y = 241.040, z = 0.000 }, level = 2, area_id = 17 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 517015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3893.201, y = 245.514, z = -475.869 }, area_id = 17 },
	-- Trigger #2
	{ config_id = 517016, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3964.952, y = 230.188, z = -434.349 }, area_id = 17 },
	-- Trigger #3
	{ config_id = 517017, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3970.528, y = 227.423, z = -425.599 }, area_id = 17 },
	-- Trigger #4
	{ config_id = 517018, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3888.444, y = 200.784, z = -366.144 }, area_id = 17 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1517015, name = "ENTER_REGION_517015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_517015", action = "action_EVENT_ENTER_REGION_517015", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1517016, name = "ENTER_REGION_517016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_517016", action = "action_EVENT_ENTER_REGION_517016", trigger_count = 0, forbid_guest = false },
	-- Trigger #3
	{ config_id = 1517017, name = "ENTER_REGION_517017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_517017", action = "action_EVENT_ENTER_REGION_517017", trigger_count = 0, forbid_guest = false },
	-- Trigger #4
	{ config_id = 1517018, name = "ENTER_REGION_517018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_517018", action = "action_EVENT_ENTER_REGION_517018", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 517001, 517002, 517003, 517004, 517005, 517006, 517007, 517008, 517009, 517010, 517011, 517012 },
		regions = { 517015, 517016, 517017, 517018 },
		triggers = { "ENTER_REGION_517015", "ENTER_REGION_517016", "ENTER_REGION_517017", "ENTER_REGION_517018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_517015(context, evt)
	if evt.param1 ~= 517015 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_517015(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_517016(context, evt)
	if evt.param1 ~= 517016 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_517016(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_517017(context, evt)
	if evt.param1 ~= 517017 then return false end
	
	-- 判断变量"gadget_Teleport_3_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_3_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_517017(context, evt)
			--gadget_Teleport_3 trigger
			local teleportid = defs["gadget_Teleport_3"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_517018(context, evt)
	if evt.param1 ~= 517018 then return false end
	
	-- 判断变量"gadget_Teleport_4_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_4_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_517018(context, evt)
			--gadget_Teleport_4 trigger
			local teleportid = defs["gadget_Teleport_4"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
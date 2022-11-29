-- 基础信息
local base_info = {
	group_id = 133210111
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 111001,
	gadget_Teleport_2 = 111002,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 321000027,
	pointarray_2 = 0,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 111005,
	gadget_TeleportOperator_2 = 111006,
	gadget_TeleportOperator_3 = 0,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133210111,
	pointarray_Rotate = 321000030,
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
	{ config_id = 111001, gadget_id = 70950095, pos = { x = -3901.691, y = 200.257, z = -1214.650 }, rot = { x = 0.000, y = 263.190, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	-- Teleport #2
	{ config_id = 111002, gadget_id = 70950095, pos = { x = -4023.488, y = 200.192, z = -1223.076 }, rot = { x = 0.000, y = 82.067, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	{ config_id = 111003, gadget_id = 70330114, pos = { x = -3901.751, y = 201.761, z = -1214.408 }, rot = { x = 0.000, y = 266.590, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 111004, gadget_id = 70330114, pos = { x = -4023.624, y = 201.913, z = -1223.018 }, rot = { x = 0.000, y = 79.442, z = 0.000 }, level = 30, area_id = 17 },
	-- Operator #1
	{ config_id = 111005, gadget_id = 70950145, pos = { x = -3901.691, y = 200.257, z = -1214.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 17 },
	-- Operator #2
	{ config_id = 111006, gadget_id = 70950145, pos = { x = -4023.488, y = 200.192, z = -1223.076 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 17 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 111009, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3901.691, y = 201.214, z = -1214.650 }, area_id = 17 },
	-- Trigger #2
	{ config_id = 111010, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4023.488, y = 201.148, z = -1223.076 }, area_id = 17 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1111009, name = "ENTER_REGION_111009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_111009", action = "action_EVENT_ENTER_REGION_111009", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1111010, name = "ENTER_REGION_111010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_111010", action = "action_EVENT_ENTER_REGION_111010", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 111001, 111002, 111003, 111004, 111005, 111006 },
		regions = { 111009, 111010 },
		triggers = { "ENTER_REGION_111009", "ENTER_REGION_111010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_111009(context, evt)
	if evt.param1 ~= 111009 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_111009(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_111010(context, evt)
	if evt.param1 ~= 111010 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_111010(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
-- 基础信息
local base_info = {
	group_id = 111101154
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 154001,
	gadget_Teleport_2 = 154002,
	gadget_Teleport_3 = 154003,
	gadget_Teleport_4 = 154004,
	pointarray_1 = 110100032,
	pointarray_2 = 110100033,
	pointarray_3 = 110100034,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 154005,
	gadget_TeleportOperator_2 = 154006,
	gadget_TeleportOperator_3 = 154007,
	gadget_TeleportOperator_4 = 154008,
	group_ID = 111101154,
	pointarray_Rotate = 110100028
}

-- DEFS_MISCS
connectInfo = 
{
	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1,10},
	{defs.gadget_Teleport_2,defs.gadget_Teleport_3,defs.pointarray_2,10},
	{defs.gadget_Teleport_1,defs.gadget_Teleport_4,defs.pointarray_3,10}
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
	{ config_id = 154001, gadget_id = 70950095, pos = { x = 2908.618, y = 269.879, z = -1289.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- Teleport #2
	{ config_id = 154002, gadget_id = 70950095, pos = { x = 2909.757, y = 269.252, z = -1312.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- Teleport #3
	{ config_id = 154003, gadget_id = 70950095, pos = { x = 2885.968, y = 269.879, z = -1312.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- Teleport #4
	{ config_id = 154004, gadget_id = 70950095, pos = { x = 2942.863, y = 269.294, z = -1289.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- Operator #1
	{ config_id = 154005, gadget_id = 70360001, pos = { x = 2908.627, y = 269.393, z = -1289.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- Operator #2
	{ config_id = 154006, gadget_id = 70360001, pos = { x = 2909.766, y = 269.838, z = -1313.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- Operator #3
	{ config_id = 154007, gadget_id = 70360001, pos = { x = 2886.129, y = 269.117, z = -1312.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- Operator #4
	{ config_id = 154008, gadget_id = 70360001, pos = { x = 2942.749, y = 269.316, z = -1289.352 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 154009, shape = RegionShape.SPHERE, radius = 2, pos = { x = 2908.673, y = 270.196, z = -1289.407 } },
	-- Trigger #2
	{ config_id = 154010, shape = RegionShape.SPHERE, radius = 2, pos = { x = 2909.803, y = 269.866, z = -1312.725 } },
	-- Trigger #3
	{ config_id = 154011, shape = RegionShape.SPHERE, radius = 2, pos = { x = 2886.114, y = 269.572, z = -1312.285 } },
	-- Trigger #4
	{ config_id = 154012, shape = RegionShape.SPHERE, radius = 2, pos = { x = 2942.848, y = 270.306, z = -1289.429 } }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1154009, name = "ENTER_REGION_154009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_154009", action = "action_EVENT_ENTER_REGION_154009", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1154010, name = "ENTER_REGION_154010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_154010", action = "action_EVENT_ENTER_REGION_154010", trigger_count = 0, forbid_guest = false },
	-- Trigger #3
	{ config_id = 1154011, name = "ENTER_REGION_154011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_154011", action = "action_EVENT_ENTER_REGION_154011", trigger_count = 0, forbid_guest = false },
	-- Trigger #4
	{ config_id = 1154012, name = "ENTER_REGION_154012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_154012", action = "action_EVENT_ENTER_REGION_154012", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 154001, 154002, 154003, 154004, 154005, 154006, 154007, 154008 },
		regions = { 154009, 154010, 154011, 154012 },
		triggers = { "ENTER_REGION_154009", "ENTER_REGION_154010", "ENTER_REGION_154011", "ENTER_REGION_154012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_154009(context, evt)
	if evt.param1 ~= 154009 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_154009(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_154010(context, evt)
	if evt.param1 ~= 154010 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_154010(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_154011(context, evt)
	if evt.param1 ~= 154011 then return false end
	
	-- 判断变量"gadget_Teleport_3_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_3_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_154011(context, evt)
			--gadget_Teleport_3 trigger
			local teleportid = defs["gadget_Teleport_3"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_154012(context, evt)
	if evt.param1 ~= 154012 then return false end
	
	-- 判断变量"gadget_Teleport_4_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_4_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_154012(context, evt)
			--gadget_Teleport_4 trigger
			local teleportid = defs["gadget_Teleport_4"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
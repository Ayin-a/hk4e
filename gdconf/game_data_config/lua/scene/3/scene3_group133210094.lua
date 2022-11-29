-- 基础信息
local base_info = {
	group_id = 133210094
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 94001,
	gadget_Teleport_2 = 94002,
	gadget_Teleport_3 = 94003,
	gadget_Teleport_4 = 0,
	pointarray_1 = 321000019,
	pointarray_2 = 321000020,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 94005,
	gadget_TeleportOperator_2 = 94006,
	gadget_TeleportOperator_3 = 94007,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133210094,
	pointarray_Rotate = 321000022,
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
	{ config_id = 94001, gadget_id = 70950095, pos = { x = -3931.888, y = 204.144, z = -1054.725 }, rot = { x = 0.000, y = 305.779, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	-- Teleport #2
	{ config_id = 94002, gadget_id = 70950095, pos = { x = -3971.261, y = 209.687, z = -1030.773 }, rot = { x = 0.000, y = 108.649, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	-- Teleport #3
	{ config_id = 94003, gadget_id = 70950095, pos = { x = -3967.851, y = 196.002, z = -931.964 }, rot = { x = 0.000, y = 182.771, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	{ config_id = 94004, gadget_id = 70330114, pos = { x = -3933.700, y = 206.199, z = -1053.531 }, rot = { x = 0.000, y = 301.515, z = 0.000 }, level = 30, area_id = 17 },
	-- Operator #1
	{ config_id = 94005, gadget_id = 70950145, pos = { x = -3931.888, y = 203.989, z = -1054.725 }, rot = { x = 0.000, y = 18.737, z = 0.000 }, level = 2, persistent = true, area_id = 17 },
	-- Operator #2
	{ config_id = 94006, gadget_id = 70950145, pos = { x = -3971.261, y = 209.687, z = -1030.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 17 },
	-- Operator #3
	{ config_id = 94007, gadget_id = 70950145, pos = { x = -3967.851, y = 196.002, z = -931.964 }, rot = { x = 6.973, y = 359.166, z = 346.382 }, level = 2, persistent = true, area_id = 17 },
	{ config_id = 94008, gadget_id = 70330114, pos = { x = -3971.375, y = 211.270, z = -1030.739 }, rot = { x = 0.000, y = 0.344, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 94012, gadget_id = 70330114, pos = { x = -3971.074, y = 211.329, z = -1030.685 }, rot = { x = 0.000, y = 120.308, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 94013, gadget_id = 70330114, pos = { x = -3967.744, y = 197.896, z = -931.716 }, rot = { x = 0.000, y = 175.450, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 94009, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3931.888, y = 205.105, z = -1054.725 }, area_id = 17 },
	-- Trigger #2
	{ config_id = 94010, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3971.261, y = 210.587, z = -1030.773 }, area_id = 17 },
	-- Trigger #3
	{ config_id = 94011, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3967.851, y = 196.902, z = -931.964 }, area_id = 17 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1094009, name = "ENTER_REGION_94009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_94009", action = "action_EVENT_ENTER_REGION_94009", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1094010, name = "ENTER_REGION_94010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_94010", action = "action_EVENT_ENTER_REGION_94010", trigger_count = 0, forbid_guest = false },
	-- Trigger #3
	{ config_id = 1094011, name = "ENTER_REGION_94011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_94011", action = "action_EVENT_ENTER_REGION_94011", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 94001, 94002, 94003, 94004, 94005, 94006, 94007, 94008, 94012, 94013 },
		regions = { 94009, 94010, 94011 },
		triggers = { "ENTER_REGION_94009", "ENTER_REGION_94010", "ENTER_REGION_94011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_94009(context, evt)
	if evt.param1 ~= 94009 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_94009(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_94010(context, evt)
	if evt.param1 ~= 94010 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_94010(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_94011(context, evt)
	if evt.param1 ~= 94011 then return false end
	
	-- 判断变量"gadget_Teleport_3_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_3_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_94011(context, evt)
			--gadget_Teleport_3 trigger
			local teleportid = defs["gadget_Teleport_3"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
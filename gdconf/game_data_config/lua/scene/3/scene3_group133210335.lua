-- 基础信息
local base_info = {
	group_id = 133210335
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 335001,
	gadget_Teleport_2 = 335002,
	gadget_Teleport_3 = 335003,
	gadget_Teleport_4 = 335004,
	pointarray_1 = 321000056,
	pointarray_2 = 321000057,
	pointarray_3 = 321000058,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 335005,
	gadget_TeleportOperator_2 = 335006,
	gadget_TeleportOperator_3 = 335007,
	gadget_TeleportOperator_4 = 335008,
	group_ID = 133210335,
	pointarray_Rotate = 321000059,
	rotStep = 90
}

-- DEFS_MISCS
connectInfo = 
{
	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1,10},
	{defs.gadget_Teleport_2,defs.gadget_Teleport_3,defs.pointarray_2,10},
	{defs.gadget_Teleport_3,defs.gadget_Teleport_4,defs.pointarray_3,10}
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
	{ config_id = 335001, gadget_id = 70950095, pos = { x = -3677.888, y = 140.662, z = -722.296 }, rot = { x = 0.000, y = 22.434, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	-- Teleport #2
	{ config_id = 335002, gadget_id = 70950095, pos = { x = -3644.612, y = 179.606, z = -647.901 }, rot = { x = 0.000, y = 194.390, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	-- Teleport #3
	{ config_id = 335003, gadget_id = 70950095, pos = { x = -3788.817, y = 165.386, z = -619.275 }, rot = { x = 0.000, y = 192.007, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	-- Teleport #4
	{ config_id = 335004, gadget_id = 70950095, pos = { x = -3801.837, y = 128.453, z = -661.447 }, rot = { x = 0.000, y = 15.698, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	-- Operator #1
	{ config_id = 335005, gadget_id = 70950145, pos = { x = -3677.888, y = 140.662, z = -722.296 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 17 },
	-- Operator #2
	{ config_id = 335006, gadget_id = 70950145, pos = { x = -3644.612, y = 179.606, z = -647.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 17 },
	-- Operator #3
	{ config_id = 335007, gadget_id = 70950145, pos = { x = -3788.816, y = 165.492, z = -619.276 }, rot = { x = 6.414, y = 1.276, z = 2.310 }, level = 2, persistent = true, area_id = 17 },
	-- Operator #4
	{ config_id = 335008, gadget_id = 70950145, pos = { x = -3801.837, y = 128.453, z = -661.447 }, rot = { x = 5.836, y = 0.200, z = 3.927 }, level = 2, persistent = true, area_id = 17 },
	{ config_id = 335013, gadget_id = 70330114, pos = { x = -3678.014, y = 142.454, z = -722.487 }, rot = { x = 0.000, y = 21.613, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 335014, gadget_id = 70330114, pos = { x = -3644.511, y = 181.424, z = -647.640 }, rot = { x = 0.000, y = 193.986, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 335015, gadget_id = 70330114, pos = { x = -3644.693, y = 181.347, z = -648.109 }, rot = { x = 0.000, y = 286.375, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 335016, gadget_id = 70330114, pos = { x = -3788.579, y = 167.044, z = -619.272 }, rot = { x = 0.000, y = 106.651, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 335017, gadget_id = 70330114, pos = { x = -3788.878, y = 166.790, z = -619.304 }, rot = { x = 0.000, y = 195.428, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 335018, gadget_id = 70330114, pos = { x = -3801.732, y = 130.064, z = -661.574 }, rot = { x = 0.000, y = 15.698, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 335009, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3677.888, y = 141.174, z = -722.296 }, area_id = 17 },
	-- Trigger #2
	{ config_id = 335010, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3644.612, y = 180.313, z = -647.901 }, area_id = 17 },
	-- Trigger #3
	{ config_id = 335011, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3788.817, y = 166.127, z = -619.275 }, area_id = 17 },
	-- Trigger #4
	{ config_id = 335012, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3801.837, y = 129.174, z = -661.447 }, area_id = 17 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1335009, name = "ENTER_REGION_335009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_335009", action = "action_EVENT_ENTER_REGION_335009", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1335010, name = "ENTER_REGION_335010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_335010", action = "action_EVENT_ENTER_REGION_335010", trigger_count = 0, forbid_guest = false },
	-- Trigger #3
	{ config_id = 1335011, name = "ENTER_REGION_335011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_335011", action = "action_EVENT_ENTER_REGION_335011", trigger_count = 0, forbid_guest = false },
	-- Trigger #4
	{ config_id = 1335012, name = "ENTER_REGION_335012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_335012", action = "action_EVENT_ENTER_REGION_335012", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 335001, 335002, 335003, 335004, 335005, 335006, 335007, 335008, 335013, 335014, 335015, 335016, 335017, 335018 },
		regions = { 335009, 335010, 335011, 335012 },
		triggers = { "ENTER_REGION_335009", "ENTER_REGION_335010", "ENTER_REGION_335011", "ENTER_REGION_335012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_335009(context, evt)
	if evt.param1 ~= 335009 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_335009(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_335010(context, evt)
	if evt.param1 ~= 335010 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_335010(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_335011(context, evt)
	if evt.param1 ~= 335011 then return false end
	
	-- 判断变量"gadget_Teleport_3_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_3_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_335011(context, evt)
			--gadget_Teleport_3 trigger
			local teleportid = defs["gadget_Teleport_3"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_335012(context, evt)
	if evt.param1 ~= 335012 then return false end
	
	-- 判断变量"gadget_Teleport_4_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_4_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_335012(context, evt)
			--gadget_Teleport_4 trigger
			local teleportid = defs["gadget_Teleport_4"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
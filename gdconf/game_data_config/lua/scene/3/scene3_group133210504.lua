-- 基础信息
local base_info = {
	group_id = 133210504
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 504001,
	gadget_Teleport_2 = 504002,
	gadget_Teleport_3 = 504003,
	gadget_Teleport_4 = 0,
	pointarray_1 = 321000069,
	pointarray_2 = 321000070,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 504005,
	gadget_TeleportOperator_2 = 504006,
	gadget_TeleportOperator_3 = 504007,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133210504,
	pointarray_Rotate = 321000072,
	rotStep = 180
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
	{ config_id = 504001, gadget_id = 70950095, pos = { x = -3739.502, y = 122.349, z = -819.978 }, rot = { x = 0.000, y = 118.481, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	-- Teleport #2
	{ config_id = 504002, gadget_id = 70950095, pos = { x = -3665.343, y = 144.602, z = -854.355 }, rot = { x = 0.000, y = 298.481, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	-- Teleport #3
	{ config_id = 504003, gadget_id = 70950095, pos = { x = -3621.748, y = 191.925, z = -870.079 }, rot = { x = 0.000, y = 298.481, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	-- Operator #1
	{ config_id = 504005, gadget_id = 70950145, pos = { x = -3739.493, y = 122.353, z = -819.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 17 },
	-- Operator #2
	{ config_id = 504006, gadget_id = 70950145, pos = { x = -3665.334, y = 144.485, z = -855.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 17 },
	-- Operator #3
	{ config_id = 504007, gadget_id = 70950145, pos = { x = -3621.587, y = 192.156, z = -870.325 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 17 },
	{ config_id = 504009, gadget_id = 70330114, pos = { x = -3737.503, y = 123.067, z = -820.886 }, rot = { x = 0.000, y = 118.481, z = 0.000 }, level = 2, area_id = 17 },
	{ config_id = 504010, gadget_id = 70330114, pos = { x = -3664.147, y = 146.276, z = -855.004 }, rot = { x = 340.646, y = 118.481, z = 0.000 }, level = 2, area_id = 17 },
	{ config_id = 504011, gadget_id = 70330114, pos = { x = -3667.185, y = 145.291, z = -853.356 }, rot = { x = 0.000, y = 298.481, z = 0.000 }, level = 2, area_id = 17 },
	{ config_id = 504012, gadget_id = 70330114, pos = { x = -3622.148, y = 193.077, z = -869.906 }, rot = { x = 24.669, y = 293.456, z = 0.000 }, level = 2, area_id = 17 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 504015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3739.502, y = 123.068, z = -819.978 }, area_id = 17 },
	-- Trigger #2
	{ config_id = 504016, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3665.343, y = 145.481, z = -854.355 }, area_id = 17 },
	-- Trigger #3
	{ config_id = 504017, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3621.748, y = 192.675, z = -870.079 }, area_id = 17 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1504015, name = "ENTER_REGION_504015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_504015", action = "action_EVENT_ENTER_REGION_504015", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1504016, name = "ENTER_REGION_504016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_504016", action = "action_EVENT_ENTER_REGION_504016", trigger_count = 0, forbid_guest = false },
	-- Trigger #3
	{ config_id = 1504017, name = "ENTER_REGION_504017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_504017", action = "action_EVENT_ENTER_REGION_504017", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 504001, 504002, 504003, 504005, 504006, 504007, 504009, 504010, 504011, 504012 },
		regions = { 504015, 504016, 504017 },
		triggers = { "ENTER_REGION_504015", "ENTER_REGION_504016", "ENTER_REGION_504017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_504015(context, evt)
	if evt.param1 ~= 504015 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_504015(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_504016(context, evt)
	if evt.param1 ~= 504016 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_504016(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_504017(context, evt)
	if evt.param1 ~= 504017 then return false end
	
	-- 判断变量"gadget_Teleport_3_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_3_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_504017(context, evt)
			--gadget_Teleport_3 trigger
			local teleportid = defs["gadget_Teleport_3"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
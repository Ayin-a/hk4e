-- 基础信息
local base_info = {
	group_id = 133223198
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 198001,
	gadget_Teleport_2 = 198003,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 322300035,
	pointarray_2 = 0,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 198005,
	gadget_TeleportOperator_2 = 198007,
	gadget_TeleportOperator_3 = 0,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133223198,
	pointarray_Rotate = 322300038,
	rotStep = 180
}

-- DEFS_MISCS
connectInfo = 
{	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1,10}
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
	{ config_id = 198001, gadget_id = 70950095, pos = { x = -6101.766, y = 218.711, z = -2453.745 }, rot = { x = 0.007, y = 136.564, z = 0.116 }, level = 2, persistent = true, is_use_point_array = true, area_id = 18 },
	-- Teleport #3
	{ config_id = 198003, gadget_id = 70950095, pos = { x = -6052.099, y = 229.218, z = -2505.207 }, rot = { x = 0.000, y = 138.562, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 18 },
	-- Operator #1
	{ config_id = 198005, gadget_id = 70950145, pos = { x = -6101.285, y = 218.346, z = -2454.010 }, rot = { x = 0.000, y = 135.816, z = 0.000 }, level = 2, persistent = true, area_id = 18 },
	-- Operator #3
	{ config_id = 198007, gadget_id = 70950145, pos = { x = -6052.532, y = 229.299, z = -2504.784 }, rot = { x = 0.000, y = 222.667, z = 0.000 }, level = 2, persistent = true, area_id = 18 },
	{ config_id = 198009, gadget_id = 70330114, pos = { x = -6100.231, y = 218.730, z = -2455.797 }, rot = { x = 341.611, y = 133.439, z = 11.689 }, level = 2, area_id = 18 },
	{ config_id = 198012, gadget_id = 70330114, pos = { x = -6054.006, y = 229.410, z = -2502.993 }, rot = { x = 0.000, y = 313.617, z = 0.000 }, level = 2, area_id = 18 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 198015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -6101.979, y = 219.677, z = -2453.604 }, area_id = 18 },
	-- Trigger #3
	{ config_id = 198017, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -6052.537, y = 229.505, z = -2504.964 }, area_id = 18 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1198015, name = "ENTER_REGION_198015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_198015", action = "action_EVENT_ENTER_REGION_198015", trigger_count = 0, forbid_guest = false },
	-- Trigger #3
	{ config_id = 1198017, name = "ENTER_REGION_198017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_198017", action = "action_EVENT_ENTER_REGION_198017", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 198001, 198003, 198005, 198007, 198009, 198012 },
		regions = { 198015, 198017 },
		triggers = { "ENTER_REGION_198015", "ENTER_REGION_198017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_198015(context, evt)
	if evt.param1 ~= 198015 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_198015(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_198017(context, evt)
	if evt.param1 ~= 198017 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_198017(context, evt)
			--gadget_Teleport_3 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
-- 基础信息
local base_info = {
	group_id = 133223245
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 245001,
	gadget_Teleport_2 = 245002,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 322300045,
	pointarray_2 = 0,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 245005,
	gadget_TeleportOperator_2 = 245006,
	gadget_TeleportOperator_3 = 0,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133223245,
	pointarray_Rotate = 322300048,
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
	{ config_id = 245001, gadget_id = 70950095, pos = { x = -6035.733, y = 224.921, z = -2940.307 }, rot = { x = 0.000, y = 33.853, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 18 },
	-- Teleport #2
	{ config_id = 245002, gadget_id = 70950095, pos = { x = -5995.907, y = 226.318, z = -2884.865 }, rot = { x = 0.000, y = 210.888, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 18 },
	-- Operator #1
	{ config_id = 245005, gadget_id = 70950145, pos = { x = -6036.233, y = 220.786, z = -2941.031 }, rot = { x = 0.000, y = 26.117, z = 0.000 }, level = 2, persistent = true, area_id = 18 },
	-- Operator #2
	{ config_id = 245006, gadget_id = 70950145, pos = { x = -5995.898, y = 222.284, z = -2885.747 }, rot = { x = 0.000, y = 210.888, z = 0.000 }, level = 2, persistent = true, area_id = 18 },
	{ config_id = 245009, gadget_id = 70330114, pos = { x = -6034.297, y = 224.848, z = -2938.295 }, rot = { x = 6.237, y = 36.222, z = 189.119 }, level = 2, area_id = 18 },
	{ config_id = 245010, gadget_id = 70330114, pos = { x = -5995.981, y = 226.763, z = -2885.625 }, rot = { x = 0.000, y = 212.904, z = 0.000 }, level = 2, area_id = 18 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 245015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -6036.063, y = 225.638, z = -2940.119 }, area_id = 18 },
	-- Trigger #2
	{ config_id = 245016, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -5995.861, y = 227.403, z = -2885.122 }, area_id = 18 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1245015, name = "ENTER_REGION_245015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_245015", action = "action_EVENT_ENTER_REGION_245015", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1245016, name = "ENTER_REGION_245016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_245016", action = "action_EVENT_ENTER_REGION_245016", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 245001, 245002, 245005, 245006, 245009, 245010 },
		regions = { 245015, 245016 },
		triggers = { "ENTER_REGION_245015", "ENTER_REGION_245016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_245015(context, evt)
	if evt.param1 ~= 245015 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_245015(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_245016(context, evt)
	if evt.param1 ~= 245016 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_245016(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
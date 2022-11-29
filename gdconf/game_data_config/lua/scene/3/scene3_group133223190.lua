-- 基础信息
local base_info = {
	group_id = 133223190
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 190001,
	gadget_Teleport_2 = 190002,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 322300030,
	pointarray_2 = 0,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 190005,
	gadget_TeleportOperator_2 = 190006,
	gadget_TeleportOperator_3 = 0,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133223190,
	pointarray_Rotate = 322300033,
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
	{ config_id = 190001, gadget_id = 70950095, pos = { x = -6171.168, y = 221.618, z = -2434.611 }, rot = { x = 0.000, y = 5.902, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 18 },
	-- Teleport #2
	{ config_id = 190002, gadget_id = 70950095, pos = { x = -6171.563, y = 200.538, z = -2372.329 }, rot = { x = 3.739, y = 359.518, z = 356.712 }, level = 2, persistent = true, is_use_point_array = true, area_id = 18 },
	-- Operator #1
	{ config_id = 190005, gadget_id = 70950145, pos = { x = -6171.204, y = 221.133, z = -2434.594 }, rot = { x = 0.000, y = 278.724, z = 0.000 }, level = 2, persistent = true, area_id = 18 },
	-- Operator #2
	{ config_id = 190006, gadget_id = 70950145, pos = { x = -6170.929, y = 201.090, z = -2372.333 }, rot = { x = 357.114, y = 275.537, z = 355.943 }, level = 2, persistent = true, area_id = 18 },
	{ config_id = 190009, gadget_id = 70330114, pos = { x = -6171.867, y = 221.247, z = -2432.352 }, rot = { x = 0.000, y = 9.164, z = 0.000 }, level = 2, area_id = 18 },
	{ config_id = 190010, gadget_id = 70330114, pos = { x = -6171.066, y = 201.629, z = -2374.000 }, rot = { x = 347.205, y = 177.252, z = 0.000 }, level = 2, area_id = 18 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 190015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -6170.911, y = 221.935, z = -2434.592 }, area_id = 18 },
	-- Trigger #2
	{ config_id = 190016, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -6171.265, y = 201.561, z = -2372.265 }, area_id = 18 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1190015, name = "ENTER_REGION_190015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_190015", action = "action_EVENT_ENTER_REGION_190015", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1190016, name = "ENTER_REGION_190016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_190016", action = "action_EVENT_ENTER_REGION_190016", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 190001, 190002, 190005, 190006, 190009, 190010 },
		regions = { 190015, 190016 },
		triggers = { "ENTER_REGION_190015", "ENTER_REGION_190016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_190015(context, evt)
	if evt.param1 ~= 190015 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_190015(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_190016(context, evt)
	if evt.param1 ~= 190016 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_190016(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
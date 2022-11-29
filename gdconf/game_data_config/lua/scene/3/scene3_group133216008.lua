-- 基础信息
local base_info = {
	group_id = 133216008
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 8001,
	gadget_Teleport_2 = 8002,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 321600009,
	pointarray_2 = 0,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 8005,
	gadget_TeleportOperator_2 = 8006,
	gadget_TeleportOperator_3 = 0,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133216008,
	pointarray_Rotate = 321600012,
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
	{ config_id = 8001, gadget_id = 70950095, pos = { x = -5059.165, y = 200.313, z = -2370.658 }, rot = { x = 0.000, y = 91.903, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 18 },
	-- Teleport #2
	{ config_id = 8002, gadget_id = 70950095, pos = { x = -4995.029, y = 200.000, z = -2376.866 }, rot = { x = 0.000, y = 277.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 18 },
	-- Operator #1
	{ config_id = 8005, gadget_id = 70950145, pos = { x = -5059.352, y = 195.243, z = -2370.661 }, rot = { x = 0.000, y = 91.903, z = 0.000 }, level = 2, persistent = true, area_id = 18 },
	-- Operator #2
	{ config_id = 8006, gadget_id = 70950145, pos = { x = -4995.910, y = 194.844, z = -2376.811 }, rot = { x = 0.000, y = 94.196, z = 0.000 }, level = 2, persistent = true, area_id = 18 },
	{ config_id = 8009, gadget_id = 70330114, pos = { x = -4997.379, y = 200.000, z = -2375.654 }, rot = { x = 0.000, y = 283.876, z = 0.000 }, level = 2, area_id = 18 },
	{ config_id = 8010, gadget_id = 70330114, pos = { x = -5056.662, y = 200.000, z = -2369.438 }, rot = { x = 0.000, y = 87.234, z = 0.000 }, level = 2, area_id = 18 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 8015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -5059.049, y = 201.248, z = -2370.699 }, area_id = 18 },
	-- Trigger #2
	{ config_id = 8016, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4995.288, y = 200.764, z = -2376.893 }, area_id = 18 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1008015, name = "ENTER_REGION_8015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8015", action = "action_EVENT_ENTER_REGION_8015", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1008016, name = "ENTER_REGION_8016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8016", action = "action_EVENT_ENTER_REGION_8016", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 8001, 8002, 8005, 8006, 8009, 8010 },
		regions = { 8015, 8016 },
		triggers = { "ENTER_REGION_8015", "ENTER_REGION_8016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_8015(context, evt)
	if evt.param1 ~= 8015 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8015(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_8016(context, evt)
	if evt.param1 ~= 8016 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_8016(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
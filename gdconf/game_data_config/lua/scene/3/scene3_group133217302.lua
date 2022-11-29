-- 基础信息
local base_info = {
	group_id = 133217302
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 302001,
	gadget_Teleport_2 = 302002,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 321700035,
	pointarray_2 = 321700036,
	gadget_TeleportOperator_1 = 302005,
	gadget_TeleportOperator_2 = 302006,
	gadget_TeleportOperator_3 = 0,
	group_ID = 133217302,
	pointarray_Rotate = 321700040,
	rotStep = 180,
	gadget_TeleportOperator_4 = 0
}

-- DEFS_MISCS
connectInfo = 
{
	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1,10},
	
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
	{ config_id = 302001, gadget_id = 70950095, pos = { x = -4506.969, y = 200.853, z = -3721.886 }, rot = { x = 0.526, y = 48.134, z = 359.808 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Teleport #2
	{ config_id = 302002, gadget_id = 70950095, pos = { x = -4440.830, y = 201.078, z = -3667.305 }, rot = { x = 0.000, y = 230.382, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Operator #1
	{ config_id = 302005, gadget_id = 70950145, pos = { x = -4507.002, y = 200.892, z = -3721.902 }, rot = { x = 359.469, y = 229.634, z = 0.178 }, level = 2, persistent = true, area_id = 14 },
	-- Operator #2
	{ config_id = 302006, gadget_id = 70950145, pos = { x = -4440.044, y = 201.664, z = -3666.895 }, rot = { x = 0.000, y = 242.913, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	{ config_id = 302009, gadget_id = 70330114, pos = { x = -4508.814, y = 201.063, z = -3723.445 }, rot = { x = 359.991, y = 48.634, z = 1.709 }, level = 2, area_id = 14 },
	{ config_id = 302010, gadget_id = 70330114, pos = { x = -4441.106, y = 201.078, z = -3667.372 }, rot = { x = 0.000, y = 233.665, z = 0.000 }, level = 2, area_id = 14 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 302015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4506.342, y = 201.470, z = -3721.521 }, area_id = 14 },
	-- Trigger #2
	{ config_id = 302016, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4441.706, y = 201.692, z = -3667.761 }, area_id = 14 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1302015, name = "ENTER_REGION_302015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_302015", action = "action_EVENT_ENTER_REGION_302015", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1302016, name = "ENTER_REGION_302016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_302016", action = "action_EVENT_ENTER_REGION_302016", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 302001, 302002, 302005, 302006, 302009, 302010 },
		regions = { 302015, 302016 },
		triggers = { "ENTER_REGION_302015", "ENTER_REGION_302016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_302015(context, evt)
	if evt.param1 ~= 302015 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_302015(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_302016(context, evt)
	if evt.param1 ~= 302016 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_302016(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
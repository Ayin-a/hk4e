-- 基础信息
local base_info = {
	group_id = 133217308
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 308001,
	gadget_Teleport_2 = 308002,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 321700036,
	pointarray_2 = 0,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 308005,
	gadget_TeleportOperator_2 = 308006,
	gadget_TeleportOperator_3 = 0,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133217308,
	pointarray_Rotate = 321700039,
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
	{ config_id = 308001, gadget_id = 70950095, pos = { x = -4466.366, y = 202.406, z = -4032.861 }, rot = { x = 0.000, y = 155.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Teleport #2
	{ config_id = 308002, gadget_id = 70950095, pos = { x = -4405.078, y = 202.811, z = -4206.547 }, rot = { x = 0.000, y = 335.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Operator #1
	{ config_id = 308005, gadget_id = 70950145, pos = { x = -4465.302, y = 90.000, z = -4056.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	-- Operator #2
	{ config_id = 308006, gadget_id = 70950145, pos = { x = -4465.302, y = 90.000, z = -4056.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	{ config_id = 308009, gadget_id = 70330114, pos = { x = -4466.450, y = 202.503, z = -4032.619 }, rot = { x = 0.000, y = 156.856, z = 0.000 }, level = 2, area_id = 14 },
	{ config_id = 308010, gadget_id = 70330114, pos = { x = -4405.049, y = 203.335, z = -4206.187 }, rot = { x = 0.000, y = 340.260, z = 0.000 }, level = 2, area_id = 14 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 308015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4466.480, y = 202.820, z = -4032.631 }, area_id = 14 },
	-- Trigger #2
	{ config_id = 308016, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4404.886, y = 202.822, z = -4206.725 }, area_id = 14 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1308015, name = "ENTER_REGION_308015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_308015", action = "action_EVENT_ENTER_REGION_308015", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1308016, name = "ENTER_REGION_308016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_308016", action = "action_EVENT_ENTER_REGION_308016", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 308001, 308002, 308005, 308006, 308009, 308010 },
		regions = { 308015, 308016 },
		triggers = { "ENTER_REGION_308015", "ENTER_REGION_308016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_308015(context, evt)
	if evt.param1 ~= 308015 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_308015(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_308016(context, evt)
	if evt.param1 ~= 308016 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_308016(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
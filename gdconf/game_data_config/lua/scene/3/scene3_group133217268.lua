-- 基础信息
local base_info = {
	group_id = 133217268
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 268001,
	gadget_Teleport_2 = 268002,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 321700019,
	pointarray_2 = 0,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 268005,
	gadget_TeleportOperator_2 = 268006,
	gadget_TeleportOperator_3 = 0,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133217268,
	pointarray_Rotate = 321700022,
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
	{ config_id = 268001, gadget_id = 70950095, pos = { x = -4563.876, y = 206.456, z = -4263.372 }, rot = { x = 0.000, y = 330.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Teleport #2
	{ config_id = 268002, gadget_id = 70950095, pos = { x = -4633.660, y = 204.420, z = -4134.355 }, rot = { x = 0.000, y = 150.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Operator #1
	{ config_id = 268005, gadget_id = 70950145, pos = { x = -4563.838, y = 205.971, z = -4263.365 }, rot = { x = 0.000, y = 326.513, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	-- Operator #2
	{ config_id = 268006, gadget_id = 70950145, pos = { x = -4632.965, y = 205.005, z = -4134.526 }, rot = { x = 0.000, y = 168.301, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	{ config_id = 268009, gadget_id = 70330114, pos = { x = -4564.266, y = 206.341, z = -4263.072 }, rot = { x = 0.000, y = 331.262, z = 0.000 }, level = 2, area_id = 14 },
	{ config_id = 268010, gadget_id = 70330114, pos = { x = -4633.678, y = 204.107, z = -4134.431 }, rot = { x = 0.000, y = 169.930, z = 0.000 }, level = 2, area_id = 14 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 268015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4564.088, y = 206.773, z = -4263.517 }, area_id = 14 },
	-- Trigger #2
	{ config_id = 268016, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4633.405, y = 205.034, z = -4134.296 }, area_id = 14 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1268015, name = "ENTER_REGION_268015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_268015", action = "action_EVENT_ENTER_REGION_268015", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1268016, name = "ENTER_REGION_268016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_268016", action = "action_EVENT_ENTER_REGION_268016", trigger_count = 0, forbid_guest = false }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 268011, gadget_id = 70330114, pos = { x = -4562.817, y = 205.195, z = -4286.657 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 2, area_id = 14 },
		{ config_id = 268012, gadget_id = 70330114, pos = { x = -4586.606, y = 205.823, z = -4286.309 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 2, area_id = 14 },
		{ config_id = 268014, gadget_id = 70330114, pos = { x = -4529.711, y = 205.237, z = -4263.580 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 2, area_id = 14 }
	}
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
		gadgets = { 268001, 268002, 268005, 268006, 268009, 268010 },
		regions = { 268015, 268016 },
		triggers = { "ENTER_REGION_268015", "ENTER_REGION_268016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_268015(context, evt)
	if evt.param1 ~= 268015 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_268015(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_268016(context, evt)
	if evt.param1 ~= 268016 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_268016(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
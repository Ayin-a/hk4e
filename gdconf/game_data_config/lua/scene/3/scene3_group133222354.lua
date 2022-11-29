-- 基础信息
local base_info = {
	group_id = 133222354
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 354001,
	gadget_Teleport_2 = 354002,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 322200036,
	pointarray_2 = 0,
	pointarray_3 = 0,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 354005,
	gadget_TeleportOperator_2 = 354006,
	gadget_TeleportOperator_3 = 0,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133222354,
	pointarray_Rotate = 322200039,
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
	{ config_id = 354001, gadget_id = 70950095, pos = { x = -4316.120, y = 246.466, z = -4190.460 }, rot = { x = 0.000, y = 340.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Teleport #2
	{ config_id = 354002, gadget_id = 70950095, pos = { x = -4400.896, y = 252.535, z = -3899.493 }, rot = { x = 0.000, y = 160.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Operator #1
	{ config_id = 354005, gadget_id = 70950145, pos = { x = -4316.110, y = 90.000, z = -4190.423 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	-- Operator #2
	{ config_id = 354006, gadget_id = 70950145, pos = { x = -4400.887, y = 90.000, z = -3900.376 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	{ config_id = 354009, gadget_id = 70330114, pos = { x = -4316.912, y = 246.404, z = -4190.267 }, rot = { x = 0.000, y = 340.818, z = 0.000 }, level = 2, area_id = 14 },
	{ config_id = 354010, gadget_id = 70330114, pos = { x = -4401.024, y = 253.088, z = -3899.735 }, rot = { x = 0.000, y = 169.713, z = 0.000 }, level = 2, area_id = 14 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 354015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4316.064, y = 246.783, z = -4190.711 }, area_id = 14 },
	-- Trigger #2
	{ config_id = 354016, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4400.851, y = 253.149, z = -3899.751 }, area_id = 14 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1354015, name = "ENTER_REGION_354015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_354015", action = "action_EVENT_ENTER_REGION_354015", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1354016, name = "ENTER_REGION_354016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_354016", action = "action_EVENT_ENTER_REGION_354016", trigger_count = 0, forbid_guest = false }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 354003, gadget_id = 70950095, pos = { x = -4336.669, y = 245.375, z = -4211.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
		{ config_id = 354004, gadget_id = 70950095, pos = { x = -4279.774, y = 244.790, z = -4188.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
		{ config_id = 354007, gadget_id = 70950145, pos = { x = -4336.508, y = 244.613, z = -4211.765 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 354008, gadget_id = 70950145, pos = { x = -4279.889, y = 244.812, z = -4188.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 354011, gadget_id = 70330114, pos = { x = -4312.880, y = 244.748, z = -4211.868 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 2, area_id = 14 },
		{ config_id = 354012, gadget_id = 70330114, pos = { x = -4336.669, y = 245.375, z = -4211.520 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 2, area_id = 14 },
		{ config_id = 354013, gadget_id = 70330114, pos = { x = -4314.020, y = 245.375, z = -4188.557 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 2, area_id = 14 },
		{ config_id = 354014, gadget_id = 70330114, pos = { x = -4279.774, y = 244.790, z = -4188.791 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 2, area_id = 14 }
	},
	regions = {
		{ config_id = 354017, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4336.523, y = 245.068, z = -4211.686 }, area_id = 14 },
		{ config_id = 354018, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4279.854, y = 245.032, z = -4188.999 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1354017, name = "ENTER_REGION_354017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_354017", action = "action_EVENT_ENTER_REGION_354017", trigger_count = 0, forbid_guest = false },
		{ config_id = 1354018, name = "ENTER_REGION_354018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_354018", action = "action_EVENT_ENTER_REGION_354018", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 354001, 354002, 354005, 354006, 354009, 354010 },
		regions = { 354015, 354016 },
		triggers = { "ENTER_REGION_354015", "ENTER_REGION_354016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_354015(context, evt)
	if evt.param1 ~= 354015 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_354015(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_354016(context, evt)
	if evt.param1 ~= 354016 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_354016(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
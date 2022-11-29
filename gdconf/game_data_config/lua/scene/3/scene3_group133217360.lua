-- 基础信息
local base_info = {
	group_id = 133217360
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 360001,
	gadget_Teleport_2 = 360002,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 321700050,
	pointarray_2 = 321700051,
	pointarray_3 = 321700052,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 360005,
	gadget_TeleportOperator_2 = 360006,
	gadget_TeleportOperator_3 = 360007,
	gadget_TeleportOperator_4 = 360008,
	group_ID = 133217360,
	pointarray_Rotate = 321700053,
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
	{ config_id = 360001, gadget_id = 70950095, pos = { x = -4933.676, y = 199.730, z = -4063.563 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Teleport #2
	{ config_id = 360002, gadget_id = 70950095, pos = { x = -4963.289, y = 199.349, z = -4355.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Operator #1
	{ config_id = 360005, gadget_id = 70950145, pos = { x = -4933.667, y = 134.001, z = -4063.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	-- Operator #2
	{ config_id = 360006, gadget_id = 70950145, pos = { x = -4963.279, y = 133.794, z = -4356.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	{ config_id = 360009, gadget_id = 70330114, pos = { x = -4933.800, y = 200.528, z = -4065.012 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 2, area_id = 14 },
	{ config_id = 360010, gadget_id = 70330114, pos = { x = -4940.870, y = 200.000, z = -4352.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 14 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 360015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4933.708, y = 200.856, z = -4063.492 }, area_id = 14 },
	-- Trigger #2
	{ config_id = 360016, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4963.283, y = 200.094, z = -4355.299 }, area_id = 14 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1360015, name = "ENTER_REGION_360015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_360015", action = "action_EVENT_ENTER_REGION_360015", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1360016, name = "ENTER_REGION_360016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_360016", action = "action_EVENT_ENTER_REGION_360016", trigger_count = 0, forbid_guest = false }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 360003, gadget_id = 70950095, pos = { x = -5076.179, y = 200.378, z = -3801.623 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
		{ config_id = 360004, gadget_id = 70950095, pos = { x = -5019.284, y = 199.792, z = -3778.894 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
		{ config_id = 360007, gadget_id = 70950145, pos = { x = -5076.018, y = 199.615, z = -3801.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 360008, gadget_id = 70950145, pos = { x = -5019.398, y = 199.814, z = -3778.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 360011, gadget_id = 70330114, pos = { x = -5052.390, y = 199.750, z = -3801.971 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 2, area_id = 14 },
		{ config_id = 360012, gadget_id = 70330114, pos = { x = -5076.179, y = 200.378, z = -3801.623 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 2, area_id = 14 },
		{ config_id = 360013, gadget_id = 70330114, pos = { x = -5053.529, y = 200.377, z = -3778.660 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 2, area_id = 14 },
		{ config_id = 360014, gadget_id = 70330114, pos = { x = -5019.284, y = 199.792, z = -3778.894 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 2, area_id = 14 }
	},
	regions = {
		{ config_id = 360017, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -5076.033, y = 200.070, z = -3801.789 }, area_id = 14 },
		{ config_id = 360018, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -5019.364, y = 200.034, z = -3779.102 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1360017, name = "ENTER_REGION_360017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_360017", action = "action_EVENT_ENTER_REGION_360017", trigger_count = 0, forbid_guest = false },
		{ config_id = 1360018, name = "ENTER_REGION_360018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_360018", action = "action_EVENT_ENTER_REGION_360018", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 360001, 360002, 360005, 360006, 360009, 360010 },
		regions = { 360015, 360016 },
		triggers = { "ENTER_REGION_360015", "ENTER_REGION_360016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_360015(context, evt)
	if evt.param1 ~= 360015 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_360015(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_360016(context, evt)
	if evt.param1 ~= 360016 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_360016(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
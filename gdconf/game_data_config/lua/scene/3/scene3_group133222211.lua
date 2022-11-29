-- 基础信息
local base_info = {
	group_id = 133222211
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 211001,
	gadget_Teleport_2 = 211002,
	gadget_Teleport_3 = 211003,
	gadget_Teleport_4 = 211004,
	pointarray_1 = 322200022,
	pointarray_2 = 322200023,
	pointarray_3 = 322200024,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 211005,
	gadget_TeleportOperator_2 = 211006,
	gadget_TeleportOperator_3 = 211007,
	gadget_TeleportOperator_4 = 211008,
	group_ID = 133222211,
	pointarray_Rotate = 322200025,
	rotStep = 90
}

-- DEFS_MISCS
connectInfo = 
{
	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1,10},

{defs.gadget_Teleport_3,defs.gadget_Teleport_4,defs.pointarray_3,10}
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
	{ config_id = 211001, gadget_id = 70950095, pos = { x = -4407.724, y = 258.434, z = -4205.845 }, rot = { x = 0.000, y = 241.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Teleport #2
	{ config_id = 211002, gadget_id = 70950095, pos = { x = -4571.884, y = 334.347, z = -4312.700 }, rot = { x = 0.000, y = 53.186, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Teleport #3
	{ config_id = 211003, gadget_id = 70950095, pos = { x = -4495.976, y = 253.050, z = -3986.650 }, rot = { x = 0.000, y = 254.000, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Teleport #4
	{ config_id = 211004, gadget_id = 70950095, pos = { x = -4789.759, y = 287.661, z = -4046.907 }, rot = { x = 0.000, y = 74.830, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Operator #1
	{ config_id = 211005, gadget_id = 70950145, pos = { x = -4407.786, y = 258.411, z = -4205.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	-- Operator #2
	{ config_id = 211006, gadget_id = 70950145, pos = { x = -4503.669, y = 96.783, z = -4384.732 }, rot = { x = 4.414, y = 53.626, z = 0.660 }, level = 2, persistent = true, area_id = 14 },
	-- Operator #3
	{ config_id = 211007, gadget_id = 70950145, pos = { x = -4496.220, y = 88.654, z = -3986.488 }, rot = { x = 0.000, y = 156.923, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	-- Operator #4
	{ config_id = 211008, gadget_id = 70950145, pos = { x = -4790.833, y = 66.371, z = -4045.918 }, rot = { x = 0.000, y = 74.830, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	{ config_id = 211014, gadget_id = 70290085, pos = { x = -4571.019, y = 327.733, z = -4308.236 }, rot = { x = 20.008, y = 110.103, z = 100.859 }, level = 30, area_id = 14 },
	{ config_id = 211015, gadget_id = 70330114, pos = { x = -4407.725, y = 259.945, z = -4205.868 }, rot = { x = 343.391, y = 245.608, z = 358.185 }, level = 30, area_id = 14 },
	{ config_id = 211017, gadget_id = 70330114, pos = { x = -4571.956, y = 336.156, z = -4312.676 }, rot = { x = 4.419, y = 53.338, z = 0.626 }, level = 30, area_id = 14 },
	{ config_id = 211019, gadget_id = 70330114, pos = { x = -4495.976, y = 255.970, z = -3986.650 }, rot = { x = 0.000, y = 247.218, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 211020, gadget_id = 70330114, pos = { x = -4788.804, y = 288.581, z = -4046.687 }, rot = { x = 0.000, y = 75.322, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 211009, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4407.529, y = 258.740, z = -4205.685 }, area_id = 14 },
	-- Trigger #2
	{ config_id = 211010, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4572.066, y = 334.961, z = -4312.889 }, area_id = 14 },
	-- Trigger #3
	{ config_id = 211011, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4496.167, y = 253.475, z = -3986.783 }, area_id = 14 },
	-- Trigger #4
	{ config_id = 211012, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4790.063, y = 288.416, z = -4046.913 }, area_id = 14 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1211009, name = "ENTER_REGION_211009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_211009", action = "action_EVENT_ENTER_REGION_211009", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1211010, name = "ENTER_REGION_211010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_211010", action = "action_EVENT_ENTER_REGION_211010", trigger_count = 0, forbid_guest = false },
	-- Trigger #3
	{ config_id = 1211011, name = "ENTER_REGION_211011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_211011", action = "action_EVENT_ENTER_REGION_211011", trigger_count = 0, forbid_guest = false },
	-- Trigger #4
	{ config_id = 1211012, name = "ENTER_REGION_211012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_211012", action = "action_EVENT_ENTER_REGION_211012", trigger_count = 0, forbid_guest = false }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 211016, gadget_id = 70330114, pos = { x = -4609.350, y = 200.000, z = -3915.996 }, rot = { x = 356.699, y = 339.059, z = 352.905 }, level = 30, area_id = 14 },
		{ config_id = 211018, gadget_id = 70330114, pos = { x = -4612.195, y = 200.000, z = -3925.568 }, rot = { x = 0.000, y = 161.540, z = 0.000 }, level = 30, area_id = 14 }
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
		gadgets = { 211001, 211002, 211003, 211004, 211005, 211006, 211007, 211008, 211014, 211015, 211017, 211019, 211020 },
		regions = { 211009, 211010, 211011, 211012 },
		triggers = { "ENTER_REGION_211009", "ENTER_REGION_211010", "ENTER_REGION_211011", "ENTER_REGION_211012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_211009(context, evt)
	if evt.param1 ~= 211009 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_211009(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_211010(context, evt)
	if evt.param1 ~= 211010 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_211010(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_211011(context, evt)
	if evt.param1 ~= 211011 then return false end
	
	-- 判断变量"gadget_Teleport_3_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_3_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_211011(context, evt)
			--gadget_Teleport_3 trigger
			local teleportid = defs["gadget_Teleport_3"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_211012(context, evt)
	if evt.param1 ~= 211012 then return false end
	
	-- 判断变量"gadget_Teleport_4_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_4_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_211012(context, evt)
			--gadget_Teleport_4 trigger
			local teleportid = defs["gadget_Teleport_4"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
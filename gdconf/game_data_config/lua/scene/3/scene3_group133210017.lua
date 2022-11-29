-- 基础信息
local base_info = {
	group_id = 133210017
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 17001,
	gadget_Teleport_2 = 17002,
	gadget_Teleport_3 = 17003,
	gadget_Teleport_4 = 17004,
	pointarray_1 = 321000041,
	pointarray_2 = 321000042,
	pointarray_3 = 321000043,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 17005,
	gadget_TeleportOperator_2 = 17006,
	gadget_TeleportOperator_3 = 17007,
	gadget_TeleportOperator_4 = 17008,
	group_ID = 133210017,
	pointarray_Rotate = 321000044,
	rotStep = 90
}

-- DEFS_MISCS
connectInfo = 
{
	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1,10},
	{defs.gadget_Teleport_2,defs.gadget_Teleport_3,defs.pointarray_2,10},
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
	{ config_id = 17001, gadget_id = 70950095, pos = { x = -3999.755, y = 197.341, z = -806.302 }, rot = { x = 0.000, y = 346.779, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	-- Teleport #2
	{ config_id = 17002, gadget_id = 70950095, pos = { x = -4027.707, y = 214.052, z = -702.253 }, rot = { x = 0.000, y = 149.974, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	-- Teleport #3
	{ config_id = 17003, gadget_id = 70950095, pos = { x = -3977.570, y = 217.262, z = -669.043 }, rot = { x = 0.000, y = 57.201, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	-- Teleport #4
	{ config_id = 17004, gadget_id = 70950095, pos = { x = -3900.183, y = 229.305, z = -620.083 }, rot = { x = 0.000, y = 239.173, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 17 },
	-- Operator #1
	{ config_id = 17005, gadget_id = 70950145, pos = { x = -3999.755, y = 197.341, z = -806.302 }, rot = { x = 0.938, y = 0.008, z = 0.923 }, level = 2, persistent = true, area_id = 17 },
	-- Operator #2
	{ config_id = 17006, gadget_id = 70950145, pos = { x = -4027.707, y = 214.052, z = -702.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 17 },
	-- Operator #3
	{ config_id = 17007, gadget_id = 70950145, pos = { x = -3977.570, y = 217.037, z = -669.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 17 },
	-- Operator #4
	{ config_id = 17008, gadget_id = 70950145, pos = { x = -3900.183, y = 229.305, z = -620.083 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 17 },
	{ config_id = 17013, gadget_id = 70330114, pos = { x = -3999.835, y = 198.917, z = -806.435 }, rot = { x = 356.487, y = 344.662, z = 359.760 }, level = 30, area_id = 17 },
	{ config_id = 17014, gadget_id = 70330114, pos = { x = -4026.545, y = 215.427, z = -701.348 }, rot = { x = 0.000, y = 54.791, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 17015, gadget_id = 70330114, pos = { x = -4026.539, y = 214.900, z = -703.899 }, rot = { x = 0.000, y = 163.977, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 17016, gadget_id = 70330114, pos = { x = -3978.026, y = 218.781, z = -669.149 }, rot = { x = 0.000, y = 60.085, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 17017, gadget_id = 70330114, pos = { x = -3978.049, y = 218.476, z = -669.317 }, rot = { x = 0.000, y = 238.788, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 17018, gadget_id = 70330114, pos = { x = -3900.028, y = 230.932, z = -620.059 }, rot = { x = 0.000, y = 240.304, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 17009, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3999.755, y = 198.379, z = -806.302 }, area_id = 17 },
	-- Trigger #2
	{ config_id = 17010, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4027.707, y = 214.450, z = -702.253 }, area_id = 17 },
	-- Trigger #3
	{ config_id = 17011, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3977.570, y = 217.851, z = -669.043 }, area_id = 17 },
	-- Trigger #4
	{ config_id = 17012, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -3900.183, y = 230.343, z = -620.083 }, area_id = 17 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1017009, name = "ENTER_REGION_17009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17009", action = "action_EVENT_ENTER_REGION_17009", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1017010, name = "ENTER_REGION_17010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17010", action = "action_EVENT_ENTER_REGION_17010", trigger_count = 0, forbid_guest = false },
	-- Trigger #3
	{ config_id = 1017011, name = "ENTER_REGION_17011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17011", action = "action_EVENT_ENTER_REGION_17011", trigger_count = 0, forbid_guest = false },
	-- Trigger #4
	{ config_id = 1017012, name = "ENTER_REGION_17012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_17012", action = "action_EVENT_ENTER_REGION_17012", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 17001, 17002, 17003, 17004, 17005, 17006, 17007, 17008, 17013, 17014, 17015, 17016, 17017, 17018 },
		regions = { 17009, 17010, 17011, 17012 },
		triggers = { "ENTER_REGION_17009", "ENTER_REGION_17010", "ENTER_REGION_17011", "ENTER_REGION_17012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_17009(context, evt)
	if evt.param1 ~= 17009 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17009(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17010(context, evt)
	if evt.param1 ~= 17010 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17010(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17011(context, evt)
	if evt.param1 ~= 17011 then return false end
	
	-- 判断变量"gadget_Teleport_3_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_3_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17011(context, evt)
			--gadget_Teleport_3 trigger
			local teleportid = defs["gadget_Teleport_3"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_17012(context, evt)
	if evt.param1 ~= 17012 then return false end
	
	-- 判断变量"gadget_Teleport_4_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_4_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_17012(context, evt)
			--gadget_Teleport_4 trigger
			local teleportid = defs["gadget_Teleport_4"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
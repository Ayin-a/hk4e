-- 基础信息
local base_info = {
	group_id = 133222128
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 128001,
	gadget_Teleport_2 = 128002,
	gadget_Teleport_3 = 0,
	gadget_Teleport_4 = 0,
	pointarray_1 = 322200005,
	pointarray_2 = 322200006,
	pointarray_3 = 322200007,
	pointarray_4 = 322200008,
	gadget_TeleportOperator_1 = 128005,
	gadget_TeleportOperator_2 = 128006,
	gadget_TeleportOperator_3 = 0,
	gadget_TeleportOperator_4 = 0,
	group_ID = 133222128,
	pointarray_Rotate = 322200008,
	rotStep = 90
}

-- DEFS_MISCS
connectInfo = 
{
	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1,10},
	{defs.gadget_Teleport_3,defs.gadget_Teleport_2,defs.pointarray_3,10},
	{defs.gadget_Teleport_1,defs.gadget_Teleport_4,defs.pointarray_2,10}
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
	{ config_id = 128001, gadget_id = 70950095, pos = { x = -4805.066, y = 250.035, z = -4664.074 }, rot = { x = 0.000, y = 183.768, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Teleport #2
	{ config_id = 128002, gadget_id = 70950095, pos = { x = -4814.089, y = 224.678, z = -4804.843 }, rot = { x = 0.000, y = 3.181, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
	-- Operator #1
	{ config_id = 128005, gadget_id = 70950145, pos = { x = -4805.066, y = 250.035, z = -4664.074 }, rot = { x = 0.000, y = 19.633, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	-- Operator #2
	{ config_id = 128006, gadget_id = 70950145, pos = { x = -4814.089, y = 224.678, z = -4804.843 }, rot = { x = 0.000, y = 18.057, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
	{ config_id = 128013, gadget_id = 70330114, pos = { x = -4805.066, y = 250.035, z = -4664.074 }, rot = { x = 0.000, y = 181.470, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 128014, gadget_id = 70330114, pos = { x = -4813.881, y = 225.692, z = -4803.970 }, rot = { x = 0.000, y = 13.520, z = 0.000 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 128009, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4805.066, y = 250.035, z = -4664.074 }, area_id = 14 },
	-- Trigger #2
	{ config_id = 128010, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4814.089, y = 225.056, z = -4804.843 }, area_id = 14 }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1128009, name = "ENTER_REGION_128009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_128009", action = "action_EVENT_ENTER_REGION_128009", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1128010, name = "ENTER_REGION_128010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_128010", action = "action_EVENT_ENTER_REGION_128010", trigger_count = 0, forbid_guest = false }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 128003, gadget_id = 70950095, pos = { x = -4892.029, y = 200.834, z = -4803.808 }, rot = { x = 0.000, y = 98.177, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
		{ config_id = 128004, gadget_id = 70950095, pos = { x = -4742.556, y = 206.245, z = -4705.249 }, rot = { x = 0.000, y = 290.977, z = 0.000 }, level = 2, persistent = true, is_use_point_array = true, area_id = 14 },
		{ config_id = 128007, gadget_id = 70950145, pos = { x = -4892.029, y = 200.834, z = -4803.808 }, rot = { x = 0.000, y = 16.986, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 128008, gadget_id = 70950145, pos = { x = -4742.555, y = 205.041, z = -4705.249 }, rot = { x = 0.000, y = 359.599, z = 0.000 }, level = 2, persistent = true, area_id = 14 },
		{ config_id = 128015, gadget_id = 70330114, pos = { x = -4815.333, y = 225.692, z = -4805.398 }, rot = { x = 0.000, y = 261.017, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 128016, gadget_id = 70330114, pos = { x = -4887.415, y = 203.523, z = -4819.025 }, rot = { x = 334.367, y = 78.565, z = 6.869 }, level = 30, area_id = 14 }
	},
	regions = {
		{ config_id = 128011, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4892.029, y = 201.354, z = -4803.808 }, area_id = 14 },
		{ config_id = 128012, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = -4742.555, y = 205.041, z = -4705.249 }, area_id = 14 }
	},
	triggers = {
		{ config_id = 1128011, name = "ENTER_REGION_128011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_128011", action = "action_EVENT_ENTER_REGION_128011", trigger_count = 0, forbid_guest = false },
		{ config_id = 1128012, name = "ENTER_REGION_128012", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_128012", action = "action_EVENT_ENTER_REGION_128012", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 128001, 128002, 128005, 128006, 128013, 128014 },
		regions = { 128009, 128010 },
		triggers = { "ENTER_REGION_128009", "ENTER_REGION_128010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_128009(context, evt)
	if evt.param1 ~= 128009 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_128009(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_128010(context, evt)
	if evt.param1 ~= 128010 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_128010(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
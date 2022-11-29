-- 基础信息
local base_info = {
	group_id = 111102030
}

-- Trigger变量
local defs = {
	gadget_Teleport_1 = 30001,
	gadget_Teleport_2 = 30002,
	gadget_Teleport_3 = 30003,
	gadget_Teleport_4 = 30004,
	pointarray_1 = 110200013,
	pointarray_2 = 110200014,
	pointarray_3 = 110200015,
	pointarray_4 = 0,
	gadget_TeleportOperator_1 = 30005,
	gadget_TeleportOperator_2 = 30006,
	gadget_TeleportOperator_3 = 30007,
	gadget_TeleportOperator_4 = 30008,
	group_ID = 111102030,
	pointarray_Rotate = 110200016,
	rotStep = 180
}

-- DEFS_MISCS
connectInfo = 
{
	{defs.gadget_Teleport_1,defs.gadget_Teleport_2,defs.pointarray_1,10},
	{defs.gadget_Teleport_2,defs.gadget_Teleport_3,defs.pointarray_2,10},
	{defs.gadget_Teleport_1,defs.gadget_Teleport_4,defs.pointarray_3,10}
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
	{ config_id = 30001, gadget_id = 70950095, pos = { x = 1954.034, y = 198.885, z = -1349.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- Teleport #2
	{ config_id = 30002, gadget_id = 70950095, pos = { x = 1955.173, y = 198.258, z = -1372.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- Teleport #3
	{ config_id = 30003, gadget_id = 70950095, pos = { x = 1931.384, y = 198.885, z = -1372.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- Teleport #4
	{ config_id = 30004, gadget_id = 70950095, pos = { x = 1988.279, y = 198.300, z = -1349.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, is_use_point_array = true },
	-- Operator #1
	{ config_id = 30005, gadget_id = 70950145, pos = { x = 1954.043, y = 198.399, z = -1349.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- Operator #2
	{ config_id = 30006, gadget_id = 70950145, pos = { x = 1955.182, y = 198.844, z = -1373.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- Operator #3
	{ config_id = 30007, gadget_id = 70950145, pos = { x = 1931.545, y = 198.123, z = -1372.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	-- Operator #4
	{ config_id = 30008, gadget_id = 70950145, pos = { x = 1988.165, y = 198.322, z = -1349.292 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 30009, gadget_id = 70330114, pos = { x = 1954.034, y = 198.885, z = -1349.096 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 30010, gadget_id = 70330114, pos = { x = 1955.173, y = 198.258, z = -1372.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 30011, gadget_id = 70330114, pos = { x = 1955.173, y = 198.258, z = -1372.407 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 30012, gadget_id = 70330114, pos = { x = 1931.384, y = 198.885, z = -1372.059 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 30013, gadget_id = 70330114, pos = { x = 1954.034, y = 198.885, z = -1349.096 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 30014, gadget_id = 70330114, pos = { x = 1988.279, y = 198.300, z = -1349.330 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	-- Trigger #1
	{ config_id = 30015, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 1954.089, y = 199.202, z = -1349.347 } },
	-- Trigger #2
	{ config_id = 30016, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 1955.219, y = 198.872, z = -1372.665 } },
	-- Trigger #3
	{ config_id = 30017, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 1931.530, y = 198.578, z = -1372.225 } },
	-- Trigger #4
	{ config_id = 30018, shape = RegionShape.SPHERE, radius = 1.5, pos = { x = 1988.198, y = 198.542, z = -1349.538 } }
}

-- 触发器
triggers = {
	-- Trigger #1
	{ config_id = 1030015, name = "ENTER_REGION_30015", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_30015", action = "action_EVENT_ENTER_REGION_30015", trigger_count = 0, forbid_guest = false },
	-- Trigger #2
	{ config_id = 1030016, name = "ENTER_REGION_30016", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_30016", action = "action_EVENT_ENTER_REGION_30016", trigger_count = 0, forbid_guest = false },
	-- Trigger #3
	{ config_id = 1030017, name = "ENTER_REGION_30017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_30017", action = "action_EVENT_ENTER_REGION_30017", trigger_count = 0, forbid_guest = false },
	-- Trigger #4
	{ config_id = 1030018, name = "ENTER_REGION_30018", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_30018", action = "action_EVENT_ENTER_REGION_30018", trigger_count = 0, forbid_guest = false }
}

-- 变量
variables = {
	{ config_id = 1, name = "kl", value = 0, no_refresh = false }
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
		gadgets = { 30001, 30002, 30003, 30004, 30005, 30006, 30007, 30008, 30009, 30010, 30011, 30012, 30013, 30014 },
		regions = { 30015, 30016, 30017, 30018 },
		triggers = { "ENTER_REGION_30015", "ENTER_REGION_30016", "ENTER_REGION_30017", "ENTER_REGION_30018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_30015(context, evt)
	if evt.param1 ~= 30015 then return false end
	
	-- 判断变量"gadget_Teleport_1_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_1_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_30015(context, evt)
			--gadget_Teleport_1 trigger
			local teleportid = defs["gadget_Teleport_1"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_30016(context, evt)
	if evt.param1 ~= 30016 then return false end
	
	-- 判断变量"gadget_Teleport_2_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_2_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_30016(context, evt)
			--gadget_Teleport_2 trigger
			local teleportid = defs["gadget_Teleport_2"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_30017(context, evt)
	if evt.param1 ~= 30017 then return false end
	
	-- 判断变量"gadget_Teleport_3_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_3_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_30017(context, evt)
			--gadget_Teleport_3 trigger
			local teleportid = defs["gadget_Teleport_3"]
			TeleportAction(context, teleportid)
			return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_30018(context, evt)
	if evt.param1 ~= 30018 then return false end
	
	-- 判断变量"gadget_Teleport_4_isActive"为1
	if ScriptLib.GetGroupVariableValue(context, "gadget_Teleport_4_isActive") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_30018(context, evt)
			--gadget_Teleport_4 trigger
			local teleportid = defs["gadget_Teleport_4"]
			TeleportAction(context, teleportid)
			return 0
end

require "BlackBoxPlay/TeleportHighway"
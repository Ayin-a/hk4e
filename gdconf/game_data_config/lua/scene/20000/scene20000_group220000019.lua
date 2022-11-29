-- 基础信息
local base_info = {
	group_id = 220000019
}

-- Trigger变量
local defs = {
	gadget_id_1 = 118,
	gadget_id_2 = 119,
	gadget_id_3 = 120,
	gadget_id_4 = 121,
	gadget_id_5 = 122
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
	{ config_id = 118, gadget_id = 70900207, pos = { x = 188.120, y = 0.573, z = 46.994 }, rot = { x = 0.000, y = 240.985, z = 0.000 }, level = 1 },
	{ config_id = 119, gadget_id = 70900207, pos = { x = 192.278, y = 0.610, z = 44.452 }, rot = { x = 0.000, y = 328.790, z = 0.000 }, level = 1 },
	{ config_id = 120, gadget_id = 70900207, pos = { x = 196.118, y = 0.598, z = 42.574 }, rot = { x = 0.000, y = 301.372, z = 0.000 }, level = 1 },
	{ config_id = 121, gadget_id = 70900207, pos = { x = 199.894, y = 0.580, z = 40.925 }, rot = { x = 0.000, y = 204.239, z = 0.000 }, level = 1 },
	{ config_id = 122, gadget_id = 70900207, pos = { x = 201.772, y = 0.551, z = 44.581 }, rot = { x = 0.000, y = 327.318, z = 0.000 }, level = 1 },
	{ config_id = 123, gadget_id = 70380003, pos = { x = 188.256, y = -1.516, z = 46.985 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 20000012, start_route = false },
	{ config_id = 124, gadget_id = 70380003, pos = { x = 192.095, y = -1.521, z = 44.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 20000013, start_route = false },
	{ config_id = 125, gadget_id = 70380003, pos = { x = 195.916, y = -1.494, z = 42.392 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 20000014, start_route = false },
	{ config_id = 126, gadget_id = 70380003, pos = { x = 199.876, y = -1.502, z = 40.865 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 20000015, start_route = false },
	{ config_id = 127, gadget_id = 70380003, pos = { x = 202.128, y = -1.421, z = 44.236 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 20000016, start_route = false },
	{ config_id = 132, gadget_id = 70510009, pos = { x = 108.756, y = 0.500, z = 64.307 }, rot = { x = 0.000, y = 272.230, z = 0.000 }, level = 1 },
	{ config_id = 133, gadget_id = 70510009, pos = { x = 106.860, y = 0.500, z = 65.912 }, rot = { x = 0.000, y = 48.179, z = 0.000 }, level = 1 },
	{ config_id = 134, gadget_id = 70510009, pos = { x = 104.632, y = 0.500, z = 67.467 }, rot = { x = 0.000, y = 94.809, z = 0.000 }, level = 1 },
	{ config_id = 135, gadget_id = 70510009, pos = { x = 105.345, y = 0.500, z = 65.575 }, rot = { x = 0.000, y = 66.433, z = 0.000 }, level = 1 },
	{ config_id = 136, gadget_id = 70510009, pos = { x = 103.009, y = 0.500, z = 68.924 }, rot = { x = 0.000, y = 55.099, z = 0.000 }, level = 1 },
	{ config_id = 137, gadget_id = 70510009, pos = { x = 100.697, y = 0.500, z = 70.310 }, rot = { x = 0.000, y = 53.943, z = 0.000 }, level = 1 },
	{ config_id = 138, gadget_id = 70510009, pos = { x = 103.100, y = 0.500, z = 67.160 }, rot = { x = 0.000, y = 270.424, z = 0.000 }, level = 1 },
	{ config_id = 139, gadget_id = 70510009, pos = { x = 106.191, y = 0.500, z = 68.207 }, rot = { x = 0.000, y = 259.872, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000070, name = "CLIENT_EXECUTE_70", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricPile", condition = "condition_EVENT_CLIENT_EXECUTE_70", action = "action_EVENT_CLIENT_EXECUTE_70" },
	{ config_id = 1000071, name = "CLIENT_EXECUTE_71", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricPile", condition = "condition_EVENT_CLIENT_EXECUTE_71", action = "action_EVENT_CLIENT_EXECUTE_71" },
	{ config_id = 1000072, name = "CLIENT_EXECUTE_72", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricPile", condition = "condition_EVENT_CLIENT_EXECUTE_72", action = "action_EVENT_CLIENT_EXECUTE_72" },
	{ config_id = 1000073, name = "CLIENT_EXECUTE_73", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricPile", condition = "condition_EVENT_CLIENT_EXECUTE_73", action = "action_EVENT_CLIENT_EXECUTE_73" },
	{ config_id = 1000074, name = "CLIENT_EXECUTE_74", event = EventType.EVENT_CLIENT_EXECUTE, source = "ElectricPile", condition = "condition_EVENT_CLIENT_EXECUTE_74", action = "action_EVENT_CLIENT_EXECUTE_74" }
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
	rand_suite = true
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = suite_1,
		monsters = { },
		gadgets = { 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 132, 133, 134, 135, 136, 137, 138 },
		regions = { },
		triggers = { "CLIENT_EXECUTE_70", "CLIENT_EXECUTE_71", "CLIENT_EXECUTE_72", "CLIENT_EXECUTE_73", "CLIENT_EXECUTE_74" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_70(context, evt)
	if defs.gadget_id_1 ~= ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_70(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 123) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_71(context, evt)
	if defs.gadget_id_2 ~= ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_71(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 124) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_72(context, evt)
	if defs.gadget_id_3 ~= ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_72(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 125) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_73(context, evt)
	if defs.gadget_id_4 ~= ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_73(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 126) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_CLIENT_EXECUTE_74(context, evt)
	if defs.gadget_id_5 ~= ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid }) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_74(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 127) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133223128
}

-- Trigger变量
local defs = {
	pointarray_ID = 322300017,
	gadget_thunderThelfID = 128006
}

-- DEFS_MISCS
--正常获取路径
function GetPath(context)
	local path = {}
	local targetRouteIndex = ScriptLib.GetGroupVariableValue(context, "target_routeIndex")
	if(targetRouteIndex ~= 0) then
		table.insert(path, targetRouteIndex)
	end
	return path
end

function MovePlatform(context)
	ScriptLib.PrintLog("platform to move")
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isMoving", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end


	ScriptLib.SetPlatformPointArray(context, defs.gadget_thunderThelfID, defs.pointarray_ID, GetPath(context), { route_type = 0 })
	ScriptLib.PrintLog("platform to move : start platform")
	return 0
end

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
	-- A
	{ config_id = 128001, gadget_id = 70310090, pos = { x = -6187.521, y = 230.745, z = -2552.098 }, rot = { x = 0.000, y = 62.646, z = 9.896 }, level = 33, persistent = true, area_id = 18 },
	-- B
	{ config_id = 128002, gadget_id = 70310090, pos = { x = -6182.611, y = 230.127, z = -2537.521 }, rot = { x = 5.385, y = 162.696, z = 14.239 }, level = 33, persistent = true, area_id = 18 },
	-- C
	{ config_id = 128003, gadget_id = 70310090, pos = { x = -6163.049, y = 224.102, z = -2538.849 }, rot = { x = 359.074, y = 226.102, z = 14.769 }, level = 33, persistent = true, area_id = 18 },
	-- D
	{ config_id = 128004, gadget_id = 70310090, pos = { x = -6161.164, y = 223.283, z = -2558.180 }, rot = { x = 354.167, y = 304.332, z = 8.465 }, level = 33, persistent = true, area_id = 18 },
	{ config_id = 128006, gadget_id = 70350292, pos = { x = -6176.740, y = 234.723, z = -2549.933 }, rot = { x = 0.000, y = 93.627, z = 0.000 }, level = 33, start_route = false, is_use_point_array = true, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1128005, name = "VARIABLE_CHANGE_128005", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_128005", action = "action_EVENT_VARIABLE_CHANGE_128005" },
	{ config_id = 1128007, name = "GROUP_LOAD_128007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_128007", action = "action_EVENT_GROUP_LOAD_128007", trigger_count = 0 },
	-- A Start
	{ config_id = 1128008, name = "GADGET_STATE_CHANGE_128008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_128008", action = "action_EVENT_GADGET_STATE_CHANGE_128008", trigger_count = 0 },
	-- B Start
	{ config_id = 1128009, name = "GADGET_STATE_CHANGE_128009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_128009", action = "action_EVENT_GADGET_STATE_CHANGE_128009", trigger_count = 0 },
	-- C Start
	{ config_id = 1128010, name = "GADGET_STATE_CHANGE_128010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_128010", action = "action_EVENT_GADGET_STATE_CHANGE_128010", trigger_count = 0 },
	-- D Start
	{ config_id = 1128011, name = "GADGET_STATE_CHANGE_128011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_128011", action = "action_EVENT_GADGET_STATE_CHANGE_128011", trigger_count = 0 },
	{ config_id = 1128020, name = "PLATFORM_REACH_POINT_128020", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_128020", action = "action_EVENT_PLATFORM_REACH_POINT_128020", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "finish", value = 0, no_refresh = true },
	{ config_id = 2, name = "target_routeIndex", value = 0, no_refresh = false },
	{ config_id = 3, name = "isMoving", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 2,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 128001, state = 0 },
			{ config_id = 128002, state = 0 },
			{ config_id = 128003, state = 0 },
			{ config_id = 128004, state = 0 },
			{ config_id = 128006, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_128005", "GROUP_LOAD_128007", "GADGET_STATE_CHANGE_128008", "GADGET_STATE_CHANGE_128009", "GADGET_STATE_CHANGE_128010", "GADGET_STATE_CHANGE_128011", "PLATFORM_REACH_POINT_128020" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "finish", value = 0, no_refresh = true },
			{ config_id = 2, name = "target_routeIndex", value = 0, no_refresh = false },
			{ config_id = 3, name = "isMoving", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 128001, state = 201 },
			{ config_id = 128002, state = 201 },
			{ config_id = 128003, state = 201 },
			{ config_id = 128004, state = 201 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "finish", value = 0, no_refresh = true },
			{ config_id = 2, name = "target_routeIndex", value = 0, no_refresh = false },
			{ config_id = 3, name = "isMoving", value = 0, no_refresh = false }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_128005(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_128005(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133223128, 2)
	
	-- 将configid为 128001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 128002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 128003 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128003, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 128004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128004, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_128007(context, evt)
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_128007(context, evt)
	-- 将configid为 128001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 128002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 128003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 128004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_128008(context, evt)
	-- 检测config_id为128001的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 128001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_128008(context, evt)
	-- 将configid为 128002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 128003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 128004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "target_routeIndex" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "target_routeIndex", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	MovePlatform(context)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_128009(context, evt)
	-- 检测config_id为128002的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 128002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_128009(context, evt)
	-- 将configid为 128001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 128003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 128004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "target_routeIndex" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "target_routeIndex", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	MovePlatform(context)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_128010(context, evt)
	-- 检测config_id为128003的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 128003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_128010(context, evt)
	-- 将configid为 128001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 128002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 128004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "target_routeIndex" 的变量设置为 3
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "target_routeIndex", 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	MovePlatform(context)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_128011(context, evt)
	-- 检测config_id为128004的gadget是否从GadgetState.Default变为GadgetState.GearStart
	if 128004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 or GadgetState.Default ~= evt.param3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_128011(context, evt)
	-- 将configid为 128001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 128002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 128003 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 128003, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "target_routeIndex" 的变量设置为 4
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "target_routeIndex", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	MovePlatform(context)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_128020(context, evt)
	if 128006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_128020(context, evt)
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isMoving", 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end	
	ScriptLib.StopPlatform(context, defs.gadget_thunderThelfID)
	return 0
end
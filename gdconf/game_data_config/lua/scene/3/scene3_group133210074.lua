-- 基础信息
local base_info = {
	group_id = 133210074
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
	{ config_id = 74001, gadget_id = 70380010, pos = { x = -3601.155, y = 197.456, z = -1134.168 }, rot = { x = 0.000, y = 313.330, z = 0.000 }, level = 30, route_id = 321000070, start_route = false, persistent = true, area_id = 17 },
	{ config_id = 74003, gadget_id = 70380285, pos = { x = -3554.029, y = 184.450, z = -1154.198 }, rot = { x = 0.000, y = 315.157, z = 0.000 }, level = 30, route_id = 321000071, start_route = false, persistent = true, area_id = 17 },
	{ config_id = 74007, gadget_id = 70380284, pos = { x = -3530.714, y = 197.456, z = -1179.539 }, rot = { x = 0.000, y = 313.330, z = 0.000 }, level = 30, start_route = false, persistent = true, area_id = 17 },
	{ config_id = 74008, gadget_id = 70210105, pos = { x = -3581.247, y = 184.450, z = -1152.240 }, rot = { x = 0.000, y = 239.242, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 74009, gadget_id = 70210105, pos = { x = -3554.549, y = 184.450, z = -1178.115 }, rot = { x = 0.000, y = 329.342, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 74010, gadget_id = 70210105, pos = { x = -3541.053, y = 184.450, z = -1190.278 }, rot = { x = 0.000, y = 266.395, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 },
	{ config_id = 74011, gadget_id = 70210105, pos = { x = -3525.957, y = 184.450, z = -1168.637 }, rot = { x = 0.000, y = 280.004, z = 0.000 }, level = 26, drop_tag = "水上搜刮点稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1074002, name = "VARIABLE_CHANGE_74002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_74002", action = "action_EVENT_VARIABLE_CHANGE_74002" },
	{ config_id = 1074004, name = "VARIABLE_CHANGE_74004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_74004", action = "action_EVENT_VARIABLE_CHANGE_74004" },
	{ config_id = 1074005, name = "PLATFORM_REACH_POINT_74005", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_74005", action = "action_EVENT_PLATFORM_REACH_POINT_74005" },
	{ config_id = 1074006, name = "PLATFORM_REACH_POINT_74006", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_74006", action = "action_EVENT_PLATFORM_REACH_POINT_74006" },
	{ config_id = 1074012, name = "GROUP_LOAD_74012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_74012", action = "action_EVENT_GROUP_LOAD_74012", trigger_count = 0 },
	{ config_id = 1074013, name = "GROUP_LOAD_74013", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_74013", action = "action_EVENT_GROUP_LOAD_74013", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "WaterDown", value = 0, no_refresh = true }
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
	end_suite = 0,
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
			{ config_id = 74001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 321000070, route_index = 0, is_started = false } },
			{ config_id = 74007, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_74002", "PLATFORM_REACH_POINT_74005", "GROUP_LOAD_74012" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "WaterDown", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 74003, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 321000071, route_index = 0, is_started = false } },
			{ config_id = 74008, state = 0 },
			{ config_id = 74009, state = 0 },
			{ config_id = 74010, state = 0 },
			{ config_id = 74011, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_74004", "PLATFORM_REACH_POINT_74006", "GROUP_LOAD_74013" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "WaterDown", value = 1, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "WaterDown", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_74002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"WaterDown"为1
	if ScriptLib.GetGroupVariableValue(context, "WaterDown") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_74002(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 74001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_74004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"WaterDown"为2
	if ScriptLib.GetGroupVariableValue(context, "WaterDown") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_74004(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 74003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_74005(context, evt)
	-- 判断是gadgetid 为 74001的移动平台，是否到达了321000070 的路线中的 1 点
	
	if 74001 ~= evt.param1 then
	  return false
	end
	
	if 321000070 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_74005(context, evt)
	-- 将本组内变量名为 "WaterDown" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "WaterDown", 1, 133210171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210074, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_74006(context, evt)
	-- 判断是gadgetid 为 74003的移动平台，是否到达了321000071 的路线中的 1 点
	
	if 74003 ~= evt.param1 then
	  return false
	end
	
	if 321000071 ~= evt.param2 then
	  return false
	end
	
	if 1 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_74006(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210074, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_74012(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133210346, 346001) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133210346, 346002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133210346, 346003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133210346, 346004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_74012(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 74001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_74013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133210171, 171001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_74013(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 74003) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end
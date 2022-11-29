-- 基础信息
local base_info = {
	group_id = 133210301
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
	{ config_id = 301001, gadget_id = 70350292, pos = { x = -3802.816, y = 253.554, z = -550.914 }, rot = { x = 0.000, y = 283.055, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 301005, gadget_id = 70350292, pos = { x = -3802.816, y = 253.554, z = -550.914 }, rot = { x = 0.000, y = 283.055, z = 0.000 }, level = 30, route_id = 321000068, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1301003, name = "PLATFORM_REACH_POINT_301003", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_301003", action = "action_EVENT_PLATFORM_REACH_POINT_301003" },
	{ config_id = 1301004, name = "VARIABLE_CHANGE_301004", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_301004", action = "action_EVENT_VARIABLE_CHANGE_301004" },
	-- 全部成功后仙灵消失（下次）
	{ config_id = 1301007, name = "VARIABLE_CHANGE_301007", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_301007", action = "action_EVENT_VARIABLE_CHANGE_301007" }
}

-- 变量
variables = {
	{ config_id = 1, name = "GadgetCreate", value = 0, no_refresh = true },
	{ config_id = 2, name = "Talked", value = 0, no_refresh = true },
	{ config_id = 3, name = "AllSuccess", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 301002, gadget_id = 70350292, pos = { x = -3841.781, y = 255.528, z = -511.670 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 17 }
	},
	triggers = {
		{ config_id = 1301006, name = "VARIABLE_CHANGE_301006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_301006", action = "action_EVENT_VARIABLE_CHANGE_301006" }
	}
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
			{ config_id = 301001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = true } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_301004" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "GadgetCreate", value = 0, no_refresh = true },
			{ config_id = 2, name = "Talked", value = 0, no_refresh = true },
			{ config_id = 3, name = "AllSuccess", value = 0, no_refresh = true }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 301005, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 321000068, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_301003", "VARIABLE_CHANGE_301007" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "GadgetCreate", value = 0, no_refresh = true },
			{ config_id = 2, name = "Talked", value = 0, no_refresh = true },
			{ config_id = 3, name = "AllSuccess", value = 0, no_refresh = true }
		}
	},
	[3] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_301007" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "GadgetCreate", value = 0, no_refresh = true },
			{ config_id = 2, name = "Talked", value = 1, no_refresh = true },
			{ config_id = 3, name = "AllSuccess", value = 0, no_refresh = true }
		}
	},
	[4] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "GadgetCreate", value = 0, no_refresh = true },
			{ config_id = 2, name = "Talked", value = 0, no_refresh = true },
			{ config_id = 3, name = "AllSuccess", value = 0, no_refresh = true }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_301003(context, evt)
	-- 判断是gadgetid 为 301005的移动平台，是否到达了321000068 的路线中的 7 点
	
	if 301005 ~= evt.param1 then
	  return false
	end
	
	if 321000068 ~= evt.param2 then
	  return false
	end
	
	if 7 ~= evt.param3 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_301003(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 301005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 改变指定group组133210485中， configid为485002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133210485, 485002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210301, 3)
	
	-- 将本组内变量名为 "GadgetArrive2" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "GadgetArrive2", 1, 133210302) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "GadgetCreate" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "GadgetCreate", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_301004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetCreate"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetCreate") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_301004(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133210301, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_301007(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"AllSuccess"为1
	if ScriptLib.GetGroupVariableValue(context, "AllSuccess") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_301007(context, evt)
		-- 将指定group的suiteIndex设为指定suite
	  ScriptLib.SetFlowSuite(context, 133210301, 4)
	
	return 0
end
-- 基础信息
local base_info = {
	group_id = 133303011
}

-- DEFS_MISCS
function LF_CheckAllValve(context)
    local state1 = ScriptLib.GetGadgetStateByConfigId(context, 0, 11003)
    local state2 = ScriptLib.GetGadgetStateByConfigId(context, 0, 11005)
    local state3 = ScriptLib.GetGadgetStateByConfigId(context, 0, 11004)
    if 201 == state1 then
        ScriptLib.SetGroupLogicStateValue(context, "SGV_VarunaStone01", 1)
    else
        ScriptLib.SetGroupLogicStateValue(context, "SGV_VarunaStone01", 0)
    end
    if 201 == state2 then
        ScriptLib.SetGroupLogicStateValue(context, "SGV_VarunaStone02", 1)
    else
        ScriptLib.SetGroupLogicStateValue(context, "SGV_VarunaStone02", 0)
    end
    if 201 == state3 then
        ScriptLib.SetGroupLogicStateValue(context, "SGV_VarunaStone03", 1)
    else
        ScriptLib.SetGroupLogicStateValue(context, "SGV_VarunaStone03", 0)
    end
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
	-- 在地图模式上会有红色数字1,2,3。分别对应不同SGV。
	{ config_id = 11001, gadget_id = 70290416, pos = { x = -1533.018, y = 190.719, z = 3250.325 }, rot = { x = 0.000, y = 247.143, z = 0.000 }, level = 30, isOneoff = true, persistent = true, logic_state = {"SGV_VarunaStone01","SGV_VarunaStone02","SGV_VarunaStone03"}, area_id = 23 },
	-- 指向1
	{ config_id = 11003, gadget_id = 70290415, pos = { x = -1540.987, y = 188.919, z = 3260.345 }, rot = { x = 0.000, y = 52.664, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 23 },
	-- 指向3
	{ config_id = 11004, gadget_id = 70290415, pos = { x = -1525.310, y = 192.098, z = 3253.587 }, rot = { x = 0.000, y = 157.449, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 23 },
	-- 指向2
	{ config_id = 11005, gadget_id = 70290415, pos = { x = -1532.225, y = 192.955, z = 3240.084 }, rot = { x = 0.000, y = 261.463, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 23 },
	-- 1
	{ config_id = 11007, gadget_id = 70330255, pos = { x = -1534.307, y = 189.537, z = 3252.614 }, rot = { x = 0.000, y = 316.335, z = 0.000 }, level = 30, area_id = 23 },
	-- 2
	{ config_id = 11008, gadget_id = 70330255, pos = { x = -1533.268, y = 191.333, z = 3247.872 }, rot = { x = 350.824, y = 171.651, z = 0.000 }, level = 30, area_id = 23 },
	-- 3
	{ config_id = 11009, gadget_id = 70330255, pos = { x = -1531.188, y = 191.451, z = 3250.900 }, rot = { x = 353.696, y = 59.912, z = 7.970 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 通知任务完成，净雨石留待任务转201
	{ config_id = 1011002, name = "LUA_NOTIFY_11002", event = EventType.EVENT_LUA_NOTIFY, source = "", condition = "condition_EVENT_LUA_NOTIFY_11002", action = "action_EVENT_LUA_NOTIFY_11002" },
	-- 净雨阀201后通知SGV_VarunaStone01设1
	{ config_id = 1011006, name = "LUA_NOTIFY_11006", event = EventType.EVENT_LUA_NOTIFY, source = "", condition = "", action = "action_EVENT_LUA_NOTIFY_11006", trigger_count = 0 },
	-- 1转对
	{ config_id = 1011010, name = "GADGET_STATE_CHANGE_11010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11010", action = "action_EVENT_GADGET_STATE_CHANGE_11010", trigger_count = 0 },
	-- 2转对
	{ config_id = 1011011, name = "GADGET_STATE_CHANGE_11011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11011", action = "action_EVENT_GADGET_STATE_CHANGE_11011", trigger_count = 0 },
	-- 3转对
	{ config_id = 1011012, name = "GADGET_STATE_CHANGE_11012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11012", action = "action_EVENT_GADGET_STATE_CHANGE_11012", trigger_count = 0 },
	-- 1转错
	{ config_id = 1011013, name = "GADGET_STATE_CHANGE_11013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11013", action = "action_EVENT_GADGET_STATE_CHANGE_11013", trigger_count = 0 },
	-- 1转错
	{ config_id = 1011014, name = "GADGET_STATE_CHANGE_11014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11014", action = "action_EVENT_GADGET_STATE_CHANGE_11014", trigger_count = 0 },
	-- 1转错
	{ config_id = 1011015, name = "GADGET_STATE_CHANGE_11015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11015", action = "action_EVENT_GADGET_STATE_CHANGE_11015", trigger_count = 0 },
	-- 1转错
	{ config_id = 1011016, name = "GADGET_STATE_CHANGE_11016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11016", action = "action_EVENT_GADGET_STATE_CHANGE_11016", trigger_count = 0 },
	-- 1转错
	{ config_id = 1011017, name = "GADGET_STATE_CHANGE_11017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11017", action = "action_EVENT_GADGET_STATE_CHANGE_11017", trigger_count = 0 },
	-- 1转错
	{ config_id = 1011018, name = "GADGET_STATE_CHANGE_11018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_11018", action = "action_EVENT_GADGET_STATE_CHANGE_11018", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 3, name = "SGV_VarunaStone01", value = 0, no_refresh = true, variable_type = 1 },
	{ config_id = 1, name = "SGV_VarunaStone02", value = 0, no_refresh = true, variable_type = 1 },
	{ config_id = 2, name = "SGV_VarunaStone03", value = 0, no_refresh = true, variable_type = 1 }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	sub_flow_type = 1,
	secure_suite_index = 1,
	suite = 1,
	end_suite = 3,
	rand_suite = false,
	father_quest = 73014,
	quest_config = {
	}
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 11001, state = 0 },
			{ config_id = 11003, state = 902 },
			{ config_id = 11004, state = 902 },
			{ config_id = 11005, state = 903 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 3, name = "SGV_VarunaStone01", value = -1, no_refresh = true, variable_type = 1 },
			{ config_id = 1, name = "SGV_VarunaStone02", value = -1, no_refresh = true, variable_type = 1 },
			{ config_id = 2, name = "SGV_VarunaStone03", value = -1, no_refresh = true, variable_type = 1 }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 11001, state = 901 },
			{ config_id = 11003, state = 202 },
			{ config_id = 11004, state = 202 },
			{ config_id = 11005, state = 203 },
			{ config_id = 11007, state = 0 },
			{ config_id = 11008, state = 0 },
			{ config_id = 11009, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "LUA_NOTIFY_11002", "LUA_NOTIFY_11006", "GADGET_STATE_CHANGE_11010", "GADGET_STATE_CHANGE_11011", "GADGET_STATE_CHANGE_11012", "GADGET_STATE_CHANGE_11013", "GADGET_STATE_CHANGE_11014", "GADGET_STATE_CHANGE_11015", "GADGET_STATE_CHANGE_11016", "GADGET_STATE_CHANGE_11017", "GADGET_STATE_CHANGE_11018" },
		npcs = { },
		variables = {
			{ config_id = 3, name = "SGV_VarunaStone01", value = 0, no_refresh = true, variable_type = 1 },
			{ config_id = 1, name = "SGV_VarunaStone02", value = 0, no_refresh = true, variable_type = 1 },
			{ config_id = 2, name = "SGV_VarunaStone03", value = 0, no_refresh = true, variable_type = 1 }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 11001, state = 901 },
			{ config_id = 11003, state = 901 },
			{ config_id = 11004, state = 901 },
			{ config_id = 11005, state = 901 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 3, name = "SGV_VarunaStone01", value = 1, no_refresh = true, variable_type = 1 },
			{ config_id = 1, name = "SGV_VarunaStone02", value = 1, no_refresh = true, variable_type = 1 },
			{ config_id = 2, name = "SGV_VarunaStone03", value = 1, no_refresh = true, variable_type = 1 }
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 11001, state = 201 },
			{ config_id = 11003, state = 901 },
			{ config_id = 11004, state = 901 },
			{ config_id = 11005, state = 901 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 3, name = "SGV_VarunaStone01", value = 1, no_refresh = true, variable_type = 1 },
			{ config_id = 1, name = "SGV_VarunaStone02", value = 1, no_refresh = true, variable_type = 1 },
			{ config_id = 2, name = "SGV_VarunaStone03", value = 1, no_refresh = true, variable_type = 1 }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_LUA_NOTIFY_11002(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303011, 11003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303011, 11004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303011, 11005) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_11002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7301413_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_11006(context, evt)
	LF_CheckAllValve(context)
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11010(context, evt)
	if 11003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11010(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303011, EntityType.GADGET, 11007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11011(context, evt)
	if 11005 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11011(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303011, EntityType.GADGET, 11008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11012(context, evt)
	if 11004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11012(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303011, EntityType.GADGET, 11009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11013(context, evt)
	if 11003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11013(context, evt)
	-- 创建id为11007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 11007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11014(context, evt)
	if 11003 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11014(context, evt)
	-- 创建id为11007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 11007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11015(context, evt)
	if 11005 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11015(context, evt)
	-- 创建id为11008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 11008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11016(context, evt)
	if 11005 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11016(context, evt)
	-- 创建id为11008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 11008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11017(context, evt)
	if 11004 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11017(context, evt)
	-- 创建id为11009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 11009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_11018(context, evt)
	if 11004 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_11018(context, evt)
	-- 创建id为11009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 11009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end
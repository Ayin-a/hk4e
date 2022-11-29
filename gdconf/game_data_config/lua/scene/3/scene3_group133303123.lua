-- 基础信息
local base_info = {
	group_id = 133303123
}

-- DEFS_MISCS
function LF_CheckAllValve(context)
    local state1 = ScriptLib.GetGadgetStateByConfigId(context, 0, 123002)
    local state2 = ScriptLib.GetGadgetStateByConfigId(context, 0, 123004)
    local state3 = ScriptLib.GetGadgetStateByConfigId(context, 0, 123003)
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
	{ config_id = 123001, gadget_id = 70290416, pos = { x = -1800.143, y = 146.538, z = 3504.271 }, rot = { x = 0.000, y = 291.423, z = 0.000 }, level = 30, isOneoff = true, persistent = true, logic_state = {"SGV_VarunaStone01","SGV_VarunaStone02","SGV_VarunaStone03"}, area_id = 23 },
	-- 指向1
	{ config_id = 123002, gadget_id = 70290546, pos = { x = -1811.115, y = 144.393, z = 3548.527 }, rot = { x = 0.000, y = 82.146, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 23 },
	-- 指向3
	{ config_id = 123003, gadget_id = 70290546, pos = { x = -1771.207, y = 132.261, z = 3488.074 }, rot = { x = 0.000, y = 212.321, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 23 },
	-- 指向2
	{ config_id = 123004, gadget_id = 70290546, pos = { x = -1848.992, y = 93.958, z = 3446.523 }, rot = { x = 0.000, y = 309.865, z = 0.000 }, level = 30, isOneoff = true, persistent = true, area_id = 23 },
	-- 1
	{ config_id = 123007, gadget_id = 70330255, pos = { x = -1800.948, y = 144.236, z = 3507.881 }, rot = { x = 0.000, y = 349.746, z = 0.000 }, level = 30, area_id = 23 },
	-- 2
	{ config_id = 123008, gadget_id = 70330255, pos = { x = -1806.473, y = 146.943, z = 3501.458 }, rot = { x = 35.368, y = 238.017, z = 0.000 }, level = 30, area_id = 23 },
	-- 3
	{ config_id = 123009, gadget_id = 70330255, pos = { x = -1797.133, y = 147.332, z = 3503.713 }, rot = { x = 17.420, y = 119.562, z = 0.000 }, level = 30, area_id = 23 },
	-- 1
	{ config_id = 123010, gadget_id = 70330255, pos = { x = -1806.310, y = 145.027, z = 3529.300 }, rot = { x = 0.000, y = 344.100, z = 0.000 }, level = 30, area_id = 23 },
	-- 2
	{ config_id = 123011, gadget_id = 70330255, pos = { x = -1840.590, y = 101.948, z = 3458.503 }, rot = { x = 27.494, y = 211.512, z = 0.000 }, level = 30, area_id = 23 },
	-- 3
	{ config_id = 123012, gadget_id = 70330255, pos = { x = -1779.512, y = 132.544, z = 3493.175 }, rot = { x = 0.000, y = 117.589, z = 0.000 }, level = 30, area_id = 23 },
	-- 2
	{ config_id = 123013, gadget_id = 70330255, pos = { x = -1821.718, y = 129.000, z = 3485.971 }, rot = { x = 42.752, y = 220.004, z = 347.553 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 通知任务完成，净雨石留待任务转201
	{ config_id = 1123005, name = "LUA_NOTIFY_123005", event = EventType.EVENT_LUA_NOTIFY, source = "", condition = "condition_EVENT_LUA_NOTIFY_123005", action = "action_EVENT_LUA_NOTIFY_123005" },
	-- 净雨阀201后通知SGV_VarunaStone01设1
	{ config_id = 1123006, name = "LUA_NOTIFY_123006", event = EventType.EVENT_LUA_NOTIFY, source = "", condition = "", action = "action_EVENT_LUA_NOTIFY_123006", trigger_count = 0 },
	-- 1转对
	{ config_id = 1123014, name = "GADGET_STATE_CHANGE_123014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_123014", action = "action_EVENT_GADGET_STATE_CHANGE_123014", trigger_count = 0 },
	-- 2转对
	{ config_id = 1123015, name = "GADGET_STATE_CHANGE_123015", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_123015", action = "action_EVENT_GADGET_STATE_CHANGE_123015", trigger_count = 0 },
	-- 3转对
	{ config_id = 1123016, name = "GADGET_STATE_CHANGE_123016", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_123016", action = "action_EVENT_GADGET_STATE_CHANGE_123016", trigger_count = 0 },
	-- 1转错
	{ config_id = 1123017, name = "GADGET_STATE_CHANGE_123017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_123017", action = "action_EVENT_GADGET_STATE_CHANGE_123017", trigger_count = 0 },
	-- 1转错
	{ config_id = 1123018, name = "GADGET_STATE_CHANGE_123018", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_123018", action = "action_EVENT_GADGET_STATE_CHANGE_123018", trigger_count = 0 },
	-- 2转错
	{ config_id = 1123019, name = "GADGET_STATE_CHANGE_123019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_123019", action = "action_EVENT_GADGET_STATE_CHANGE_123019", trigger_count = 0 },
	-- 2转错
	{ config_id = 1123020, name = "GADGET_STATE_CHANGE_123020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_123020", action = "action_EVENT_GADGET_STATE_CHANGE_123020", trigger_count = 0 },
	-- 3转错
	{ config_id = 1123021, name = "GADGET_STATE_CHANGE_123021", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_123021", action = "action_EVENT_GADGET_STATE_CHANGE_123021", trigger_count = 0 },
	-- 3转错
	{ config_id = 1123022, name = "GADGET_STATE_CHANGE_123022", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_123022", action = "action_EVENT_GADGET_STATE_CHANGE_123022", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "SGV_VarunaStone01", value = 0, no_refresh = true, variable_type = 1 },
	{ config_id = 2, name = "SGV_VarunaStone02", value = 0, no_refresh = true, variable_type = 1 },
	{ config_id = 3, name = "SGV_VarunaStone03", value = 0, no_refresh = true, variable_type = 1 }
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
	father_quest = 73017,
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
			{ config_id = 123001, state = 0 },
			{ config_id = 123002, state = 903 },
			{ config_id = 123003, state = 902 },
			{ config_id = 123004, state = 903 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "SGV_VarunaStone01", value = -1, no_refresh = true, variable_type = 1 },
			{ config_id = 2, name = "SGV_VarunaStone02", value = -1, no_refresh = true, variable_type = 1 },
			{ config_id = 3, name = "SGV_VarunaStone03", value = -1, no_refresh = true, variable_type = 1 }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 123001, state = 901 },
			{ config_id = 123002, state = 203 },
			{ config_id = 123003, state = 202 },
			{ config_id = 123004, state = 203 },
			{ config_id = 123007, state = 0 },
			{ config_id = 123008, state = 0 },
			{ config_id = 123009, state = 0 },
			{ config_id = 123010, state = 0 },
			{ config_id = 123011, state = 0 },
			{ config_id = 123012, state = 0 },
			{ config_id = 123013, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "LUA_NOTIFY_123005", "LUA_NOTIFY_123006", "GADGET_STATE_CHANGE_123014", "GADGET_STATE_CHANGE_123015", "GADGET_STATE_CHANGE_123016", "GADGET_STATE_CHANGE_123017", "GADGET_STATE_CHANGE_123018", "GADGET_STATE_CHANGE_123019", "GADGET_STATE_CHANGE_123020", "GADGET_STATE_CHANGE_123021", "GADGET_STATE_CHANGE_123022" },
		npcs = { },
		variables = {
			{ config_id = 1, name = "SGV_VarunaStone01", value = 0, no_refresh = true, variable_type = 1 },
			{ config_id = 2, name = "SGV_VarunaStone02", value = 0, no_refresh = true, variable_type = 1 },
			{ config_id = 3, name = "SGV_VarunaStone03", value = 0, no_refresh = true, variable_type = 1 }
		}
	},
	[3] = {
		gadgets = {
			{ config_id = 123001, state = 901 },
			{ config_id = 123002, state = 901 },
			{ config_id = 123003, state = 901 },
			{ config_id = 123004, state = 901 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "SGV_VarunaStone01", value = 1, no_refresh = true, variable_type = 1 },
			{ config_id = 2, name = "SGV_VarunaStone02", value = 1, no_refresh = true, variable_type = 1 },
			{ config_id = 3, name = "SGV_VarunaStone03", value = 1, no_refresh = true, variable_type = 1 }
		}
	},
	[4] = {
		gadgets = {
			{ config_id = 123001, state = 201 },
			{ config_id = 123002, state = 901 },
			{ config_id = 123003, state = 901 },
			{ config_id = 123004, state = 901 }
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ config_id = 1, name = "SGV_VarunaStone01", value = 1, no_refresh = true, variable_type = 1 },
			{ config_id = 2, name = "SGV_VarunaStone02", value = 1, no_refresh = true, variable_type = 1 },
			{ config_id = 3, name = "SGV_VarunaStone03", value = 1, no_refresh = true, variable_type = 1 }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_LUA_NOTIFY_123005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303123, 123002) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303123, 123003) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303123, 123004) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_123005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7301710_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_123006(context, evt)
	LF_CheckAllValve(context)
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_123014(context, evt)
	if 123002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_123014(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303123, EntityType.GADGET, 123007 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303123, EntityType.GADGET, 123010 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_123015(context, evt)
	if 123004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_123015(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303123, EntityType.GADGET, 123008 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303123, EntityType.GADGET, 123011 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303123, EntityType.GADGET, 123013 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_123016(context, evt)
	if 123003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_123016(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303123, EntityType.GADGET, 123009 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303123, EntityType.GADGET, 123012 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_123017(context, evt)
	if 123002 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_123017(context, evt)
	-- 创建id为123007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 123007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为123010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 123010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_123018(context, evt)
	if 123002 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_123018(context, evt)
	-- 创建id为123007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 123007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为123010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 123010 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_123019(context, evt)
	if 123004 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_123019(context, evt)
	-- 创建id为123008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 123008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为123011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 123011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为123013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 123013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_123020(context, evt)
	if 123004 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_123020(context, evt)
	-- 创建id为123008的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 123008 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为123011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 123011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为123013的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 123013 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_123021(context, evt)
	if 123003 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_123021(context, evt)
	-- 创建id为123009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 123009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为123012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 123012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_123022(context, evt)
	if 123003 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_123022(context, evt)
	-- 创建id为123009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 123009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为123012的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 123012 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end